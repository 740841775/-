<template>
  <!-- 电影详情页面 -->
  <div>
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
    <films-info :movie="film" :ticket="buy" :route="path"></films-info>
    <!-- 简介 -->
    <div class="content">
      <el-row :gutter="80">
        <el-col :span="15">
          <films-detail :filminfo="film"></films-detail>
        </el-col>
        <el-col :span="9">
          <films-about :filmabout="otherfilm" @filmChange="changefilm"></films-about>
        </el-col>
      </el-row>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import FilmsInfo from "@/components/FilmsInfo";
// import FilmsInfo from "@/components/films/FilmsInfo";
import FilmsDetail from "@/components/films/FilmsDetail";
import FilmsAbout from "@/components/films/FilmsAbout";
import Footer from "@/components/Footer";

export default {
  name: "InfoPage",
  data() {
    return {
     buy:"特惠购票",
     path:"buy",
     m_name:"",
     film:[],
     otherfilm:[]
    };
  },
  created() {
    this.getInfo();
    this.getFilms();
  },
  watch: {
    m_name:function() {
      this.getInfo();
      this.getFilms();
    }
  },
  methods: {
    changefilm(m_name) {
      // console.log(m_name);
      this.m_name=m_name;
    },
    getInfo() {
      let This = this;
      this.m_name=this.$route.query.m_name;
      This.axios.get("/info",{
        params:{
          m_name:This.m_name,
        }
      })
        .then(function(response) {
          // console.log(response.data);
          This.film = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    getFilms() {
      let This = this;
       This.axios.get("/otherfilms",{
        params:{
          m_name:This.m_name
        }
      })
        .then(function(response) {
          // console.log(response.data);
          This.otherfilm = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    FilmsInfo:FilmsInfo,
    FilmsDetail:FilmsDetail,
    FilmsAbout:FilmsAbout,
    Footer: Footer
  }
};
</script>

<style scoped>
.film {
  width: 100%;
  min-width: 1200px;
  background: url("../assets/info-bg.png") 50% no-repeat #392f59;
}

.main {
    width: 1032px;
    margin: 0 auto;
    height: 376px;
    position: relative;
}

/* 海报 */
.main-pic {
    width: 240px;
    height: 330px;
    position: absolute;
    bottom: -15px;
    left: 0px;
}

.main-pic>img {
    width: 100%;
    height: 100%;
    border: 4px solid #fff;
}

/* 信息 */
.main-info {
    width: 870px;
    height: 300px;
    position: relative;
    top: 60px;
    left: 285px;
    /* background-color: aquamarine; */
}

.name {
    position: absolute;
    top: 0px;
    left: 0px;
    color: #fff;
    line-height: 30px;
}

.name>h3 {
    font-size: 26px;
    font-weight: 700;
}

.name>.ename {
    font-size: 18px;
}

.name>ul>li {
    font-size: 14px;
}

/* 想看 */
.btn {
    width: 260px;
    height: 86px;
    position: absolute;
    bottom: 10px;
    left: 0px;
}

.like>a {
    float: left;
    width: 120px;
    height: 25px;
    background-color: #756189;
    margin-right: 10px;
    padding-top: 11px;
    text-align: center;
    font-size: 14px;
    line-height: 16px;
    color: #fff;
    border-radius: 2px;
}

.like i {
  display: inline-block;
  vertical-align: middle;
  width: 16px;
  height: 16px;
  margin-top: -3px;
  margin-right: 2px;
}

.buy {
    margin-top: 10px;
    width: 250px;
    height: 40px;
    font-size: 16px;
    line-height: 40px;
    text-align: center;
    border-radius: 2px;
    padding: 0;
    color: #fff;
    background-color: #df2d2d;
}

.buy>a {
  color: #fff;
}


/* 简介 */
.content {
  width: 1200px;
  margin: 60px auto 30px;
} 
</style>
