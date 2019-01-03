 <template>
  <!-- 首页：今日票房组件 -->
  <div class="day-ticket">
    <!-- 头部 -->
    <div class="title">累计票房</div>
    <!-- 列表 -->
    <div class="list">
      <ul>
        <li class="top" v-for="(hot,ind) in moviehot.slice(0,1)" :key="ind">
            <router-link :to="{path:'info',query:{m_name:hot.m_name}}">
                <div class="top-poster">
                    <img :src="hot.m_poster" alt="" srcset="">
                </div>
                <div class="top-name">
                    <span class="m-name">{{hot.m_name}}</span>
                    <span class="m-ticket">{{hot.m_ticket}}万</span>
                </div>
            </router-link>
        </li>
        <li v-for="(hot,ind) in moviehot" v-if="ind>0&&ind<10" :key="ind" class="other">
            <router-link :to="{path:'info',query:{m_name:hot.m_name}}">
                <i>{{ind+1}}</i>
                <span class="name">{{hot.m_name}}</span>
                <span>{{hot.m_ticket}}万</span>
            </router-link>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  props: ["moviehot"],
  data() {
    return {};
  }
};
</script>

<style scoped>
/* 头部 */
.title {
  margin-right: 80px;
  margin-bottom: 30px;
  color: #ef4238;
  font-size: 26px;
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
ul>.top {
    height: 78px;
   line-height: 78px;
   border: 1px solid #efefef;
}

.top-poster {
    width: 30%;
    height: 78px;
    float: left;
}

.top-poster>img {
    width: 100%;
    height: 100%;
}

.top-name {
    width: 64%;
    float: left;
    padding-left: 20px;
}

.top-name:hover {
    background-color: antiquewhite;
}

a>.top-name>.m-name {
    color: #333;
    font-size: 16px;
    display: inline-block;
    max-width: 70%;
}

a>.top-name>.m-ticket {
    color: #ef4238;
    font-size: 14px;
    float: right;
}

li>a>i {
    color: #ef4238;
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