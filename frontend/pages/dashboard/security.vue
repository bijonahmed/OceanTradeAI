<template>
    <div class="dashboard show">
        <title>Security</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">

            
          <DashboardHeader/>

          <div class="dashboard__main">
                <div class="row">
                    <div class="col-md-6">
                        <form action="">
                            <div class="profile_">
                                <h4>Password</h4>
                                <ul class="profile_data">
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Old Password</label>
                                            <input type="password" placeholder="Old Password"  class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">New password</label>
                                            <input type="password" placeholder="New password" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Confirm password</label>
                                            <input type="password" placeholder="Confirm password" class="form-control">
                                        </div>
                                    </li>
                                </ul>
                                <button type="submit" class="btn-action style-1">Update</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <form action="">
                            <div class="profile_">
                                <h4>Withdrawal Pin</h4>
                                <ul class="profile_data">
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Old Pin</label>
                                            <input type="password" placeholder="Old Pin" disabled class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">New Pin</label>
                                            <input type="password" placeholder="New Pin" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Confirm Pin</label>
                                            <input type="password" placeholder="Confirm Pin" class="form-control">
                                        </div>
                                    </li>
                                </ul>
                                <button type="submit" class="btn-action style-1">Update</button>
                            </div>
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