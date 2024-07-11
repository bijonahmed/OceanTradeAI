<template>
    <div class="dashboard show">
        <title>My Wallet</title>
        <DashboardSidebar />
         
        <div class="dashboard_main_content">
        <div class="dashboard__content">

           <DashboardHeader/>
            <div class="dashboard__main">
                <div class="row">
                    <div class="col-md-6">
                        <div class="wallet_container">
                            <div class="wallet_box">
                                <h4> <img src="/assets/images/gold_coin.png" alt="" class="img-fluid"> 23,343</h4>
                                <p>OCN Balance</p>
                            </div>
                            <div class="wallet_box">
                                <h4><img src="/assets/images/usdt.png" alt="" class="img-fluid"> 23,343</h4>
                                <p>USDT Balance</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="d-flex justify-content-start align-items-center buy_btns">
                            <a class="btn-action style-5 btn_boost mx-0 me-2" data-bs-toggle="offcanvas"
                                data-bs-target="#deposit_" aria-controls="deposit_">Deposit</a>
                            <nuxt-link to="/dashboard/withdraw" class="btn-action style-5 btn_boost mx-0">Withdraw</nuxt-link>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="market section-faq style-2 ">
                            <div class="faq__content pe-0">
                                <div class="flat-tabs">
                                    <ul class="menu-tab">
                                        <li class="active">
                                            <h5>Deposit</h5>
                                        </li>
                                        <li class="">
                                            <h5>Withdraw</h5>
                                        </li>

                                    </ul>
                                    <div class="content-tab">
                                        <div class="content-inner flat-accordion" style="display: none;">
                                            <div class="search_section">
                                                <form action="">
                                                    <div class="search_div">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="input_form mb-2 m-0">
                                                                    <input type="text" placeholder="Search TRX id"
                                                                        class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class=" d-flex align-items-center w-100">
                                                                    <div class="input_form w-100">
                                                                        <input type="date" class="form-control">
                                                                    </div>
                                                                    <p>TO</p>
                                                                    <div class="input_form w-100 m-0">
                                                                        <input type="date" class="form-control">
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                            <div class="table-responsive">
                                                <table class="table table-dark table-striped table_crypto">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">TRX id</th>
                                                            <th scope="col" class="text-center">Date</th>
                                                            <th scope="col" class="text-center">Amount</th>
                                                            <th scope="col" class="text-center">Status</th>
                                                            <th scope="col">Remark</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>TR234234323</td>
                                                            <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                                            <td class="text-center">2,399.85</td>
                                                            <td class="text-center"><span class="text-warning">Pending</span></td>
                                                            <td>-</td>
                                                        </tr>
                                                        <tr>
                                                            <td>TR234234323</td>
                                                            <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                                            <td class="text-center">2,399.85</td>
                                                            <td class="text-center"><span class="text-success">Approve</span></td>
                                                            <td>Receive</td>
                                                        </tr>
                                                        <tr>
                                                            <td>TR234234323</td>
                                                            <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                                            <td class="text-center">2,399.85</td>
                                                            <td class="text-center"><span class="text-danger">Reject</span></td>
                                                            <td>not receive</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="content-inner flat-accordion" style="display: none;">
                                            <div class="search_section">
                                                <form action="">
                                                    <div class="search_div">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="input_form mb-2 m-0">
                                                                    <input type="text" placeholder="Search TRX id"
                                                                        class="form-control">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class=" d-flex align-items-center w-100">
                                                                    <div class="input_form w-100">
                                                                        <input type="date" class="form-control">
                                                                    </div>
                                                                    <p>TO</p>
                                                                    <div class="input_form w-100 m-0">
                                                                        <input type="date" class="form-control">
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>                                            
                                            <div class="table-responsive">
                                                <table class="table table-dark table-striped table_crypto">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">TRX id</th>
                                                            <th scope="col" class="text-center">Date</th>
                                                            <th scope="col" class="text-center">Amount</th>
                                                            <th scope="col" class="text-center">Status</th>
                                                            <th scope="col">Remark</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>TR234234323</td>
                                                            <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                                            <td class="text-center">2,399.85</td>
                                                            <td class="text-center"><span class="text-warning">Pending</span></td>
                                                            <td>-</td>
                                                        </tr>
                                                        <tr>
                                                            <td>TR234234323</td>
                                                            <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                                            <td class="text-center">2,399.85</td>
                                                            <td class="text-center"><span class="text-success">Approve</span></td>
                                                            <td>Receive</td>
                                                        </tr>
                                                        <tr>
                                                            <td>TR234234323</td>
                                                            <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                                            <td class="text-center">2,399.85</td>
                                                            <td class="text-center"><span class="text-danger">Reject</span></td>
                                                            <td>not receive</td>
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
            </div>
        </div>
    </div>
    <!-- deposit offcanvas  -->
    <div class="offcanvas offcanvas-bottom trade_history_table" tabindex="-1" id="deposit_"
        aria-labelledby="deposit_Label">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
            <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                    class="fas fa-times"></i></button>
        </div>
        <div class="offcanvas-body small pt-0">
            <div class="row">
                <div class="col-md-4 m-auto">
                    <form action="" class="withdraw_form but_token_form">

                        <div class="input_form mb-2 m-0">
                            <label for="amount" class="mb-2">Enter Deposit Amount</label>
                            <div class="input_group">
                                <input type="text" class="form-control" placeholder="00.00">
                                <img src="/assets/images/usdt.png" alt="" class="img-fluid img_g_coin">
                            </div>
                        </div>
                        <a href="dashboard-desposite-confirm.html" class="btn-action style-5 btn_confirm btn_deposit_confirm" >Confirm</a>
                    </form>

                    <div class="refer_members latest_buy text-start">
                        <h6>Latest Deposit</h6>
                        <ul>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 desposit xyz </strong>
                            </li>
                        </ul>

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

import { useUserStore } from "~~/stores/user";
const userStore = useUserStore();
const isLoggedIn = computed(() => userStore.isLoggedIn);
definePageMeta({
  middleware: "is-logged-out",
});





</script>