<template>
  <div class="dashboard show">
    <title>Trade</title>
    <DashboardSidebar />
    <div class="dashboard_main_content">
      <div class="dashboard__content">
        <DashboardHeader />
        <div class="dashboard__main">

          <div class="tading_container">
            <div class="trading_box">
              <h4>Crypto</h4>
              <nuxt-link to="/dashboard/trade/crypto-trade">
                <img src="assets/images/tradding/cryptocurrency.png" alt="" class="img-fluid">
              </nuxt-link>
            </div>
            <div class="trading_box">
              <h4>Currencies</h4>
              <nuxt-link to="/dashboard/trade/currencies-trade">
                <img src="assets/images/tradding/forex.png" alt="" class="img-fluid">
              </nuxt-link>
            </div>
            <div class="trading_box">
              <h4>Stocks</h4>
              <nuxt-link to="/dashboard/trade/stocks-trade">
                <img src="assets/images/tradding/stocks.png" alt="" class="img-fluid">
              </nuxt-link>
            </div>
            <div class="trading_box">
              <h4>Commodities</h4>
              <nuxt-link to="/dashboard/trade/commodities-trade">
                <img src="assets/images/tradding/comidities.png" alt="" class="img-fluid">
              </nuxt-link>
            </div>
          </div>
          <div class="trade_history">
            <div class="d-flex justify-content-between align-items-end mb-3">
              <h1>Trade History</h1>
              <nuxt-link to="/dashboard/trade-history" class="btn-action style-1">View all </nuxt-link>
            </div>
            <div class="table-responsive table_sec">
              <table class="table table-hover table-dark table-striped table-hover">
                <thead class="">
                  <tr>
                    <th>Trade ID</th>
                    <th>Trade Type</th>
                    <th>Pair Name</th>
                    <th>Started on</th>
                    <th>Ending on</th>
                    <th>Trade amount</th>
                    <th>Profit %</th>
                    <th>Estd Profit</th>
                    <td></td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
                    </td>
                  </tr>
                  <tr>
                    <td>TD7823498</td>
                    <td>Cypto</td>
                    <td>BTC/USDT</td>
                    <td>07/07/2024 <br> 6:54:00</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                    <td>100 USDT</td>
                    <td>10%</td>
                    <td>10 USDT</td>
                    <td>
                      <button class="btn_receipt" data-bs-toggle="offcanvas" data-bs-target="#trade_details"
                        aria-controls="trade_details"><i class="fa-sharp fa-regular fa-receipt"></i></button>
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
            <table class="table-dark table">
              <tbody>
                <thead>
                  <tr>
                    <td>Trade Type</td>
                    <td>Cypto</td>
                  </tr>
                  <tr>
                    <td>Pair Name</td>
                    <td>BTC/USDT</td>
                  </tr>
                  <tr>
                    <td>Started on</td>
                    <td>07/07/2024 <br>6:55:00 </td>
                  </tr>
                  <tr>
                    <td>Ending on</td>
                    <td>07/08/2024 <br> 6:54:00</td>
                  </tr>
                  <tr>
                    <td>Trade amount</td>
                    <td>100 USDT</td>
                  </tr>
                  <tr>
                    <td>Profit %</td>
                    <td>10% </td>
                  </tr>
                  <tr>
                    <td>Estd Profit</td>
                    <td>10 USDT</td>
                  </tr>
                  <tr>
                    <td>Trading Fee</td>
                    <td>1 USDT</td>
                  </tr>
                  <tr>
                    <td>Net Profit</td>
                    <td>9 USDT</td>
                  </tr>
                </thead>
              </tbody>
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
</script>
