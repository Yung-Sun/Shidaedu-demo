<template>
    <div>
      {{courseName}}
      <div class="systemClass">
        <div class="title">
          <span class="classType">
            <slot name="type"/>
          </span>
          <a class="more" href="#">更多</a>
        </div>
        <ul class="classList">
          <slot name="course"/>
        </ul>
      </div>
    </div>
</template>

<script lang="ts">
export default{
  props:['courseName']
}
</script>

<style lang="scss" scoped>
$blue: #0080ff;
%text-overflow {
  overflow: hidden;
  text-overflow:ellipsis;
  white-space: nowrap;
}
.systemClass{
  padding: 10px 0;
  .title{
    display: flex;
    justify-content: space-between;
    align-items: center ;
    .classType{
      color: $blue;
      font-size: 16px;
      display: flex;
    }
    .classType:before{
      content: '';
      display: inline;
      width: 4px;
      height: 18px;
      background: $blue;
      border-radius: 2px;
      margin-right: 5px;
    }
    a{
      text-decoration: none;
      color: #999;
      font-size: 14px;
    }
  }
  .classList{
    margin-top: 20px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    li{
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
  }
}
</style>