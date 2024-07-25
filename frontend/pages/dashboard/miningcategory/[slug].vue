<template>
    <div class="dashboard show">
        <title>Pricing</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="loading-indicator" v-if="loading" style="text-align: center">
                    <Loader />
                </div>

                <div class="dashboard__main">
                    <div class="section-faq style-5 mb-0">
                        <div class="faq__content">
                            <div class="flat-tabs mt-0">
                                <ul class="menu-tab">
                                    <li v-for="v in categoryData" :key="v.id" :class="{ active: v.slug === slugvalue }">
                                        <h5><nuxt-link :to="`/dashboard/miningcategory/${v.slug}`">{{ v.name
                                                }}</nuxt-link></h5>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="pricing_section">
                        <div class="pricing_box" v-for="v in catData" :key="v.id">
                            <img src="assets/images/1.png" alt="" class="img-fluid">
                            <h1>{{ v.mining_cat_name }}</h1>
                            <h4 class="price_">{{ v.duration }} days</h4>
                            <h4>${{ v.prices }}</h4>
                            {{ v.offer_description }}
                            <ul class="options d-none">
                                <li>Save $0.00</li>
                                <li>max mining $13</li>
                                <li>max mining 1 hour</li>
                                <li>Live Support</li>
                            </ul>
                            <button class="btn-action-outline style-5" data-bs-toggle="modal"
                                data-bs-target="#boostModal" @click="setData(v); getusdtBalance()">purchase</button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Start Modal  -->
    <!-- ================== purchase modal ================  -->
    <div class="modal fade" id="boostModal" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content rounded-0">
                <div class="modal-header py-0">
                    <div class="w-10"> </div>
                    <h5 class="modal-title fs-6" id="boostModalLabel">Purchase</h5>
                    <div data-bs-theme="dark">
                        <button type="button" class="btn_close text-white" data-bs-dismiss="modal" aria-label="Close"><i
                                class="fas fa-times"></i></button>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="boost_form">
                        <div class="top_balance top">
                            <p>Your USDT balance</p>
                            <h4 class="text-center"><img src="assets/images/usdt.png" alt=""
                                    class="img-fluid img_g_coin">{{ usdtBalance }}</h4>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center align-items-center buy_btns">
                        <button class="btn-action style-5 btn_boost" data-bs-dismiss="modal" aria-label="Close"
                            @click="buyForMe">Buy for me</button>
                        <button class="btn-action style-5 btn_boost" data-bs-toggle="offcanvas"
                            data-bs-target="#bot_confirm" aria-controls="bot_confirm">Buy for Friend</button>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Bot offcanvas  -->
    <div class="offcanvas offcanvas-bottom" tabindex="-1" id="bot_confirm" aria-labelledby="bot_confirmLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
            <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                    class="fas fa-times"></i></button>
        </div>
        <div class="offcanvas-body small pt-0">
            <div class="row">
                <div class="col-md-6 m-auto">
                    <div class="sticky-top bg_main">
                        <div class="d-flex justify-content-between mb-2 align-items-center">
                            <div>
                                <h4 class="mb-1">Select friend </h4>
                                <small class="text-danger">Only for level 1</small>
                            </div>
                            <button class="btn-action style-5 btn_confirm" data-bs-dismiss="modal" aria-label="Close"
                                @click="buyfriendConfirm">Confirm</button>
                        </div>
                        <div class="input_form mb-2 m-0">
                            <input type="text" placeholder="Search by user email" class="form-control" v-model="email"
                                @keyup="getLevelOne">
                        </div>
                    </div>

                    <div class="select_member">
                        <ul>
                            <li>
                                <div class="list_title">
                                    <strong>Email </strong>
                                    <strong>Reg. Date</strong>
                                </div>
                            </li>
                            <li v-for="v in leveldata" :key="v.id">
                                <input type="radio" name="friend" id="fSelect">
                                <label for="fSelect" @click="buyfriend(v)">
                                    <div class="member_left">
                                        <div class="member_desc">
                                            <div>
                                                <p>{{ v.email }}</p>
                                                <span>ID:{{ v.ocn_id }}</span>
                                                <span>Leve 1</span>
                                            </div>
                                        </div>
                                    </div>
                                    <strong class="text-end"><span> {{ formatDateTime(v.created_at) }} </span></strong>
                                </label>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END Modal  -->
