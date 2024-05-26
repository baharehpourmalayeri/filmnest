<script setup lang="ts">
import { ref } from "vue";

interface Genre {
  id: number;
  title: string;
  image: string;
}

const genres = ref<Genre[]>([]);

fetch("/genres")
  .then((response) => response.json())
  .then((result) => {
    console.log(result);
    genres.value = result;
  });
</script>

<template>
  <div v-for="genre in genres" :key="genre.id">
    <h3>{{ genre.title }}</h3>
    <router-link :to="'/films/' + genre.id"
      ><img :src="genre.image"
    /></router-link>
  </div>
</template>

<style scoped>
.headline {
  margin: 50px;
}

.content {
  display: flex;
  justify-content: center;
  margin-bottom: 120px;
}

p {
  color: rgb(167, 163, 163);
  font-size: 30px;
  margin: 5px;
}
img {
  width: 400px;
  margin: 17px;
  border-radius: 5px;
  border: 2px solid rgb(35, 35, 33);
}
h3 {
  font-family: "Chakra Petch";
  font-size: 25px;

  color: rgb(167, 163, 163);
}
.read-the-docs {
  color: #888;
}

@media (max-width: 768px) {
}
</style>
