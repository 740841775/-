<template>
  <div class="previewall">
    <el-row :gutter="20">
      <el-col :span="6" v-for="(p,i) in viewsPre" :key=i>
          <div class="pimg">
              <router-link :to="{path:'play', query:{p_name:p.p_name}}">
                  <img :src="p.p_pic" alt="" class="pic">
                  <img src="../../assets/play.png" alt="" class="play"> 
              </router-link>
              <div class="pinfo">
                  <router-link to="">{{p.p_title}}</router-link>
              </div>
          </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  props: ["viewsPre"],
  data() {
    return {};
  },
  methods: {
    
  }
};
</script>

<style scoped>
    .previewall {
        width: 1120px;
        margin: 30px auto;
    }

    .el-col-6 {
        margin: 30px 0px;
    }

    .pimg {
        width: 230px;
        height: 130px;
        position: relative;
    }

    .pimg .pic {
        width: 100%;
        height: 100%;
    }

    .pimg .play {
        width: 35px;
        height: 35px;
        position: absolute;
        top: 45%;
        left: 43%;
    }


    .pinfo {
        width: 230px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        margin-top: 5px;
    }

    .pinfo>a {
        color: #333;
        font-size: 14px;
    }
</style>