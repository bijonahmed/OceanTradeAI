<template>
    <div class="dashboard show">
        <title>Withdraw</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">

                <DashboardHeader />

                <div class="dashboard__main">

                    <div class="row">
                        <div class="col-md-6 m-auto">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>


                            <center>
                                <div class="loading-indicator" v-if="loading" style="text-align: center">
                                    <Loader />
                                </div>
                            </center>



                            <div v-if="loanBalance > 0">
                                <div class="alert alert-danger" role="alert">
                                    You still have a loan of {{ loanBalance }} USDT. &nbsp;Please pay the loan through
                                    this link <nuxt-link to="/dashboard/loan-request-send"
                                        class="alert-link">&nbsp;Pay</nuxt-link>.
                                </div>
                            </div>




                            <form @submit.prevent="submit()" class="withdraw_form but_token_form" id="formrest">
                                <p class="badge_"><i class="fa-solid fa-circle-exclamation"></i> &nbsp; Minimum withdraw
                                    {{ minimum_withdrawal }} USDT</p>
                                <div class="form_group">
                                    <p>Withdrawal Amount(max-withdraw: {{ maximum_withdrawal }} USDT)</p>
                                    <div class="input_group">
                                        <input type="text" class="form-control" placeholder="00.00"
                                            v-model="withdrawal_amount" @keypress="isNumber($event)">

                                        <img src="assets/images/usdt.png" alt="" class="img-fluid ">
                                    </div>

                                    <span class="text-danger" v-if="errors.withdrawal_amount">{{
                                        errors.withdrawal_amount[0] }}</span>
                                    <span class="text-danger" v-if="errors.error_usdt">{{ errors.error_usdt[0] }}</span>
                                    <span class="text-danger" v-if="errors.error_minim_usdt">{{
                                        errors.error_minim_usdt[0] }}</span>

                                    <span>Current amount : {{ depositAmount }} USDT</span>
                                </div>
                                <div class="form_group">
                                    <p>Withdrawal address</p>
                                    <div class="input_group">
                                        <select name="" id="" disabled class="form-control rounded-0 mb-0">
                                            <option value="" selected="">Select Bank Card</option>
                                            <option value="" selected>{{ wallet_address }}</option>
                                        </select>
                                        <img src="assets/images/wallet-100.png" alt="" class="img-fluid ">
                                    </div>
                                    <span class="text-danger" v-if="errors.wallet_address">{{
                                        errors.wallet_address[0] }}</span>
                                </div>
                                <div class="form_group">
                                    <p>Please Enter Withdrawal Pin</p>
                                    <div class="input_group">
                                        <input type="password" class="form-control" placeholder=""
                                            v-model="withdrawal_pin">
                                        <img src="assets/images/lock-100.png" alt="" class="img-fluid ">
                                    </div>
                                    <span class="text-danger" v-if="errors.withdrawal_pin">{{
                                        errors.withdrawal_pin[0] }}</span>
                                </div>

                                <div v-if="loanBalance > 0">
                                    <button type="button" class="btn-action style-1 w-100 mt-3"
                                        :disabled="loanBalance > 0">
                                        Confirm Withdraw
                                    </button>
                                </div>
                                <div v-else>
                                    <button type="submit" class="btn-action style-1 w-100 mt-3">Confirm Withdraw
                                    </button>
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

import swal from "sweetalert2";
import { useUserStore } from "~~/stores/user";
const userStore = useUserStore();
const router = useRouter()

definePageMeta({
    middleware: "is-logged-out",
});

const withdrawal_pin = ref("");
const errors = ref({});
const withdrawal_amount = ref("");
const error_usdt = ref("");
const error_minim_usdt = ref("");
const loanBalance = ref("");
const loading = ref(false);

 

const submit = () => {

    const formData = new FormData();
    formData.append("withdrawal_amount", withdrawal_amount.value);
    formData.append("wallet_address", wallet_address.value);
    formData.append("withdrawal_pin", withdrawal_pin.value);
    const headers = {
        "Content-Type": "multipart/form-data",
    };
    axios
        .post("/deposit/withdrawRequest", formData, { headers })
        .then((res) => {
            document.getElementById("formrest").reset();
            success_noti();
            router.push("/dashboard/wallet");
        })
        .catch((error) => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
                console.log("errors " + error.response.data.errors.error_usdt);
                error_usdt.value = error.response.data.errors.error_usdt;
                error_minim_usdt.value = error.response.data.errors.error_minim_usdt;

            } else {
                // Handle other types of errors here
                console.error("An error occurred:", error);
            }
        });
}

const isNumber = ($event) => {
    let keyCode = $event.keyCode ? $event.keyCode : $event.which;
    if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) {
        // 46 is dot
        $event.preventDefault();
    }
};

const success_noti = () => {
    const Toast = swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 2200,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = swal.stopTimer;
            toast.onmouseleave = swal.resumeTimer;
        },
    });
    Toast.fire({
        icon: "success",
        title: "Successfully send your withdrawal request",
    });
};

const depositAmount = ref(0);
const maximum_withdrawal = ref(0);
const minimum_withdrawal = ref(0);
const wallet_address = ref(0);

const fetchDepositData = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/deposit/getDepositfetchdata", {
        });
        //console.log("Response data withdraw_maximum_amount:", response.data.withdrawData.maximum_withdrawal);
        depositAmount.value = response.data.depositAmount;
        maximum_withdrawal.value = response.data.withdrawData.maximum_withdrawal;
        minimum_withdrawal.value = response.data.withdrawData.minimum_withdrawal;
        wallet_address.value = response.data.walletAddress.wallet_address;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }
};

const checkLoanDueYesNo = async () => {
    try {
        const response = await axios.get("/loan/userWiseLoanCheck", {
        });
        loanBalance.value = response.data.loanBalance;


    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

onMounted(() => {
    checkLoanDueYesNo();
    fetchDepositData();

})

</script>