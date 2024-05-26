<script setup lang="ts">
const props = defineProps<{
  id: number;
  image: string;
  title: string;
  description: string;
  rate: number;
  likes: number;
}>();
import { useRouter } from "vue-router";
import { ref, watch } from "vue";

const router = useRouter();
const likeCount = ref(props.likes);

watch(
  () => props.id,
  () => {
    likeCount.value = props.likes;
  }
);

function handleLike() {
  fetch("/film/like/" + props.id, {
    method: "PUT",
  })
    .then((response) => response.json())
    .then(() => {
      likeCount.value = likeCount.value + 1;
    });
}

function handleClick() {
  router.push(`/reviews?film_id=${props.id}`);
}
</script>

<template>
  <div class="film-container">
    <div class="title">{{ title }}</div>
    <img class="image" :src="image" />
    <div @click="handleClick" class="description">
      {{ description }}
    </div>
    <div class="info">
      <div class="rate">
        <span class="material-symbols-outlined"> kid_star </span> {{ rate }}/10
      </div>
      <div class="likes">
        {{ likeCount }}
        <span @click="handleLike" class="material-symbols-outlined">
          favorite
        </span>
      </div>
    </div>
  </div>
</template>

<style scoped>
.film-container {
  display: grid;
  grid-template-areas:
    "title"
    "content"
    "info";
  width: 250px;
  margin: 20px;
  cursor: pointer;
}
.title {
  color: rgb(148, 150, 150);
  font-family: "Chakra Petch";
}
.info {
  grid-area: info;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: center;
  margin-top: 10px;
}

.rate {
  color: rgb(148, 150, 150);
  display: flex;
  align-items: center;
}
.likes {
  color: rgb(148, 150, 150);
  display: flex;
  align-items: center;
  cursor: pointer;
}
.title {
  grid-area: title;
  color: rgb(148, 150, 150);
  margin-bottom: 10px;
}
.image {
  width: 250px;
  border: 1px solid rgb(64, 64, 64);
  border-radius: 5px;
  grid-area: content;
  height: 360px;
}
.description {
  grid-area: content;
  background-color: rgba(72, 72, 72, 0.761);
  color: rgb(191, 191, 191);
  margin: 20px;
  box-sizing: border-box;
  display: none;
  padding: 10px;
}
.film-container:hover .description {
  display: block;
}
.film-container:hover .image {
  border: 1px solid rgb(148, 150, 150);
}
</style>
