<template>
  <!-- 榜单电影信息组件 -->
  <div class="list">
    <ul>
      <li
        v-for="(list,ind) in movielist"
        :key="ind"
      >
        <i class="border">{{ind+1}}</i>
        <!-- 海报 -->
        <div class="poster">
          <router-link :to="{path:'info',query:{m_name:list.m_name}}">
            <img
              :src="list.m_poster"
              alt=""
              srcset=""
            >
          </router-link>
        </div>
        <!-- 电影信息 -->
        <div class="info">
          <div class="info-main">
            <div class="name">
              <p>
                <router-link to="">
                  {{list.m_name}}
                </router-link>
              </p>
              <p class="actor">主演 : {{list.m_actor}}</p>
              <p>上映时间 : {{new Date(list.m_date).getFullYear()}}-{{new Date(list.m_date).getMonth()+1}}-{{new Date(list.m_date).getDate()}}</p>
            </div>
            <div class="m-hot">
              <p>{{list.m_hot}}</p>
            </div>
          </div>
        </div>
        <div style="clear:both"></div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  props: ["movielist"],
  data() {
    return {};
  }
};
</script>

<style scoped>
.list {
  width: 1000px;
  margin: 50px auto;
}

.list > ul > li {
  width: 100%;
  height: 220px;
  margin-bottom: 30px;
}

/* 排名 */
.border {
  display: inline-block;
  width: 50px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  font-size: 18px;
  color: #999;
  font-weight: 700;
  background: #ffb400;
  color: #fff;
  float: left;
}

/* 海报 */
.poster {
  width: 160px;
  height: 220px;
  float: left;
  margin-left: 80px;
}

.poster img {
  width: 100%;
  height: 100%;
}

/* 信息 */
.info {
  width: 680px;
  margin-left: 30px;
  height: 219px;
  float: right;
  line-height: 219px;
  border-bottom: 1px solid #e5e5e5;
}

/* 垂直居中 */
.info-main {
  width: 100%;
  display: inline-block;
  vertical-align: middle;
  line-height: 1;
}

.info-main > .name {
  font-size: 16px;
  width: 420px;
  float: left;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.name > p {
  height: 26px;
}

.name > p > a {
  font-size: 26px;
  color: #333;
  width: 240px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.name > p:first-child {
  margin-bottom: 20px;
}

.name > p:last-child {
  color: #999;
}

.actor {
  width: 100%;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.info-main > .m-hot {
  width: 260px;
  color: #ffb400;
  text-align: right;
  display: inline-block;
  font-weight: 700;
  font-size: 22px;
  line-height: 100px;
}
</style>