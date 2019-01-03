<template>
  <!-- 预告片播放页面 -->
  <div>
    <div class="preview">
      <!-- 中间内容 -->
      <div class="container">
        <el-row :gutter="20">
          <!-- 播放视频 -->
          <el-col
            :span="16"
            class="main-play"
            v-for="(play,ind) in playpre"
            :key="ind"
          >
            <div class="playing">
              <video
                width="750"
                height="450"
                controls
                autoplay
                :src="play.p_url"
              >
              </video>
            </div>
            <div class="play-info">
              <p class="p-name">{{play.p_name}}</p>
              <p class="p-info">{{new Date(play.m_date).getFullYear()}}-{{new Date(play.m_date).getMonth()+1}}-{{new Date(play.m_date).getDate()}}上映&nbsp;&nbsp;
                {{play.m_type}}
              </p>
            </div>
          </el-col>
          <!-- 相关视频 -->
          <el-col
            :span="8"
            class="r-bg"
          >
            <Prehot
              :preall="allpre"
              @preChange="changeName"
            ></Prehot>
          </el-col>
        </el-row>
      </div>
    </div>
    <div class="footer">
      <p>枫叶传媒 | 关于我们 | 联系方式 | 招聘信息 | 友情链接 | 投资者关系</p>
      <p>Copyright@ 2015-2018 上海影视文化传媒有限公司 版权所有</p>
      <p>京ICP备008123号 京ICP证160733号 信息网络传播视听节目许可证090821号 京公网安备123892701号 京网文[2015]0098-167号</p>
    </div>
  </div>
</template>

<script>
import Prehot from "@/components/news/Prehot";

export default {
  name: "PlayPage",
  data() {
    return {
      allpre: [],
      p_name: "",
      playpre: ""
    };
  },
  created() {
    this.getPre();
  },
  watch: {
    p_name: function() {
      this.getPre();
    }
  },
  methods: {
    changeName(p_name) {
      console.log(p_name);
      this.p_name = p_name;
    },
    getPre() {
      let This = this;
      this.p_name = this.$route.query.p_name;
      console.log(this.p_name);
      This.axios
        .get("/play", {
          params: {
            p_name: This.p_name
          }
        })
        .then(function(response) {
          console.log(response.data);
          This.allpre = response.data.allpre;
          This.playpre = response.data.playpre;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Prehot: Prehot
  }
};
</script>

<style scoped>
.preview {
  background: #26282b;
  color: #fff;
  padding-top: 20px;
}

.container {
  width: 1200px;
  margin: 0 auto;
}

.playing {
  background: #000;
}

.play-info {
  margin-top: 20px;
  line-height: 25px;
}

.p-name {
  width: 550px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 18px;
  color: #fff;
}

.play-info {
  font-size: 12px;
  color: #fff;
}

/* 右侧列表 */
.r-bg {
  background-color: rgba(0, 0, 0, 0.3);
  height: 548px;
}

/* 底部 */
.footer {
  text-align: center;
  font-size: 12px;
  margin-top: 20px;
  line-height: 25px;
}
</style>
