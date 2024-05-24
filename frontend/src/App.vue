<script setup lang="ts">
import SearchBar from "./components/html/SearchBar.vue";
import Footer from "./components/html/Footer.vue";
</script>

<template>
  <div class="navbar">
    <div class="upper-nav">
      <img src="./assets/images/filmnest.png" />
      <div class="search-bar">
        <SearchBar />
      </div>
    </div>
    <div class="lower-nav">
      <nav>
        <ul>
          <li><router-link to="/">HOME</router-link></li>
          <li><router-link to="/films/1">FILMS</router-link></li>
          <li><router-link to="/reviews">REVIEWS</router-link></li>
          <li><router-link to="/contact">CONTACT US</router-link></li>
        </ul>
      </nav>
    </div>
  </div>

  <main>
    <RouterView />
  </main>
  <Footer />
</template>

<style scoped>
.navbar {
  display: flex;
  flex-direction: column;
  background-color: black;
}
.upper-nav {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border-bottom: 2px solid rgb(167, 163, 163);
}
.search-bar {
  display: flex;
  align-items: center;
}

img {
  width: 350px;
}
.lower-nav {
  width: 100%;
  padding: 30px 0;
}

nav ul {
  list-style-type: none;
  display: flex;
  justify-content: space-between;
  margin: 20px 50px;
}

nav ul li {
  font-family: "Chakra Petch";
  margin: 0;
  padding: 20px 0;
}
</style>
