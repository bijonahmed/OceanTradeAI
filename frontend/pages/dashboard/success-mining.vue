<template>
    <div class="dashboard show">
        <title>Payment</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <center>
      <div class="loading-indicator" v-if="loading" style="text-align: center">
        <Loader />
      </div>
    </center>
                <div class="dashboard__main">
                    <br/>
                   <h2><center>Your mining has started successfully<br>
                
                    <nuxt-link to="/dashboard/mining" class="btn-action-outline style-5"><span
                        class="d-md-inline-block">Back</span></nuxt-link>
                
                </center></h2>
                </div>
            </div>
        </div>

 

    </div>
</template>
<script setup>
 
import DashboardSidebar from "~/layouts/DashboardSidebar.vue";
import DashboardHeader from "~/layouts/DashboardHeader.vue";
 
 
</script>