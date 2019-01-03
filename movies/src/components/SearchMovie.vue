<template>
  <div class="smovie">
      <ul>
          <li v-for="(m,i) in movie" :key=i>
              <div class="mposter">
                <router-link :to="{path:'info',query:{m_name:m.m_name}}">
                    <img :src="m.m_poster" alt="">
                </router-link>
              </div>
              <div class="minfo">
                  <div class="name">
                      <router-link :to="{path:'info',query:{m_name:m.m_name}}">{{m.m_name}}</router-link>
                  </div>
                  <div class="ename">{{m.m_ename}}</div>
                  <div class="hot">{{m.m_hot}}</div>
                  <div class="type ">{{m.m_type}}</div>
                  <div class="date">{{new Date(m.m_date).getFullYear()}}年{{new Date(m.m_date).getMonth()+1}}月{{new Date(m.m_date).getDate()}}日上映</div>
                  <div class="line"></div>
              </div>
          </li>
          <div style="clear:both"></div>
      </ul>
  </div>
</template>

<script>

export default {
    props:["movie"],
  data() {
    return {
        
    };
  },
  created() {
    
  },
  methods: {
   
  }
};
</script>

<style scoped>
.smovie {
    width: 950px;
    margin: 0 auto;
}

.smovie>ul {
    width: 100%;
}

.smovie>ul>li {
    position: relative;
    width: 455px;
    float: left;
    margin-left: 20px;
    margin-bottom: 40px;
}

.mposter {
    width: 160px;
    height: 220px;
}

.mposter img {
    width: 100%;
    height: 100%;
}

.minfo {
    width: 280px;
    position: absolute;
    top: 15px;
    right: 0px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.name>a {
    font-size: 26px;
    color: #333;
}

.ename {
    font-size: 14px;
    color: #999;
    margin: 5px 0px 20px;
}

.hot {
    color: #ffb400;
    font-size: 20px;
}

.type {
    font-size: 16px;
    color: #333;
    margin: 20px 0px 10px;
}

.date {
    font-size: 16px;
    color: #999;
}

.line {
    width: 100%;
    height: 0;
    border: 1px solid #e5e5e5;
    margin-top: 28px;
}
</style>
