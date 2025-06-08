<template>
  <div>
    <p class="d-none">Server Time: {{ formattedServerTime }}</p>
    <p class="d-none">Start Time: {{ formattedStartTime }}</p>
    <p class="d-none">End Time: {{ formattedEndTime }}</p>
    <p class="d-none">Mining Category ID: {{ miningCategoryId }}</p>
    <p class="countTime" style="font-size: 15px;"><b></b></p>
    <p class="d-none">Received ID: {{ id }}</p>

    <div class="img_machine active">

      <span v-if="formattedRemainingTime == '0h 0m 0s'">
        <img src="/assets/images/3.png" alt="ICOLand">
      </span>
      <span v-else>
        <img src="/assets/images/3.png" alt="ICOLand">
        <img src="/assets/images/mining.gif" alt="" class="machine_ovelay">
      </span>

    </div>
    <span class="sm_timer" v-if="hours < 24">
      <strong>
        <div class="t_box">{{ hours }}</div>
        <p>Hour</p>
      </strong>
      <strong>
        <div class="t_box">{{ minutes }}</div>
        <p>Minute</p>
      </strong>
      <strong>
        <div class="t_box">{{ seconds }}</div>
        <p>Second</p>
      </strong>
    </span>

    <!-- <center v-if="increasingNumber > 0">
      <h3>{{ increasingNumber }}</h3>
    </center> -->
    <span v-if="formattedRemainingTime === '0h 0m 0s'">
      <nuxt-link class="btn-action disabled style-5 btn_boost" @click="startProcess(id)">Mine</nuxt-link>
    </span>
  </div>
</template>

<script setup>
import axios from 'axios';
import Swal from 'sweetalert2';
import { ref, computed, onUnmounted, onMounted } from 'vue';
import { useRouter } from 'vue-router';
import { useMiningcategorythreeStore } from '~/stores/miningcategorythree';

const router = useRouter();
const myStore = useMiningcategorythreeStore();

const remainingTime = ref(null);
const intervalId = ref(null);
const notifyMsg = ref('');
const mining_id = ref(null);
const requestSent = ref(false);
const ocnBalance = ref(0);

const props = defineProps({
  id: {
    type: Number,
    required: true
  },

});

const localStorageKey = `increasingNumber_${props.id}`;
const increasingNumber = ref(parseInt(localStorage.getItem(localStorageKey)) || ocnBalance);

const startProcess = async (mining_category_id) => {
  try {
    const res = await axios.get('/mining/miningProcess', {
      params: { mining_category_id }
    });
    notifyMsg.value = res.data.notify;
    mining_id.value = res.data.mining_id;
    router.push('/dashboard/success-mining');

  } catch (error) {
    Swal.fire('Error', 'Error fetching data', 'error');
  }
};

const fetchData = async () => {
  await myStore.getSoreData();
  startCountdown();
};

const startCountdown = () => {
  const serverNow = new Date(myStore.server_time).getTime();
  const endTime = new Date(myStore.end_time).getTime();

  if (serverNow < endTime) {
    remainingTime.value = endTime - serverNow;

    intervalId.value = setInterval(() => {
      remainingTime.value -= 1000;
     //increasingNumber.value += 1;
     const increaseSec = increaseSecond.value; 
      if(increaseSec){
        increasingNumber.value += increaseSec;
      }else{
        increasingNumber.value += 1;
      }
      localStorage.setItem(localStorageKey, increasingNumber.value);

      if (remainingTime.value <= 0 && !requestSent.value) {
        clearInterval(intervalId.value);
        remainingTime.value = 0;
        requestSent.value = true;
        sendCompletionRequest();
      }
    }, 1000);
  } else {
    remainingTime.value = 0;
    if (!requestSent.value) {
      sendCompletionRequest();
    }
  }
};

const increaseSecond = ref(0);
const updateTimer = async () => {
  try {
    const resp = await axios.get('/mining/timerUpdate', {
      params: {
        id: props.id,
      }
    });

    console.log("Per second:" + resp.data.mining_per_seconds);
    increaseSecond.value = resp.data.mining_per_seconds;
  } catch (error) {
    console.error('Error ocn balance number:', error);
  }
};

const getOcnBalance = async () => {
  try {
    const resp = await axios.get('/mining/getOcnBalanceCatWise', {
      params: {
        id: props.id,
      }
    });
    ocnBalance.value = resp.data.ocnBalance;
    // Use ocnBalance as needed
    console.log('OCN Balance:', resp.data.ocnBalance);

  } catch (error) {
    console.error('Error ocn balance number:', error);
  }
};
const sendCompletionRequest = () => {

  if (requestSent.value) {
    try {
      axios.get('/mining/increastMiningCountdownBalance', {
        params: {
          id: props.id,
          miningCategoryId: props.categoryId,
          number: increasingNumber.value
        }
      });
      getOcnBalance();

    } catch (error) {
      console.error('Error updating number:', error);
    }
  }


};

const formattedStartTime = computed(() => {
  return myStore.start_time ? new Date(myStore.start_time).toLocaleString() : '';
});

const formattedEndTime = computed(() => {
  return myStore.end_time ? new Date(myStore.end_time).toLocaleString() : '';
});

const formattedServerTime = computed(() => {
  return myStore.server_time ? new Date(myStore.server_time).toLocaleString() : '';
});

const miningCategoryId = computed(() => {
  return myStore.mining_category_id;
});

const hours = computed(() => {
  if (remainingTime.value === null) return '';
  //return Math.floor((remainingTime.value / (1000 * 60 * 60)) % 24);
  return Math.floor(remainingTime.value / (1000 * 60 * 60)); // Total hours
});

const minutes = computed(() => {
  if (remainingTime.value === null) return '';
  //return Math.floor((remainingTime.value / (1000 * 60)) % 60);
  return Math.floor((remainingTime.value % (1000 * 60 * 60)) / (1000 * 60)); 
});

const seconds = computed(() => {
  if (remainingTime.value === null) return '';
  //return Math.floor((remainingTime.value / 1000) % 60);
  return Math.floor((remainingTime.value % (1000 * 60)) / 1000); // Remaining seconds after minutes
});

const formattedRemainingTime = computed(() => {
  if (remainingTime.value === null) return '';
  return `${hours.value}h ${minutes.value}m ${seconds.value}s`;
});

onMounted(
  updateTimer(),
  fetchData(),
  getOcnBalance()
);

onUnmounted(() => {

  if (intervalId.value) {
    clearInterval(intervalId.value);

  }
});
</script>