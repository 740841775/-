<template>
  <div class="page">
    <el-pagination
      background
      layout="prev, pager, next"
      :total="allnum"
      :page-size="pagenum"
      :current-page="current"
      @current-change="changeCurrent"
    >
    </el-pagination>
  </div>
</template>

<script>
export default {
  props:["allnum","pagenum","current"],
  data() {
    return {
      
    };
  },
  methods: {
    changeCurrent(c) {
      // console.log(c);
      this.$emit("currentChange",c);
    }
  },
};
</script>

<style scoped>
    .page {
        width: 400px;
        margin: 30px auto;
    }
</style>
