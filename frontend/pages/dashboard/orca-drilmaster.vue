<template>
    <div class="dashboard show">
        <title>Orca Drilmaster</title>
        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="loading-indicator" v-if="loading" style="text-align: center">
                    <Loader />
                </div>
                <div class="dashboard__main">

                    <div class="section-faq style-5 mb-0">
                        <div class="faq__content">
                            <div class="flat-tabs mt-0">

                                <ul class="menu-tab">
                                    <li>
                                        <h5><nuxt-link to="/dashboard/pricing">Dolphin Digger</nuxt-link></h5>
                                    </li>
                                    <li>
                                        <h5><nuxt-link to="/dashboard/shark-driller">Shark Driller</nuxt-link></h5>
                                    </li>
                                    <li class="active">
                                        <h5><nuxt-link to="/dashboard/orca-drilmaster">Orca Drillmaster</nuxt-link></h5>
                                    </li>
                                    <li>
                                        <h5><nuxt-link to="/dashboard/whale-excavator">Whale Excavator</nuxt-link></h5>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pricing_section">
                        <div class="pricing_box">
                            <img src="assets/images/3.png" alt="" class="img-fluid">
                            <h1>Orca Drillmaster</h1>
                            <h4 class="price_">30 days</h4>
                            <h4>$10.00</h4>
                            <ul class="options">
                                <li>Save $0.00</li>
                                <li>max mining $13</li>
                                <li>max mining 1 hour</li>
                                <li>Live Support</li>
                            </ul>
                            <button class="btn-action-outline style-5">purchase</button>
                        </div>
                        <div class="pricing_box">
                            <img src="assets/images/3.png" alt="" class="img-fluid">
                            <h1>Orca Drillmaster</h1>
                            <h4 class="price_">60 days</h4>
                            <h4>$18.00</h4>
                            <ul class="options">
                                <li>Save $2.00</li>
                                <li>max mining $13</li>
                                <li>max mining 1 hour</li>
                                <li>Live Support</li>
                            </ul>
                            <button class="btn-action-outline style-5">purchase</button>
                        </div>
                        <div class="pricing_box">
                            <img src="assets/images/3.png" alt="" class="img-fluid">
                            <h1>Orca Drillmaster</h1>
                            <h4 class="price_">90 days</h4>
                            <h4>$25.00</h4>
                            <ul class="options">
                                <li>Save $5.00</li>
                                <li>max mining $13</li>
                                <li>max mining 1 hour</li>
                                <li>Live Support</li>
                            </ul>
                            <button class="btn-action-outline style-5">purchase</button>
                        </div>
                        <div class="pricing_box">
                            <img src="assets/images/3.png" alt="" class="img-fluid">
                            <h1>Orca Drillmaster</h1>
                            <h4 class="price_">120 days</h4>
                            <h4>$32.00</h4>
                            <ul class="options">
                                <li>Save $8.00</li>
                                <li>max mining $13</li>
                                <li>max mining 1 hour</li>
                                <li>Live Support</li>
                            </ul>
                            <!-- <div class="mechine"> -->
                            <span class="sm_timer">
                                <strong>
                                    <div class="t_box">
                                        20
                                    </div>
                                    <p>Hour</p>
                                </strong>
                                <strong>
                                    <div class="t_box">
                                        20
                                    </div>
                                    <p>Hour</p>
                                </strong>
                                <strong>
                                    <div class="t_box">
                                        10
                                    </div>
                                    <p>Minute</p>
                                </strong>
                                <strong>
                                    <div class="t_box">
                                        10
                                    </div>
                                    <p>Second</p>
                                </strong>
                            </span>
                            <!-- </div> -->
                            <button class="btn-action style-5 btn_boost">Boost</button>
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
const loading = ref(true);
onMounted(() => {
    setTimeout(() => {
        loading.value = false;
    }, 1000); // 1 seconds
});
</script>