<script setup lang="ts">
const props = defineProps<{
  link: string;
  icon: string;
  alt: string;
}>();
</script>

<template>
  <a :href="props.link" target="_blank" rel="noopener noreferrer">
    <img :src="props.icon" :alt="props.alt" width="25" />
  </a>
</template>

<style scoped>
a {
  padding: 10px;
}
</style>
