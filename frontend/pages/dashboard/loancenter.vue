<template>
    <div class="dashboard show">
        <title>Loan Center</title>

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
                                <h1 class="payment_title">Loan Center</h1>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="s_content">
                                <!-- <pre>{{ lists }}</pre> -->
                                <div id="card-list">
                                    <div class="bank_card reward z-3 scaled" v-for="item in lists" :key="item.id">
                                        <div>
                                            <div class="carde">
                                                <div class="card-inner">
                                                    <div class="front text_">
                                                        <span v-if="item.id == item.loan_id && item.loan_status == 0" class="sp_progress">
                                                            Request - Verification in Progress
                                                        </span>
                                                        <!-- <span v-if="item.id == item.loan_id && item.status == 1">
                                                            Redeemed - Funds Transferred to Main Wallet
                                                        </span> -->
                                                        <img :src="item.thumnail_img" class="map-img" />
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Show button only if loan_status is 0 -->
                                            <span v-if="item.id == item.loan_id && item.loan_status == 0">
                                                <!-- <button class="btn-action style-1" v-on:click="sendRequest(item.id)">
                                                    {{ item.name }} --- [{{ item.id }}]
                                                </button> -->
                                            </span>

                                            <span v-else>
                                                <button class="btn-action style-1" v-on:click="sendRequest(item.id)">
                                                    {{ item.name }}
                                                    <!-- [{{ item.id }}] -->
                                                </button>
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

            const response = await axios.get("/loan/sendrequest", { params });
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
                    text: "Already Send Loan.",
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
        const response = await axios.get("/loan/allloanCenterlists");
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

<style>
.reward .text_ span {
    font-size: 12px;
    padding: 8px;
    position: absolute;
    right: 0;
    text-align: center;
    top: 72%;
    transform: translateY(-72%);
    width: 100%
}

.sp_progress {
    background: #0a265a;
    box-shadow: 2px 3px 5px 3px #0a265a4f
}

.sp_transfer {
    background: #24262b;
    box-shadow: 2px 3px 5px 3px #24262b57
}

.map-img.claimed {
    filter: grayscale(100%)
}
</style>