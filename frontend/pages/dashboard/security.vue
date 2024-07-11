<template>
    <div class="dashboard show">
        <title>Security</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">

            
          <DashboardHeader/>

          <div class="dashboard__main">
                <div class="row">
                    <div class="col-md-6">
                        <form @submit.prevent="changesPassword()" id="formrest">
                            <input type="hidden" class="form-control id" v-model="insertdata.id" id="id" />
                            <div class="profile_">
                                <h4>Password</h4>
                                <ul class="profile_data">
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Old Password</label>
                                            <input type="password" placeholder="Old Password"  class="form-control" v-model="insertdata.old_password" id="password" autocomplete="off">
                                            <span class="text-danger" v-if="errors.old_password">{{ errors.old_password[0] }}</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">New password</label>
                                            <input type="password" placeholder="New password" class="form-control" v-model="insertdata.password" id="password">
                                            <span class="text-danger" v-if="errors.password">{{ errors.password[0] }}</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Confirm password</label>
                                            <input type="password" placeholder="Confirm password" class="form-control password_confirmation" v-model="insertdata.password_confirmation" id="password_confirmation">
                                            <span class="text-danger" v-if="errors.password_confirmation">{{ errors.password_confirmation[0] }}</span>
                                        </div>
                                    </li>
                                </ul>
                                <button type="submit" class="btn-action style-1">Update</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <form @submit.prevent="pinUpdate()">
                            <div class="profile_">
                                <h4>Withdrawal PIN</h4>
                                <span v-if="oldpin== '000000'">
                                <center>Your default withdrawal PIN is {{ pindata.oldpinmsg }}. Please update your PIN to ensure secure transactions.</center>
                              </span>
                                <ul class="profile_data">
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Old Pin</label>
                                            <input type="text" placeholder="Old Pin" class="form-control" v-model="pindata.old_pin">
                                            <span class="text-danger" v-if="errors.old_pin">{{ errors.old_pin[0] }}</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">New Pin</label>
                                            <input type="text" placeholder="New Pin" class="form-control" v-model="pindata.new_pin">
                                            <span class="text-danger" v-if="errors.new_pin">{{ errors.new_pin[0] }}</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="personal_details">
                                            <label for="">Confirm Pin</label>
                                            <input type="text" placeholder="Confirm Pin" class="form-control"  v-model="pindata.pin_confirmation">
                                            <span class="text-danger" v-if="errors.pin_confirmation">{{ errors.pin_confirmation[0] }}</span>
                                        </div>
                                    </li>
                                </ul>
                                <button type="submit" class="btn-action style-1">Update</button>
                            </div>
                        </form>
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
import swal from "sweetalert2";
const router = useRouter();

import { useUserStore } from "~~/stores/user";
const userStore = useUserStore();
const isLoggedIn = computed(() => userStore.isLoggedIn);
definePageMeta({
  middleware: "is-logged-out",
});

const errors = ref({});
const insertdata = reactive({
  id: "",
  old_password: "",
  password: "",
  password_confirmation: "",
});


const pindata = reactive({
  oldpinmsg: "000000",
  old_pin: "",
  new_pin: "",
  pin_confirmation: "",
});

 const oldpin = ref("");

const changesPassword = () => {
  const formData = new FormData();
  formData.append("password", insertdata.password);
  formData.append("old_password", insertdata.old_password);
  formData.append("password_confirmation", insertdata.password_confirmation);

  const headers = {
    "Content-Type": "multipart/form-data",
  };
  axios
    .post("/user/changePasswordClient", formData, { headers })
    .then((res) => {
      document.getElementById("formrest").reset();
      success_noti();
      router.push("/dashboard/mining");
    })
    .catch((error) => {
      if (error.response && error.response.status === 422) {
        errors.value = error.response.data.errors;
      } else {
        // Handle other types of errors here
        console.error("An error occurred:", error);
      }
    });
};



const pinUpdate = () => {
  const formData = new FormData();
  formData.append("old_pin", pindata.old_pin);
  formData.append("new_pin", pindata.new_pin);
  formData.append("pin_confirmation", pindata.pin_confirmation);

  const headers = {
    "Content-Type": "multipart/form-data",
  };
  axios
    .post("/user/pinUpdateClient", formData, { headers })
    .then((res) => {
      document.getElementById("formrest").reset();
      success_noti();
      router.push("/dashboard/mining");
    })
    .catch((error) => {
      if (error.response && error.response.status === 422) {
        errors.value = error.response.data.errors;
      } else {
        // Handle other types of errors here
        console.error("An error occurred:", error);
      }
    });
};

const success_noti = () => {
  const Toast = swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 1000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.onmouseenter = Swal.stopTimer;
      toast.onmouseleave = Swal.resumeTimer;
    },
  });
  Toast.fire({
    icon: "success",
    title: "Passport has been successfully update.",
  });
};


const fetchData = async () => {
  try {
    const response = await axios.get("/auth/showProfileData");
    console.log("Response data:", response.data.old_pin); // Log the response data
    oldpin.value = response.data.old_pin;
    
  } catch (error) {
    console.error("Error fetching data:", error);
  }
};


onMounted(async () => {
  await fetchData();
});

</script>

