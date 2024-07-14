<template>
    <div class="dashboard show">
        <title>Payment</title>



        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="dashboard__main">
                    <div class="row">
                        <div class="col-md-12">
                          
                            <div class="payment_method_container d-flex justify-content-between" v-if="walletstatus == 0">
                                <h1 class="payment_title">Payment</h1>
                                <a data-bs-toggle="modal" data-bs-target="#paymentModal" class="btn-action style-1"> <i
                                        class="fa-solid fa-plus me-2"></i> Add Payment Method</a>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="s_content">
                                <div id="card-list">
                                    <div class="bank_card z-3 scaled" style="z-index: 3;">
                                        <div class="carde">
                                            <div class="card-inner">
                                                <div class="front">
                                                    <img src="assets/images/Card.png" class="map-img">
                                                        <p class="d-flex align-items-center">{{ walletaddress }}</p>
                                                    
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

<!-- ======== add payment method modal ========== -->
<div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="boostModalLabel" aria-modal="true"
        role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content rounded-0">
                <div class="modal-header py-0">
                    <div class="w-10"> </div>
                    <h5 class="modal-title fs-6" id="boostModalLabel"></h5>
                    <div data-bs-theme="dark">
                        <button type="button" class="btn_close text-white" data-bs-dismiss="modal" aria-label="Close"><i
                                class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="form_group">
                        <!-- Crypto tab  -->
                        <div class="st_filter">
                                <form @submit.prevent="submit()" id="formrest" class="withdraw_form"> 

                                <div class="form_group">
                                    <p>Currency type<span class="text-danger">*</span></p>
                                    <input type="text" disabled readonly placeholder="Address" class="form-control mb-0" v-model="name">
                                    
                                    <span class="text-danger" v-if="errors.name">{{ errors.name[0]}}</span>
                                </div>
                                <div id="additionalFields2" style="">
                                    <div class="form_group mb-2">
                                        <p>Wallet Address<span class="text-danger">*</span> </p>
                                        <input type="text" placeholder="Address" class="form-control mb-0" v-model="wallet_address">
                                        <span class="text-danger" v-if="errors.wallet_address">{{ errors.wallet_address[0]}}</span>
                                    </div>
                                </div>

                                <button type="submit" class="btn-action mt-3 style-1 w-100 mt-2">Save</button>
                            </form>
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


import { useRouter } from 'vue-router';
import Swal from "sweetalert2";
const router = useRouter();
const loading = ref(false);

definePageMeta({
    middleware: 'is-logged-out',
})

const name = ref('USDT-TRC20-TRX');
const wallet_address = ref('');
const walletaddress = ref('');
const walletstatus = ref('');
const errors = ref([]);




const submit = () => {
    const formData = new FormData();
    formData.append("name", name.value);
    formData.append("wallet_address", wallet_address.value);
    const headers = {
        "Content-Type": "multipart/form-data",
    };
    axios
        .post("/user/addUserPaymentWallet", formData, { headers })
        .then((res) => {
            checkingPayment();
            document.getElementById("formrest").reset();
            $('#paymentModal').modal('hide');
            success_noti();
            router.push("/dashboard/payment");
        })
        .catch((error) => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
                

            } else {
                // Handle other types of errors here
                console.error("An error occurred:", error);
            }
        });
};

const success_noti = () => {
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 2200,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        },
    });
    Toast.fire({
        icon: "success",
        title: "Successfully add your wallet address.",
    });
};

 
 

const checkingPayment = async () => {
    try {

        const response = await axios.get("/user/checkPayment");
        console.log("Response data:", response.data.wallet_address);
        walletaddress.value = response.data.wallet_address;
        walletstatus.value = response.data.status;

    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

onMounted(async () => {
    checkingPayment();
 
});

 





</script>