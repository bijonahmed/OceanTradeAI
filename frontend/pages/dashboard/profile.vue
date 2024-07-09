<template>
    <div class="dashboard show">
        <title>Profile</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
              <DashboardHeader/>
              <div class="dashboard__main">
                <form action="">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="profile_">
                                <h4>Personal details</h4>
                                <ul class="profile_data">
                                    <li>
                                        <div class="personal_details">
                                            <label for="">User name</label>
                                            <input type="text" placeholder="user123" disabled class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Full Name</label>
                                            <input type="text" placeholder="Full name" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Email address</label>
                                            <input type="email" placeholder="abc@mail.com" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Phone</label>
                                            <input type="tel" placeholder="Mobile number" class="form-control">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="profile_">
                                <h4>Social links</h4>
                                <ul class="profile_data">
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Facebook</label>
                                            <input type="text" placeholder="Facebook" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Twitter</label>
                                            <input type="text" placeholder="Twitter" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">WhatsApp</label>
                                            <input type="text" placeholder="WhatsApp" class="form-control">
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Telegram</label>
                                            <input type="text" placeholder="Telegram" class="form-control">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn-action style-1">Update</button>
                        </div>
                    </div>
                </form>
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