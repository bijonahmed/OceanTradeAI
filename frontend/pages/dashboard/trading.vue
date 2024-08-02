<template>
  <div class="dashboard show">
    <title>Trade</title>
    <DashboardSidebar />
    <div class="dashboard_main_content">
      <div class="dashboard__content">
        <DashboardHeader />
        <div class="dashboard__main">

          <div class="tading_container">
            <div class="trading_box" v-for="val in responseData" :key="val.id">
              <h4>{{ val.name }}</h4>
              <nuxt-link :to="`/dashboard/trade/${val.slug}`">
                <img :src="val.thumnail_img" alt="N/A" class="img-fluid">
              </nuxt-link>
            </div>

          </div>

          <div class="loading-indicator" v-if="loading">
            <div class="loader-container">
              <div class="loader"></div>
              <p class="loader-text">Please wait... {{ countdown }}</p>
            </div>
          </div>

          <div class="trade_history">
            <div class="d-flex justify-content-between align-items-end mb-3">
              <h1>Trade History</h1>
              <!-- <nuxt-link to="/dashboard/trade-history" class="btn-action style-1">View all </nuxt-link> -->
            </div>

            <div class="table-responsive table_sec" style="font-size: 12px;">
              <table class="table table-hover table-dark table-striped table-hover">
                <thead class="">
                  <tr>
                    <th>Trade ID</th>
                    <th>Trade Type</th>
                    <th>Pair Name</th>
                    <th>Started on</th>
                    <th>Ending on</th>
                    <th>Trade amount</th>
                    <th>Profit</th>
                    <th>Estd Profit</th>
                    <th class="text-center">Status</th>
                    <td></td>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="item in historyData" :key="item.id">
                    <td>{{ item.tradeID }}</td>
                    <td>{{ item.category_name }}</td>
                    <td>{{ item.subcategory_name }}/USDT</td>
                    <td>{{ item.start_datetime }}</td>
                    <td>{{ item.end_datetime }}</td>
                    <td>{{ item.tradeAmount }} USDT</td>
                    <td>{{ item.durationPercentage }}%</td>
                    <td>{{ item.estProfit }} USDT</td>
                    <td>
                      <span v-if="(item.status == 1)">
                        <div class="bot_status text-center">
                          <a href="#"><img src="/assets/images/check.png" alt=""></a>
                        </div>
                      </span>
                      <span v-else>
                        <div class="bot_status text-center">
                          <a href="#"><img src="/assets/images/bot.gif" alt=""></a>
                        </div>
                      </span>

                    </td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        @click="tradeDetails(item)" aria-controls="trade_details"><i
                          class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- history offcanvas  -->
    <div class="offcanvas offcanvas-bottom trade_history_table" tabindex="-1" id="trade_details"
      aria-labelledby="trade_detailsLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
        <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
            class="fas fa-times"></i></button>
      </div>
      <div class="offcanvas-body small pt-0">
        <div class="row">
          <div class="col-md-12">
            <table class="table-dark table w-100" style="background-color: #1b1133; ">

              <tr>
                <td>Trade Type</td>
                <td>{{ infoData.category_name }}</td>
              </tr>
              <tr>
                <td>Pair Name</td>
                <td>{{ infoData.subcategory_name }}/USDT</td>
              </tr>
              <tr>
                <td>Started on</td>
                <td>{{ infoData.start_datetime }}</td>
              </tr>
              <tr>
                <td>Ending on</td>
                <td>{{ infoData.end_datetime }}</td>
              </tr>
              <tr>
                <td>Trade amount</td>
                <td>{{ infoData.tradeAmount }} USDT</td>
              </tr>
              <tr>
                <td>Profit %</td>
                <td>{{ infoData.durationPercentage }}% </td>
              </tr>
              <tr>
                <td>Estd Profit</td>
                <td>{{ infoData.estProfit }} USDT</td>
              </tr>
              <tr>
                <td>Trading Fee</td>
                <td>{{ infoData.trading_fee }} USDT</td>
              </tr>

              <tr>
                <td>Status</td>
                <td v-if="(infoData.status == 1)">

                  <div class="bot_status text-center">
                    <a href="#"><img src="/assets/images/check.png" alt=""></a>
                  </div>
                </td>
                <td v-else>
                  <div class="bot_status text-left">
                    <a href="#"><img src="/assets/images/bot.gif" alt=""></a>
                  </div>
                 
                </td>
              </tr>

            </table>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';
import DashboardSidebar from "~/layouts/DashboardSidebar.vue";
import DashboardHeader from "~/layouts/DashboardHeader.vue";

import { useRouter } from 'vue-router';
import Swal from "sweetalert2";
const router = useRouter();
const loading = ref(false);
const countdown = ref(0);
definePageMeta({
  middleware: 'is-logged-out',
})

const responseData = ref([]);
const historyData = ref([]);
let intervalId;

const infoData = reactive({
  category_name: '',
  subcategory_name: '',
  start_datetime: '',
  end_datetime: '',
  tradeAmount: '',
  durationPercentage: '',
  estProfit: '',
  trading_fee: '',
  status: '',
});

const tradeDetails = (history) => {

  infoData.category_name = history.category_name;
  infoData.subcategory_name = history.subcategory_name;
  infoData.start_datetime = history.start_datetime;
  infoData.end_datetime = history.end_datetime;
  infoData.tradeAmount = history.tradeAmount;
  infoData.durationPercentage = history.durationPercentage;
  infoData.estProfit = history.estProfit;
  infoData.trading_fee = history.trading_fee;
  infoData.status = history.status;
}

const fetchData = async () => {
  try {
    const response = await axios.get("/trading/alltracatLists");
    responseData.value = response.data.data;

  } catch (error) {
    console.error("Error fetching data:", error);
  }
};

const tradeHistory = async () => {
  try {
    loading.value = true;
    countdown.value = 100;

    const response = await axios.get("/trading/allTradingHistoryData");
    historyData.value = response.data.data;

  } catch (error) {
    console.error("Error fetching data:", error);
  } finally {
    const updateCountdown = () => {
      console.log(countdown.value); // Display the countdown (you can display this in your UI as well)
      countdown.value--;
      if (countdown.value < 0) {
        clearInterval(intervalId);
        loading.value = false;
      }
    };

    // Set interval to update the countdown every 100 milliseconds (0.1 seconds)
    intervalId = setInterval(updateCountdown, 30);
  }
};

// Clean up interval when component is unmounted
onUnmounted(() => {
  if (intervalId) {
    clearInterval(intervalId);
  }
});

onMounted(async () => {
  fetchData();
  tradeHistory();

});
</script>
<style scoped>
.loading-indicator {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.8);
  /* Semi-transparent white background */
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 9999;
  /* Make sure it appears above other content */
}

.loader-container {
  text-align: center;
}

.loader {
  border: 8px solid #f3f3f3;
  /* Light grey */
  border-top: 8px solid #3498db;
  /* Blue */
  border-radius: 50%;
  width: 30px;
  height: 30px;
  margin-top: 50px;
  animation: spin 1s linear infinite;
  margin-bottom: 10px;
}

.loader-text {
  color: #333;
  /* Dark grey text color */
  font-size: 18px;
  font-weight: bold;
  margin: 0;
}

/* CSS3 Animation */
@keyframes spin {
  0% {
    transform: rotate(0deg);
  }

  100% {
    transform: rotate(360deg);
  }
}
</style>
