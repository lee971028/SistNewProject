<template>
    <div>
        <h1 class="alert alert-info">FourthApp 입니다</h1>
        <!-- <li>{{ fruitArray[0] }}</li>
        <li>{{ fruitArray[1] }}</li>
        <li>{{ fruitArray[2] }}</li> -->

        <li v-for="fruit in fruitArray" :key="fruit">{{ fruit }}</li>
        <li v-for="info in infoArray" :key="info">{{ info }}</li>
        <li v-for="info in infoArray" :key="info">{{ info.id }}/{{ info.user }}</li>
    </div>
</template>

<script>
export default {
    setup () {
        
        const fruitArray=['appe','banana','orange'];
        const infoArray=[{id:0,user:'영수'},{id:1,user:'영식'},{id:2,user:'영철'},{id:3,user:'광수'}]

        return {
            fruitArray,
            infoArray
        }
    }
}
</script>

<style lang="scss" scoped>

</style>