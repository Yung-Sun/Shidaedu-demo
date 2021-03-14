<template>
  <div>
    <el-container>
      <el-aside style="width: 150px" v-if="false">Aside</el-aside>
      <el-main style="padding: 0;">
        <Home/>
      </el-main>
    </el-container>
  </div>
</template>

<script>

import Home from './components/Home.vue'
export default {
  name: 'App',
  components: {
    Home
  }
}
</script>

<style lang="scss" scoped>
.el-container{
  height: 100vh;
}
  .el-aside{
    background: #b3c0d1;
    color: #333;
  }
  .el-main{
  }
</style>
