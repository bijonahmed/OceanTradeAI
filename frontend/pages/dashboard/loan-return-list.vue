<template>
    <div class="dashboard show">
        <title>Loan Return List</title>
        <DashboardSidebar />

        <div class="dashboard_main_content">
            <div class="dashboard__content">

                <DashboardHeader />
                <div class="dashboard__main">

                    <div class="row">

                        <div class="col-md-12">
                            <div class="d-flex justify-content-start align-items-center buy_btns">
                                <nuxt-link to="/dashboard/loan-request-send" class="btn-action style-5 btn_boost mx-0">Loan
                                    Return</nuxt-link>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="market section-faq style-2 ">
                                <div class="faq__content pe-0">
                                    <div class="flat-tabs">
                                        <h5>Loan Return History</h5>
                                        <center>
                                            <div class="loading-indicator" v-if="loading" style="text-align: center">
                                                <Loader />
                                            </div>
                                        </center>
                                        <div class="">

                                            <!-- For Loan -->
                                            <div class="">
                                                <div class="table-responsive">
                                                    <table class="table table-dark table-striped table_crypto">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col" class="text-left">Datetime</th>
                                                                <th scope="col" class="text-center">Amount</th>
                                                                <th scope="col" class="text-left">Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr v-for="v in loanData" :key="v.id">
                                                                <td>{{ formatDateTime(v.created_at) }}</td>
                                                                <td class="text-center">{{ v.adjustment_amount }}USDT
                                                                </td>
                                                                <td class="text-left">Pending</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <!-- For Reward -->



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
import swal from "sweetalert2";
import { useUserStore } from "~~/stores/user";

import { useRandomUsers } from '@/compositions/useRandomUsers';
const { users } = useRandomUsers();


const userStore = useUserStore();
const router = useRouter()
const isLoggedIn = computed(() => userStore.isLoggedIn);
definePageMeta({
    middleware: "is-logged-out",
});

const deposit_amount = ref("");
const errors = ref({});
const minimum_amt = 20;
const show_messages = ref("");

const loading = ref(false);

const formatDateTime = (dateTimeString) => {
    const date = new Date(dateTimeString);
    const formattedDateTime = date.toISOString().slice(0, 19).replace('T', ' ');
    return formattedDateTime;
};


const isNumber = ($event) => {
    let keyCode = $event.keyCode ? $event.keyCode : $event.which;
    if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) {
        // 46 is dot
        $event.preventDefault();
    }
};

const error_noti = () => {
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
        icon: "error",
        title: "Please input amount.",
    });
};

const depsoit_trxId = ref('');
const depsoit_frmDate = ref('');
const depsoit_toDate = ref('');
const depositData = ref([]);

const withdrawal_Id = ref('');
const withdrawal_frmDate = ref('');
const withdrawal_toDate = ref('');

const withdrwalData = ref([]);
const loanData = ref([]);
const rewardsData = ref([]);
const usdtAmount = ref(0);
const currentprice = ref(0);

const convert_usdt = ref(0);
const balanceOcn = ref(0);

const fetchDepositData = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/deposit/getDepositfetchdata", {
            params: {
                trxId: depsoit_trxId.value,
                frmDate: depsoit_frmDate.value,
                toDate: depsoit_toDate.value
            }
        });
        //console.log("Response data:", response.data.levels);
        depositData.value = response.data.depositData;
        usdtAmount.value = response.data.depositAmount;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }
};

const fetchWithdrawalData = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/deposit/getWithdrwalfetchdata", {
            params: {
                withdrawal_Id: withdrawal_Id.value,
                frmDate: withdrawal_frmDate.value,
                toDate: withdrawal_toDate.value
            }
        });
        //console.log("Response data:", response.data.levels);
        withdrwalData.value = response.data.withdrwalData;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }
};


const fetchLoanData = async () => {

    try {
        loading.value = true;
        const response = await axios.get("/loan/getAdminSendingLoan");
        //console.log("Response data:", response.data.levels);
        loanData.value = response.data.data;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }

}


const fetchRewardData = async () => {

    try {
        loading.value = true;
        const response = await axios.get("/reward/getAdminSendingRewards");
        //console.log("Response data:", response.data.levels);
        rewardsData.value = response.data.data;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }

}



const getCurrentPrices = async () => {
    try {
        const response = await axios.get("/trading/getCurrentPrice");
        currentprice.value = response.data.current_price;
        const res = await axios.get("/trading/getToken");
        const token = res.data.ocntoken;
        const cp = response.data.current_price;
        convert_usdt.value = Number((cp * token).toFixed(2));

    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

const getocntokenBalance = async () => {
    try {
        const response = await axios.get("/trading/getToken");
        balanceOcn.value = response.data.ocntoken;

    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

onMounted(() => {
    getCurrentPrices();
    getocntokenBalance();
    fetchDepositData();
    fetchWithdrawalData();
    const flattabs = () => {
        $('.flat-tabs').each(function () {
            $(this).find('.content-tab').children().hide()
            $(this).find('.content-tab').children().first().show()
            $(this).find('.menu-tab').children('li').on('click', function () {
                const liActive = $(this).index()
                const contentActive = $(this).siblings().removeClass('active').parents('.flat-tabs').find('.content-tab').children().eq(liActive)
                contentActive.addClass('active').fadeIn('slow')
                contentActive.siblings().removeClass('active')
                $(this).addClass('active').parents('.flat-tabs').find('.content-tab').children().eq(liActive).siblings().hide()
            })
        })
    }

    flattabs()
})

</script>