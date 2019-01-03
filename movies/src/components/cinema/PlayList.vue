<template>
  <div class="mlist">
    <div class="date">观影时间 :</div>
    <div>
      <table class="plist">
        <thead>
          <tr>
            <th>放映时间</th>
            <th>语言版本</th>
            <th>放映厅</th>
            <th>售价（元）</th>
            <th>选座购票</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="(p,j) in begintime" :key="j">
            <td >
              <span class="begin-time">{{p}}</span><br>
              <span class="end-time">{{p}}散场</span>
            </td>
            <td>
              <span class="lang">国语2D</span>
            </td>
            <td>
              <span class="hall">1号厅</span>
            </td>
            <td>
              <span class="sell-price">￥30</span>
            </td>
            <td>
              <router-link :to="{path:'seat',query:{m_name:mname,c_name:cname}}" class="buy-btn">选座购票</router-link>
            </td>
          </tr>
          <!-- <tr v-for="(p,j) in endtime" :key="j">
            <td >
              <span class="begin-time">{{p}}</span><br>
              <span class="end-time">{{p}}散场</span>
            </td>
            <td>
              <span class="lang">国语2D</span>
            </td>
            <td>
              <span class="hall"></span>
            </td>
            <td>
              <span class="sell-price">￥30</span>
            </td>
            <td>
              <router-link to=""></router-link>
            </td>
          </tr>
          <tr v-for="(p,j) in hall" :key="j">
            <td >
              <span class="begin-time">{{p}}</span><br>
              <span class="end-time">{{p}}散场</span>
            </td>
            <td>
              <span class="lang">国语2D</span>
            </td>
            <td>
              <span class="hall"></span>
            </td>
            <td>
              <span class="sell-price">￥30</span>
            </td>
            <td>
              <router-link to=""></router-link>
            </td>
          </tr> -->
        </tbody>
      </table>
    </div>
  </div>
</template>

<script>
export default {
  props:["mname","cname"],
  data() {
    return {
     
        begintime:["14:00","15:00","15:45","16:45","17:30","18:30","19:15","20:15","21:00","22:00"],
        endtime:["15:43","16:43","17:28","18:28","19:13","20:13","20:58","21:58","22:43","23:43"],
        hall:["1号厅","3号厅","VIP厅","2号厅","1号厅","VIP厅","3号厅","2号厅","3号厅","VIP厅"]
     
      
    };
  }
};
</script>

<style scoped>
.mlist {
  width: 100%;
  margin: 20px auto 30px;
}

.date {
  font-size: 14px;
  color: #999;
}

/* 列表 */
.plist {
  width: 100%;
  border: none;
  border-spacing: 0;
  margin: 20px auto;
}

.plist thead {
    background-color: #f7f7f7;
    color: #333;
    font-size: 16px;
    padding: 18px 0;
}

thead th {
    padding: 16px 0;
}

tbody tr {
    height: 82px;
}

tbody td {
    text-align: center;
    width: 20%;
}

.begin-time {
    font-size: 18px;
    color: #333;
    font-weight: 700;
}

.end-time {
    font-size: 12px;
    color: #999;
}

.lang,.hall {
    font-size: 14px;
    color: #333;
}

.sell-price {
    font-size: 18px;
    color: #f03d37;
    font-weight: 700;
}

.buy-btn {
    display: inline-block;
    width: 80px;
    height: 30px;
    color: #fff;
    background-color: #f03d37;
    font-size: 14px;
    line-height: 30px;
    border-radius: 100px;
    text-align: center;
}
</style>
