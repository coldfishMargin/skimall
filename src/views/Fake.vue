<template>
    <h1>正在处理</h1>
</template>
<script>
export default {
mounted(){
    setTimeout(()=>{
        this.$router.push('/person')

    },800)

}
}
</script>