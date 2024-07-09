<template>
    <div class="dashboard show">
        <title>Trade History</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">

            
          <DashboardHeader/>
          <div class="dashboard__main">
                <div class="row mb-3">
                    <div class="col-md-6">
                        <a href="#" onclick="history.back(); return false;"><i class="fa-solid fa-arrow-left"></i></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="trade_history">
                            <div class="d-flex justify-content-between align-items-end mb-3">
                                <h1>Trade History</h1>
                                <a href="#" class="btn-action style-1">View all </a>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
                                                        class="fa-sharp fa-regular fa-receipt"></i></button>
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
                                                <button class="btn_receipt" data-bs-toggle="offcanvas"
                                                    data-bs-target="#trade_details" aria-controls="trade_details"><i
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