<template>
<div>
    <div class="film" v-for="(c,i) in cinfo" :key="i">
         <div class="main">
            <div class="main-pic">
                <img :src="c.c_img" alt="" srcset="">
            </div>
            <div class="main-info">
                <div class="name">
                    <h3>{{c.c_name}}</h3>
                    <p>{{c.c_adr}}</p>
                </div>
                <div class="service">
                    <div class="tit">影院服务</div>
                    <ul>
                        <li>凭票免费领取3D眼镜</li>
                        <li>动画片及3D电影儿童需购票,1.3米以下儿童成人陪同观看普通影片可免票无座，一名成人仅限带一名儿童。</li>
                        <li>地面停车场</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</template>

<script>
export default {
    props:["cinfo"],
  data() {
    return {
     m_name:"",
     film:""
    };
  }
};
</script>

<style scoped>
.w {
    background-color: #df2d2d;
}

.film {
  width: 100%;
  min-width: 1200px;
  background: url("../assets/info-bg.png") 50% no-repeat #392f59;
}

.main {
    width: 1200px;
    margin: 0 auto;
    height: 320px;
    position: relative;
}

/* 海报 */
.main-pic {
    width: 292px;
    height: 292px;
    position: absolute;
    bottom: -40px;
    left: 30px;
}

.main-pic>img {
    width: 100%;
    height: 100%;
    border: 4px solid #fff;
}

/* 信息 */
.main-info {
    max-width: 600px;
    height: 200px;
    position: relative;
    top: 95px;
    left: 360px;
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
    font-weight: 400;
}

.name>p {
    font-size: 14px;
}

.service {
    position: absolute;
    top: 80px;
    left: 0px;
    color: #fff;
}

.tit {
    font-size: 14px;
    width: 300px;
}

.tit:after {
    border-top: 1px solid hsla(0,0%,100%,.7);
    display: block;
    content: "";
    position: relative;
    top: -10px;
    left: 70px;
} 

.service>ul>li {
    font-size: 12px;
    line-height: 8px;
    margin-top: 10px;
}
</style>
