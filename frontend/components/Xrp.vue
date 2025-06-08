<template>
    
    <div class="dashboard__main">
      <div class="row">
        <div class="col-md-6">
          <a href="#" @click.prevent="goBack"><i class="fa-solid fa-arrow-left"></i></a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 m-auto">
          <!-- Topbar part start here -->
          <div class="top_navbar">
            <div class="row">
              <div class="col-10">
                <div class="top_left">
                  <div>
                    <a class="" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
                      <img src="assets/images/arrow.png" alt="">
                    </a>
                  </div>
                  <!-- Coin title -->
                  <h1> xrp/usdt 
                    <!-- <span>+0.50%</span> -->
                  </h1>
                </div>
              </div>
              <div class="col-2 d-flex justify-content-end align-items-center">
                <div class="top_right">
                  <div class="candle_icon pc_view">
                    <a href="#">
                      <img src="assets/images/candle_dark.png" class="candle_light" alt="">
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Topbar part end here -->
  
          <!-- TradingView Widget BEGIN -->
          <div class="tradingview-widget-container" id="inactiveDiv">
            <div id="tradingview_e223c"></div>
          </div>
          <!-- TradingView Widget END -->
  
          <!-- Day Filter -->
         
        </div>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref, onMounted } from 'vue';
  

  function goBack() {
    history.back();
  }
  
  onMounted(() => {
    new TradingView.widget({
      "autosize": true,
      "symbol": "BITSTAMP:XRPUSD",
      "interval": "1",
      "timezone": "Etc/UTC",
      "theme": "dark",
      "style": "1",
      "locale": "en",
      "toolbar_bg": "#f1f3f6",
      "enable_publishing": false,
      "backgroundColor": "rgba(8, 19, 34, 1)",
      "hide_top_toolbar": true,
      "hide_legend": true,
      "save_image": false,
      "container_id": "tradingview_e223c"
    });
  });
  </script>
  
  <style scoped>
  /* Add your styles here */
  .dashboard__main {
    padding: 20px;
  }
  
  .top_navbar {
    background-color: #333;
    padding: 10px;
  }
  
  .top_left h1 {
    font-size: 24px;
    color: #fff;
  }
  
  .day_filter {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    margin-top: 20px;
  }
  
  .btn_day_filter {
    padding: 10px 20px;
    border: none;
    background-color: #ddd;
    cursor: pointer;
  }
  
  .btn_day_filter.active {
    background-color: #007bff;
    color: #fff;
  }
  
  .withdraw_form {
    margin-top: 20px;
  }
  
  .trade_confirm {
    margin-top: 10px;
  }

  .dashboard__main {
	padding: 0px;
}
  </style>
  