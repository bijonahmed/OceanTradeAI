<template>
    <div class="dashboard show">
        <title>Boost</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="loading-indicator" v-if="loading" style="text-align: center">
                    <Loader />
                </div>

                <div class="dashboard__main">
                    <div class="row">
                        <div class="col-md-10 m-auto">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>
                            <div class="boost_form">
                                <div class="top_balance top">
                                    <p>Your shared balance</p>
                                    <h4 class="text-center"><img src="assets/images/gold_coin.png" alt=""
                                            class="img-fluid img_g_coin"> 2500</h4>
                                </div>
                                <div class="top_balance">
                                    <p>Your USDT balance</p>
                                    <h4 class="text-center"><img src="assets/images/usdt.png" alt=""
                                            class="img-fluid img_g_coin">{{ usdtBalance }}</h4>
                                </div>
                                <form action="">
                                    <center>{{ errormsg }}</center>
                                    <h5>Select mechine</h5>
                                    <div class="select_mechine">
                                        <!-- :disabled="selectedMachine !== null && selectedMachine !== v.id" -->
                                        <div class="input_group d-flex" v-for="v in categoryData" :key="v.id">
                                            <input type="radio" :id="'machine_' + v.id" name="machine"
                                                @click="handleClick(v)" v-model="selectedMachine" :value="v.id">
                                            <label :for="'machine_' + v.id">
                                                <span v-if="v.id == 1">
                                                    <img src="/assets/images/m1.png" alt="" class="img-fluid">
                                                </span>
                                                <span v-if="v.id == 2">
                                                    <img src="/assets/images/m2.png" alt="" class="img-fluid">
                                                </span>
                                                <span v-if="v.id == 3">
                                                    <img src="/assets/images/m3.png" alt="" class="img-fluid">
                                                </span>
                                                <span v-if="v.id == 4">
                                                    <img src="/assets/images/m4.png" alt="" class="img-fluid">
                                                </span>
                                                <p>{{ v.name }}</p>
                                            </label>
                                        </div>

                                    </div>
                                </form>
                            </div>
                            <div class="boost_options" v-if="catStatus == 1">
                                <h5>Boosted</h5>
                                <button class="btn_boost_option" @click="insertBoostMining" data-bs-toggle="offcanvas"
                                    data-bs-target="#mininge_confirm" aria-controls="mininge_confirm">
                                    <div class="m_btn_left">
                                        <img src="/assets/images/mining.png" alt="" class="img-fluid">
                                        <div>
                                            <h6>Mining</h6>
                                            <p> <img src="/assets/images/usdt.png" alt="" class="img-fluid"></p>

                                            <p v-if="boostMining.name !== null && boostMining.name !== undefined">
                                                {{ boostMining.level_cost }} || {{ boostMining.name }}
                                            </p>
                                            <p v-else>
                                                MAX
                                            </p>
                                        </div>
                                    </div>
                                    <i class="fas fa-chevron-right"></i>
                                </button>
                                <button class="btn_boost_option" data-bs-toggle="offcanvas"
                                    data-bs-target="#bot_confirm" aria-controls="bot_confirm" @click="insertBot">
                                    <div class="m_btn_left">
                                        <img src="/assets/images/bot.png" alt="" class="img-fluid">
                                        <div>
                                            <h6>Bot</h6>
                                            <p><img src="/assets/images/usdt.png" alt="" class="img-fluid"></p>
                                            <p v-if="botData.name !== null && botData.name !== undefined">
                                                {{ botData.level_cost }} || {{ botData.name }}
                                            </p>
                                            <p v-else>
                                                MAX
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
        </div>
    </div>

    <!-- Start Modal  -->
    <!-- mining offcanvas  -->
    <div class="offcanvas offcanvas-bottom " tabindex="-1" id="mininge_confirm" aria-labelledby="mininge_confirmLabel">
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
                            <img src="assets/images/mining.png" alt="" class="img-fluid message_icon">
                            <h4>Mining</h4>
                            <p>Increase aniybt if Tap you can earn per one tap.</p>
                            <p>+1 per tap for each level</p>
                            <h6><img src="assets/images/usdt.png" alt="" class="img-fluid">
                                <p v-if="boostMining.level_cost !== null && boostMining.level_cost !== undefined">
                                    {{ boostMining.level_cost }}
                                </p>
                            </h6>
                            <button class="btn-action style-1" data-bs-dismiss="offcanvas" aria-label="Close"
                                @click="backtoPages">Got
                                it</button>
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
                            <img src="assets/images/bot.png" alt="" class="img-fluid message_icon">
                            <h4>Bot</h4>
                            <p>Increase aniybt if Tap you can earn per one tap.</p>
                            <p>+1 per tap for each level</p>
                            <h6><img src="assets/images/usdt.png" alt="" class="img-fluid">
                            
                                <p v-if="botData.name !== null && botData.name !== undefined">
                                                {{ botData.level_cost }} 
                                            </p>
                                        </h6>
                            <button class="btn-action style-1" data-bs-dismiss="offcanvas" aria-label="Close"
                                @click="backtoPages">Got it</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- buy token offcanvas  -->

    <!-- END Modal  -->
</template>

<script setup>

import { ref, onMounted } from 'vue';
import axios from 'axios';
import Swal from "sweetalert2";
import DashboardSidebar from "~/layouts/DashboardSidebar.vue";
import DashboardHeader from "~/layouts/DashboardHeader.vue";

const router = useRouter();
definePageMeta({
    middleware: 'is-logged-out',
})
const loading = ref(false);

