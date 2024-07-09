<template>
    <div class="dashboard show">
        <title>Withdraw</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">

          <DashboardHeader/>

            <div class="dashboard__main">
                
                <div class="row">
                    <div class="col-md-6 m-auto">
                        <a href="#" onclick="history.back(); return false;"><i class="fa-solid fa-arrow-left"></i></a>

                        <form action="" class="withdraw_form but_token_form">
                            <p class="badge_"><i class="fa-solid fa-circle-exclamation"></i>	&nbsp; Minimum withdraw
                                20 USDT</p>
                            <div class="form_group">
                                <p>Withdrawal Amount(max-withdraw: 3690.00 USDT)</p>
                                <div class="input_group">
                                    <input type="text" class="form-control" placeholder="00.00">
                                    <img src="assets/images/usdt.png" alt="" class="img-fluid ">
                                </div>
                                <span>Current amount : 3690.00 USDT</span>
                            </div>
                            <div class="form_group">
                                <p>Withdrawal address</p>                                
                                <div class="input_group">
                                    <select name="" id="" disabled class="form-control rounded-0 mb-0">
                                        <option value="" selected=""  >Select Bank Card</option>
                                        <option value="" selected>16546444644</option> 
                                    </select>
                                    <img src="assets/images/wallet-100.png" alt="" class="img-fluid ">
                                </div>
                            </div>
                            <div class="form_group">
                                <p>Please Enter Withdrawal Pin</p>
                                <div class="input_group">
                                    <input type="text" class="form-control" placeholder="00.00">
                                    <img src="assets/images/lock-100.png" alt="" class="img-fluid ">
                                </div>
                            </div>
                            <button type="button" class="btn-action style-1 w-100 mt-3">Confirm Withdraw </button>
                        </form>
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