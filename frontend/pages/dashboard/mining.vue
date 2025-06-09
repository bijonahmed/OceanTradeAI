<template>
    <div class="dashboard show">
        <title>Mining</title>
        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="loading-indicator" v-if="loading" style="text-align: center">
                    <Loader />
                </div>
                <div class="dashboard__main">
                    <div class="banner">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-12 col-md-12">
                                    <ul class="content-list">
                                        <li>
                                            <h5>{{ setting.maximum_supply_level }}</h5>
                                            <p>Max Supply</p>
                                        </li>
                                        <li>
                                            <h5>+{{ setting.total_supply_level }}</h5>
                                            <p>Total Supply</p>
                                        </li>
                                        <li>
                                            <h5>+{{ cirSupply }}</h5>
                                            <p>Cerculating Supply</p>
                                        </li>
                                        <li>
                                            <h5>+{{ marketcapt }}</h5>
                                            <p>Market Cap.</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-12">
                                    <section class="slider_section">
                                        <div class="slider">
                                            <div class="slide-track">
                                                <div class="slide" v-for="user in users" :key="user.username">
                                                    <h6> {{ user.username }} - {{ user.amount }} OCN </h6>
                                                </div>

                                            </div>
                                        </div>
                                    </section>
                                </div>

                                <div class="col-xl-12 col-md-12">
                                    <div class="banner-top__sale">
                                        <div class="mechine_container">

                                            <div class="mechine" v-for="v in categoryData" :key="v.id">
                                                <h4>{{ v.name }}</h4>
                                                <span v-if="!v.enddate || v.enddate === ''">
                                                    <span v-if="v.id == 1">
                                                        <div class="img_machine"><img src="/assets/images/1.png"
                                                                alt="ICOLand"></div>
                                                    </span>
                                                    <span v-if="v.id == 2">
                                                        <div class="img_machine"><img src="/assets/images/2.png"
                                                                alt="ICOLand"></div>
                                                    </span>
                                                    <span v-if="v.id == 3">
                                                        <div class="img_machine"><img src="/assets/images/3.png"
                                                                alt="ICOLand"></div>
                                                    </span>
                                                    <span v-if="v.id == 4">
                                                        <div class="img_machine"><img src="/assets/images/4.png"
                                                                alt="ICOLand"></div>
                                                    </span>
                                                    <nuxt-link :to="`/dashboard/miningcategory/${v.slug}`"
                                                        class="btn-action style-5 btn_boost">Buy</nuxt-link>
                                                </span>

                                                <span v-else>
                                                    <span v-if="v.id == 1">
                                                        <center>
                                                            <CountdownTimerCat1 :id="v.id" />
                                                        </center>
                                                    </span>
                                                    <span v-if="v.id == 2">
                                                        <center>
                                                            <CountdownTimerCat2 :id="v.id" />
                                                        </center>
                                                    </span>

                                                    <span v-if="v.id == 3">
                                                        <center>
                                                            <CountdownTimerCat3 :id="v.id" />
                                                        </center>
                                                    </span>
                                                    <span v-if="v.id == 4">

                                                        <center>
                                                            <CountdownTimerCat4 :id="v.id" />
                                                        </center>
                                                    </span>

                                                    <!-- <nuxt-link :to="`/dashboard/boost/${v.slug}`"
                                                        class="btn-action style-5 btn_boost">Boost</nuxt-link> -->
                                                </span>

                                            </div>

                                        </div>

                                        <div class="sale-content">
                                            <h5>Token sale End In!</h5>

                                          <CountdownTimer :timer="17712000" />
                                        </div>

                                        <div class="group-button justify-content-center">
                                            <a href="#" type="button" class="btn-action style-5"
                                                data-bs-toggle="offcanvas" data-bs-target="#buyToken"
                                                aria-controls="buyToken"><span>Buy Tokens
                                                    now</span></a>
                                            <nuxt-link to="/white-paper" class="btn-action-outline style-5"><span>White
                                                    paper</span></nuxt-link>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ================== Boost modal ================  -->
        <div class="modal fade" id="boostModal" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content rounded-0">
                    <div class="modal-header py-0">
                        <div class="w-10"> </div>
                        <h5 class="modal-title fs-6" id="boostModalLabel"></h5>
                        <div data-bs-theme="dark">
                            <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                aria-label="Close"><i class="fas fa-times"></i></button>
                        </div>
                    </div>
                    <div class="modal-body">
                        <div class="boost_form">
                            <div class="top_balance top">
                                <p>Your shared balance</p>
                                <h4 class="text-center"><img src="/assets/images/gold_coin.png" alt=""
                                        class="img-fluid img_g_coin"> 2500</h4>
                            </div>
                            <div class="top_balance">
                                <p>Your USDT balance</p>
                                <h4 class="text-center"><img src="/assets/images/usdt.png" alt=""
                                        class="img-fluid img_g_coin"> 2500</h4>
                            </div>
                            <form action="">
                                <h5>Select mechine</h5>
                                <div class="select_mechine">
                                    <div class="input_group  d-flex">
                                        <input type="radio" id="d_digger" name="machine" checked>
                                        <label for="d_digger">
                                            <img src="/assets/images/m1.png" alt="" class="img-fluid">
                                            <p>Dolphin Digger</p>
                                        </label>
                                    </div>
                                    <div class="input_group">
                                        <input type="radio" id="Shark" name="machine">
                                        <label for="Shark">
                                            <img src="/assets/images/m2.png" alt="" class="img-fluid">
                                            <p>Shark Driller</p>
                                        </label>
                                    </div>
                                    <div class="input_group">
                                        <input type="radio" id="Orca" name="machine">
                                        <label for="Orca">
                                            <img src="/assets/images/m3.png" alt="" class="img-fluid">
                                            <p>Orca Drillmaster</p>
                                        </label>
                                    </div>
                                    <div class="input_group">
                                        <input type="radio" id="Whale" name="machine">
                                        <label for="Whale">
                                            <img src="/assets/images/m4.png" alt="" class="img-fluid">
                                            <p>Whale Excavator</p>
                                        </label>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="boost_options">
                            <h5>Boosted</h5>
                            <button class="btn_boost_option" data-bs-toggle="offcanvas"
                                data-bs-target="#mininge_confirm" aria-controls="mininge_confirm">
                                <div class="m_btn_left">
                                    <img src="/assets/images/mining.png" alt="" class="img-fluid">
                                    <div>
                                        <h6>Mining</h6>
                                        <p> <img src="/assets/images/usdt.png" alt="" class="img-fluid">200 ||
                                            Level-1</p>
                                    </div>
                                </div>
                                <i class="fas fa-chevron-right"></i>
                            </button>
                            <button class="btn_boost_option" data-bs-toggle="offcanvas" data-bs-target="#bot_confirm"
                                aria-controls="bot_confirm">
                                <div class="m_btn_left">
                                    <img src="/assets/images/bot.png" alt="" class="img-fluid">
                                    <div>
                                        <h6>Bot</h6>
                                        <p><img src="/assets/images/usdt.png" alt="" class="img-fluid">200 || Level-1
                                        </p>
                                    </div>
                                </div>
                                <i class="fas fa-chevron-right"></i>
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- mining offcanvas  -->
        <div class="offcanvas offcanvas-bottom " tabindex="-1" id="mininge_confirm"
            aria-labelledby="mininge_confirmLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
                <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                        class="fas fa-times"></i></button>
            </div>
            <div class="offcanvas-body small">
                <div class="confirmation_box">
                    <div class="row">
                        <div class="col-md-8 m-auto">
                            <div class="confirm_details">
                                <img src="/assets/images/mining.png" alt="" class="img-fluid message_icon">
                                <h4>Mining</h4>
                                <p>Increase aniybt if Tap you can earn per one tap.</p>
                                <p>+1 per tap for each level</p>
                                <h6><img src="/assets/images/usdt.png" alt="" class="img-fluid">200</h6>
                                <button class="btn-action style-1">Got it</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bot offcanvas  -->
        <div class="offcanvas offcanvas-bottom " tabindex="-1" id="bot_confirm" aria-labelledby="bot_confirmLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
                <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                        class="fas fa-times"></i></button>
            </div>
            <div class="offcanvas-body small">
                <div class="confirmation_box">
                    <div class="row">
                        <div class="col-md-8 m-auto">
                            <div class="confirm_details">
                                <img src="/assets/images/bot.png" alt="" class="img-fluid message_icon">
                                <h4>Bot</h4>
                                <p>Increase aniybt if Tap you can earn per one tap.</p>
                                <p>+1 per tap for each level</p>
                                <h6><img src="/assets/images/usdt.png" alt="" class="img-fluid">200</h6>
                                <button class="btn-action style-1">Got it</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- buy token offcanvas  -->
        <div class="offcanvas offcanvas-bottom buy_popup " tabindex="-1" id="buyToken" aria-labelledby="buyTokenLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
                <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                        class="fas fa-times"></i></button>
            </div>
            <div class="offcanvas-body small">
                <div class="confirmation_box">
                    <div class="row">
                        <div class="col-md-6 m-auto">
                            <div class="confirm_details">
                                <div class="top_balance top">
                                    <p>Your USDT balance</p>
                                    <h4 class="text-center"><img src="/assets/images/usdt.png" alt=""
                                            class="img-fluid img_g_coin"> {{ usdtAmount }}

                                    </h4>

                                    <center class="text-danger"> {{ errorinput }}</center>

                                </div>
                                <form @submit.prevent="sendrequest()" id="formrest" class="but_token_form">
                                    <div class=" mb-2">
                                        <label for="">USDT <span>&nbsp;min purchase amount: 20 USDT</span> </label>
                                        <div class="input_group">
                                            <input type="text" class="form-control" placeholder="00.00"
                                                v-model="usdtAmt" @keypress="isNumber($event)" @keyup="calcuatedtoken">
                                            <img src="/assets/images/usdt.png" alt="" class="img-fluid img_g_coin">

                                        </div>
                                        <span class="text-danger" v-if="errors.usdt_amount">{{ errors.usdt_amount[0]
                                            }}</span>
                                    </div>
                                    <div class=" mb-3">
                                        <h6>You will get </h6>
                                        <div class="input_group">
                                            <input type="text" class="form-control" disabled placeholder="00.00"
                                                v-model="get_token">
                                            <img src="/assets/images/gold_coin.png" alt="" class="img-fluid">

                                        </div>
                                        <span class="text-danger" v-if="errors.get_token">{{ errors.get_token[0]
                                            }}</span>
                                    </div>
                                    <button class="btn-action style-1" id="submit-button">Confirm</button>
                                    <p class="text-center my-2">The estimated value of your purchased Ocean (OCN)
                                        coin after the launch is estimated to be <strong> 125 USDT</strong>.</p>
                                </form>
                                <div class="refer_members latest_buy text-start">
                                    <h6>Latest purchase</h6>
                                    <ul>
                                        <li v-for="user in users.slice(0, 12)" :key="user.username">
                                            <strong>@{{ user.username }} buy {{ user.amount }} OCN </strong>
                                        </li>
                                        
                                    </ul>

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
import { useRandomUsers } from '@/compositions/useRandomUsers';
const { users } = useRandomUsers();
import { useRouter } from 'vue-router';
import Swal from "sweetalert2";
const router = useRouter();
const loading = ref(false);

