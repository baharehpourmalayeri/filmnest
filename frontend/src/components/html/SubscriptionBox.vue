<script setup lang="ts">
// TODO: link the button to api to save subscribers

import { ref } from "vue";

const email = ref();

const handleClick = () => {
  let formData = {
    email: email.value,
  };
  fetch("/subscribe", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify(formData),
  })
    .then((response) => response.json())
    .then(() => {
      email.value = "";
    });
};
</script>

<template>
  <div class="subscription-box">
    <h2>Stay informed, Stay entertained!</h2>
    <form class="form">
      <input
        v-model="email"
        class="input"
        name="email"
        placeholder="Enter your email"
      />
      <button class="button" @click="handleClick" type="submit">
        Subscribe
      </button>
    </form>
  </div>
</template>

<style scoped>
.subscription-box {
  margin: 100px auto;
  border-radius: 5px;
  width: 100%;
  background-color: rgb(200, 200, 200);
}
h2 {
  padding-top: 20px;
}
.input {
  border: none;
  border-radius: 10px;
  padding: 11px;
  margin-bottom: 20px;
  width: 200px;
}
.button {
  margin: 10px;
  padding: 10px;
  font-family: "Chakra Petch";
  font-size: 12.5px;
  border-radius: 10px;
}
</style>
