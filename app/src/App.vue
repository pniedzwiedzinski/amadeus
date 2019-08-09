<template>
  <div id="app">
    <HelloAmadeus />
    <Subapp
      v-for="app in apps"
      v-bind:key="app.name"
      v-bind:name="app.name"
      v-bind:link="app.link"
    />
  </div>
</template>

<script>
import HelloAmadeus from "./components/HelloAmadeus.vue";
import Subapp from "./components/Subapp";

import apps from "../apps.json";

export default {
  name: "app",
  components: {
    HelloAmadeus,
    Subapp
  },
  data: function() {
    return { apps };
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #ffffff;
  margin-top: 60px;

  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
