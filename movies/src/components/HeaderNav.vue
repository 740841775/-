<template>
  <div>
    <!--模块导航-->
    <div class="header-nav">
      <el-menu
        class="el-menu-demo"
        mode="horizontal"
        default-active
        @select="handleSelect"
      >
        <el-menu-item v-for="(play,ind) in stateplay" :key="ind" :index="ind+1+''">{{play}}</el-menu-item>
      </el-menu>
    </div>
  </div>
</template>

<script>
export default {
  props:["stateplay"],
  data() {
    return {
      
    };
  },
  methods: {
    handleSelect(state, keyPath) {
      this.$emit("filmsState",state);
      // console.log(state, keyPath);
    }
  }
};
</script>

<style scoped>
/* 模块导航 */
.header-nav {
  background-color: #47464a;
}

.el-menu.el-menu--horizontal {
  background: none;
  width: 37.3%;
  margin: 0 auto;
  border-bottom: none;
}

.el-menu--horizontal > .el-menu-item:hover {
  color: #fff;
  background: none;
}

.el-menu-item {
  font-size: 16px;
  padding: 0px 38px;
}

.el-menu--horizontal > .el-menu-item.is-active {
  border-bottom: none;
  color: #ef4238;
}
</style>