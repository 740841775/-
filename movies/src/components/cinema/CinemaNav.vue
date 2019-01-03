<template>
  <!-- 影院导航组件-->
  <div class="cnav">
   <div class="tags-panel">
        <ul v-for="(cinema,i) in cinematype" :key="i">
            <li>
                <div class="tags-title" v-for="(c,t) in cinema" v-if="t==0" :key="t">{{c}}:</div>
                <ul class="tags">
                    <li class="active" @click="cinemaAll()">
                        <router-link to="">全部</router-link>
                    </li>
                    <li v-for="(kinds,j) in cinema" v-if="j>0" :key="j" @click="cinemaType(kinds)">
                        <router-link to="">{{kinds}}</router-link>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
  </div>
</template>

<script>

export default {
  data() {
    return {
        cinematype:{
            cname:["品牌","保利万和国际影城","横店电影城","星美国际影城","华夏国际影城","大地影院","恒大影城","金球影城","太平洋电影城","其他"],
            caddr:["行政区","地铁附近","顺庆区","仪陇县","嘉陵区","蓬安县","阆中市","南部县","营山县","西充县","高坪区"],
            chall:["特殊厅","CGS中国巨幕厅","杜比全景声厅","DTS:X 临境音厅","4D厅","巨幕厅"]
        }
    };
  },
  created() {
    
  },
  watch: {
  },
  methods: {
      cinemaAll(){
       this.$emit("cinemaAll");
      },
   cinemaType(c) {
       console.log(c);
       this.$emit("cinemaKind",c);
   }
  },
  components: {

  }
};
</script>

<style scoped>
.tags-panel {
  border: 1px solid #e5e5e5;
  padding: 0 20px;
  margin-top: 40px;
}

.tags-panel ul {
    margin: 20px 0px;
}

.tags-title {
    height: 24px;
    line-height: 24px;
    float: left;
    color: #999;
    font-size: 14px;
}

.tags {
    margin-left: 40px!important;
}

.tags li {
    border-radius: 14px;
    padding: 3px 9px;
    display: inline-block;
    margin-left: 12px;
}

.tags li a {
    color: #333;
    font-size: 14px;
}

.tags li a:hover {
    color: #f34d41;
}

.tags li.active {
    background: #f34d41;
}

.tags li.active>a {
    color: #fff;
}
</style>