definePageMeta({
    middleware: 'is-logged-out',
})
const categoryData = ref([]);
const notifyMsg = ref("");
const usdtAmount = ref(0);
const usdtAmt = ref(null);
const get_token = ref(null);
const currentprice = ref(null);
const errorinput = ref(null);
const setting = ref("");
const cirSupply = ref(null);
const marketcapt = ref(null);
const errors = ref([]);


const sendrequest = () => {
    const submitButton = document.getElementById("submit-button");
    submitButton.disabled = true; // Disable the button to prevent double-click

    const formData = new FormData();
    formData.append("usdt_amount", usdtAmt.value);
    formData.append("current_price", currentprice.value);
    formData.append("get_token", get_token.value);
    const headers = {
        "Content-Type": "multipart/form-data",
    };
    axios
        .post("/trading/buyocnToken", formData, { headers })
        .then((res) => {
            document.getElementById("formrest").reset();
            success_noti();
            router.push("/dashboard/wallet");
        })
        .catch((error) => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
                console.log("errors " + error.response.data.errors.usdt_amount);
                errorinput.value = error.response.data.errors.usdt_amount;
            } else {
                // Handle other types of errors here errorinput
                console.error("An error occurred:", error);
            }
        })
        .finally(() => {
            submitButton.disabled = false; // Re-enable the button
        });
};


