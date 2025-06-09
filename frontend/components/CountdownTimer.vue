<template>
  <div class="countdown-wrapper">
    <div class="countdown-box">
      <div class="time-unit">
        <span class="value">{{ days }}</span>
        <span class="label">Days</span>
      </div>
      <div class="separator">:</div>
      <div class="time-unit">
        <span class="value">{{ hours }}</span>
        <span class="label">Hours</span>
      </div>
      <div class="separator">:</div>
      <div class="time-unit">
        <span class="value">{{ minutes }}</span>
        <span class="label">Minutes</span>
      </div>
      <div class="separator">:</div>
      <div class="time-unit">
        <span class="value">{{ seconds }}</span>
        <span class="label">Seconds</span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted } from 'vue'

const props = defineProps({
  timer: {
    type: Number,
    required: true
  }
})

const secondsLeft = ref(props.timer)
let intervalId

const days = computed(() => Math.floor(secondsLeft.value / (24 * 3600)))
const hours = computed(() => Math.floor((secondsLeft.value % (24 * 3600)) / 3600))
const minutes = computed(() => Math.floor((secondsLeft.value % 3600) / 60))
const seconds = computed(() => secondsLeft.value % 60)

onMounted(() => {
  intervalId = setInterval(() => {
    if (secondsLeft.value > 0) {
      secondsLeft.value--
    } else {
      clearInterval(intervalId)
    }
  }, 1000)
})

onUnmounted(() => {
  clearInterval(intervalId)
})
</script>

<style scoped>
.countdown-wrapper {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

.countdown-box {
  display: flex;
  /* background: #2b14371f; */
  /* padding: 20px 30px;
  border-radius: 16px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); */
  color: #fff;
  gap: 12px;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.time-unit {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.value {
  font-size: 2rem;
  font-weight: bold;
  background-color: #6350e6;
  padding: 10px 16px;
  border-radius: 12px;
  min-width: 60px;
  text-align: center;
}

.label {
  margin-top: 6px;
  font-size: 0.9rem;
  color: #ccc;
}

.separator {
  font-size: 2rem;
  font-weight: bold;
  color: #0d6efd;
  align-self: center;
}
</style>
