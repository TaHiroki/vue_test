import Vue from 'vue';
import Router from 'vue-router';
import Index from './index.vue';
import Show from './show.vue';
import New from './new.vue';

Vue.use(Router);

export default new Router({
  routes: [{
      path: '/',
      component: Index
    },
    {
      path: '/show/:id',
      component: Show
    },
    {
      path: '/new',
      component: New
    }
  ]
});