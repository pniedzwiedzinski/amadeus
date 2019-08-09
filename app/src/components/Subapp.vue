<template>
  <a v-bind:href="link" target="_blank">
    <div class="component">
      <h2>{{ name }}</h2>
    </div>
  </a>
</template>

<script>
export default {
  name: "Subapp",
  props: {
    name: String,
    link: String
  }
};
</script>

<style>
.component {
  border-radius: 15px;
  background-color: rgb(58, 58, 61);

  width: 400px;
  max-width: 90vw;
  min-height: 75px;

  margin: 10px;

  display: flex;
  justify-content: center;
}

a {
  text-decoration: none;
  color: white;
}
</style>


