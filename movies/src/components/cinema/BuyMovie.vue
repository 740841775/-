<template>
<div>
  <div class="buy" v-for="(f,i) in filminfo" :key="i">
      <div class="movie-info">
          <img :src="f.m_poster" alt="">
          <div class="info">
            <h3>{{f.m_name}}</h3>
            <p class="type"><span>类型：</span>{{f.m_type}}</p>
            <p class="time"><span>时长：</span>{{f.m_time}}</p>
          </div>
      </div>
      <div class="cinema-info">
          <ul v-for="(c,i) in cinfo" :key="i">
            <li><span>影院：</span>{{c.c_name}}</li>
            <li><span>影厅：</span>5号厅</li>
            <li><span>版本：</span>国语2D</li>
            <li><span>场次：</span>今天 1月2 17:10</li>
            <li><span>票价：</span>￥30/张</li>
          </ul>
      </div>
      <div class="ticket-info">
        <p>座位：一次最多选6个座位</p>
        <div class="cleft">请<span>点击左侧</span>座位图选择座位</div>
        <div class="total">总价：<span>￥</span><span class="pr">0</span></div>
      </div>
      <div class="phonenum">
        <div>
          <input type="text" placeholder="请输入手机号">
        </div>
        <div>
          <input type="text" placeholder="请输入验证码">
        </div>
        <div class="sure">确认选座</div>
      </div>
  </div>
</div>
</template>

<script>
export default {
  props: ["filminfo","cinfo"],
  data() {
    return {
     
    };
  }
};
</script>

<style scoped>
  .buy {
    width: 340px;
    background-color: #f9f9f9;
    padding: 20px;
    position: absolute;
    top: 0px;
    right: 0px;
  }

  .movie-info {
    position: relative;
  }

  .movie-info>img {
    width: 115px;
    height: 158px;
  }

  .info {
    position: absolute;
    top: 10px;
    left: 135px;
  }
  .info h3 {
    margin-bottom: 10px;
  }


  .info p {
    color: #151515;
    font-size: 12px;
    line-height: 20px;
  }

  .info span {
    color: #999;
  }

  .cinema-info {
    font-size: 14px;
    color: #151515;
    margin-top: 30px;
    border-bottom: 1px dashed #e5e5e5;
  }

  .cinema-info li {
    margin-bottom: 10px;
  }

  .cinema-info span {
    color: #999;
  }

  .ticket-info {
    font-size: 14px;
    margin-top: 30px;
    border-bottom: 1px dashed #e5e5e5;
  }

  .ticket-info>p {
    color: #999;
  }

  .cleft {
    margin: 20px 0px 30px 60px;
    color: #333;
  }

  .cleft>span {
    color: #f03d37;
  }

  .total {
    color: #333;
    margin-bottom: 10px;
  }

  .total>span {
    color: #f03d37;
  }

  .pr {
    font-size: 24px;    
  }

  .phonenum {
    margin: 30px auto 64px;
  }

  .phonenum input {
    display: block;
    width: 218px;
    height: 40px;
    border: 1px solid #e5e5e5;
    border-radius: 50px;
    padding: 0 20px;
    color: #333;
    background: #fff;
    font-size: 14px;
    outline: none;
    margin: 0px auto 6px;
  }

  .sure {
    width: 260px;
    line-height: 42px;
    border-radius: 21px;
    font-size: 16px;
    color: #fff;
    border: 1px solid #ededed;
    background-color: #e5e5e5;
    text-align: center;
    margin-top: 50px;
    cursor: default;
    margin: 50px auto 0px;
  }
</style>
