<template>
  <!-- 电影页面 -->
  <div>
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
    <div class="step">
      <el-steps
        :active="2"
        align-center
      >
        <el-step title="选择影片场次"></el-step>
        <el-step title="选择座位"></el-step>
        <el-step title="15分钟内付款"></el-step>
        <el-step title="影院取票观影"></el-step>
      </el-steps>
    </div>
    <div class="content">
      <select-seat></select-seat>
      <buy-movie :filminfo="selfilm" :cinfo="cinema"></buy-movie>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import SelectSeat from "@/components/cinema/SelectSeat";
import BuyMovie from "@/components/cinema/BuyMovie";
import Footer from "@/components/Footer";

export default {
  name: "SeatPage",
  data() {
    return {
      m_name: "",
      c_name:"",
      selfilm:[],
      cinema:[]
    };
  },
  created() {
    this.getMovie();
    this.getCinema();
  },
  methods: {
    getMovie() {
      let This = this;
      this.m_name = this.$route.query.m_name;
      this.c_name = this.$route.query.c_name;
      // console.log(this.$route.query.m_name);
      This.axios
        .get("/cinema/selfilm", {
          params: {
            m_name: This.m_name
          }
        })
        .then(function(response) {
          console.log(response.data);
          This.selfilm = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    getCinema() {
      let This = this;
      this.m_name = this.$route.query.m_name;
      this.c_name = this.$route.query.c_name;
      // console.log(this.$route.query.m_name);
      This.axios
        .get("/cinema/info", {
          params: {
            c_name: This.c_name
          }
        })
        .then(function(response) {
          console.log(response.data);
          This.cinema = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    SelectSeat: SelectSeat,
    BuyMovie: BuyMovie,
    Footer: Footer
  }
};
</script>

<style scoped>
.step {
  margin: 50px 0px;
}

.content {
  width: 1200px;
  margin: 0 auto;
  border: 1px solid #e5e5e5;
  position: relative;
}
</style>
