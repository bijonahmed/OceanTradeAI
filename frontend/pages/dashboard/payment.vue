<template>
    <div class="dashboard show">
        <title>Payment</title>



        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="dashboard__main">
                    <div class="row">
                        <div class="col-md-12">

                            <div class="payment_method_container d-flex justify-content-between">
                                <h1 class="payment_title">Payment</h1>
                                <a data-bs-toggle="modal" data-bs-target="#paymentModal" class="btn-action style-1"> <i
                                        class="fa-solid fa-plus me-2"></i> Add Payment Method</a>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="s_content">
                                <div id="card-list">
                                    <div class="bank_card z-3 scaled" style="z-index: 3;">
                                        <div class="carde">
                                            <div class="card-inner">
                                                <div class="front">
                                                    <img src="assets/images/Card.png" class="map-img">
                                                    <div class="rows card-no">
                                                        <p class="d-flex align-items-center">
                                                            51B4DE29-3B71-4FD2-9E6C-071703E1FF31</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<!-- ======== add payment method modal ========== -->
<div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="boostModalLabel" aria-modal="true"
        role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content rounded-0">
                <div class="modal-header py-0">
                    <div class="w-10"> </div>
                    <h5 class="modal-title fs-6" id="boostModalLabel"></h5>
                    <div data-bs-theme="dark">
                        <button type="button" class="btn_close text-white" data-bs-dismiss="modal" aria-label="Close"><i
                                class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="form_group">
                        <!-- Crypto tab  -->
                        <div class="st_filter">
                            <form action="" class="withdraw_form">

                                <div class="form_group">
                                    <p>Currency type<span class="text-danger">*</span></p>
                                    <select name="" id="mySelect2" class="form-control">
                                        <option selected value="">USDT-TRC20-TRX</option>
                                    </select>
                                </div>
                                <div id="additionalFields2" style="">
                                    <div class="form_group mb-2">
                                        <p>Wallet Address<span class="text-danger">*</span> </p>
                                        <input type="text" placeholder="Address" class="form-control mb-0">
                                    </div>
                                </div>

                                <button type="submit" class="btn-action mt-3 style-1 w-100 mt-2">Save</button>
                            </form>
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