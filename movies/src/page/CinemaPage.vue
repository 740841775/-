<template>
  <!-- 电影页面 -->
  <div class="films">
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
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
import CinemaNav from "@/components/cinema/CinemaNav";
import CinemaList from "@/components/cinema/CinemaList";
import Pagination from "@/components/Pagination";
import Footer from "@/components/Footer";

export default {
  name: "CinemaPage",
  data() {
    return {
        cinema:"",
        ctype:"",
        allnum:0,
        pagenum:10,
        current:1
    };
  },
  created() {
    this.getCinema();
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
          // console.log(response.data);
          This.cinema=response.data.pagecinema;
          This.allnum=response.data.allcinema;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
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
  margin: 0 auto;
}
</style>
