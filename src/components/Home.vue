<template>
  <div>
    <div class="banner">
      <el-carousel height="55vw"
                   :autoplay="true"
                   arrow="never"
                   trigger="click"
      >
        <!--可继续增加el-carousel-item-->
        <el-carousel-item>
          <img src="../img/banner.jpg" alt="轮播图">
        </el-carousel-item>
        <el-carousel-item>
          <img src="../img/banner.jpg" alt="轮播图">
        </el-carousel-item>
        <el-carousel-item>
          <img src="../img/banner.jpg" alt="轮播图">
        </el-carousel-item>
      </el-carousel>
    </div>
    <main class="classListWrapper">
      <Class v-for="(item,index) in classType" :key="index" :classType="item"/>
    </main>
  </div>
</template>

<script lang="ts">
import Class from './Class.vue'
export default {
  components:{Class},
  data(){
    return {
      classType: ['系统班','专题班','上进班']
    }
  }
}
</script>

<style lang="scss" scoped>
$blue: #0080ff;

// 文本溢出显示省略号
%text-overflow {
  overflow: hidden;
  text-overflow:ellipsis;
  white-space: nowrap;
}

.el-carousel__item{
  background: #ddd;
  img{
    width: 100vw;
  }
}
.classListWrapper{
  margin: 15px 0;
  padding: 5px 16px;
}
</style>