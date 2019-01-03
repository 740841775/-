<template>
  <!-- 电影全部类型导航组件 -->
  <div>
    <div class="tags-panel">
        <ul v-for="(films,i) in filmstype" :key="i">
            <li>
                <div class="tags-title" v-for="(k,t) in films" v-if="t==0" :key="t">{{k}}:</div>
                <ul class="tags">
                    <li class="active" @click="filmsAll()">
                        <router-link to="">全部</router-link>
                    </li>
                    <li v-for="(kinds,j) in films" v-if="j>0" :key="j" @click="filmsType(kinds)">
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
      filmstype:{
        type: ["类型","爱情", "喜剧", "动画", "剧情", "恐怖", "惊悚","科幻","动作","悬疑","犯罪","冒险","战争","奇幻","运动","家庭","古装","武侠","西部","历史","传记","歌舞","黑色电影","短片","记录片","其他"],
        area: ["区域", "大陆", "美国", "韩国", "日本", "中国香港","中国台湾","泰国","印度","法国","英国","俄罗斯","意大利","西班牙","德国","波兰","澳大利亚","伊朗","其他"],
        era: ["年代","2018以后", "2018", "2017","2016","2015","2014","2013","2012","2011","2000-2010","90年代","80年代","70年代","更早"]
      }
     
    };
  },
  methods: {
      filmsType(kinds) {
        //   console.log(kinds);
          this.$emit("types",kinds);
      },
      filmsAll() {
          this.$emit("allFilms");
      }
  },
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