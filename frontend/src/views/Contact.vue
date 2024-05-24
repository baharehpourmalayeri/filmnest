<script setup lang="ts">
import { ref } from "vue";

const name = ref();
const email = ref();
const message = ref();

const handleClick = () => {
  let formData = {
    name: name.value,
    email: email.value,
    message: message.value,
  };
  console.log(JSON.stringify(formData));
  fetch("http://localhost:8080/contact", {
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    method: "POST",
    body: JSON.stringify(formData),
  })
    .then((response) => response.json())
    .then(() => {
      name.value = "";
      email.value = "";
      message.value = "";
    });
};
</script>

<template>
  <form class="form">
    <div>
      <label for="name" class="label">My name is:</label>
      <input
        v-model="name"
        id="name"
        class="input"
        placeholder="Enter your name"
      />
    </div>
    <div>
      <label for="email" class="label">My email is:</label>
      <input
        v-model="email"
        id="email"
        class="input"
        placeholder="Enter your email"
      />
    </div>
    <div>
      <label for="message" class="label">My message is:</label>
      <textarea
        v-model="message"
        id="message"
        class="input"
        placeholder="Enter your message"
      ></textarea>
    </div>
    <div>
      <div></div>
      <button class="button" @click="handleClick" type="submit">Send</button>
    </div>
  </form>
</template>

<style scoped>
.form {
  display: flex;
  flex-direction: column;
  margin-top: 80px;
  align-items: center;
}
.form div {
  width: 500px;
  display: flex;
  margin-bottom: 10px;
  justify-content: space-between;
}
.form div input {
  width: 300px;
  margin: 0 20px;
}
.form div textarea {
  margin: 0 20px;
  width: 300px;
  height: 200px;
}
.label {
  color: rgb(148, 150, 150);
  width: 120px;
}
.input {
  border: none;
  border-radius: 10px;
  padding: 11px;
  margin-bottom: 20px;
  background-color: rgba(194, 194, 194, 0.969);
}

.button {
  margin: 0 20px;
  padding: 10px;
  font-family: "Chakra Petch";
  font-size: 12.5px;
  border-radius: 10px;
  background-color: rgb(234, 234, 234);
}
</style>
