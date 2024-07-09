<template>
    <div class="dashboard show">
        <title>Expense</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">

            
          <DashboardHeader/>

          <div class="dashboard__main">
                <div class="affiliate_section">
                    <!--Expense History list  -->
                    <div class="refer_members">
                        <h4>Expense History</h4>
                        <div class="search_section">
                            <form action="">
                                <div class="search_div">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class=" d-flex align-items-center w-100">
                                                <div class="input_form w-100">
                                                    <input type="text" placeholder="Search TRX id" class="form-control mb-2">
                                                </div>
                                                <div class="input_form w-100 m-0">
                                                    <select name="" id="" class="form-control mb-2">
                                                        <option value="" disabled selected>Select type</option>
                                                        <option value="">type 2</option>
                                                        <option value="">type 3</option>
                                                        <option value="">type 4</option>
                                                    </select>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class=" d-flex align-items-center w-100">
                                                <div class="input_form w-100">
                                                    <input type="date" class="form-control mb-2">
                                                </div>
                                                <p>TO</p>
                                                <div class="input_form w-100 m-0">
                                                    <input type="date" class="form-control mb-2">
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-dark table-striped table-hover">
                                <thead class="">
                                    <tr>
                                        <th class="col">TRX id</th>
                                        <th>Date & Time</th>
                                        <th>Expense Type</th>
                                        <th>Description</th>
                                        <th>Remark</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>TRX8784345</td>
                                        <td>07/08/2024 <br> 12:12:12</td>
                                        <td>Buy machine</td>
                                        <td>Description Lorem ipsum dolor sit amet.</td>
                                        <td>Buy for Own</td>
                                        <td>100 USDT</td>
                                        <td><span class="text-danger">Pending</span></td>
                                    </tr>
                                    <tr>
                                        <td>TRX8784345</td>
                                        <td>07/08/2024 <br> 12:12:12</td>
                                        <td>Buy machine</td>
                                        <td>Description Lorem ipsum dolor sit amet.</td>
                                        <td>Buy for Own</td>
                                        <td>100 USDT</td>
                                        <td><span class="text-success">Approve</span></td>
                                    </tr>
                                    <tr>
                                        <td>TRX8784345</td>
                                        <td>07/08/2024 <br> 12:12:12</td>
                                        <td>Buy machine</td>
                                        <td>Description Lorem ipsum dolor sit amet.</td>
                                        <td>Buy for Own</td>
                                        <td>100 USDT</td>
                                        <td><span class="text-success">Approve</span></td>
                                    </tr>
                                    <tr>
                                        <td>TRX8784345</td>
                                        <td>07/08/2024 <br> 12:12:12</td>
                                        <td>Buy machine</td>
                                        <td>Description Lorem ipsum dolor sit amet.</td>
                                        <td>Buy for Own</td>
                                        <td>100 USDT</td>
                                        <td><span class="text-success">Approve</span></td>
                                    </tr>
                                    <tr>
                                        <td>TRX8784345</td>
                                        <td>07/08/2024 <br> 12:12:12</td>
                                        <td>Buy machine</td>
                                        <td>Description Lorem ipsum dolor sit amet.</td>
                                        <td>Buy for Own</td>
                                        <td>100 USDT</td>
                                        <td><span class="text-success">Approve</span></td>
                                    </tr>
                                    <tr>
                                        <td>TRX8784345</td>
                                        <td>07/08/2024 <br> 12:12:12</td>
                                        <td>Buy machine</td>
                                        <td>Description Lorem ipsum dolor sit amet.</td>
                                        <td>Buy for Own</td>
                                        <td>100 USDT</td>
                                        <td><span class="text-success">Approve</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <a class="loadMore mt-3 btn-action-outline style-3" href="#">
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