</template>

<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';
import Swal from "sweetalert2";
import DashboardSidebar from "~/layouts/DashboardSidebar.vue";
import DashboardHeader from "~/layouts/DashboardHeader.vue";

definePageMeta({
    middleware: 'is-logged-out',
})

const loading = ref(true);
const router = useRoute();

const catData = ref([]);
const categoryData = ref([]);
const leveldata = ref([]);
const slugvalue = ref('');
const usdtBalance = ref('');
const durationId = ref('');
const selectedPrices = ref('');
const email = ref('');
const userid = ref('');

const setData = (v) => {
    durationId.value = v.id;
    selectedPrices.value = v.prices;
}

const formatDateTime = (dateTimeString) => {
    const date = new Date(dateTimeString);
    const formattedDateTime = date.toISOString().slice(0, 19).replace('T', ' ');
    return formattedDateTime;
};


const buyfriend = (user) => {
    email.value = user.email;
    userid.value = user.id;
}

const buyfriendConfirm = async () => {

    const response = await axios.get('/mining/buyForFriend', {
        params: {
            userid: userid.value,
            durationId: durationId.value,
            selectedPrices: selectedPrices.value
        }
    });
    if (response.data.status == 0) {
            console.log('Expire:', response.data.notify);
            error_msg(response.data.notify);
    }

    if (response.data.status == 1) {
        console.log('Success:', response.data.notify);
        success_msg(response.data.notify)
        router.push('/dashboard/success')
    }

   

}


const buyForMe = async () => {

    try {
        const response = await axios.get('/mining/buyForMe', {
            params: {
                durationId: durationId.value,
                selectedPrices: selectedPrices.value,
            }
        });

        if (response.data.status == 0) {
            console.log('Expire:', response.data.notify);
            error_msg(response.data.notify);
        }

        if (response.data.status == 1) {
            console.log('Success:', response.data.notify);
            success_msg(response.data.notify)
        }

    } catch (error) {
        if (error.response && error.response.status === 422) {
            const invalidAmountMessage = error.response.data.invalid_amount;
            error_msg(invalidAmountMessage);
            //console.log("======", error.response.data.invalid_amount);
        } else {
            console.error('An error occurred:', error);
        }
    }
};

const error_msg = (invalidAmountMessage) => {
    Swal.fire({
        icon: "error",
        title: "Oops...",
        text: invalidAmountMessage,
        footer: '<a href="#">Why do I have this issue?</a>'
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
const fetchData = async () => {
    try {
        const response = await axios.get("/category/getMiningMainCategorys");
        categoryData.value = response.data.data;
    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

const getLevelOne = async () => {
    try {
        const response = await axios.get('/affiliate/getLevelOneDetails', {
            params: {
                email: email.value,
                selectedPrices: selectedPrices.value,
            }
        });

        leveldata.value = response.data.level_data;
    } catch (error) {
        console.error("Error fetching data:", error);
    }
};

const getusdtBalance = async () => {
    try {
        const response = await axios.get("/deposit/getDepositfetchdata");
        usdtBalance.value = response.data.depositAmount;
    } catch (error) {
        console.error("Error fetching data:", error);
    }
};
const getParmaSlug = async () => {
    const slug = router.params.slug
    const response = await axios.get('/category/getSlugrow', {
        params: {
            slug: slug,
        }
    });
    catData.value = response.data.data;
    slugvalue.value = slug;

}

onMounted(() => {
    getLevelOne();
    getParmaSlug();
    fetchData();
    getusdtBalance();
    setTimeout(() => {
        loading.value = false;
    }, 1000); // 1 seconds
});
</script>