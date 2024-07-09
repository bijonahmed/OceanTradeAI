<template>
  <div class="dashboard__header">
    <h4>M.P : 0.0000023</h4>
    <nuxt-link to="/dashboard/profile" class="user">
      <img src="/assets/images/avt/admin.jpg" alt="ICOLand">
    </nuxt-link>
    <nuxt-link to="/dashboard/wallet" class="btn-action-outline style-5"><span class="icon-wallet"></span><span
        class="d-md-inline-block d-none">Wallet</span></nuxt-link>
  </div>
</template>

<script setup>
import { onMounted } from 'vue'
import jQuery from 'jquery'

</script>