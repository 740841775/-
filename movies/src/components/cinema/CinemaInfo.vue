<template>
<div>
    <div class="film" v-for="(f,i) in movie" :key="i">
         <div class="main">
            <div class="main-pic">
                <img :src="f.m_poster" alt="" srcset="">
            </div>
            <div class="main-detail">
                <div class="name">
                    <h3>{{f.m_name}}</h3>
                    <div class="ename">{{f.m_ename}}</div>
                    <ul>
                        <li>{{f.m_type}}</li>
                        <li>{{f.m_area}} / {{f.m_time}}</li>
                        <li>  {{new Date(f.m_date).getFullYear()}}年{{new Date(f.m_date).getMonth()+1}}月{{new Date(f.m_date).getDate()}}上映</li>
                    </ul>
                </div>
                <div class="btn">
                    <div class="like">
                        <router-link to="">
                            <div>
                                <i>
                                  <img src="../assets/like.png" alt="" srcset="">
                                </i>
                                <span>想看</span>
                            </div>
                        </router-link>
                        <router-link to="">
                            <div>
                                <i>
                                  <img src="../assets/score.png" alt="" srcset="">
                                </i>
                                <span>评分</span>
                            </div>
                        </router-link>
                        <div style="clear:both"></div>
                    </div>
                    <div class="buy">
                     <router-link to="">特惠购票</router-link>
                    </div>
                </div>
                <div></div>
            </div>
        </div>
    </div>
</div>
</template>

<script>
export default {
  data() {
    return {
     m_name:"",
     film:""
    };
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
    width: 1200px;
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
.main-detail {
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
    bottom: 0px;
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
</style>
