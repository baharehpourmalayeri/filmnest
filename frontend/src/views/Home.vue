<script setup lang="ts">
import Categories from "../components/Categories.vue";
</script>

<template>
  <div class="headline">
    <p>Discover top-rated cinema picks</p>
    <p>Stay updated on must-watch movies</p>
    <p>Share your favorite finds with friends</p>
  </div>
  <div class="content">
    <Categories />
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
</style>
