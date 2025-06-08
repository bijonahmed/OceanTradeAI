<template>

    <div class="dashboard__header">
        <div>
            <h4><img src="/assets/images/usdt.png" alt="" class="img-fluid">{{ usdtAmount }}</h4>
            <p>Loan: {{ loanBalance }} USDT</p>
        </div>
        <div>
            <h4><img src="/assets/images/gold_coin.png" alt="" class="img-fluid">{{ showocntoken }}</h4>
            <p>C.P: {{ curentPrice }}USDT</p>
        </div>
        <nuxt-link to="/dashboard/profile" class="user">
            <img src="/assets/images/avt/admin.jpg" alt="ICOLand">
        </nuxt-link>
        <nuxt-link to="/dashboard/wallet" class="btn-action-outline style-5"><span class="icon-wallet"></span><span
                class="d-md-inline-block d-none">Wallet</span></nuxt-link>
    </div>

</template>

<script setup>
import { onMounted } from 'vue'
import jQuery from 'jquery'
import axios from 'axios';

const curentPrice = ref(0);
const showocntoken = ref(0);
const usdtAmount = ref(0);
const depsoit_trxId = ref('');
const depsoit_frmDate = ref('');
const depsoit_toDate = ref('');
const loanBalance = ref(0);


const ocntoken = async () => {
    try {
        const response = await axios.get("/trading/getToken");
        showocntoken.value = response.data.ocntoken;
    } catch (error) {
        console.error("Error fetching data:", error);
    }

}
const presetting = async () => {
    try {
        const response = await axios.get("/trading/getCurrentPrice");
        curentPrice.value = response.data.current_price;
    } catch (error) {
        console.error("Error fetching data:", error);
    }

}

const fetchDepositData = async () => {
    try {
        const response = await axios.get("/deposit/getDepositfetchdata", {
            params: {
                trxId: depsoit_trxId.value,
                frmDate: depsoit_frmDate.value,
                toDate: depsoit_toDate.value
            }
        });
        //console.log("Response data:", response.data.levels);
        //  depositData.value = response.data.depositData;
        usdtAmount.value = response.data.depositAmount;

    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

const fetchLoanData = async () => {

    try {
        const response = await axios.get("/loan/getAdminSendingLoan");
        console.log("Response data:", response.data.loanBalance);
        loanBalance.value = response.data.loanBalance;

    } catch (error) {
        console.error("Error fetching data:", error);
    }

}


onMounted(() => {
    presetting();
    ocntoken();
    fetchDepositData();
    fetchLoanData();
});

</script>