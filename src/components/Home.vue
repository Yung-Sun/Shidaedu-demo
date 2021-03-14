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
      </el-carousel>
    </div>
    <main class="classListWrapper">
      <Class :classInfo="classInfo" v-for="(item,index) in classInfo" :key="index" >
        <template v-slot:type>
          {{item.type}}
        </template>
        <template v-slot:course>
          <ClassDetail :imgLink="item.imageLink" v-for="(item,index) in item.course" :key="index">
            <template v-slot:name>{{item.courseName}}</template>
            <template v-slot:price>{{item.coursePrice}}</template>
            <template v-slot:count>{{item.courseCount}}</template>
          </ClassDetail>
        </template>
      </Class>
    </main>
    <div class="noDataTips">暂无数据</div>
  </div>
</template>

<script lang="ts">
import Class from './Class.vue'
import ClassDetail from './ClassDetail.vue';
export default {
  name: 'Home',
  components:{ClassDetail, Class},
  data() {
    return{
      classInfo:[
        {
          type:'系统班',
          course:[
            {courseName:'VIP特训班',coursePrice:'8800.00',courseCount:59554,imageLink:'class1.jpg'},
            {courseName:'新锐精英班',coursePrice:'6800.00',courseCount:59159,imageLink:'class2.jpg'},
            {courseName:'高薪就业取证班',coursePrice:'9980.00',courseCount:36625,imageLink:'class3.png'},
          ]
        },
        {
          type:'专题班',
          course:[
          ]
        }
      ],
    }
  }

}
</script>

<style lang="scss" scoped>
.el-carousel__item{
  img{
    width: 100vw;
  }
}
.classListWrapper{
  margin: 15px 0;
  padding: 5px 16px;
}
.noDataTips{
  text-align: center;
  color: #999;
  position: relative;
  font-size: 14px;
  margin-bottom: 40px;
}
.noDataTips:before,.noDataTips:after{
  content: '';
  width: 70px;
  height: 1px;
  border-top: 1px solid #999;
  position: absolute;
  top: 50%;
}
.noDataTips:before{
  left: 23%;
}
.noDataTips:after{
  right: 23%;
}
</style>