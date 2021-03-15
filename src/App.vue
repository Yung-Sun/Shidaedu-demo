<template>
  <div>
    <el-container>
      <transition name="slide">
        <el-aside style="width: 60%" v-if="menuVisible">
          <div class="asideLogo">
            <img data-v-d7b1c790="" alt="" width="45%" src="https://cdn.shidastudy.com/static/images/7e/19/d0/9a/c50a3745ea9c4a97af97cb9140d8590c.png">
          </div>
          <ul class="asideMenu">
            <li><div><a href="#">首页</a></div></li>
            <li><div><a href="#">课程商店</a></div></li>
            <li><div><a href="#">学习中心</a></div></li>
            <li><div><a href="#">个人中心</a></div></li>
            <li><div><a href="#">企业荣誉</a></div></li>
          </ul>
          <div class="asideFooter">
            <p>咨询&投诉热线：400-811-9995</p>
            <p>2018-2019 武汉师学思大教育科技有限公司</p>
            <p> ICP备案证书：<span style="color: #ba1111">鄂ICP备18024543号-1</span></p>
          </div>
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
    background: white;
    color: #333;
    z-index: 5;
    .asideLogo{
      text-align: center;
      padding-top: 50px;
    }
    .asideMenu{
      padding: 30px 0;
      //border: 1px solid;
      li:first-child{
        background: #e6e6e6;
      }
      li {
        text-align: center;
        div{
          padding: 13px;
          width: 70%;
          display: inline-block;
          border-bottom: 1px solid #e5e5e5;
          a{
            text-decoration:none;
            color:#000;
          }
        }
      }
    }
    .asideFooter{
      font-size: 12px;
      color: #bbb;
      text-align: center;
      position: absolute;
      bottom: 20px;
      left: 50%;
      transform: translateX(-50%);
      width: 100%;
      p{
        padding: 2px 0;
      }
    }
  }
  .closeMenuButton{
    position: absolute;
    background: rgba(0,0,0,0.5);
    z-index: 4;
    height: 100vh;
    width: 100vw;
  }
</style>
