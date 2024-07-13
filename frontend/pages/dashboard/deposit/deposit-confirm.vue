<template>
    <div class="dashboard show">
        <title>Payment Confirm</title>

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

                    <div class="row">
                        <div class="col-md-6 m-auto">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>

                            <form action="" class="withdraw_form wth_confirm">
                                <div class="badge_">Please fill in the following information and click "I PAID" after
                                    completing the transfer.</div>
                                <div class="countdown-timer">
                                    <div class="timer-display">
                                        <p style="color: red; font-size: 22px;"><strong>{{ formattedTime }}</strong></p>
                                    </div>
                                </div>
                                <center>
                                    <QRCode v-model="crypto_wallet_address" />
                                    <!-- <button type="button" @click="preSetting">Test</button> -->
                                </center>
                             
                                <div class="refer_body p-0">
                                    <label for="">Address</label>
                                    <div class="input_bt_group">
                                        <input type="text" disabled="" v-model="crypto_wallet_address" class="form-control border-0 bg-transparent">

                                        <div style="display: none;">
                                        <strong id="walletaddress" class="textToCopy"> {{ crypto_wallet_address }}</strong>
                                    </div>

                                        <button class="btn_copy" type="button" @click="copyAddressToClipboard()"><i class="far fa-copy"></i></button>
                                    </div>
                                    <label for="">Network</label>
                                    <div class="input_bt_group">
                                        <input type="text" disabled="" value="TRX(TRC20)" class="form-control ">
                                    </div>
                                    <label for="">USDT(TRC20) Address</label>
                                    <div class="input_bt_group">
                                        <input type="text" placeholder="Address" class="form-control ">
                                    </div>
                                    <label for="">Txn Hash</label>
                                    <div class="input_bt_group">
                                        <input type="text" placeholder="Txn Hash" class="form-control ">
                                    </div>
                                </div>

                                <button type="submit" class="btn-action style-1 w-100 mt-3">I PAID </button>

                                <div class="col mt-2 alert_">
                                    <p>Attentions:</p>
                                    <ul>
                                        <li>Please check the latest address before transfer everytime. <span>It cannot
                                                be recovered if sending to wrong address.</span></li>
                                        <li>Please confirm the type of digital currency and network before transfer.
                                            <span>transactions are irreversible once you've sent money to
                                                another.</span>
                                        </li>
                                        <li>Sending funds to the wrong address / digital currency have nothing to do
                                            with the platform.</li>
                                        <li>Please key in the Address that sending from, Transaction Hash after
                                            completing the transfer.</li>
                                    </ul>
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
import { ref, onMounted, onBeforeUnmount } from 'vue';
import axios from 'axios';
import DashboardSidebar from "~/layouts/DashboardSidebar.vue";
import DashboardHeader from "~/layouts/DashboardHeader.vue";
import QRCode from '@/components/QRCode.vue';

import { useRouter } from 'vue-router';
import Swal from "sweetalert2";
const router = useRouter();
const loading = ref(false);

definePageMeta({
    middleware: 'is-logged-out',
})


const inviteCode = ref('');
const crypto_wallet_address = ref('');

const initialTime = 30 * 60; // 30 minutes in seconds
const timeLeft = ref(initialTime);
let timer = null;


const startCountdown = () => {
    timer = setInterval(() => {
        if (timeLeft.value > 0) {
            timeLeft.value--;
        } else {
            clearInterval(timer);
            // Redirect to another page using Vue Router after countdown completes
            router.push('/dashboard/wallet');
        }
    }, 1000); // Update every second
};

const formatTime = (timeInSeconds) => {
    const minutes = Math.floor(timeInSeconds / 60);
    const seconds = timeInSeconds % 60;
    return `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
};

const formattedTime = ref(formatTime(timeLeft.value));

const copyinviteCodeToClipboard = () => {
    // Get the text to copy
    const walletAddress = document.getElementById('invite_code').innerText;
    // Create a textarea element to temporarily hold the text
    const textarea = document.createElement('textarea');
    textarea.value = walletAddress;
    textarea.setAttribute('readonly', '');
    textarea.style.position = 'absolute';
    textarea.style.left = '-9999px'; // Move the textarea off-screen
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textarea);
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 1000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });

    Toast.fire({
        icon: "success",
        title: "Successfully copy"
    });
}

const copyAddressToClipboard = () => {
    // Get the text to copy
    const walletAddress = document.getElementById('walletaddress').innerText;
    const textarea = document.createElement('textarea');
    textarea.value = walletAddress;
    textarea.setAttribute('readonly', '');
    textarea.style.position = 'absolute';
    textarea.style.left = '-9999px'; // Move the textarea off-screen
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textarea);
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 1000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });

    Toast.fire({
        icon: "success",
        title: "Successfully copy"
    });
}

const preSetting = async () => {
    try {
        const response = await axios.get("/setting/settingrow");
        console.log("Response data:", response.data.data);
        crypto_wallet_address.value = response.data.data;

    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

onMounted(async () => {
    preSetting();
    startCountdown();
    // Update formattedTime every second
    setInterval(() => {
        formattedTime.value = formatTime(timeLeft.value);
    }, 1000);


});

onBeforeUnmount(() => {
    clearInterval(timer);
});

</script>

<style scoped>
.countdown-timer {
    display: flex;
    justify-content: center;
    align-items: center;
    color:red;
    
}

.timer-display {
    font-size: 3rem;
    padding: 5px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>