const calcuatedtoken = () => {

    const inputUsdtAmount = parseFloat(usdtAmt.value);
    const cprices = parseFloat(currentprice.value);

    if (inputUsdtAmount > 0) {
        const gettokens = (inputUsdtAmount / cprices).toFixed(2);
        get_token.value = gettokens;
        errorinput.value = "";

        console.log("current prices: ", cprices);
        console.log("gettokens: ", gettokens);
    } else {
        errorinput.value = "USDT amount must be greater than zero.";
        //error_noti("USDT amount must be greater than zero.");
        get_token.value = ''; // Clear the token value
        console.log("Invalid USDT amount: ", inputUsdtAmount);
    }

}

const getCurrentPrices = async () => {
    try {
        const response = await axios.get("/trading/getCurrentPrice");
        currentprice.value = response.data.current_price;

        const cp = response.data.current_price;
        const cs = cirSupply.value;
        const result = cp * cs;
        marketcapt.value = result.toFixed(2);//cp * cs;

        console.log("=================CP:" + cp);
        console.log("=================CS:" + cs);


    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

const isNumber = ($event) => {
    let keyCode = $event.keyCode ? $event.keyCode : $event.which;
    if ((keyCode < 48 || keyCode > 57) && keyCode !== 46) {
        // 46 is dot
        $event.preventDefault();
    }
};

const fetchData = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/category/getMiningMainCategorys");
        console.log("Response data:", response.data);
        categoryData.value = response.data.data;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }
};

