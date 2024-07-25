<template>
  <title>Edit Trading Category</title>
  <div>
    <div class="content-wrapper">
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <p>Edit Trading Category</p>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item">
                  <LazyNuxtLink to="/admin/dashboard">Home</LazyNuxtLink>
                </li>
                <li class="breadcrumb-item active">
                  <LazyNuxtLink to="/trading/category-list">Back to List</LazyNuxtLink>
                </li>
              </ol>
            </div>
          </div>
        </div>
      </section>

      <section class="content">
        <div class="container-fluid">
          <!-- Start -->
          <div class="card border-top border-0 border-4 border-info">
            <div class="border p-4 rounded">
              <form @submit.prevent="saveData()" id="formrest" class="forms-sample" enctype="multipart/form-data">
                <div class="card card-primary card-outline card-tabs">
                  <div class="card-header p-0 pt-1 border-bottom-0">
                    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill"
                          href="#custom-tabs-three-home" role="tab" aria-controls="custom-tabs-three-home"
                          aria-selected="true">General</a>
                      </li>

                    </ul>
                  </div>
                  <div class="card-body">
                    <div class="tab-content" id="custom-tabs-three-tabContent">
                      <div class="tab-pane fade active show" id="custom-tabs-three-home" role="tabpanel"
                        aria-labelledby="custom-tabs-three-home-tab">
                        <!-- General  -->
                        <div class="row mb-3 required">
                          <label for="input-name-1" class="col-sm-2 col-form-label required-label">Name</label>
                          <div class="col-sm-10">
                            <input type="text" name="name" placeholder="Name" v-model="insertdata.name" class="form-control" />
                            <input type="hidden" v-model="insertdata.id" />
                            <!-- <input type="hidden" name="id" id="id" class="form-control" /> -->
                            <span class="text-danger" v-if="errors.name">{{ errors.name[0] }}</span>
                          </div>
                        </div>



                        <hr />

                        <div class="alert alert-info" bis_skin_checked="1">
                          <i class="fas fa-info-circle"></i>Thumbnail
                        </div>
                        <div class="row mb-3">
                          <label for="input-meta-description-1" class="col-sm-2 col-form-label">Thumbnail
                            Image</label>
                          <div class="col-sm-10">
                            <input type="file" value class="form-control" id="fileInput" accept="image/png,image/jpeg"
                              ref="files" @change="onFileSelected" />
                            <span class="text-danger" v-if="errors.files">{{ errors.files[0] }}</span>
                            <img v-if="previewUrl" :src="previewUrl" alt="Preview" class="img-fluids" />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label for="input-meta-description-1" class="col-sm-2 col-form-label">Additional Banner
                            Image</label>
                          <div class="col-sm-10">
                            <input type="file" class="form-control" ref="fileInput" accept="image/png,image/jpeg"
                              @change="handleImageUpload" id="fileInput" />
                            <div class="row mt-3">
                              <img v-if="previewUrlBanner" :src="previewUrlBanner" alt="Preview" class="img-fluids" />
                            </div>
                          </div>
                        </div>
                        <div class="row mb-3 required d-none">
                          <label for="input-name-1" class="col-sm-2 col-form-label required-label">Select Graph</label>
                          <div class="col-sm-10">
                            <select class="form-control" aria-label=".form-select-sm example"
                                  v-model="insertdata.selected_graph">
                                  <option selected>Select</option>
                                  <option value="1">Crypto</option>
                                  <option value="2">Currencies</option>
                                  <option value="3">Stocks</option>
                                  <option value="4">Commodities </option>
                                </select>
                            <span class="text-danger" v-if="errors.selected_graph">{{ errors.selected_graph[0] }}</span>
                          </div>
                        </div>

                        <div class="row mb-3 required">
                          <label for="input-name-1" class="col-sm-2 col-form-label required-label">Status</label>
                          <div class="col-sm-10">
                            <select class="form-control" aria-label=".form-select-sm example"
                              v-model="insertdata.status">
                              <option selected>Select</option>
                              <option value="1">Active</option>
                              <option value="0">Inactive</option>
                            </select>
                            <span class="text-danger" v-if="errors.status">{{ errors.status[0] }}</span>
                          </div>
                        </div>

                        <button type="submit" class="btn btn-success px-5 w-100">
                          <i class="bx bx-check-circle mr-1"></i> Save
                        </button>

                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <!-- END -->
      </section>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, onMounted } from 'vue';
import axios from 'axios';
import swal from 'sweetalert2';
import { useRouter } from 'vue-router';
const router = useRouter();
///import $ from 'jquery';
if (process.client) {
  window.Swal = swal;

}

definePageMeta({
  middleware: 'is-logged-out',
})
 
const insertdata = reactive({
  name: '',
  images: '',
  selected_graph: '',
  status: '',
});
// Define a ref to store the HTML content of the editor

const previewUrlBanner = ref(null);
const previewUrl = ref(null);
const images = ref([]);
const file = ref(null);
const files = ref(null);
const errors = ref({});
 

