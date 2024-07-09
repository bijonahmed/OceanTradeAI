<template>
    <div class="dashboard show">
        <title>Crypto Trade</title>
        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="dashboard__main">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>
                        </div>
                    </div>
                    <!-- slider section sttart here  -->
                    <section class="slider_section">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="swiper mySwiper">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="assets/images/1280x400.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="assets/images/1280x400.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="assets/images/1280x400.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="assets/images/1280x400.png" alt="" class="img-fluid">
                                        </div>
                                        <div class="swiper-slide">
                                            <img src="assets/images/1280x400.png" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                    <div class="swiper-pagination slider_pagination"></div>
                                </div>

                            </div>
                        </div>
                    </section>
                    <!-- slider section end herer  -->


                    <!-- market section start herer  -->
                    <div class="market_section mt-3">
                        <h4>Crypto Trade</h4>
                        <div class="table-responsive">
                            <table class="table table-dark  table_crypto">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Month</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">High</th>
                                        <th scope="col">Low</th>
                                        <th scope="col">Chg.</th>
                                        <th scope="col">Chg.%</th>
                                        <th scope="col">Time</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="assets/images/crypto/icons8-bitcoin-80.png" alt=""
                                                class="img-fluid"> BTC
                                        </td>
                                        <td>Aug 24</td>
                                        <td>2,399.85</td>
                                        <td>2,401.40</td>
                                        <td>2,356.65</td>
                                        <td class="text-success">+30.45</td>
                                        <td class="text-success">+1.29%</td>
                                        <td>05/07</td>
                                        <td>
                                            <nuxt-link to="/dashboard/trade/start/crypto-trade"
                                                class="btn-action style-5">Trade</nuxt-link>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="assets/images/crypto/SOL.png" alt="" class="img-fluid"> SOL
                                        </td>
                                        <td>Sep 24</td>
                                        <td>31.525</td>
                                        <td>31.782</td>
                                        <td>30.470</td>
                                        <td class="text-success">+0.683</td>
                                        <td class="text-success">+2.21%</td>
                                        <td>05/07</td>
                                        <td>
                                            <nuxt-link to="/dashboard/trade/start/crypto-trade"
                                                class="btn-action style-5">Trade</nuxt-link>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="assets/images/crypto/icons8-ethereum-100.png" alt=""
                                                class="img-fluid"> ETH
                                        </td>
                                        <td>Sep 24</td>
                                        <td>31.525</td>
                                        <td>31.782</td>
                                        <td>30.470</td>
                                        <td class="text-success">+0.683</td>
                                        <td class="text-success">+2.21%</td>
                                        <td>05/07</td>
                                        <td>
                                            <nuxt-link to="/dashboard/trade/start/crypto-trade"
                                                class="btn-action style-5">Trade</nuxt-link>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="assets/images/crypto/XRP.png" alt="" class="img-fluid"> XRP
                                        </td>
                                        <td>Sep 24</td>
                                        <td>31.525</td>
                                        <td>31.782</td>
                                        <td>30.470</td>
                                        <td class="text-success">+0.683</td>
                                        <td class="text-success">+2.21%</td>
                                        <td>05/07</td>
                                        <td>
                                            <nuxt-link to="/dashboard/trade/start/crypto-trade"
                                                class="btn-action style-5">Trade</nuxt-link>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="refer_members latest_buy text-start">
                        <h6>Latest Trade</h6>
                        <ul>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                        </ul>

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
    var swiper = new Swiper(".mySwiper", {
        pagination: {
            el: ".slider_pagination",
        },
        loop: true,
        Autoplay: {
            delay: 3000, // 3 seconds
            disableOnInteraction: false,
        },
        margin: 10,
    });
});
</script>