 <template>
  <!-- 首页：正在热映组件 -->
  <div class="hot-movie">
    <!-- 头部 -->
    <div class="title">
      <span class="hot">正在热映（36部）</span>
      <router-link to="/films">
        <span class="all">全部 ></span>
      </router-link>
    </div>
    <!-- 热映电影 -->
    <div class="movies">
      <el-row :gutter="20">
        <el-col :span="6" v-for="(hot,ind) in moviehot" :key="ind">
          <router-link :to="{path:'info',query:{m_name:hot.m_name}}">
            <div class="poster">
              <img
                :src="hot.m_poster"
                alt=""
                srcset=""
              >
              <div class="info">
                <div class="name">{{hot.m_name}}</div>
                <i class="score">{{hot.m_score}}</i>
              </div>
            </div>
          </router-link>
          <!-- 购票 -->
          <router-link :to="{path:'buy',query:{m_name:hot.m_name}}">
            <div class="buy">购票</div>
            
          </router-link> 
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
export default {
  props: ["moviehot"],
  data() {
    return {};
  }
};
</script>

<style scoped>
/* 头部 */
.title {
  margin-right: 80px;
  margin-bottom: 30px;
}

.title > .hot {
  color: #ef4238;
  font-size: 26px;
}

.all {
  float: right;
  color: #ef4238;
  font-size: 14px;
}

.all:hover {
  border-bottom: #ef4238;
}

/* 热映电影 */
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

.score {
  position: absolute;
  right: 10px;
  bottom: 7px;
  color: #ffb400;
}

/* 购票 */
.buy {
  width: 158px;
  height: 39px;
  line-height: 39px;
  text-align: center;
  border: 1px solid #ccc;
  border-top: none;
  border-radius: 2px;
  margin-bottom: 30px;
  color: #ef4238;
  font-size: 14px;
}

.buy:hover {
  background-color: #ef4238;
  color: #fff;

}

</style>