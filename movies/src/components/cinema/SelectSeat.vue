<template>
  <div class="hall">
      <div class="ex">
          <div>
              <img src="../../assets/seat.png" alt="">
              <span>可选座位</span>
          </div>
          <div>
              <img src="../../assets/seat2.png" alt="">
              <span>已售座位</span>
          </div>
          <div>
              <img src="../../assets/seat3.png" alt="">
              <span>已选座位</span>
          </div>
          <div>
              <img src="../../assets/seat4.png" alt="">
              <span>情侣座位</span>
          </div>
      </div>
      <div class="container">
          <div class="num">
              <ul>
                  <li v-for="n in 9" :key="n">
                      <span>{{n++}}</span>
                  </li>
              </ul>
          </div>
          <h3>银幕中央</h3>
          <div class="line"></div>
          <div class="seat">
              <ul v-for="i in 9" :key="i">
                  <li v-for="j in 12" :key="j">
                      <img src="../../assets/seat.png" alt="" srcset="">
                  </li>
              </ul>
              <!-- <el-row >
                <el-col :span="2" >
                    <img src="../../assets/seat.png" alt="" srcset="">
                </el-col>
              </el-row> -->
          </div>
      </div>
  </div>
</template>

<script>
export default {
  props: ["selmovie"],
  data() {
    return {
      m_name: "",
      film: ""
    };
  }
};
</script>

<style scoped>
    .hall {
        width: 820px;
        height: 800px;
    }

    .ex {
        width: 700px;
        margin: 10px auto;
    }

    .ex>div {
        display: inline-block;
        margin: 20px 30px;
    }

    .ex span {
        color: #666;
        font-size: 16px;
    }

    .container {
        text-align: center;
        position: relative;
    }

    .container>h3 {
        font-size: 16px;
        font-weight: 400;
        color: #666;
        margin-bottom: 40px;
    }

    .container>.line {
        width: 1px;
        border-left: 1px dashed #e5e5e5;
        position: absolute;
        bottom: -30px;
        left: 404px;
        height: 300px;
    }
    

    .seat {
        width: 480px;
        height: 288px;
        margin: 0 auto;
    }

    .seat>ul>li {
        float: left;
        margin-right: 10px;
        margin-bottom: 10px;
    }

    .num>ul {
        position: absolute;
        top: 63px;
        left: 75px;
    }

    .num>ul>li {
        margin-bottom: 20px;
        color: #999;
        font-size: 16px;
    }
</style>