const errormsg = ref();
const categoryData = ref([]);
const selectedMachine = ref();
const slugvalue = ref('');
const usdtBalance = ref('');

const catStatus = ref('');
const boostMining = ref('');
const botData = ref('');

const errors = ref({});



const insertBot = async () => {

    const urlString = window.location.href;
    const slug = urlString.substring(urlString.lastIndexOf('/') + 1);
    axios.get("/mining/insertBotCatWise", {
        params: {
            slug: slug,
            mining_category_id: botData.value.mining_categogy_id,
            name: botData.value.name,
            level_cost: botData.value.level_cost,
            boost_setting_id: botData.value.id,
            hours: botData.value.hours,
        }

    }).then((res) => {
        getusdtBalance();
        getParmaSlug();
        console.log("==" + res.data.countRows);
        if(res.data.countRows == 3){
           // alert("already over");

        }else{
            success_msg('Successfully buy Boot ');
        }

    }).catch((error) => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
                console.log("errors " + error.response.data.invalid_amount);
                errorAmountmsg(error.response.data.invalid_amount);

            } else {
                // Handle other types of errors here
                console.error("An error occurred:", error);
            }
        });

}

const insertBoostMining = async () => {
    const urlString = window.location.href;
    const slug = urlString.substring(urlString.lastIndexOf('/') + 1);
    axios.get("/mining/insertBoostMiningCatWise", {
        params: {
            slug: slug,
            mining_category_id: boostMining.value.mining_categogy_id,
            name: boostMining.value.name,
            level_cost: boostMining.value.level_cost,
            boost_mining_id: boostMining.value.id,
            mining_per_seconds: boostMining.value.mining_per_seconds,
        }

    }).then((res) => {
        getusdtBalance();
        getParmaSlug();
        console.log("==" + res.data.countRows);
        if(res.data.countRows == 10){
            //alert("already over");
        }else{
            success_msg('Successfully buy Boosted');
        }

    }).catch((error) => {
            if (error.response && error.response.status === 422) {
                errors.value = error.response.data.errors;
                errorAmountmsg(error.response.data.invalid_amount);
            } else {
                // Handle other types of errors here
                console.error("An error occurred:", error);
            }
        });

}

const backtoPages = () => {
    console.log("Back to pages");
    // router.push('/dashboard/mining');
}

const fetchData = async () => {

    try {
        loading.value = true;
        const response = await axios.get("/category/getMiningMainCategorys");
        categoryData.value = response.data.data;
    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;

    }
};

const getusdtBalance = async () => {
    try {
        const response = await axios.get("/mining/getusdtBalance");
        usdtBalance.value = response.data.usdt_balance;
    } catch (error) {
        console.error("Error fetching data:", error);
    }
};
const getParmaSlug = async () => {

    const urlString = window.location.href;
    const slug = urlString.substring(urlString.lastIndexOf('/') + 1);
    console.log("Slug:" + slug);
    const response = await axios.get('/category/getBoostSlugrow', {
        params: {
            slug: slug,
        }
    });
    //BOOST 
    botData.value = response.data.data.bot;
    boostMining.value = response.data.data.boostMinSetting;
    console.log(response.data.data.mstatus);
    const mstatus = response.data.data.mstatus;
    catStatus.value = mstatus;
    console.log('Response:', response);

    if (mstatus == 0) {
        error_msg("Please by this packages.")
        errormsg.value = "Please buy this packages";
    }

    if (mstatus == 1) {
        errormsg.value = "";
    }

}

const matchedMachineId = computed(() => {
    const urlString = window.location.href;
    const slug = urlString.substring(urlString.lastIndexOf('/') + 1);
    const matchedCategory = categoryData.value.find(category => category.slug === slug);
    return matchedCategory ? matchedCategory.id : null;
});

watch(matchedMachineId, (newId) => {
    selectedMachine.value = newId;
}, { immediate: true });

const handleClick = async (category) => {
    //const slug = router.params.slug
    const response = await axios.get('/category/getBoostSlugrow', {
        params: {
            slug: category.slug,
        }
    });
    console.log(response.data.data.mstatus);
    const mstatus = response.data.data.mstatus;
    catStatus.value = mstatus;
    console.log('Response:', response);

    if (mstatus == 0) {
        error_msg();
        errormsg.value = "Please buy this packages";
    }

    if (mstatus == 1) {
        errormsg.value = "";
    }
};

const errorMessage = `
  It looks like you don’t have a machine package yet. To unlock the upgrade option, please purchase a package first.<br>
  Once you have a machine, you can start earning coins and increase your earnings by upgrading!<br>`;

// Remove HTML tags
const cleanMessage = errorMessage.replace(/<[^>]+>/g, '');

// Replace <br> with new line character
const formattedMessage = cleanMessage.replace(/<br>/g, '\n');

const error_msg = () => {
    Swal.fire({
        icon: "error",
        title: "Upgrade Unavailable!",
        text: formattedMessage,
        //footer: '<a href="#">Why do I have this issue?</a>'
    });
}


const errorAmountmsg = (successmsg) => {
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });

    Toast.fire({
        icon: "error",
        title: successmsg
    });
}


const success_msg = (successmsg) => {
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.onmouseenter = Swal.stopTimer;
            toast.onmouseleave = Swal.resumeTimer;
        }
    });

    Toast.fire({
        icon: "success",
        title: successmsg
    });
}
onMounted(() => {
    getParmaSlug();
    fetchData();
    getusdtBalance();
});
</script>