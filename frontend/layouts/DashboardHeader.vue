<template>

    <div class="dashboard__header">
        <div>
            <h4><img src="/assets/images/gold_coin.png" alt="" class="img-fluid">{{ showocntoken }}</h4>
            <p>C.P: {{ curentPrice }}USDT</p>
        </div>
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
import axios from 'axios';

const curentPrice = ref(0);
const showocntoken = ref(0);

const ocntoken = async () => {
    try {
        const response = await axios.get("/trading/getToken");
        showocntoken.value = response.data.ocntoken;
    } catch (error) {
        console.error("Error fetching data:", error);
    }

}
const presetting = async () => {
    try {
        const response = await axios.get("/trading/getCurrentPrice");
        curentPrice.value = response.data.current_price;
    } catch (error) {
        console.error("Error fetching data:", error);
    }

}
onMounted(() => {
    presetting();
    ocntoken();
});

</script>