<template>
    <div class="dashboard show">
        <title>Trade</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">
                <DashboardHeader />
                <div class="loading-indicator" v-if="loading" style="text-align: center">
                    <Loader />
                </div>

                <div class="dashboard__main">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>
                        </div>
                    </div>
                    <!-- slider section sttart here  -->
                    <section class="slider_section">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="swiper mySwiper">
                                    <div class="swiper-wrapper">

                                        <div class="swiper-slide" v-if="categorybannerImages">
                                            <img :src="categorybannerImages" alt="" class="img-fluid">
                                        </div>

                                    </div>
                                    <div class="swiper-pagination slider_pagination"></div>
                                </div>

                            </div>
                        </div>
                    </section>
                    <!-- slider section end herer  -->


                    <!-- market section start herer  -->
                    <div class="market_section mt-3">
                        <h4>{{ categoryName }} Trade</h4>
                        <div class="table-responsive">
                            <table class="table table-dark  table_crypto">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Month</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">High</th>
                                        <th scope="col">Low</th>
                                        <th scope="col">Chg.</th>
                                        <th scope="col">Chg.%</th>
                                        <th scope="col">Time</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="item in responeData" :key="item.id">
                                        <td>
                                            <img :src="item.thumnail_img" alt="{{ item.name }}" class="img-fluid"> {{
                                            item.name }}
                                        </td>
                                        <td>Aug 24</td>
                                        <td>2,399.85</td>
                                        <td>2,401.40</td>
                                        <td>2,356.65</td>
                                        <td class="text-success">+30.45</td>
                                        <td class="text-success">+1.29%</td>
                                        <td>05/07</td>
                                        <td>
                                            <nuxt-link :to="`/dashboard/trade/start/${item.slug}`"
                                                class="btn-action style-5">Trade</nuxt-link>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="refer_members latest_buy text-start">
                        <h6>Latest Trade</h6>
                        <ul>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                            <li>
                                <strong>@user1 Complete xyz </strong>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
    </div>


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
const categorybannerImages = ref('');
const categoryName = ref('');
const responeData = ref([]);
const errors = ref({});

const getParmaSlug = async () => {

    const urlString = window.location.href;
    const slug = urlString.substring(urlString.lastIndexOf('/') + 1);
    console.log("Slug: " + slug);

    try {
        loading.value = true;
        const response = await axios.get('/trading/getsubCategorySlugrow', {
            params: {
                slug: slug,
            }
        });
        categorybannerImages.value = response.data.categorybannerImages;
        categoryName.value = response.data.categoryName;
        responeData.value = response.data.data;
    } catch (error) {
        console.error('An error occurred:', error);
        // Handle error, possibly set some error state or show a message to the user
    } finally {
        loading.value = false;
        console.log('Request completed');
        // Code here will always run, regardless of the try/catch outcome
    }

}


onMounted(() => {
    getParmaSlug();

});
</script>