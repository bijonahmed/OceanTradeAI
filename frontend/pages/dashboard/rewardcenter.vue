<template>
    <div class="dashboard show">
        <title>Reward Center</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">
            
          <DashboardHeader/>

          <div class="dashboard__main">
                <div class="row">
                    <div class="col-md-12">

                        <div class="payment_method_container d-flex justify-content-between">
                            <h1 class="payment_title">Reward Center</h1>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="s_content">
                            <div id="card-list">
                                <div class="bank_card reward z-3 scaled" style="z-index: 3;">
                                    <div class="carde">
                                        <div class="card-inner">
                                            <div class="front">
                                                <img src="/assets/images/Card.png" class="map-img">
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="progress mt-2">
                                        <div class="progress-bar progress-bar-striped" role="progressbar"
                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100"></div>
                                    </div>
                                    <button class="btn-action style-1">Claim</button>
                                </div>
                                <div class="bank_card reward z-3 scaled" style="z-index: 3;">
                                    <div class="carde">
                                        <div class="card-inner">
                                            <div class="front">
                                                <img src="/assets/images/Card.png" class="map-img">
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="progress mt-2">
                                        <div class="progress-bar progress-bar-striped" role="progressbar"
                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100"></div>
                                    </div>
                                    <button class="btn-action style-1">Claim</button>
                                </div>
                                <div class="bank_card reward z-3 scaled" style="z-index: 3;">
                                    <div class="carde">
                                        <div class="card-inner">
                                            <div class="front">
                                                <img src="/assets/images/Card.png" class="map-img">
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="progress mt-2">
                                        <div class="progress-bar progress-bar-striped" role="progressbar"
                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100"></div>
                                    </div>
                                    <button class="btn-action style-1">Claim</button>
                                </div>
                                <div class="bank_card reward z-3 scaled" style="z-index: 3;">
                                    <div class="carde">
                                        <div class="card-inner">
                                            <div class="front">
                                                <img src="/assets/images/Card.png" class="map-img">
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="progress mt-2">
                                        <div class="progress-bar progress-bar-striped" role="progressbar"
                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100"></div>
                                    </div>
                                    <button class="btn-action style-1">Claim</button>
                                </div>
                                <div class="bank_card reward z-3 scaled" style="z-index: 3;">
                                    <div class="carde">
                                        <div class="card-inner">
                                            <div class="front">
                                                <img src="/assets/images/Card.png" class="map-img">
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="progress mt-2">
                                        <div class="progress-bar progress-bar-striped" role="progressbar"
                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100"></div>
                                    </div>
                                    <button class="btn-action style-1">Claim</button>
                                </div>
                                <div class="bank_card reward z-3 scaled" style="z-index: 3;">
                                    <div class="carde">
                                        <div class="card-inner">
                                            <div class="front">
                                                <img src="/assets/images/Card.png" class="map-img">
                                            </div>
                                        </div>
                                    </div>                                    
                                    <div class="progress mt-2">
                                        <div class="progress-bar progress-bar-striped" role="progressbar"
                                            style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                                            aria-valuemax="100"></div>
                                    </div>
                                    <button class="btn-action style-1 disabled">Claim</button>
                                </div>
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