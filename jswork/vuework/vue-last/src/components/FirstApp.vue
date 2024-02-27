<template>
    <div>
      <h1 class="alert alert-info">FirstApp 입니다</h1>
      <h2>반응형 메세지</h2>
      <h3>{{ reactiveMessage }}</h3>
      <button v-on:click="btnReactiveMessage">Add Message</button>




      <h2>일반 메세지</h2>
      <h3>{{ normalMessage }}</h3>
      <button @click="btnNormalMessage">Add Message</button>
    </div>
</template>

<script>
import {  onBeforeMount, onMounted, ref } from 'vue';

export default {
    setup () {

        console.log("setup");
        
        const reactiveMessage=ref("Hello Reactive");
        const btnReactiveMessage=()=>{
            reactiveMessage.value=reactiveMessage.value+"!";
        }

        //반응형인지 검사
        //console.log(isRef(reactiveMessage));

        let normalMessage='Normal Message';
        const btnNormalMessage=()=>{
            normalMessage=normalMessage+"!";
        }

        onMounted(()=>{
            console.log("onMounted");
        });

        onBeforeMount(()=>{
            console.log("onBeforeMount");
        })

        return {

            reactiveMessage,
            normalMessage,
            btnReactiveMessage,
            btnNormalMessage
        }
    }
}
</script>

<style lang="scss" scoped>

</style>