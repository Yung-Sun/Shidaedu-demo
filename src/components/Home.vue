<template>
  <div>
    <div class="banner">
      <el-carousel height="60vw"
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
      <div class="systemClass">
        <div class="title">
          <span class="classType">系统班</span>
          <a class="more" href="#">更多</a>
        </div>
        <div >
          <ul class="classList">
            <li >
              <div class="image"></div>
              <div class="className">VIP特训班</div>
              <div class="classPrice">￥8800.00</div>
              <div class="classSellCount">59554人已购买</div>
            </li>
            <li >
              <div class="image"></div>
              <div class="className">新锐精英班</div>
              <div class="classPrice">￥6800.00</div>
              <div class="classSellCount">59158人已购买</div>
            </li>
            <li >
              <div class="image"></div>
              <div class="className">高薪就业取证班</div>
              <div class="classPrice">￥9980.00</div>
              <div class="classSellCount">36625人已购买</div>
            </li>
          </ul>
        </div>
      </div>
    </main>
  </div>
</template>

<script lang="ts">
export default {
  data(){
    return {

    }
  }
}
</script>

<style lang="scss" scoped>
.el-carousel__item {
  background: #333;
  img{
    width: 100vw;
  }
}
.classListWrapper{
  .systemClass{

  }
}


</style>