<template>
  <!-- 影院导航组件-->
  <div class="clist">
    <h3>影院列表</h3>
    <div class="cinema">
        <ul>
            <li v-for="(c,i) in allcinema" :key="i">
                <div class="c-left">
                    <router-link :to="{path:'select',query:{c_name:c.c_name}}">{{c.c_name}}</router-link>
                    <p>地址：{{c.c_adr}}</p>
                </div>
                <div class="c-right">
                    <router-link :to="{path:'select',query:{c_name:c.c_name}}">选座购票</router-link>
                </div>
            </li>
        </ul>
    </div>
  </div>
</template>

<script>
export default {
  props:["allcinema"],
  data() {
    return {};
  },
  created() {},
  watch: {},
  methods: {},
  components: {}
};
</script>

<style scoped>
.clist {
    margin-top: 20px;
}

h3 {
  display: inline-block;
  margin: 20px 0px;
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

/* 电影列表 */
.cinema>ul>li {
    width: 100%;
    line-height: 20px;
    border-bottom: 1px #e5e5e5 dashed;
    padding:20px 0px;
    position: relative;
}

.c-left>a {
    color: #333;
    font-size: 16px;
}

.c-left>a:hover {
    color: #f03d37;
}

.c-left>p {
    color: #999;
    font-size: 14px;
    margin-top: 5px;
}

.c-right {
    width: 80px;
    height: 45px;
    line-height: 45px;
    position: absolute;
    top: 20px;
    right: 0px;
}

.c-right>a {
    width: 100%;
    height: 30px;
    background-color: #f03d37;
    color: #fff;
    font-size: 14px;
    border-radius: 100px;
    display: inline-block;
    text-align: center;
    line-height: 30px;
}
</style>