const requestSent = ref(false);
const getLocalStorageData = async () => {
    // Retrieve values from local storage
    const catOne = localStorage.getItem('increasingNumber_1');
    const catTwo = localStorage.getItem('increasingNumber_2');
    const catThree = localStorage.getItem('increasingNumber_3');
    const catFour = localStorage.getItem('increasingNumber_4');

    // Function to make the API request
    const sendMiningRequest = async (categoryId, number) => {
        try {
            await axios.get('/mining/increastMiningCountdownBalance', {
                params: {
                    id: categoryId,
                    miningCategoryId: categoryId,
                    number: number
                }
            });
            console.log(`Request for category ${categoryId} successful.`);
        } catch (error) {
            console.error(`Error updating number for category ${categoryId}:`, error);
        }
    };

    // Function to send requests for all categories
    const sendAllRequests = async () => {
        await sendMiningRequest(1, catOne);
        await sendMiningRequest(2, catTwo);
        await sendMiningRequest(3, catThree);
        await sendMiningRequest(4, catFour);
    };

    // Call the function to send all requests
    sendAllRequests();
};

const getcsupply = async () => {
    try {
        const response = await axios.get("/trading/cerculatingSupply");
        cirSupply.value = response.data.csupply;
    } catch (error) {
        console.error("Error fetching data:", error);
    }
}

const presetting = async () => {
    try {
        const response = await axios.get("/trading/getSetting");
        setting.value = response.data.data;
    } catch (error) {
        console.error("Error fetching data:", error);
    }
}

const getWalletUsdtAmount = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/deposit/getDepositfetchdata");
        usdtAmount.value = response.data.depositAmount;

    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }
};

const error_noti = (msgtitle) => {
    Swal.fire({
        icon: "error",
        title: "Oops...",
        text: msgtitle,
        // footer: '<a href="#">Why do I have this issue?</a>'
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
        title: "Successfully send your request.",
    });
};


onMounted(() => {
    getcsupply();
    getCurrentPrices();
    getWalletUsdtAmount();
    presetting();
    fetchData();
    getLocalStorageData();
    setTimeout(() => {
        loading.value = false;
    }, 2000); // 2 seconds
});

</script>