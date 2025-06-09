<template>
    <div class="dashboard show">
        <title>Affiliate History L-3</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">

                <DashboardHeader />

                <div class="dashboard__main">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>
                        </div>
                    </div>

                    <center>
      <div class="loading-indicator" v-if="loading" style="text-align: center">
        <Loader />
      </div>
    </center>
                    <div class="affiliate_section">
                        <div class="top_affi_balance mb-3">
                            <h1>Level 3</h1>
                            <p>Team : {{ teamCount }}</p>
                            <span>{{ usdt }} USDT</span>
                        </div>
                        <!--refere members list  -->
                        <div class="refer_members">
                            <h4>Reffered members list</h4>
                            <div class="search_section">
                                <form action="">
                                    <div class="search_div">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="input_form mb-2 m-0">
                                                    <input type="text" placeholder="Search by email"
                                                        class="form-control" v-model="email" @keyup="fetchLevelOneData">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class=" d-flex align-items-center w-100">
                                                    <div class="input_form w-100">
                                                        <input type="date" class="form-control" v-model="frmDate">
                                                    </div>
                                                    <p>TO</p>
                                                    <div class="input_form w-100 m-0">
                                                        <input type="date" class="form-control" v-model="toDate" @change="fetchLevelOneData">
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </form>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-dark table-striped table_crypto">
                                    <thead>
                                        <tr>
                                            <th scope="col">Name</th>
                                            <th scope="col" class="text-center">Reg. Date</th>
                                            <th scope="col" class="text-center">Profit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="v in level_data" :key="v.id">
                                            <td>
                                                <div class="member_left">
                                                    <div class="member_desc">
                                                        <div>
                                                            <p>{{ v.email }}</p>
                                                            <span>MID {{ v.ocn_id }}</span>
                                                            <span>Leve 1</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">{{ formatDateTime(v.created_at) }}</td>
                                            <td class="text-center">20 USDT </td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                            </div>
                            <!-- <a class="loadMore mt-3 btn-action style-1" href="#">
                                <span>Load more</span>
                            </a> -->
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

const email = ref('');
const frmDate = ref('');
const toDate = ref('');
const teamCount = ref(0);
const usdt = ref(0);
const level_data = ref([]);

const formatDateTime = (dateTimeString) => {
  const date = new Date(dateTimeString);
  const formattedDateTime = date.toISOString().slice(0, 19).replace('T', ' ');
  return formattedDateTime;
};


const fetchLevelOneData = async () => {
    try {
        loading.value = true;
        const response = await axios.get("/affiliate/getLevelThreeDetails", {
            params: {
                email: email.value,
                frmDate: frmDate.value,
                toDate: toDate.value
            }
        });
        //console.log("Response data:", response.data.levels);
        teamCount.value = response.data.teamCount;
        usdt.value = response.data.usdt;
        level_data.value = response.data.level_data;



    } catch (error) {
        console.error("Error fetching data:", error);
    } finally {
        loading.value = false;
    }
};

onMounted(async () => {
    fetchLevelOneData();

});

</script>