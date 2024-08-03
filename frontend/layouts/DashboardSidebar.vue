<template>

  <!-- MAGIC CURSOR -->
  <div class="mouse-cursor cursor-outer"></div>
  <div class="mouse-cursor cursor-inner"></div>
  <!-- /MAGIC CURSOR -->

  <div class="btn d-lg-none"><span class="fas fa-bars"></span></div>

  <nav class="dashboard__sidebar ">
    <div class="sidebar__logo">
      <nuxt-link to="/"><img src="/assets/images/logo.png" style="height:50px;" alt="ICOLand"></nuxt-link>
    </div>
    <ul class="sidebar__menu">
      <!-- Your menu items here -->
      <li class="active"><nuxt-link to="/dashboard/mining"><span class="fa-solid fa-pickaxe"></span>Mining</nuxt-link></li>
      <li><nuxt-link to="/dashboard/pricing"><span class="fa-solid fa-file-invoice-dollar"></span>Pricing</nuxt-link></li>
      <li><nuxt-link to="/dashboard/affiliate"><span class="fa-solid fa-users"></span>Affiliate</nuxt-link></li>
      <li><nuxt-link to="/dashboard/trading"><span class="fa-solid fa-chart-mixed"></span>Trading AI</nuxt-link></li>
      <li><nuxt-link to="/dashboard/wallet"><span class="fa-solid fa-wallet"></span>Wallet</nuxt-link></li>
      <li><nuxt-link to="/dashboard/payment"><span class="fa-regular fa-credit-card"></span>Payment</nuxt-link></li>
      <li><nuxt-link to="/dashboard/rewardcenter"><span class="fa-sharp fa-solid fa-gift"></span>Reward Center</nuxt-link></li>
      <li><nuxt-link to="/dashboard/loancenter"><span class="fa-sharp fa-solid fa-gift"></span>Loan</nuxt-link></li>
     

      <!-- <li><nuxt-link to="/dashboard/expense"><span class="fa-solid fa-money-bill-transfer"></span>Expense</nuxt-link></li> -->
      <li v-if="isLoggedIn"> <a href="#" class="feat-btn">
          <span class="fa-solid fa-address-card"></span>Account
        </a>
        <ul class="feat-show">
          <li><nuxt-link to="/dashboard/profile">Personal details</nuxt-link></li>
          <li><nuxt-link to="/dashboard/security">Security</nuxt-link></li>
          <li><nuxt-link to="/dashboard/kyc">KYC</nuxt-link></li>
        </ul>
      </li>
      <li><nuxt-link to="/about-us"><span class="fa-solid fa-flag-swallowtail"></span>About us</nuxt-link></li>
      <li><nuxt-link to="/white-paper"><span class="fa-solid fa-file-word"></span>White Paper</nuxt-link></li>
      <li><nuxt-link to="/terms-conditions"><span class="fa-solid fa-file-check"></span>Terms & conditions</nuxt-link></li>
      <li><nuxt-link to="/faq"><span class="fa-solid fa-comments-question-check"></span>FAQS</nuxt-link></li>
      <li><nuxt-link to="/privacy-policy"><span class="fa-solid fa-shield-check"></span>Privacy policy</nuxt-link></li>
      <li v-if="isLoggedIn"><a href="#" @click="logout"><span class="fa-sharp fa-solid fa-right-from-bracket"></span>Logout</a></li>
      <li v-else><nuxt-link to="/sign-in"><span class="fa-solid fa-sign-in"></span>Login</nuxt-link></li>
      <!-- Other menu items -->
    </ul>
    <div class="bottom">
      <ul class="list-social">
        <li><span class="icon-twitter"></span></li>
        <li><span class="icon-facebook"></span></li>
        <li><span class="icon-place"></span></li>
        <li><span class="icon-youtobe"></span></li>
        <li><span class="icon-tiktok"></span></li>
      </ul>
      <p class="fs-14">© 2024. All rights reserved by oceantradeai.com</p>
    </div>


  </nav>
</template>

<script setup>
import { onMounted } from 'vue'
import jQuery from 'jquery'
import { useUserStore } from '~~/stores/user'
import { storeToRefs } from 'pinia';
const userStore = useUserStore();
const { isLoggedIn } = storeToRefs(userStore)

const logout = async () => {
	const router = useRouter(); // Get the router object
	try {
		await userStore.logout();
		localStorage.removeItem('token');
		router.push('/'); // Redirect to the root route
		return;
	} catch (error) {
		console.error(error);
	}
};




onMounted(() => {
  //Add sidebar toggle 
  $(document).ready(function () {
    $('.btn').click(function () {
      $(this).toggleClass("click");
      $('.dashboard__sidebar').toggleClass("show");
      $('.dashboard').toggleClass("show");
    });

    // Dropdown functionality for .feat-btn
    $('.feat-btn').click(function () {
      $(this).next('.feat-show').toggleClass('show');
    });

    $('.sidebar__menu li').click(function () {
      $(this).addClass("active").siblings().removeClass("active");
    });

    var url = window.location.pathname;
    var urlRegExp = new RegExp(url.replace(/\/$/, '') + "$");

    $('.sidebar__menu a').each(function () {
      if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
        $(this).addClass('active');
      }
    });
  });



  //END 
  // Use jQuery within the component

});
</script>

<style scoped>
.feat-show {
  display: none;
  /* Initially hide the dropdown */
}

.feat-show.show {
  display: block;
  /* Show the dropdown when the .show class is added */
}
</style>