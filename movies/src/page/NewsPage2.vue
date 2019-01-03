<template>
  <!-- 榜单页面 -->
  <div class="list">
    <!-- 头部导航 -->
    <Header></Header>
    <header-nav
      :stateplay="liststate"
      @filmsState="changeState"
    ></header-nav>
    <!-- 中间内容 -->
    <div class="container">
      <!-- <Preview :viewsPre="previews"></Preview> -->
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import HeaderNav from "@/components/HeaderNav";
// import Preview from "@/components/news/Preview";
import Footer from "@/components/Footer";

export default {
  name: "NewsPage",
  data() {
    return {
      liststate: ["推荐首页","预告片", "精彩图集"],
      previews: [""],
      m_state: "1"
    };
  },
  created() {
    // this.getNews();
  },
  //   watch: {
  //     m_state:function() {
  //     this.getFilms();
  //     }
  //   },
  methods: {
    changeState(state) {
      console.log(state);
      // this.m_state = state;
      this.$router.push("/news?m_state="+state+"");
    },
    getNews() {
      let This = this;
      This.axios
        .get("/news", {
          params: {
            m_state: This.m_state
          }
        })
        .then(function(response) {
          console.log(response.data);
          This.previews = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    HeaderNav: HeaderNav,
    // Preview: Preview,
    Footer: Footer
  }
};
</script>

<style scoped>
.container {
  width: 1200px;
  margin: 0 auto;
}

/* 中间内容 */
.el-row {
  margin-bottom: 20px;
}
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #d3dce6;
}
.bg-purple-light {
  background: #e5e9f2;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}
</style>
