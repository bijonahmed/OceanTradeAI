<template>
    <div class="dashboard show">
        <title>Currency Trade</title>
        <DashboardSidebar />

        <div class="dashboard_main_content">
            <div class="dashboard__content">
              <DashboardHeader/>
                <div class="dashboard__main">
                    <div class="row">
                        <div class="col-md-12 m-auto">
                            <CryptoTrade/>
                            <!-- TradingView Widget END -->
                            <div class="day_filter">
                                <div>
                                    <button type="button" class="btn_day_filter active">1D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">3D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">7D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">15D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">30D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">45D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">60D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button type="button" class="btn_day_filter">90D</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>25%</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <form action="" class="withdraw_form trade_form">

                                        <div class="">
                                            <label for="">Amount</label>
                                            <input type="number" placeholder="00.00" class="form-control">
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <p>Min Trade: 10USDT</p>
                                            <p>Available balance: 1,000USDT</p>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <p>Trading Fee: 0.20 USDT</p>
                                            <p>Estd. Profit: 20 USDT</p>
                                        </div>

                                        <button type="button" class="btn-action style-1 trade_confirm "
                                            data-bs-toggle="offcanvas" data-bs-target="#trade_confirm"
                                            aria-controls="trade_confirm">Activate your tradding AI</button>
                                    </form>
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
import Swiper from 'swiper';
import 'swiper/swiper-bundle.css';
import DashboardSidebar from '~/layouts/DashboardSidebar.vue';
import DashboardHeader from '~/layouts/DashboardHeader.vue';

onMounted(() => {

});
</script>
<style>
.dashboard .dashboard__content .dashboard__main {
	margin-top: 10px;
	margin-bottom: 20px;
}</style>