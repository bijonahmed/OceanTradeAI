<template>
    <div class="dashboard show">
        <title>KYC</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
            <div class="dashboard__content">

                <DashboardHeader />

                <div class="dashboard__main">
                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" onclick="history.back(); return false;"><i
                                    class="fa-solid fa-arrow-left"></i></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 m-auto">
                            <div class="kyc_section">
                                <div class="kyc_container">
                                    <div class="form_group kyc_">
                                        <h4>ID Card</h4>
                                        <button type="button" data-bs-toggle="modal" data-bs-target="#id_mdal"><img
                                                src="assets/images/id.png" alt="Front Preview"
                                                class="img-fluid preview-img" id="front-preview"></button>
                                    </div>
                                    <div class="form_group kyc_">
                                        <h4>Passport</h4>
                                        <button type="button" data-bs-toggle="modal"
                                            data-bs-target="#passport_mdal"><img src="assets/images/pp.png"
                                                alt="Front Preview" class="img-fluid preview-img"
                                                id="front-preview"></button>
                                    </div>
                                    <div class="form_group kyc_">
                                        <h4>Driver's License</h4>
                                        <button type="button" data-bs-toggle="modal" data-bs-target="#dl_mdal"><img
                                                src="assets/images/dl.png" alt="Front Preview"
                                                class="img-fluid preview-img" id="front-preview"></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Nid modal  -->
        <div class="modal fade" id="id_mdal" tabindex="-1" aria-labelledby="id_mdalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content rounded-0">
                    <div class="modal-header py-0">
                        <div class="w-10"></div>
                        <h5 class="modal-title fs-6" id="id_mdalLabel">ID Card</h5>
                        <div data-bs-theme="dark">
                            <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                aria-label="Close">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="modal-body">
                        <form action="" class="kyc_form">
                            <div class="form_group kyc_ kyc_dl ">
                                <h6>Front</h6>
                                <label for="idfront">
                                    <i class="fa-solid fa-plus"></i>
                                    <img src="assets/images/blank.png" alt="" class="img-fluid demo_image"
                                        id="idfront-preview">
                                </label>
                                <input type="file" hidden id="idfront" accept="image/*" class="img-fluid"
                                    onchange="previewImage('idfront', 'idfront-preview')">
                            </div>

                            <div class="form_group kyc_ kyc_dl ">
                                <h6>Back</h6>
                                <label for="idback">
                                    <i class="fa-solid fa-plus"></i>
                                    <img src="assets/images/blank.png" alt="" class="img-fluid demo_image"
                                        id="idback-preview">
                                </label>
                                <input type="file" hidden id="idback" accept="image/*" class="img-fluid"
                                    onchange="previewImage('idback', 'idback-preview')">
                            </div>
                            <button type="submit" class="btn-action style-1 border-0 py-2 w-100">Upload</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Passport modal  -->
        <div class="modal fade" id="passport_mdal" tabindex="-1" aria-labelledby="passport_mdalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content rounded-0">
                    <div class="modal-header py-0">
                        <div class="w-10"></div>
                        <h5 class="modal-title fs-6" id="passport_mdalLabel">Passport</h5>
                        <div data-bs-theme="dark">
                            <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                aria-label="Close">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="modal-body">
                        <form action="" class="kyc_form">
                            <div class="form_group kyc_ kyc_dl ">
                                <label for="pp">
                                    <i class="fa-solid fa-plus"></i>
                                    <img src="assets/images/blank.png" alt="" class="img-fluid demo_image"
                                        id="pp-preview">
                                </label>
                                <input type="file" id="pp" hidden accept="image/*" class="img-fluid"
                                    onchange="previewImage('pp', 'pp-preview')">
                            </div>
                            <button type="submit" class="btn-action style-1 border-0 py-2 w-100">Upload</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Dl modal  -->
        <div class="modal fade" id="dl_mdal" tabindex="-1" aria-labelledby="dl_mdalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content rounded-0">
                    <div class="modal-header py-0">
                        <div class="w-10"></div>
                        <h5 class="modal-title fs-6" id="dl_mdalLabel">Driver's License</h5>
                        <div data-bs-theme="dark">
                            <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                aria-label="Close">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="modal-body">
                        <form action="" class="kyc_form ">
                            <div class="form_group kyc_ kyc_dl text-center">
                                <h6>Front</h6>
                                <label for="dlfront">
                                    <i class="fa-solid fa-plus"></i>
                                    <img src="assets/images/blank.png" alt="" class="img-fluid demo_image"
                                        id="dlfront-preview">
                                </label>
                                <input type="file" id="dlfront" hidden accept="image/*" class="img-fluid"
                                    onchange="previewImage('dlfront', 'dlfront-preview')">

                            </div>
                            <div class="form_group kyc_ kyc_dl text-center">
                                <h6>Back</h6>
                                <label for="dlback">
                                    <i class="fa-solid fa-plus"></i>
                                    <img src="assets/images/blank.png" alt="" class="img-fluid demo_image"
                                        id="dlback-preview">
                                </label>
                                <input type="file" id="dlback" hidden accept="image/*" class="img-fluid"
                                    onchange="previewImage('dlback', 'dlback-preview')">

                            </div>
                            <button type="submit" class="btn-action style-1 border-0 py-2 w-100">Upload</button>
                        </form>
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
</script>