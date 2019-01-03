<template>
  <!-- 电影页面 -->
  <div class="films">
    <!-- 头部导航 -->
    <Header></Header>
    <header-nav @filmsState="changeState" :stateplay="playstate"></header-nav>
    <!-- 中间内容 -->
    <div class="container">
        <films-nav @types="changeType" @allFilms="changeAll"></films-nav>
        <films-pic :allfilms="allmovie"></films-pic>
        <Pagination :allnum="allnum" :pagenum="pagenum" :current="current" @currentChange="changeCurrent"></Pagination>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import HeaderNav from "@/components/HeaderNav";
import FilmsNav from "@/components/films/FilmsNav";
import FilmsPic from "@/components/films/FilmsPic";
import Pagination from "@/components/Pagination";
import Footer from "@/components/Footer";

export default {
  name: "FilmsPage",
  data() {
    return {
      allmovie: [],
      playstate:["正在热映","即将上映","经典影片"],
      m_state:"1",
      m_type:"",
      allnum:0,
      pagenum:12,
      current:1
    };
  },
  created() {
    this.getFilms();
  },
  watch: {
    m_type:function () { 
      this.getFilms();
    },
    m_state:function () { 
      this.getFilms();
    },
    current:function() {
      this.getFilms();
    }
  },
  methods: {
    changeType(kinds) {
      // console.log(kinds);
      this.m_type=kinds;
      this.current=1;
    },
    changeState(state) {
      // console.log(state);
      this.m_state=state;
      this.m_type="";
      this.current=1;
    },
    changeAll() {
      this.m_state="";
      this.m_type="";
      this.current=1;
    },
    changeCurrent(c) {
      // console.log(c);
      this.current=c;
    },
    getFilms() {
      let This = this;
      This.axios.get("/films",{
        params:{
          m_state:This.m_state,
          m_type:This.m_type,
          pagenum:This.pagenum,
          current:This.current
        }
      })
        .then(function(response) {
          // console.log(response.data);
          This.allmovie = response.data.pagemovie;
          This.allnum=response.data.allmovie;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    HeaderNav: HeaderNav,
    FilmsNav:FilmsNav,
    FilmsPic:FilmsPic,
    Pagination:Pagination,
    Footer: Footer
  }
};
</script>

<style scoped>
.container {
  width: 1120px;
  margin: 0 auto;
}
</style>
