<template>
  <div>
    <div class="sel-movie">
      <ul>
        <li
          :class="activeClass==i?'active':'mlist'"
          v-for="(f,i) in selmovie"
          :key="i"
          @click="changeClass(i,f.m_name)"
        >
          <img :src="f.m_poster">
        </li>
      </ul>
    </div>
    <div
      class="movie-info"
      v-for="(f,i) in selmovie"
      v-if="activeClass==i"
      :key="i"
    >
      <div class="name">
        <h3>{{f.m_name}}</h3>
        <span>{{f.m_score}}</span>
      </div>
      <div class="desc">
        <div>
          <span class="tit">时长:</span>
          <span class="det">{{f.m_time}}</span>
        </div>
        <div>
          <span class="tit">类型:</span>
          <span class="det">{{f.m_type}}</span>
        </div>
        <div>
          <span class="tit">主演:</span>
          <span class="det">{{f.m_actor}}</span>
        </div>
      </div>
      <div class="line"></div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["selmovie"],
  data() {
    return {
      activeClass: 0
    };
  },
  methods: {
    changeClass(i,m_name) {
        this.activeClass = i;
        this.$emit("changeClass",m_name);
    }
  }
};
</script>

<style scoped>
/* 电影 */
.sel-movie {
  width: 100%;
  height: 280px;
  background-color: #ededed;
  margin-top: 100px;
}

ul {
  padding: 20px;
}

/* 电影默认样式 */
.mlist {
  width: 132px;
  height: 186px;
  border: 4px solid #fff;
  float: left;
  margin-right: 20px;
}

/* 电影选中样式 */
.active {
  width: 162px;
  height: 227px;
  border: 4px solid #f24030;
  float: left;
  margin-right: 20px;
}

li > img {
  width: 100%;
  height: 100%;
}

/* 电影信息 */
.movie-info {
  margin-left: 30px;
  margin-top: 20px;
}

.name > h3 {
  display: inline-block;
  margin: 0 20px 20px 0;
  font-size: 26px;
  font-weight: 400;
  color: #333;
}

.name > span {
  display: inline-block;
  font-size: 24px;
  color: #faaf00;
}

.desc > div {
  display: inline-block;
  margin-right: 40px;
}

.desc .tit {
  color: #999;
  font-size: 14px;
}

.desc .det {
  color: #151515;
  font-size: 14px;
}

.line {
  width: 100%;
  height: 2px;
  background-color: #e5e5e5;
  margin-top: 20px;
}
</style>
