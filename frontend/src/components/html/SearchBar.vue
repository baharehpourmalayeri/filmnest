<script setup lang="ts"></script>

<template>
  <form class="form">
    <input class="input" name="search" placeholder="Search" />
    <span class="button material-symbols-outlined"> search </span>
  </form>
</template>

<style scoped>
.form {
  display: flex;
  align-items: center;
  width: 200px;
  padding: 10px;
  border: 1px solid #000000;
  background: rgb(200, 200, 200);
  color: #000000;
  border-radius: 15px;
}
.input {
  flex: 1;
  border: none;
  outline: none;
  background: none;
}
.button {
  margin-left: 5px;
}
</style>
