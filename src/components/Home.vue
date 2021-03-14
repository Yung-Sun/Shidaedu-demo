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


      <Class :classInfo="classInfo" v-for="(item,index) in classInfo" :key="index" >
        <template v-slot:type>
          {{item.type}}
        </template>
        <template v-slot:classDetail>
          <ClassDetail v-for="(item,index) in item.course" :key="index">
            <template v-slot:name>{{item.courseName}}</template>
            <template v-slot:price>{{item.coursePrice}}</template>
            <template v-slot:count>{{item.courseCount}}</template>
          </ClassDetail>
        </template>
      </Class>


    </main>
  </div>
</template>

<script lang="ts">
import Class from './Class.vue'
import ClassDetail from './ClassDetail.vue'

export default {
  name: 'Home',
  components:{Class,ClassDetail},
  data() {
      return{
        classInfo:[
          {
            type:'系统班',
            course:[
              {courseName:'VIP特训班',coursePrice:'8800.00',courseCount:59554},
              {courseName:'新锐精英班',coursePrice:'6800.00',courseCount:59159},
              {courseName:'高薪就业取证班',coursePrice:'9980.00',courseCount:36625},
            ]
          },
          {
            type:'专题班',
            course:[
              {courseName:'新锐精英班88',coursePrice:'8888.00',courseCount:88888},
              {courseName:'高薪就业取证班88',coursePrice:'8888.00',courseCount:88888},
            ]
          }
        ],
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