import Vue from 'vue';
import Router from 'vue-router';
import index from './index.vue';
import show from './show.vue';

Vue.use(Router);

export default new Router({
  routes: [{
      path: '/',
      component: index
    },
    {
      path: '/show',
      component: show
    }
  ]
});