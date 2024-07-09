<template>
    <div class="dashboard show">
        <title>Affiliate History</title>

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
                <div class="affiliate_section">
                    <div class="top_affi_balance mb-3">
                        <h1>Level 1</h1>
                        <p>Team : 3002</p>
                        <span>1,249.03 USDT</span>
                    </div>
                    <!--refere members list  -->
                    <div class="refer_members">
                        <h4>Reffered members list</h4>
                        <div class="search_section">
                            <form action="">
                                <div class="search_div">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input_form mb-2 m-0">
                                                <input type="text" placeholder="Search by user name"
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
                                        <th scope="col">Name</th>
                                        <th scope="col" class="text-center">Reg. Date</th>
                                        <th scope="col" class="text-center">Profit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="member_left">
                                                <div class="member_desc">
                                                    <div>
                                                        <p>abc@mail.com</p>
                                                        <span>MID 234234234</span>
                                                        <span>Leve 1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                        <td class="text-center">20 USDT </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="member_left">
                                                <div class="member_desc">
                                                    <div>
                                                        <p>abc@mail.com</p>
                                                        <span>MID 234234234</span>
                                                        <span>Leve 1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                        <td class="text-center">20 USDT </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="member_left">
                                                <div class="member_desc">
                                                    <div>
                                                        <p>abc@mail.com</p>
                                                        <span>MID 234234234</span>
                                                        <span>Leve 1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                        <td class="text-center">20 USDT </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="member_left">
                                                <div class="member_desc">
                                                    <div>
                                                        <p>abc@mail.com</p>
                                                        <span>MID 234234234</span>
                                                        <span>Leve 1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                        <td class="text-center">20 USDT </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="member_left">
                                                <div class="member_desc">
                                                    <div>
                                                        <p>abc@mail.com</p>
                                                        <span>MID 234234234</span>
                                                        <span>Leve 1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                        <td class="text-center">20 USDT </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="member_left">
                                                <div class="member_desc">
                                                    <div>
                                                        <p>abc@mail.com</p>
                                                        <span>MID 234234234</span>
                                                        <span>Leve 1</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">7/7/2024 <br> 12:12:00</td>
                                        <td class="text-center">20 USDT </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a class="loadMore mt-3 btn-action style-1" href="#">
                            <span>Load more</span>
                        </a>
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