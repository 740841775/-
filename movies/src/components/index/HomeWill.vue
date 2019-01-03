 <template>
  <!-- 首页：即将上映组件 -->
  <div class="hot-movie">
    <!-- 头部 -->
    <div class="title">
      <span class="hot">即将上映（136部）</span>
      <router-link to="/films">
        <span class="all">全部 ></span>
      </router-link>
    </div>
    <!-- 热映电影 -->
    <div class="movies">
      <el-row :gutter="20">
        <el-col
          :span="6"
          v-for="(will,ind) in moviewill"
          :key="ind"
        >
          <router-link :to="{path:'info',query:{m_name:will.m_name}}">
            <div class="poster">
              <img
                :src="will.m_poster"
                alt=""
                srcset=""
              >
              <div class="info">
                <div class="name">{{will.m_name}}</div>
              </div>
            </div>
          </router-link>
          <!-- 购票 -->
          <div class="detail">
            <div class="people">{{will.m_people}}人想看</div>
            <div class="prebuy">
              <el-row>
                <el-col :span="12">
                  <router-link
                    to=""
                    class="prea"
                  >预告片</router-link>
                </el-col>
                <el-col :span="12">
                  <router-link :to="{path:'buy',query:{m_name:will.m_name}}">
                    <div class="prev">预售</div>
                  </router-link>
                </el-col>
              </el-row>
            </div>
          </div>
          <!-- 上映时间 -->
          <div class="date">
            {{new Date(will.m_date).getMonth()+1}}月{{new Date(will.m_date).getDate()}}日上映
          </div>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  props: ["moviewill"],
  data() {
    return {};
  },
  computed: {}
};
</script>

<style scoped>
/* 头部 */
.title {
  margin: 50px 80px 30px 0px;
}

.title > .hot {
  color: #2d98f3;
  font-size: 26px;
}

.all {
  float: right;
  color: #2d98f3;
  font-size: 14px;
}

/* 将映电影 */
.movies {
  margin-right: 60px;
}

/* 海报 */
.poster {
  background-color: #fcfcfc;
  width: 160px;
  height: 220px;
  overflow: hidden;
  position: relative;
}

.poster > img {
  width: 100%;
  height: 100%;
}

/* 海报上的阴影 */
.poster > .info {
  background: url("../../assets/shadow.png") repeat-x bottom;
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0px;
  left: 0px;
}

/* 电影名字 */
.name {
  width: 70%;
  position: absolute;
  bottom: 7px;
  left: 7px;
  color: #fcfcfc;
  font-size: 16px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

/* 预售 */
.detail {
  width: 158px;
  border: 1px solid #ccc;
  border-top: none;
  border-radius: 2px;
}

.people {
  font-size: 14px;
  color: #ffb400;
  background-color: #fbfbfb;
  text-align: left;
  padding: 10px;
}

.prebuy {
  width: 100%;
  height: 39px;
  line-height: 39px;
}

.prebuy .el-col-12 {
  text-align: center;
  font-size: 14px;
  border-right: 1px dotted #e5e5e5;
}

.prebuy .el-col-12:last-child {
  border-right: none;
}

.prebuy .prea {
  color: #999;
}

.prebuy .prev {
  font-size: 14px;
  color: #2d98f3;
}

.prev:hover {
  background-color: #2d98f3;
  color: #fcfcfc;
}

.date {
  border: none;
  color: #999;
  font-size: 14px;
  line-height: 40px;
  margin-bottom: 30px;
  text-align: center;
}
</style>