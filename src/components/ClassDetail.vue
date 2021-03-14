<template>
    <li class="wrapper">
      <div class="classImage">
        <img :src="require('../img/'+imgLink)" alt="课程图片">
      </div>
      <p class="className">
        <slot name="name"></slot>
      </p>
      <div class="classInfo">
        <span class="classPrice">
          ￥<slot name="price"></slot>
        </span>
        <span class="classSellCount">
          <slot name="count"></slot>人已购买
        </span>
      </div>
    </li>
</template>

<script lang="ts">
export default{
props:['imgLink']
}
</script>

<style lang="scss" scoped>
%text-overflow {
  overflow: hidden;
  text-overflow:ellipsis;
  white-space: nowrap;
}
.wrapper{
  padding-bottom: 15px;
  width: 44vw;
  .classImage{
    border-radius: 6px;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
    img{
      width: 44vw;
      height: 44*0.5vw;
    }
  }
  .className{
    padding: 5px 0;
    font-size: 14px;
    color: #333333;
    @extend %text-overflow
  }
  .classInfo{
    padding: 5px 0;
    display: flex;
    justify-content: space-between;
    .classPrice{
      font-size: 14px;
      color: red;
      @extend %text-overflow
    }
    .classSellCount{
      color: #999999;
      font-size: 12px;
      @extend %text-overflow
    }
  }
}
</style>