<script setup lang="ts">
import ReviewSection from "../components/ReviewSection.vue";
import { watchEffect, ref } from "vue";
import { useRoute } from "vue-router";

const route = useRoute();

const reviews = ref<Review[]>([]);

interface Review {
  review_id: number;
  review_title: string;
  review_name: string;
  review: string;
  review_rate: number;

  film_id: number;
  film_title: string;
  film_year: number;
  film_image: string;
  film_description: string;
  film_likes: number;
  film_rate: number;
}

const fetchReviews = () => {
  const film_id = route.query.film_id;
  if (film_id) {
    fetch("/reviews?filmId=" + film_id)
      .then((response) => response.json())
      .then((result) => {
        reviews.value = result;
      });
  } else {
    fetch("/reviews")
      .then((response) => response.json())
      .then((result) => {
        reviews.value = result;
      });
  }
};
watchEffect(() => {
  fetchReviews();
});
</script>

<template>
  <h1>Reviews</h1>
  <div class="review-containers">
    <ReviewSection
      v-for="review in reviews"
      :review_id="review.review_id"
      :review_title="review.review_title"
      :review_name="review.review_name"
      :review="review.review"
      :review_rate="review.review_rate"
      :film_id="review.film_id"
      :film_title="review.film_title"
      :film_image="review.film_image"
      :film_description="review.film_description"
      :film_rate="review.film_rate"
      :film_likes="review.film_likes"
    />
  </div>
</template>

<style scoped>
h1 {
  font-family: "Chakra Petch";
  color: rgb(148, 150, 150);
}
.content {
  display: flex;
  justify-content: center;
  margin-bottom: 120px;
}

.review-containers {
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  flex-wrap: wrap;
}
</style>
