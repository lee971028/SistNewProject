<template>
    <div>
      <h1 class="alert alert-success">CompositionApi입니다</h1>

      <h3>Counter:{{ counter }}</h3>
      <button v-on:click="numIncre">증가</button>
      <button @click="numDecre">감소</button>
    </div>
</template>

<script>
import { onMounted, ref } from 'vue';

export default {
    setup () {
        
         const counter=ref(0);
         const numIncre=()=>counter.value++;
         const numDecre=()=>counter.value--;
        

         onMounted(()=>{
            console.log("컴포넌트가 마운트됨");
         })

        return {
            //return에 변수나 메서드명 등록안하면 사용불가
            counter,
            numIncre,
            numDecre
        }
    }
}
</script>

<style lang="scss" scoped>

</style>