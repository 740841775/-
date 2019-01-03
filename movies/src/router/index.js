import Vue from 'vue'
import Router from 'vue-router'
import HomePage from '@/page/HomePage'
import FilmsPage from '@/page/FilmsPage'
import ListPage from '@/page/ListPage'
import NewsPage from '@/page/NewsPage'
import PlayPage from '@/page/PlayPage'
import InfoPage from '@/page/InfoPage'
import CinemaPage from '@/page/CinemaPage'
import SelectPage from '@/page/SelectPage'
import SeatPage from '@/page/SeatPage'
import BuyPage from '@/page/BuyPage'
import SearchPage from '@/page/SearchPage'


Vue.use(Router)

export default new Router({
    routes: [{
            path: '/',
            name: 'HomePage',
            component: HomePage
        },
        {
            path: "/films",
            name: "FilmsPage",
            component: FilmsPage
        },
        {
            path: "/list",
            name: "ListPage",
            component: ListPage
        },
        {
            path: "/news",
            name: "NewsPage",
            component: NewsPage
        },
        {
            path: "/play",
            name: "PlayPage",
            component: PlayPage
        },
        {
            path: "/info",
            name: "InfoPage",
            component: InfoPage
        },
        {
            path: "/cinema",
            name: "CinemaPage",
            component: CinemaPage
        },
        {
            path: "/select",
            name: "SelectPage",
            component: SelectPage
        },
        {
            path: "/seat",
            name: "SeatPage",
            component: SeatPage
        },
        {
            path: "/buy",
            name: "BuyPage",
            component: BuyPage
        },
        {
            path: "/search",
            name: "SearchPage",
            component: SearchPage
        },
    ]
})