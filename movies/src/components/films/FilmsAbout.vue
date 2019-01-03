<template>
  <div class="about">
        <h3>其他电影</h3>
        <el-row :gutter="20">
            <el-col :span="8" class="poster" v-for="(f,i) in filmabout" :key="i" @click.native="changeFilm(f.m_name)">
                <router-link :to="{path:'info',query:{m_name:f.m_name}}">
                    <img :src="f.m_poster" alt="" srcset="">
                </router-link>
                <div class="name">
                    <router-link :to="{path:'info',query:{m_name:f.m_name}}">{{f.m_name}}</router-link>
                </div>
            </el-col>
        </el-row>
  </div>
</template>

<script>
export default {
  name: "FilmsDetail",
  props: ["filmabout"],
  data() {
    return {
      activeName: "first"
    };
  },
  methods: {
    handleClick(tab, event) {
      // console.log(tab, event);
    },
    changeFilm(m_name) {
      // console.log(m_name);
      this.$emit("filmChange",m_name);
    }
  }
};
</script>

<style scoped>
.detail .el-tabs__item {
  font-size: 18px !important;
}

.el-tabs__item.is-active {
  color: #ef4238;
}

h3 {
  display: inline-block;
  margin: 20px 0px;
  font-weight: 400;
  font-size: 18px;
  color: #333;
  line-height: 18px;
}

h3:before {
  float: left;
  content: "";
  width: 4px;
  height: 18px;
  margin-right: 6px;
  background-color: #ef4238;
}

/* 海报 */
.poster {
    width: 138px;
    height: 150px;
    margin-bottom: 60px;
}

.poster img {
    width: 100%;
    height: 100%;
}

.name {
    margin-top: 10px;
    font-size: 14px;
    text-align: center;
    width: 130px;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}

.name a {
    color: #333;
}


</style>
