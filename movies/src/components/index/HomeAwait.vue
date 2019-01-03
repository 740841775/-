 <template>
  <!-- 首页：最受期待组件 -->
  <div class="day-ticket">
    <!-- 头部 -->
    <div class="title">
      <span class="hot">最受期待</span>
      <router-link to="/list">
        <span class="all">查看完整榜单 ></span>
      </router-link>
    </div>
    <!-- 列表 -->
    <div class="list">
      <ul>
          <!-- 列表第一名 -->
        <li v-for="(will,ind) in moviewill" v-if="ind==0" :key="ind" class="one">
            <router-link :to="{path:'info',query:{m_name:will.m_name}}">
                <div class="one-poster">
                    <img :src="will.m_poster" alt="" srcset="">
                </div>
                <div class="one-name">
                    <div class="one-main">
                        <p class="o-name">{{will.m_name}}</p>
                        <p id="date">上映时间：{{new Date(will.m_date).getFullYear()}}-{{new Date(will.m_date).getMonth()+1}}-{{new Date(will.m_date).getDate()}}</p>
                        <p class="o-people">{{will.m_people}}人想看</p>
                    </div>
                </div>
            </router-link>
        </li>
        <div style="clear:both"></div>
        <!-- 列表第二名 -->
        <li v-for="(will,ind) in moviewill" v-if="ind<3&&ind>0" :key="ind" class="two">
            <router-link :to="{path:'info',query:{m_name:will.m_name}}">
                <div class="two-poster">
                    <img :src="will.m_poster" alt="">
                </div>
                <div class="two-name">
                    <span class="o-name">{{will.m_name}}</span>
                    <p class="o-people">{{will.m_people}}人想看</p>
                </div>
            </router-link>
        </li>
        <div style="clear:both"></div>
        <!-- 列表其他的 -->
        <li v-for="(will,ind) in moviewill" v-if="ind>2&&ind<10" :key="ind" class="other">
            <router-link :to="{path:'info',query:{m_name:will.m_name}}">
                <i>{{ind+1}}</i>
                <span class="name">{{will.m_name}}</span>
                <span>{{will.m_people}}人想看</span>
            </router-link>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  props: ["moviewill"],
  data() {
    return {};
  }
};
</script>

<style scoped>
/* 头部 */
.title {
  margin: 164px 80px 30px 0px;
}

.title > .hot {
  color: #ef4238;
  font-size: 26px;
}

.all {
  float: right;
  color: #ef4238;
  font-size: 14px;
}

/* 列表 */
.list {
    overflow: hidden;
}

.list ul>.other {
   height: 36px;
   line-height: 36px;
}

.list ul>.other:hover {
    background-color: antiquewhite;
}

/* 列表第一个 */
ul>.one {
   width: 99%;
   border: 1px solid #efefef;
   margin-bottom: 20px;
}

.one-poster {
    width: 140px;
    height: 194px;
    float: left;
}

.one-poster>img {
    width: 100%;
    height: 100%;
}

.one-name {
   height: 194px;
   line-height: 194px;
}

.one-main {
    display: inline-block;
    line-height: 30px;
    vertical-align: middle;
    width: 200px;
    margin-left: 10px;
}

.one-name:hover {
    background-color: antiquewhite;
}

a .o-name {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 18px;
    color: #333;
    max-width: 185px;
}

a #date {
    color: #999;
}

a .o-people {
    font-size: 14px;
    color: #ffb400;
}

/* 列表第二个 */
.two {
    float: left;
    margin-right: 20px;
    margin-bottom: 20px;
}

.two-poster {
    width: 170px;
    height: 118px;
}

.two-poster>img {
    width: 100%;
    height: 100%;
}

.two-name {
    width: 168px;
    border: 1px solid #efefef;
}

.two-name:hover {
    background-color: antiquewhite;
}

.two-name>span {
    display: inline-block;
    margin: 5px 0px 0px 5px;
}

.two-name>p {
    margin: 0px 0px 10px 10px;
}

/* 列表其他的 */
li>a>i {
    color: #999;
}

a>.name {
    margin: 0px 10px;
    color: #333;
    max-width: 70%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 16px;
}

a>span:last-child {
    float: right;
    color: #ef4238;
    font-size: 14px;
}


</style>