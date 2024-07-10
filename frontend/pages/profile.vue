<template>
  <div>
    <title>Profile</title>

     
  </div>
</template>

<script setup>
import { useRouter } from "vue-router";
const router = useRouter();
import axios from "axios";
import swal from "sweetalert2";

const name = ref("");
const email = ref("");
const phone_number = ref("");
const whtsapp = ref("");
const facebook = ref("");
const twitter = ref("");
const errors = ref({});
const id = ref("");

const insertdata = reactive({
  id: "",
  old_password: "",
  password: "",
  password_confirmation: "",
});

const fetchData = async () => {
  try {
    const response = await axios.get("/auth/showProfileData");
    console.log("Response data:", response.data.name); // Log the response data
    name.value = response.data.name;
    email.value = response.data.email;
    phone_number.value = response.data.phone_number;
    whtsapp.value = response.data.whtsapp;
    facebook.value = response.data.facebook;
    twitter.value = response.data.twitter;
    id.value = response.data.id;
  } catch (error) {
    console.error("Error fetching data:", error);
  }
};

const changesPassword = () => {
  const formData = new FormData();
  formData.append("id", id.value);
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
      router.push("/");
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

const saveData = () => {
  const formData = new FormData();
  formData.append("name", name.value);
  formData.append("email", email.value);
  formData.append("phone_number", phone_number.value);
  formData.append("whtsapp", whtsapp.value);
  formData.append("facebook", facebook.value);
  formData.append("twitter", twitter.value);
  const headers = {
    "Content-Type": "multipart/form-data",
  };
  axios
    .post("/auth/updateprofile", formData, { headers })
    .then((res) => {
      document.getElementById("formrest").reset();
      success_noti();
      router.push("/");
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

onMounted(async () => {
  await fetchData();
});
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
    title: "Your profile has been successfully update.",
  });
};
</script>
