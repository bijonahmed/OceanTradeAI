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
                    <div class="banner">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-xl-12 col-md-12">
                                   
                                </div>
                               
                               
                                <div class="col-xl-12 col-md-12">
                                    <div class="banner-top__sale">
                                        <div class="mechine_container">

                                            <div class="mechine" v-for="v in categoryData" :key="v.id">
                                                <h4>{{ v.name }}</h4>
                                                <span v-if="!v.enddate || v.enddate === ''">
                                                    <span v-if="v.id == 1">
                                                        <div class="img_machine"><img src="/assets/images/1.png" alt="ICOLand"></div>
                                                    </span>
                                                    <span v-if="v.id == 2">
                                                        <div class="img_machine"><img src="/assets/images/2.png" alt="ICOLand"></div>
                                                    </span>
                                                    <span v-if="v.id == 3">
                                                        <div class="img_machine"><img src="/assets/images/3.png" alt="ICOLand"></div>
                                                    </span>
                                                    <span v-if="v.id == 4">
                                                        <div class="img_machine"><img src="/assets/images/4.png" alt="ICOLand"></div>
                                                    </span>
                                                    <nuxt-link :to="`/dashboard/miningcategory/${v.slug}`"
                                                        class="btn-action style-5 btn_boost">Buy</nuxt-link>
                                                </span>

                                               
                                                <span v-else>
                                                    <span v-if="v.id == 1">
                                                        <center>  <CountdownTimerCat1 :id="v.id"/></center>
                                                    </span>
                                                    <span v-if="v.id == 2">
                                                        <center><CountdownTimerCat2 :id="v.id"/></center>
                                                    </span>

                                                    <span v-if="v.id == 3">
                                                        <center><CountdownTimerCat3 :id="v.id"/></center>
                                                    </span>
                                                    <span v-if="v.id == 4">
                                                       
                                                        <center><CountdownTimerCat4 :id="v.id"/></center>
                                                    </span>
                                                    <nuxt-link :to="`/dashboard/boost/${v.slug}`"  class="btn-action style-5 btn_boost">Boost</nuxt-link>
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
const categoryData = ref([]);
const notifyMsg = ref("");
const mining_id = ref(null);

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


onMounted(() => {
    fetchData();
    getLocalStorageData();
    setTimeout(() => {
        loading.value = false;
    }, 2000); // 2 seconds
});

</script>