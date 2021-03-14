<template>
    <div class="wrapper">
      {{course}}
      <div class="classImage">
        <img src="../img/class1.jpg" alt="VIP特训班">
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
    </div>
</template>

<script lang="ts">

export default{
props:['course']
}
</script>

<style lang="scss" scoped>
$blue: #0080ff;
%text-overflow {
  overflow: hidden;
  text-overflow:ellipsis;
  white-space: nowrap;
}
.wrapper{
  padding-bottom: 15px;
  //border: 1px solid #b3c0d1;
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