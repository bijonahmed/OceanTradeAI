<template>
    <div class="dashboard show">
        <title>Reward Center</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">

                <DashboardHeader />

                <div class="dashboard__main">
                    <div class="row">
                        <center>
                            <div class="loading-indicator" v-if="loading" style="text-align: center">
                                <Loader />
                            </div>
                        </center>
                        <div class="col-md-12">

                            <div class="payment_method_container d-flex justify-content-between">
                                <h1 class="payment_title">Reward Center</h1>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="s_content">
                                <div id="card-list">
                                    <div class="bank_card reward z-3 scaled" style="z-index: 3;" v-for="item in lists"
                                        :key="item.id" @click="sendRequest(item.id)">
                                        <div class="carde">
                                            <div class="card-inner">
                                                <div class="front">
                                                    <span v-if="item.reward_status == 0"> 
                                                        Claimed - Verification in Progress
                                                     </span>
                                                    <span v-if="item.reward_status == 1"> 
                                                        Redeemed - Funds Transferred to Main Wallet
                                                     </span>
                                                    <img :src="item.thumnail_img" class="map-img">
                                                </div>
                                            </div>
                                        </div>
                                        <span v-if="item.reward_status == 0">
                                            <button class="btn-action style-1 disabled">{{ item.name }}</button>
                                        </span>

                                        <span v-if="item.reward_status == 1">
                                            <button class="btn-action style-1 disabled">{{ item.name }}</button>
                                        </span>

                                        <span v-if="item.reward_status == 3">
                                            <button class="btn-action style-1">{{ item.name }}</button>
                                        </span>
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
import Swal from "sweetalert2";

const lists = ref([]);
const errors = ref([]);
const loading = ref(false);
const sendRequest = async (id) => {
    const result = await Swal.fire({
        title: "Are you sure?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes!"
    });

    if (result.isConfirmed) {
        try {
            const params = {
                id: id,  // Replace with actual parameter value
            };

            const response = await axios.get("/reward/sendrequest", { params });
            console.log("Response:", response);
            rcenterlists();

            Swal.fire({
                title: "Success",
                text: "Successfully sent your request!.",
                icon: "success"
            });
        } catch (error) {
            if (error.response && error.response.status === 409) {
                // Handle duplicate entry error
                Swal.fire({
                    title: "Error",
                    text: "Already Send Claim.",
                    icon: "error"
                });
                console.error("Duplicate entry:", error.response.data.message);
            } else if (error.response && error.response.status === 422) {
                // Handle validation errors
                Swal.fire({
                    title: "Error",
                    text: "Validation error.",
                    icon: "error"
                });
                console.error("Validation error:", error.response.data.errors);
            } else {
                // Handle other errors
                Swal.fire({
                    title: "Error",
                    text: "An error occurred.",
                    icon: "error"
                });
                console.error("Error:", error);
            }
        }
    }
};

const rcenterlists = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/reward/allrewardCenterlists");
        lists.value = response.data.data;
    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }

}
onMounted(() => {
    rcenterlists();
});

</script>