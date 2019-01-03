<template>
  <!-- 电影页面 -->
  <div>
    <!-- 头部导航 -->
    <Header></Header>
    <!-- 中间内容 -->
    <div class="container">
        <search-movie :movie="search"></search-movie>
    </div>
     <Footer></Footer>
  </div>
</template>

<script>
import Header from "@/components/Header";
import SearchMovie from "@/components/SearchMovie";
import Footer from "@/components/Footer";

export default {
  name: "SearchPage",
  data() {
    return {
        sv:"",
        search:[]
    };
  },
  created() {
    this.getSearch();
  },
//   watch: {
//       sv:function() {
//         this.getSearch();
//       }
//   },
  methods: {
    getSearch() {
      let This = this;
      this.sv=this.$route.query.v;
      This.axios.get("/search",{
        params:{
          sv:This.sv,
        }
      })
        .then(function(response) {
          console.log(response.data);
          This.search = response.data;
        })
        .catch(function(error) {
          console.log(error);
        });
    },
   
  },
  components: {
    Header: Header,
    SearchMovie:SearchMovie,
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
