<template>
  <div class="right-play">
    <div class="about">相关视频</div>
    <ul>
      <li
        v-for="(play,ind) in preall.slice(1,5)"
        :key="ind"
        @click="changePre(play.p_name)"
      >
        <div class="r-poster">
          <router-link :to="{path:'play', query:{p_name:play.p_name}}">
            <img
              :src="play.p_pic"
              alt=""
              srcset=""
            >
          </router-link>
        </div>
        <div class="r-info">
          <p>
            <router-link :to="{path:'play', query:{p_name:play.p_name}}">{{play.p_title}}</router-link>
          </p>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
    props:["preall"],
  data() {
    return {};
  },
  methods: {
    changePre(p_name) {
      this.$emit("preChange",p_name);
    }
  },
};
</script>

<style scoped>
.right-play li {
  margin-bottom: 15px;
  position: relative;
}

.about {
  margin: 10px 0px;
  font-size: 14px;
}

.r-poster {
  width: 138px;
  height: 82px;
}

.r-poster img {
  width: 100%;
  height: 100%;
}

.r-info {
  width: 255px;
  position: absolute;
  top: 0px;
  right: 0px;
  line-height: 80px;
}

.r-info > p {
  width: 200px;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  margin-left: 10px;
}

.r-info a {
  color: #fff;
  font-size: 16px;
}

.r-info a:hover {
  color: #ef4238;
}
</style>