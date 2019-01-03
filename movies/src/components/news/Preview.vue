 <template>
  <!-- 热点：预告片组件 -->
  <div class="preview">
    <el-row :gutter="50">

      <!-- 左边 预告片速递-->
      <el-col
        :span="16"
        class="left-pre"
      >
        <!-- 头部 -->
        <div class="title">
          <span class="hot">预告片速递</span>
          <router-link to="">
            <span class="all">全部 ></span>
          </router-link>
        </div>
        <el-row :gutter="20">
          <el-col :span="15">
            <!-- 第一个 大图 -->
            <div
              class="video-one"
              v-for="(pre,ind) in viewsPre"
              :key="ind"
              v-if="ind==0"
            >
              <router-link :to="{path:'play', query:{p_name:pre.p_name}}">
                <img
                  :src="pre.p_pic"
                  alt=""
                  srcset=""
                >
                <div class="play playone">
                  <div class="p-title one-title">
                    <p>{{pre.p_title}}</p>
                  </div>
                  <i>
                    <img
                      src="../../assets/play.png"
                      alt=""
                      srcset=""
                    >

                  </i>
                </div>
              </router-link>
            </div>
            <!-- 大图下面两个 -->
            <div>
              <el-row :gutter="20">
                <el-col
                  :span="12"
                  v-for="(pre,ind) in viewsPre.slice(1,3)"
                  :key="ind"
                >
                  <div class="bvideo">
                    <router-link :to="{path:'play', query:{p_name:pre.p_name}}">
                      <img
                        :src="pre.p_pic"
                        alt=""
                        srcset=""
                      >
                      <div class="play">
                        <div class="p-title">
                          <p>{{pre.p_title}}</p>
                        </div>
                        <i>
                          <img
                            src="../../assets/play.png"
                            alt=""
                            srcset=""
                          >
                        </i>
                      </div>
                    </router-link>
                  </div>
                </el-col>
              </el-row>
            </div>
          </el-col>
          <!-- 右边三张小图 -->
          <el-col :span="9">
            <div
              v-for="(pre,ind) in viewsPre.slice(3,6)"
              :key="ind"
              class="rvideo"
            >
              <router-link :to="{path:'play', query:{p_name:pre.p_name}}">
                <img
                  :src="pre.p_pic"
                  alt=""
                  srcset=""
                >
                <div class="play">
                  <div class="p-title">
                    <p>{{pre.p_title}}</p>
                  </div>
                  <i>
                    <img
                      src="../../assets/play.png"
                      alt=""
                      srcset=""
                    >

                  </i>
                </div>
              </router-link>
            </div>
          </el-col>
        </el-row>
      </el-col>

      <!-- 右边 热门预告 -->
      <el-col :span="8">
        <!-- 头部 -->
        <div class="title">
          <span class="hot">热门预告片</span>
        </div>
        <div
          v-for="(pre,ind) in viewsPre"
          :key="ind"
          v-if="ind<5"
          class="hotpre"
        >
          <div class="l-pic">
            <router-link :to="{path:'play', query:{p_name:pre.p_name}}">
              <img
                :src="pre.p_pic"
                alt=""
                srcset=""
                class="l-poster"
              >
              <i>
                <img
                  src="../../assets/play.png"
                  alt=""
                  srcset=""
                >
              </i>
            </router-link>
          </div>
          <div style="clear:both"></div>
          <div class="r-info">
            <p>
              <router-link :to="{path:'play', query:{p_name:pre.p_name}}">{{pre.p_title}}</router-link>
            </p>
          </div>
        </div>
        <div style="clear:both"></div>
      </el-col>
    </el-row>

  </div>
</template>

<script>
export default {
  props: ["viewsPre"],
  data() {
    return {};
  }
};
</script>

<style scoped>

.preview {
  margin-top: 30px;
}

/* 头部 */
.title {
  margin-right: 80px;
  margin-bottom: 30px;
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

.all:hover {
  border-bottom: #ef4238;
}

/* 预告片 */
.left-pre a {
  color: #fff;
  font-size: 14px;
}

.video-one {
  margin-bottom: 20px;
  position: relative;
}

.bvideo {
  position: relative;
}

.rvideo {
  margin-bottom: 14px;
  position: relative;
}

.play {
  position: absolute;
  bottom: 4px;
  left: 0px;
  background: url("../../assets/shadow.png") repeat-x bottom;
  padding: 60px 40px 0 0;
}

.playone {
  padding: 60px 180px 0 0;
}

.p-title {
  position: relative;
  left: 5px;
  bottom: 30px;
}

.p-title > p {
  width: 190px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.one-title > p {
  width: 300px;
}

.play img {
  position: absolute;
  bottom: 10px;
  right: 10px;
}

/* 热门预告 */

.hotpre {
  position: relative;
  margin-bottom: 20px;
}

.l-pic {
  width: 120px;
  height: 68px;
  float: left;
  position: relative;
}

.l-poster {
  width: 100%;
  height: 100%;
}

.l-pic i > img {
  width: 24px;
  height: 24px;
  position: absolute;
  bottom: 5px;
  right: 5px;
}

.r-info {
  width: 224px;
  position: absolute;
  top: 20px;
  right: 0px;
}

.r-info > p {
  width: 224px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.r-info a {
  font-size: 14px;
  color: #333;
}
</style>