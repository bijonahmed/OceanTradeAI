<template>
  <div>
    <p class="d-none">Server Time: {{ formattedServerTime }}</p>
    <!-- <hr/> -->
    <p class="d-none">Start Time: {{ formattedStartTime }}</p>
    <p class="d-none">End Time: {{ formattedEndTime }}</p>
    <p class="d-none">Mining Category ID: {{ miningCategoryId }}</p>
    <p class="countTime" style="font-size: 15px;"><b></b></p>
    <p class="d-none">Received ID: {{ id }}</p>

    <div class="img_machine active">
      <span v-if="formattedRemainingTime == '0h 0m 0s'">
        <img src="/assets/images/1.png" alt="ICOLand">
      </span>
      <span v-else>
        <img src="/assets/images/1.png" alt="ICOLand">
        <img src="/assets/images/mining.gif" alt="" class="machine_ovelay">
      </span>

    </div>
                                                
    <span class="sm_timer">
                                    <strong><div class="t_box">{{ hours }} </div><p>Hour</p> </strong>
                                    <strong><div class="t_box">{{ minutes }}</div><p>Minute</p></strong>
                                    <strong><div class="t_box">{{ seconds }}</div><p>Second</p></strong>
    </span>
    <span v-if="formattedRemainingTime == '0h 0m 0s'">
      <nuxt-link to="#" class="btn-action disabled style-5 btn_boost" @click="startProcess(id)">Mine</nuxt-link>
    </span>

  </div>
</template>

<script setup>
import axios from 'axios';
import Swal from "sweetalert2";
const router = useRouter();

import { ref, computed, onUnmounted, onMounted } from 'vue'
import { useMiningcategoryoneStore } from '~/stores/miningcategoryone'
const myStore = useMiningcategoryoneStore()

const remainingTime = ref(null)
const intervalId = ref(null)
const notifyMsg = ref("");
const mining_id = ref(null);
const props = defineProps({
  id: {
    type: Number,
    required: true
  }
});


const startProcess = async (mining_category_id) => {
  console.log("mining_category_id:" + mining_category_id);
  try {

    const res = await axios.get("/mining/miningProcess", {
      params: {
        mining_category_id: mining_category_id,
      }
    });
    notifyMsg.value = res.data.notify;
    mining_id.value = res.data.mining_id;
    console.log("check status: ", res.data.status);
    window.location.reload();
    //router.push("/dashboard/success-mining");
  } catch (error) {
    console.error("Error fetching data:", error);
  }

}
const fetchData = async () => {
  await myStore.getSoreData()
  startCountdown()
}

const startCountdown = () => {
  const serverNow = new Date(myStore.server_time).getTime()
  const endTime = new Date(myStore.end_time).getTime()
  const startTime = new Date(myStore.start_time).getTime()

  if (serverNow < endTime) {
    remainingTime.value = endTime - serverNow

    intervalId.value = setInterval(() => {
      remainingTime.value -= 1000
      if (remainingTime.value <= 0) {
        clearInterval(intervalId.value)
        remainingTime.value = 0
      }
    }, 1000)
  } else {
    remainingTime.value = 0
  }
}

const formattedStartTime = computed(() => {
  return myStore.start_time ? new Date(myStore.start_time).toLocaleString() : ''
})


const formattedEndTime = computed(() => {
  return myStore.end_time ? new Date(myStore.end_time).toLocaleString() : ''
})

const formattedServerTime = computed(() => {
  return myStore.server_time ? new Date(myStore.server_time).toLocaleString() : ''
})

const miningCategoryId = computed(() => {
  return myStore.mining_category_id
})

const hours = computed(() => {
  if (remainingTime.value === null) return '';
  return Math.floor((remainingTime.value / (1000 * 60 * 60)) % 24);
});

const minutes = computed(() => {
  if (remainingTime.value === null) return '';
  return Math.floor((remainingTime.value / (1000 * 60)) % 60);
});

const seconds = computed(() => {
  if (remainingTime.value === null) return '';
  return Math.floor((remainingTime.value / 1000) % 60);
});

const formattedRemainingTime = computed(() => {
  if (remainingTime.value === null) return '';
  return `${hours.value}h ${minutes.value}m ${seconds.value}s`;
});
/*
const formattedRemainingTime = computed(() => {
  if (remainingTime.value === null) return 'N/A'
  const hours = Math.floor((remainingTime.value / (1000 * 60 * 60)) % 24)
  const minutes = Math.floor((remainingTime.value / (1000 * 60)) % 60)
  const seconds = Math.floor((remainingTime.value / 1000) % 60)
  return `${hours}h ${minutes}m ${seconds}s`
})
*/

onMounted(() => {
  fetchData()
})

onUnmounted(() => {
  if (intervalId.value) {
    clearInterval(intervalId.value)
  }
})
</script>