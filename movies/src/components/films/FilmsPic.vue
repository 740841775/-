<template>
  <!-- 电影海报组件 -->
  <div class="filmspic">
    <el-row :gutter="20">
      <el-col :span="4" v-for="(pic,ind) in allfilms" :key="ind">
        <div class="poster">
            <router-link :to="{path:'info',query:{m_name:pic.m_name}}">
                <img :src="pic.m_poster" alt="" srcset="">
            </router-link>
        </div>
        <div class="detail">
            <router-link :to="{path:'info',query:{m_name:pic.m_name}}">
                <p>{{pic.m_name}}</p>
            </router-link>
            <p>{{pic.m_hot}}</p>
        </div>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  props:["allfilms"],
  data() {
    return {};
  }
};
</script>

<style scoped>
/* 海报 */
.filmspic {
    margin-top: 30px;
} 

.poster {
    width: 160px;
    height: 220px;
    border: 1px solid #efefef;
}

.poster img {
    width: 100%;
    height: 100%;
}

.detail {
    width: 160px;
    text-align: center;
    line-height: 30px;
    margin-top: 5px;
    margin-bottom: 30px;
}

.detail>a {
    color: #333;
}

.detail>a>p {
    max-width: 160px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}

.detail>p {
    color: #ffb400;
}

</style>