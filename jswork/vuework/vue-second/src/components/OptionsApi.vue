<template>
    <div>
       <h1 class="alert alert-info">OptionsApi방식입니다</h1>
       <button v-on:click="countIncre">Counter:{{ counter }}</button>
    </div>
</template>

<script>
export default {
    data () {
        

        return {

            counter:0,
        }
    },
    methods:{
        countIncre(){
            this.counter++;
        }
    },

    mounted(){
        console.log("컴포넌트가 마운트됨");
    }
}
</script>

<style lang="scss" scoped>

</style>