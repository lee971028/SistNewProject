<template>
  <div id="app">
     <OptionsApi></OptionsApi>
     <CompositionApi></CompositionApi>
  </div>
</template>

<script>
import CompositionApi from './components/CompositionApi.vue';
import OptionsApi from './components/OptionsApi.vue';

export default {
    setup() {
        return {};
    },
    components: { OptionsApi, CompositionApi }
}
</script>

<style lang="scss" scoped>

</style>