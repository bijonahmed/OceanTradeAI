<template>
    <div class="dashboard show">
        <title>Start Crypto Trade</title>
        <DashboardSidebar />

        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="dashboard__main">
                    <div class="row">
                        <div class="col-md-12 m-auto">
                            <div class="loading-indicator" v-if="loading" style="text-align: center">
                                <Loader />
                            </div>

                            <!-- <button type="button" @click="presetting">-----test---------</button> -->


                            <!-- For Crypto  -->
                            <span v-if="[1].includes(responseData.id)">
                                <Btc />
                            </span>
                            <span v-if="[2].includes(responseData.id)">
                                <Eth />
                            </span>
                            <span v-if="[4].includes(responseData.id)">
                                <Sol />
                            </span>
                            <span v-if="[5].includes(responseData.id)">
                                <Xrp />
                            </span>
                            <!-- For Currency  -->
                            <span v-if="[6].includes(responseData.id)">
                                <AUDUSD />
                            </span>
                            <span v-if="[7].includes(responseData.id)">
                                <USDCAD />
                            </span>
                            <span v-if="[9].includes(responseData.id)">
                                <GBPUSD />
                            </span>
                            <span v-if="[10].includes(responseData.id)">
                                <USDJPY />
                            </span>
                            <span v-if="[23].includes(responseData.id)">
                                <EURUSD />
                            </span>
                            <!-- For Stock  -->
                            <span v-if="[11].includes(responseData.id)">
                                <NFLX />
                            </span>
                            <span v-if="[11].includes(responseData.id)">
                                <NFLX />
                            </span>

                            <span v-if="[12].includes(responseData.id)">
                                <AMZN />
                            </span>
                            <span v-if="[14].includes(responseData.id)">
                                <TASLA />
                            </span>

                            <span v-if="[15].includes(responseData.id)">
                                <GOOGL />
                            </span>

                            <span v-if="[24].includes(responseData.id)">
                                <APPL />
                            </span>
                            <!-- For Commodities Trade  -->
                            <span v-if="[16].includes(responseData.id)">
                                <GOLD />
                            </span>
                            <span v-if="[17].includes(responseData.id)">
                                <Silver />
                            </span>

                             <span v-if="[19].includes(responseData.id)">
                                <USOIL />
                             </span>

                              <span v-if="[20].includes(responseData.id)">
                                <USOIL />
                             </span>






                            <div class="day_filter">
                                <div v-for="item in responseDuration" :key="item.id">
                                    <input type="hidden" v-model="item.percentage" />
                                    <button type="button" :class="['btn_day_filter', { active: isActive(item) }]"
                                        @click="setActive(item)">{{ item.name }}</button>
                                    <div class="percen_btn">
                                        <div><button type="button"></button></div>
                                        <div>
                                            <p>{{ item.percentage }}%</p>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="d-none">
                                Day: [{{ day }}]=====================<br>
                                Percentage: [{{ percentage }} %]=====================<br>
                                Duration ID: [{{ durationId }}]=====================<br>

                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div id="error-message" style="display: none; color: red;"></div>

                                    <form class="withdraw_form trade_form" @submit.prevent="submitFrm()" id="formrest">
                                        <input type="hidden" placeholder="Duration Day" v-model="durationDay">
                                        <input type="hidden" placeholder="Percentage" v-model="percentage">
                                        <input type="hidden" placeholder="durationId" v-model="durationId">
                                        <input type="hidden" placeholder="estProfit" v-model="estProfit">

                                        <span class="text-danger" v-if="errors.durationDay">{{
                                            errors.durationDay[0] }}</span>
                                        <span class="text-danger" v-if="errors.percentage">{{
                                            errors.percentage[0] }}</span>
                                        <span class="text-danger" v-if="errors.durationId">{{
                                            errors.durationId[0] }}</span>
                                        <span class="text-danger" v-if="errors.estProfit">{{
                                            errors.estProfit[0] }}</span>

                                        <div class="">
                                            <label for="">Amount</label>
                                            <input type="text" placeholder="00.00" v-model="tradingAmount"
                                                class="form-control" @keypress="handleKeypress($event)"
                                                @keyup="checkPercentageAmount()">
                                            <span class="text-danger" v-if="errors.tradingAmount">{{
                                                errors.tradingAmount[0] }}</span>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">
                                            <p>Min Trade: {{ responseData.min_trade }}&nbsp;USDT</p>
                                            <p>Available balance: {{ usdtAmount }}USDT</p>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center">


                                            <p v-if="tradingPercetageVal">Trading Fee: {{ tradingPercetageVal
                                                }}&nbsp;USDT</p>
                                            <p v-else>Trading Fee: {{ tradingFee }}&nbsp;USDT</p>
                                            <p v-if="estProfit">Estd. Profit: {{ estProfit }} USDT</p>
                                            <p v-else>Estd. Profit: 0 USDT</p>
                                        </div>

                                        <button type="submit" class="btn-action style-1 trade_confirm"
                                            :disabled="isSubmitting" @click="submitFrm" id="tradeConfirmButton"
                                            aria-controls="trade_confirm">Activate your tradding
                                            AI</button>
                                    </form>
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
import Swiper from 'swiper';
import { useRouter } from 'vue-router';
const router = useRouter();
import axios from 'axios';
import Swal from "sweetalert2";
import 'swiper/swiper-bundle.css';
import DashboardSidebar from '~/layouts/DashboardSidebar.vue';
import DashboardHeader from '~/layouts/DashboardHeader.vue';
import AUDUSD from '~/components/AUDUSD.vue';
import NFLX from '~/components/NFLX.vue';
import Silver from '~/components/Silver.vue';

