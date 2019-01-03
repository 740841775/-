<template>
  <!-- 首页页面 -->
  <div class="home">
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
    <div class="container">
      <el-row>
        <el-col :span="16">
          <!-- 热映电影 -->
          <home-hot :moviehot="hotmovie"></home-hot>
          <!-- 将映电影 -->
          <home-will :moviewill="willmovie"></home-will>
        </el-col>

        <el-col :span="8">
          <!-- 票房盘点 -->
          <home-ticket :moviehot="hotmovie"></home-ticket>
          <div class="tickets-day">
            <h3>今日大盘</h3>
            <div>
              <p>
                <span class="num">8658.3</span>万
                <span class="more">查看更多 ></span>
              </p>
              <p class="time">
                <span>北京时间 14:01:30</span>
                <span>猫眼专业版实时票房数据</span>
              </p>
            </div>
          </div>
          <!-- 最受期待 -->
          <home-await :moviewill="willmovie"></home-await>
        </el-col>
      </el-row>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import HomeHot from "@/components/index/HomeHot";
import HomeWill from "@/components/index/HomeWill";
import HomeTicket from "@/components/index/HomeTicket";
import HomeAwait from "@/components/index/HomeAwait";
import Footer from "@/components/Footer";

export default {
  name: "HomePage",
  data() {
    return {
      hotmovie: [],
      willmovie: []
    };
  },
  created() {
    this.getMovie();
  },
  methods: {
    getMovie() {
      let This = this;
      This.axios({
        methods: "get",
        url: "/"
      })
        .then(function(response) {
          // console.log(response.data);
          This.hotmovie = response.data.hotmovie;
          This.willmovie = response.data.willmovie;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    HomeHot: HomeHot,
    HomeWill: HomeWill,
    HomeTicket: HomeTicket,
    HomeAwait:HomeAwait,
    Footer:Footer
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.container {
  margin: 40px;
}

.el-row {
  margin-bottom: 20px;
}

.el-col {
  border-radius: 4px;
}

.tickets-day {
  margin-top: 29px;
  background-color: #fdfdfd;
  border: 1px solid #efefef;
  padding-right: 15px;
}

.tickets-day > h3 {
  float: left;
  width: 20px;
  height: 83px;
  padding: 10px;
  color: #fff;
  background-color: #ef4238;
  text-align: center;
  font-weight: 400;
  font-size: 17px;
  line-height: 21px;
}

.tickets-day > div {
  font-size: 14px;
  margin-left: 54px;
  color: #ef4238;
  padding-top: 20px;
}

.num {
  font-size: 30px;
  font-weight: 700;
}

.more {
  float: right;
}

.time {
  margin: 12px 0px;
  color: #999;
}

.time>span:last-child {
  float: right;
}
</style>
