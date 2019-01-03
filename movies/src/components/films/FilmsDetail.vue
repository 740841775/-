<template>
  <div class="detail">
      <div v-for="(f,i) in filminfo" :key="i">
        <el-tabs v-model="activeName" @tab-click="handleClick">
        <el-tab-pane label="介绍" name="first">
            <h3>剧情简介</h3>
            <div class="info">
                {{f.m_info}}
            </div>
        </el-tab-pane>
        <el-tab-pane label="演职人员" name="second"></el-tab-pane>
        <el-tab-pane label="奖项" name="third" disabled></el-tab-pane>
        <el-tab-pane label="图集" name="fourth"></el-tab-pane>
        </el-tabs>
      </div>
  </div>
</template>

<script>
export default {
  name: "FilmsDetail",
  props:["filminfo"],
  data() {
    return {
     activeName: 'first'
    };
  },
  methods: {
      handleClick(tab, event) {
        // console.log(tab, event);
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
    padding: 0;
    font-weight: 400;
    font-size: 18px;
    color: #333;
    line-height: 18px;
}

h3:before {
    float: left;
    content: "";
    display: inline-block;
    width: 4px;
    height: 18px;
    margin-right: 6px;
    background-color: #ef4238;
}

.info {
    font-size: 14px;
    line-height: 26px;
}

</style>
