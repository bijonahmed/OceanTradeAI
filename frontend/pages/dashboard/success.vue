<template>
    <div class="dashboard show">
        <title>Payment</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="dashboard__main">
                   <h2><center>Successfully add your wallet address</center></h2>
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