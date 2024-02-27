<template>
    <div>
        <h1 class="alert alert-info">ThirdApp 입니다</h1>

        <!-- v-if  v-else-if  v-else -->
        <!-- <div v-if="isvisible" class="pink"></div>
        <div v-if="isvisible=false" class="green"></div>
        <div v-else class="orange"></div> -->

        <div v-if="count>1" class="pink"></div>
        <div v-else class="green"></div>

        <button @click="count++">증가</button>
        <button @click="count--">감소</button>
    </div>
</template>

<script>
import { ref } from 'vue';

export default {
    setup () {
        
        const isvisible=false;
        const count=ref(0);

        return {

            isvisible,
            count
        }
    }
}
</script>

<style lang="css" scoped>
   .pink{
    width: 100px;
    height: 100px;
    background-color: pink;
   }

   .green{
    width: 100px;
    height: 100px;
    background-color: green;
   }

   .orange{
    width: 100px;
    height: 100px;
    background-color: orange;
   }
</style>