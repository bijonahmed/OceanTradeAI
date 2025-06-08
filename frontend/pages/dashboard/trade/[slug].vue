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
                    <!-- <section class="slider_section">
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
                    </section> -->
                    <!-- slider section end herer  -->


                    <!-- market section start herer  -->
                    <div class="market_section mt-3">
                        <h4>{{ categoryName }} Trade</h4>
                        <div class="table-responsive">
                            <table class="table table-dark  table_crypto">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="item in responeData" :key="item.id">
                                        <td style="width: 80%;">
                                            <img :src="item.thumnail_img" alt="image" class="img-fluid"> {{
                                                item.name }}
                                        </td>
                                        <td style="width: 100%;">
                                            <nuxt-link :to="`/dashboard/trade/start/${item.slug}`"
                                                class="btn-action style-5 w-100">Trade</nuxt-link>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- <div class="refer_members latest_buy text-start">
                        <h6>Latest Trade</h6>
                        <ul>
                            <li v-for="(entry, index) in tradeList" :key="index">
                                <strong>{{ entry.id }} Complete by {{ entry.name }}</strong>
                            </li>
                        </ul>
                    </div> -->
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

const tradeList = ref([])

// Random sample names
const names = [
    'Jons', 'Emily', 'Mike', 'Sara', 'Dan', 'Nora', 'Alex', 'Tom', 'Lily', 'Omar',
    'Chris', 'Anna', 'Robert', 'Julia', 'Steve', 'Karen', 'David', 'Laura', 'John', 'Sophie',
    'Ryan', 'Tina', 'Brian', 'Grace', 'Kevin', 'Rachel', 'Peter', 'Megan', 'James', 'Olivia',
    'Mark', 'Linda', 'Sam', 'Bella', 'Tony', 'Ruby', 'Leo', 'Mia', 'Isaac', 'Ella',
    'Jason', 'Ivy', 'Andrew', 'Chloe', 'Nathan', 'Hazel', 'Aaron', 'Zoe', 'Ben', 'Rose'
]


// Generate a single trade item
const generateTradeItem = () => {
    const id = Math.floor(10000 + Math.random() * 90000)
    const name = names[Math.floor(Math.random() * names.length)]
    return { id, name }
}

// Generate 10 unique trade items
const generateTradeList = () => {
    const list = []
    const usedIds = new Set()

    while (list.length < 10) {
        const item = generateTradeItem()
        if (!usedIds.has(item.id)) {
            usedIds.add(item.id)
            list.push(item)
        }
    }

    return list
}

onMounted(() => {
    tradeList.value = generateTradeList()
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