const checkImageDimensions = (file) => {
  const reader = new FileReader();
  reader.onload = (e) => {
    const img = new Image();
    img.src = e.target.result;
    img.onload = () => {
      if (img.width === 402 && img.height === 125) {
        const url = e.target.result;
        // Ensure images.value is initialized as an array
        images.value = Array.isArray(images.value) ? images.value : [];

        images.value.push({
          url,
          file
        });
      } else {
        alert('Image dimensions must be 402x125 pixels.');
        // Reset file input

        // Reset the file input
        if (fileInput.value) {
          fileInput.value.value = '';
        }
      }
    };
  };
  reader.readAsDataURL(file);
};

const removeImage = (index) => {
  images.value.splice(index, 1);
};

const checkImageDimensionsThunbnail = (file) => {
  const reader = new FileReader();
  reader.onload = (e) => {
    const img = new Image();
    img.src = e.target.result;
    img.onload = () => {
      previewUrl.value = e.target.result;
    };
  };
  reader.readAsDataURL(file);
  //resetInput();
};



const previewImage = (event) => {
  const file = event.target.files[0];
  previewUrl.value = URL.createObjectURL(file);
  checkImageDimensionsThunbnail(file);
};

const onFileSelected = (event) => {
  previewImage(event)
  file.value = event.target.files[0];
};

const handleImageUpload = (event) => {
  const files = event.target.files;
  for (let i = 0; i < files.length; i++) {
    const file = files[i];
    //readImage(file);
    checkImageDimensions(file);
  }
};

const saveData = () => {
  const formData = new FormData();
  images.value.forEach((image, index) => {
    formData.append('banner_images', image.file);
  });

  formData.append('id', insertdata.id);
  formData.append('files', file.value);
  formData.append('name', insertdata.name);
  formData.append('status', insertdata.status);
  formData.append('selected_graph', insertdata.selected_graph);
  console.log(formData);

  axios.post('/trading/updateCategory', formData, {
    headers: {
      'Content-Type': 'multipart/form-data'
    }
  }).then((res) => {
    $('#formrest')[0].reset();
    success_noti();
    const product_id = res.data.product_id;
    // Redirect to product variant page
    router.push({
      path: '/trading/category-list',
    });

  }).catch(error => {
    if (error.response && error.response.status === 422) {
      errors.value = error.response.data.errors;
    } else {
      // Handle other types of errors here
      console.error("An error occurred:", error);
    }
  });
};

const success_noti = () => {
  //alert("Your data has been successfully inserted.");
  const Toast = Swal.mixin({
    toast: true,
    position: "top-end",
    showConfirmButton: false,
    timer: 1000,
    timerProgressBar: true,
    didOpen: (toast) => {
      toast.onmouseenter = Swal.stopTimer;
      toast.onmouseleave = Swal.resumeTimer;
    }
  });
  Toast.fire({
    icon: "success",
    title: "Your data has been successfully inserted."
  });
};

 
//Find Product Row
const defaultLoadingrow = () => {
  const id = router.currentRoute.value.query.parameter;
  axios.get(`/trading/tradingCategoryRow/${id}`).then(response => {
    insertdata.id = response.data.id;

    insertdata.name = response.data.name;
    insertdata.status = response.data.status

    previewUrl.value = response.data.thumnail_img;
    previewUrlBanner.value = response.data.banner_images;
    insertdata.selected_graph = response.data.selected_graph;
   

  });
};
 

// Call the loadeditor function when the component is mounted
onMounted(async () => {
  defaultLoadingrow();
});
// 
</script>

<style scoped>
.required-label::after {
  content: "\2605";
  color: red;
  margin-right: 4px;
}

/* CSS */
ol,
ul {
  padding-left: 0rem;
}

ul {
  list-style: none;
}

.bgColor {
  background-color: #c8c8c8;
  padding: 1px;
  border-radius: 2px;
}

.img-fluid {
  width: 300px;
  height: 150px;
}

.img-fluids {
  margin-top: 10px;
  width: 300px;
  height: 300px;
}

/* for checkbox */
.multiselect {
  position: relative;
  font-family: Arial, sans-serif;
  width: 100%;
}

.select-box {
  border: 1px solid #ccc;
  padding: 8px;
  cursor: pointer;
  background-color: #fff;
}

.dropdown {
  border: 1px solid #ccc;
  border-top: none;
  max-height: 400px;
  overflow-y: auto;
  position: absolute;
  top: 100%;
  width: 100%;
  background-color: #fff;
  z-index: 1;
}

label {
  display: block;
  padding: 5px;
}

input[type="checkbox"] {
  margin-right: 8px;
}

.widthtxtbox {
  width: 50px;
}

.autocomplete-list {
  list-style: none;
  padding: 0;
  margin: 0;
  position: absolute;
  background-color: #fff;
  border: 1px solid #ccc;
  border-top: none;
  max-height: 200px;
  overflow-y: auto;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  z-index: 1000;
  width: 100%;
}

.autocomplete-item {
  padding: 8px;
  cursor: pointer;
  transition: background-color 0.3s;
}

.autocomplete-item:hover {
  background-color: #f2f2f2;
}

.checkbox-wrapper {
  display: flex;

}
</style>
