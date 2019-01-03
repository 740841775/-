<template>
  <!-- 榜单页面 -->
  <div class="list">
    <!-- 头部导航 -->
    <Header></Header>
    <header-nav :stateplay="liststate" @filmsState="changeState"></header-nav>
    <!-- 中间内容 -->
    <div class="container">
      <list-info :movielist="allmovies"></list-info>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import HeaderNav from "@/components/HeaderNav";
import ListInfo from "@/components/list/ListInfo";
import Footer from "@/components/Footer";

export default {
  name: "ListPage",
  data() {
    return {
      liststate:["国内票房榜","最受期待榜","TOP100榜"],
      allmovies:[""],
      m_state:"1"
    };
  },
  created() {
    this.getFilms();
  },
  watch: {
    m_state:function() {
    this.getFilms();
    }
  },
  methods: {
    changeState(state) {
      // console.log(state);
      this.m_state=state;
    },
    getFilms() {
      let This = this;
      This.axios.get("/list",{
        params:{
          m_state:This.m_state
        }
      })
        .then(function(response) {
          // console.log(response.data);
          This.allmovies = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    }
  },
  components: {
    Header: Header,
    HeaderNav: HeaderNav,
    ListInfo:ListInfo,
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
