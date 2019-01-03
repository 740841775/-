<template>
	<div class="header">
		<div class="logo">
			<img src="../assets/logo.png" />
			<span>枫叶影视</span>
		</div>
		<!--城市-->
		<div class="address">
			<el-dropdown>
				<span class="el-dropdown-link">
				    南充<i class="el-icon-arrow-down el-icon--right"></i>
				  </span>
				<el-dropdown-menu slot="dropdown">
					<el-dropdown-item v-for="adr in adrlist" :key="adr">{{adr}}</el-dropdown-item>
				</el-dropdown-menu>
			</el-dropdown>
		</div>
		<!--模块导航-->
		<div>
			<el-menu default-active class="el-menu-demo" mode="horizontal" @select="handleSelect" :router="true">
  				<el-menu-item v-for="(item,ind) in navlist" :key="ind" :index="item.adr">{{item.name}}</el-menu-item>
			</el-menu>
		</div>
		<!--APP-->
		<div class="app">
			<img src="../assets/phone.png"/>
			<el-dropdown>
				<span class="el-dropdown-link">
				    APP下载<i class="el-icon-arrow-down el-icon--right"></i>
				  </span>
				<el-dropdown-menu slot="dropdown">
					<el-dropdown-item>
						<img src="../assets/app.png"/>
					</el-dropdown-item>
				</el-dropdown-menu>	
			</el-dropdown>
		</div>
		<!--搜索-->
		<div class="search">
			<el-input placeholder="找影视剧、影人、影院" value @change="valueChange"></el-input>
			<el-button type="danger" icon="el-icon-search" circle @click="search"></el-button>
		</div>
		<!--个人-->
		<div class="persion">	
			<img src="../assets/header.png"/>
			<span id="login">登录</span>
		</div>
	</div>
</template>

<script>
  export default {
    data() {
       return {
       	adrlist:["成都","深圳","上海","广州","北京"],
       	navlist:[
       		{adr:"/",name:"首页"},
       		{adr:"/films",name:"影片"},
       		{adr:"/cinema",name:"影院"},
       		{adr:"/list",name:"榜单"},
       		{adr:"/news",name:"推荐"}
		   ],
		   svalue:""
      };
	},
    methods: {
      handleSelect(key, keyPath) {
        // console.log(key, keyPath);
	  },
	  valueChange(v) {
		//   console.log(v);
		  this.svalue=v;
	  },
	  search() {
		  this.$router.push({path:"/search",query:{v:this.svalue}});
	  }
    }
  }
</script>

<style scoped>
	/*整个头部*/
	.header {
		height: 60px;
		padding: 5px 30px;
		line-height: 60px;
		border-bottom: 1px solid #99A9BF;
		position: relative;
		/*float: left;*/
		font-weight: 600;
	}
	
	/*图标*/
	.header>.logo {
		width: 145px;
		height: 60px;
		position: relative;
	}
	
	.logo>img {
		width: 40px;
		height: 40px;
		position: absolute;
		top: 10px;
		left: 0px;
	}
	
	.logo>span {
		font-size: 22px;
		color: #ef4238;
		position: absolute;
		top: 0px;
		left: 45px;
	}
	
	/*地址*/
	.header>.address {
		position: absolute;
	    top: 5px;
	    left: 180px;
	}
	
	/*模块导航*/
	.el-menu.el-menu--horizontal {
    	border-bottom: none;
    	width: 400px;
    	position: absolute;
    	top: 6px;
    	left: 280px;
    	/*background-color: antiquewhite;*/
	}
	
	.el-menu--horizontal>.el-menu-item {
		font-size: 20px;
		color: #333;
		font-weight: 400;
	}
	
	.el-menu--horizontal>.el-menu-item:hover {
		color: #ef4238;
	}
	
	.el-menu--horizontal>.el-menu-item.is-active {
    	border-bottom: none; 
		color: #ef4238;
    }
    
    /*app下载*/
   	.header>.app {
   		position: absolute;
   		top: 6px;
   		right: 435px;
   	}
   	
   	.app>img {
   		width: 30px;
   		height: 30px;
   		position: relative;
   		top: 10px;
   		left: 6px;
   	}
    
	.el-dropdown-menu img {
		width: 100px;
		height: 100px;
	}
	
	/*搜索*/
	.header>.search {
		width: 240px;
		position: absolute;
		top: 6px;
		right: 160px;
	}
	
	.search .el-input__inner {
		border-radius: 25px !important;
	}

	.search>.el-button {
		font-size: 14px;
		position: absolute;
		top: 11px;
		right: 0px;
	}
	.el-icon-search:before {
		font-size: 20px;
	}
	
	/*登录头像*/
	.header>.persion {
		position: absolute;
		top: 6px;
		right: 55px;
	}
	
	.persion>img {
		position: relative;
		top: 11px;
		left: 0px;
		width: 40px;
		height: 40px;
		cursor: pointer;
	}
	
	#login {
		font-weight: 400;
		font-size: 14px;
		cursor: pointer;
	}
	
</style>