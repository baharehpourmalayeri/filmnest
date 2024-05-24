<script setup lang="ts">
defineProps<{
  review_id: number;
  review_title: string;
  review_name: string;
  review: string;
  review_rate: number;

  film_id: number;
  film_image: string;
  film_title: string;
  film_description: string;
  film_rate: number;
  film_likes: number;
}>();
</script>

<template>
  <div class="review-container">
    <div class="film-title">{{ film_title }}</div>
    <img class="image" :src="film_image" />
    <div class="info">
      <div class="rate">
        <span class="material-symbols-outlined"> kid_star </span>
        {{ review_rate }} / 10
      </div>
      <div class="review-title">{{ review_title }}</div>
      <div class="review-name">{{ review_name }}</div>
      <div class="review-description">{{ review }}</div>
      <router-link to="/reviews" class="more-reviews-link"
        >More reviews</router-link
      >
    </div>
  </div>
</template>

<style scoped>
.review-container {
  display: grid;
  grid-template-areas:
    "title title"
    "content info";
  width: 100%;
  margin: 20px;
  grid-template-columns: 1fr 3fr;
  margin-top: 50px;
  position: relative;
}
.film-title {
  color: rgb(148, 150, 150);
  width: 100%;
  grid-area: title;
  margin-bottom: 10px;
  padding-left: 50px;
  font-size: 20px;
}
.info {
  grid-area: info;
  display: flex;
  flex-direction: column;
  align-items: baseline;
  text-align: left;
  line-height: 30px;
  width: 80%;
  background-color: rgba(200, 200, 200, 0.962);
  padding: 20px;
  border-radius: 10px;
}

.rate {
  color: rgb(109, 109, 109);
  display: flex;
  align-items: center;
}
.review-title {
  grid-area: title;
  color: rgb(87, 87, 87);
  margin-top: 20px;
  width: 100%;
  font-size: 20px;
}
.review-name {
  color: rgb(87, 87, 87);
  font-size: 13px;
}

.more-reviews-link {
  position: absolute;
  bottom: 0;
  right: 175px;
  font-size: 12px;
  color: rgb(69, 69, 72);
  text-decoration: underline;
  cursor: pointer;
}
.review-description {
  margin-top: 20px;
  color: rgb(60, 60, 60);
  font-size: 18px;
}
.image {
  width: 250px;
  border: 1px solid rgb(64, 64, 64);
  border-radius: 5px;
  grid-area: content;
  height: 360px;
}
</style>