const loading = ref(false);
const responseData = ref('');
const responseDuration = ref([]);
const errors = ref({});
const errorsusdt = ref('');
const usdtAmount = ref(0);
const tradingAmount = ref('');
const activeItem = ref(null);
const estProfit = ref(0);
const tradingFee = ref(0);
const tradingPercetageVal = ref('');
//Duration Info
const durationId = ref(null);
const durationDay = ref(null);
const percentage = ref(null);
const durationHours = ref(null);
const isSubmitting = ref(false)


//Start duble button stop

//END 

const setActive = (item) => {
    getEstProfit();
    activeItem.value = item;
    percentage.value = item.percentage;
    durationDay.value = item.name;
    durationId.value = item.id;
    durationHours.value = item.hours;
};

const isActive = (item) => {
    return activeItem.value && activeItem.value.id === item.id;
};

function handleKeypress(event) {
    isNumber(event);
    //checkPercentageAmount(event);
}

const isNumber = ($event) => {
    let keyCode = $event.keyCode ? $event.keyCode : $event.which;
    if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) {
        // 46 is dot
        $event.preventDefault();
    }
};

//Insert Trade 
const submitFrm = async () => {
    if (isSubmitting.value) return

    isSubmitting.value = true

    const formData = new FormData()
    formData.append("durationId", durationId.value)
    formData.append("durationDay", durationDay.value)
    formData.append("durationHours", durationHours.value)
    formData.append("percentage", percentage.value)
    formData.append("estProfit", estProfit.value)
    formData.append("tradingAmount", tradingAmount.value)
    formData.append("trading_fee", tradingPercetageVal.value)
    formData.append("category_id", responseData.value.category_id)
    formData.append("subcategory_id", responseData.value.id)
    formData.append("min_trade", responseData.value.min_trade)

    const headers = {
        "Content-Type": "multipart/form-data",
    }

    try {
        const res = await axios.post("/trading/insertTrading", formData, { headers })
        document.getElementById("formrest").reset()
        success_noti()
        router.push("/dashboard/trading")
    } catch (error) {
        if (error.response && error.response.status === 422) {
            errors.value = error.response.data.errors

            const errorsData = error.response.data
            if (errorsData.invalid_amount) {
                console.log("Invalid amount error: " + errorsData.invalid_amount)
                error_msg(errorsData.invalid_amount)
            }

            if (errorsData.invalid_min_amount) {
                console.log("Invalid trade request amount error: " + errorsData.invalid_min_amount)
                error_msg(errorsData.invalid_min_amount)
            }
        } else {
            console.error("An error occurred:", error)
        }
    } finally {
        isSubmitting.value = false
    }
}


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
        title: "Successfully send your request.",
    });
};

const checkPercentageAmount = () => {
    validateSelection();
    getEstProfit();

}
const getEstProfit = () => {

    const tAmount = parseFloat(tradingAmount.value);
    const percevalue = parseFloat(percentage.value);
    const percentageAmount = (tAmount * percevalue) / 100;
    estProfit.value = percentageAmount;
    const traddingFee = tradingFee.value;

    const trade_percetage = (percentageAmount * traddingFee) / 100;
    tradingPercetageVal.value = trade_percetage;


}

const validateSelection = () => {
    if (!activeItem.value) {
        tradingAmount.value = "";
        error_msg("Please select a duration");
    }
}

const getParmaSlug = async () => {
    const urlString = window.location.href;
    const slug = urlString.substring(urlString.lastIndexOf('/') + 1);
    try {
        loading.value = true;
        const response = await axios.get('/trading/checksubcategoryRow', {
            params: {
                slug: slug,
            }
        });
        responseData.value = response.data;
    } catch (error) {
        console.error('An error occurred:', error);
        responseData.value = { message: 'An error occurred', error: error.message };
    } finally {
        loading.value = false;
        console.log('Request completed');
    }
}

const getDurationList = async () => {

    try {
        loading.value = true;
        const response = await axios.get('/trading/getDurationList');
        responseDuration.value = response.data.data;
        usdtAmount.value = response.data.usdtAmount;
    } catch (error) {
        console.error('An error occurred:', error);
        responseDuration.value = { message: 'An error occurred', error: error.message };
    } finally {
        loading.value = false;
        console.log('Request completed');
    }
}

const error_msg = (errorMessages) => {
    Swal.fire({
        icon: "error",
        title: "Error!",
        text: errorMessages,
        timer: 1500,
        //footer: '<a href="#">Why do I have this issue?</a>'
    });
}


const presetting = async () => {

    try {
        const response = await axios.get("/trading/getSetting");
        tradingFee.value = response.data.transfer_fee_fixed_amount;
    } catch (error) {
        console.error("Error fetching data:", error);
    }

}
onMounted(() => {
    presetting();
    getParmaSlug();
    getDurationList();
});
</script>
<style>
.dashboard .dashboard__content .dashboard__main {
    margin-top: 10px;
    margin-bottom: 20px;
}

.btn_day_filter.active {
    background-color: #af3180;
}
</style>