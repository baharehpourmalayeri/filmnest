<script setup lang="ts">
import Categories from "../components/Categories.vue";
import FilmSection from "../components/FilmSection.vue";
import { useRoute } from "vue-router";

const route = useRoute();

interface Film {
  id: number;
  title: string;
  image: string;
  description: string;
  rate: number;
  likes: number;
}

interface Genre {
  id: number;
  title: string;
  image: string;
}

import { watch, ref } from "vue";

const films = ref<Film[]>([]);

const genre = ref<Genre>();

const fetchGenre = () => {
  fetch("http://localhost:8080/genre/" + route.params.category)
    .then((response) => response.json())
    .then((result) => {
      genre.value = result;
    });
};
const fetchFilms = () => {
  fetch("http://localhost:8080/films?genre=" + route.params.category)
    .then((response) => response.json())
    .then((result) => {
      films.value = result;
    });
};
fetchGenre();
fetchFilms();

watch(
  () => route.params.category,
  () => {
    fetchGenre();
    fetchFilms();
  }
);
</script>

<template>
  <div class="content">
    <Categories />
  </div>
  <h1>{{ genre && genre.title }}</h1>
  <div class="films-container">
    <FilmSection
      v-for="film in films"
      :id="film.id"
      :title="film.title"
      :image="film.image"
      :description="film.description"
      :rate="film.rate"
      :likes="film.likes"
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

.films-container {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
  flex-wrap: wrap;
}
</style>
