<script setup lang="ts">
import SocialIcon from "./SocialIcon.vue";
import SubscriptionBox from "./SubscriptionBox.vue";
</script>

<template>
  <footer>
    <div class="subscription-box">
      <SubscriptionBox />
    </div>
    <div class="footer-container">
      <div class="footer-content left">
        <router-link to="/"><p>FilmNest</p></router-link>
        <router-link to="/"><p>Sign in</p></router-link>
        <router-link to="/reviews"><p>All reviews</p></router-link>
        <router-link to="/films/1"><p>Movie genres</p></router-link>
      </div>
      <div class="footer-content right">
        <router-link to="/"><p>About us</p></router-link>
        <router-link to="/contact"><p>Contact us</p></router-link>
        <div>
          <p class="copyright">Follow us on:</p>
          <div class="icon">
            <SocialIcon
              link="#"
              icon="/src/assets/images/instaicon.svg"
              alt="instagram"
            />
            <SocialIcon
              link="#"
              icon="/src/assets/images/facebookicon.svg"
              alt="facebook"
            />
            <SocialIcon
              link="#"
              icon="/src/assets/images/threadsicon.svg"
              alt="threads"
            />
            <SocialIcon
              link="#"
              icon="/src/assets/images/youtubeicon.svg"
              alt="youtube"
            />
          </div>
        </div>
      </div>
    </div>
    <div class="copyright">
      <p>Copyright © FilmNest</p>
    </div>
  </footer>
</template>

<style scoped>
.footer-container {
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}

.copyright {
  text-align: center;
  color: rgb(167, 163, 163);
}
</style>
