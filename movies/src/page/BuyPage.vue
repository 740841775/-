<template>
  <!-- 电影页面 -->
  <div>
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
    <films-info :movie="film" :ticket="more" :route="path"></films-info>
     <div class="container">
        <cinema-nav @cinemaKind="changeCinema" @cinemaAll="changeAll"></cinema-nav>
        <cinema-list :allcinema="cinema"></cinema-list>
        <Pagination :allnum="allnum" :pagenum="pagenum" :current="current" @currentChange="changeCurrent"></Pagination>
     </div>
     <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import FilmsInfo from "@/components/FilmsInfo";
import CinemaNav from "@/components/cinema/CinemaNav";
import CinemaList from "@/components/cinema/CinemaList";
import Pagination from "@/components/Pagination";
import Footer from "@/components/Footer";

export default {
  name: "BuyPage",
  data() {
    return {
        more:"查看更多电影详情",
        path:"info",
        film:[],
        cinema:"",
        ctype:"",
        allnum:0,
        pagenum:6,
        current:1
    };
  },
  created() {
    this.getCinema();
    this.getInfo();
  },
  watch: {
    ctype:function() {
        this.getCinema();
    },
    current:function() {
      this.getCinema();
    }
  },
  methods: {
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
    changeAll() {
        this.ctype="";
        this.current=1;
    },
    changeCinema(c) {
        // console.log(c);
        this.ctype=c;
        this.current=1;
    },
     changeCurrent(c) {
      // console.log(c);
      this.current=c;
    },
     getCinema() {
      let This = this;
      This.axios.get("/cinema",{
        params:{
          ctype:This.ctype,
          pagenum:This.pagenum,
          current:This.current
        }
      })
        .then(function(response) {
          console.log(response.data);
          This.allnum=response.data.allcinema;
          This.cinema=response.data.pagecinema;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    FilmsInfo:FilmsInfo,
    CinemaNav:CinemaNav,
    CinemaList:CinemaList,
    Pagination:Pagination,
    Footer: Footer
  }
};
</script>

<style scoped>
.container {
  width: 1200px;
  margin: 80px auto 0px;
}



</style>
