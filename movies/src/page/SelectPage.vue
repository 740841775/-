<template>
  <!-- 电影页面 -->
  <div>
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
    <cinema-info :cinfo="cinema"></cinema-info>
    <div class="content">
      <select-movie :selmovie="movie" @changeClass="classChange"></select-movie>
      <play-list :mname="m_name" :cname="c_name"></play-list>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
// import CinemaInfo from "@/components/cinema/CinemaInfo";
import CinemaInfo from "@/components/CinemaInfo";
import SelectMovie from "@/components/cinema/SelectMovie";
import PlayList from "@/components/cinema/PlayList";

import Footer from "@/components/Footer";

export default {
  name: "SelectPage",
  data() {
    return {
        cinema:[],
        c_name:"",
        movie:[],
        m_name:""
    };
  },
  created() {
    this.getCinema();
    this.getMovie();
  },
  watch: {
    ctype:function() {
        this.getCinema();
    }
  },
  methods: {
    classChange(m_name) {
      console.log(m_name);
      this.m_name=m_name;
    },
    getCinema() {
      let This = this;
      this.c_name=this.$route.query.c_name;
      This.axios.get("/cinema/info",{
        params:{
         c_name:This.c_name
        }
      })
        .then(function(response) {
          // console.log(response.data);
          This.cinema=response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    getMovie() {
      let This = this;
      This.axios.get("/cinema/movie",{
        params:{

        }
      })
        .then(function(response) {
          // console.log(response.data);
          This.movie=response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    CinemaInfo:CinemaInfo,
    SelectMovie:SelectMovie,    
    PlayList:PlayList,
    Footer: Footer
  }
};
</script>

<style scoped>
.content {
  width: 1200px;
  margin: 0 auto;
}


</style>
