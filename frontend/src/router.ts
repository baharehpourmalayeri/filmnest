import { createRouter, createWebHashHistory } from "vue-router";

import Home from "./views/Home.vue";
import Films from "./views/Films.vue";
import Contact from "./views/Contact.vue";
import Reviews from "./views/Reviews.vue";

const routes = [
  {
    component: Home,
    path: "/",
  },
  {
    component: Films,
    path: "/films/:category",
  },
  {
    component: Contact,
    path: "/contact",
  },
  {
    component: Reviews,
    path: "/reviews",
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
  scrollBehavior(to, from, savedPosition) {
    return { top: 0 };
  },
});

export default router;
