<template>
  <div class="previewall">
    <!-- <el-row>
      <el-col :span="8" v-for="(t,i) in photos" :key=i>
          <div class="pinfo">
                <router-link to="">{{t.t_info}}</router-link>
          </div>
          <div class="pimg">
               <router-link :to="{path:'play', query:{p_name:t.t_name}}">
                   <img :src="t.t_img" alt="" class="pic">
               </router-link> 
          </div>
      </el-col>
    </el-row> -->
    <ul>
        <li v-for="(t,i) in photos" :key=i>
            <div class="pimg">
               <router-link to="">
                   <img :src="t.t_img" alt="" class="pic">
               </router-link> 
            </div>
        </li>
        <div style="clear:both"></div>
    </ul>
  
  </div>
</template>

<script>
export default {
  props: ["photos"],
  data() {
    return {
         radio7: '1',
        radio8: '1',
        radio9: '1',
        radio10: '1'
    };
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

    .previewall>ul>li {
        float: left;
        margin: 20px 10px;
    }

    .el-col-6 {
        margin: 30px 0px;
    }

    .pimg {
        width: 230px;
        height: 130px;
    }

    .pimg .pic {
        width: 100%;
        height: 100%;
    }

    
</style>