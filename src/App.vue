<template>
  <div>
    <el-container>
      <transition name="slide">
        <el-aside style="width: 50%" v-if="menuVisible">
          <ul>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
            <li>5</li>
          </ul>
        </el-aside>
      </transition>
      <transition name="fade">
        <div v-if="menuVisible" class="closeMenuButton" @click="closeMenu"></div>
      </transition>
      <el-main style="padding: 0;">
        <Home  @update:menuVisible='menuVisibleChange'/>
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
  },
  data(){
    return {
      menuVisible: false,
      num:0
    }
  },
  methods:  {
    menuVisibleChange(){
      this.menuVisible = !this.menuVisible;
    },
    closeMenu(){
      this.menuVisible = false
    }
  }
}
</script>

<style lang="scss" scoped>
.slide-enter-active, .slide-leave-active {
  transition: all .5s;
}
.slide-enter, .slide-leave-to {
  transform:translateX(-100vw);
}
.fade-enter-active, .fade-leave-active {
  transition: opacity .3s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}
.el-container{
  height: 100vh;
}
  .el-aside{
    position: absolute;
    height: 100vh;
    background: #b3c0d1;
    color: #333;
    z-index: 5;
  }
  .closeMenuButton{
    position: absolute;
    background: rgba(0,0,0,0.5);
    z-index: 4;
    height: 100vh;
    width: 100vw;
  }
</style>
