<template>
    <div>
        <title>Welcome to OceanTradeAI</title>

        <body class="home-nft header-fixed" data-magic-cursor="show">
            <!-- MAGIC CURSOR -->
            <div class="mouse-cursor cursor-outer"></div>
            <div class="mouse-cursor cursor-inner"></div>
            <!-- /MAGIC CURSOR -->
            <!-- Header -->
            <Header />
            <!-- end Header -->
            <Child />

            <Footer />
            <!-- <a id="scroll-top"></a> -->

            <!-- orca Digger modal  -->
            <div class="modal fade" id="whale" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content rounded-0">
                        <div class="modal-header py-0">
                            <div class="w-10"> </div>
                            <h5 class="modal-title fs-6" id="dolphinLabel"></h5>
                            <div data-bs-theme="dark">
                                <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                    aria-label="Close"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="refer_members latest_buy text-start">
                                <h6>Configaration</h6>
                                <ul>
                                    <li>
                                        <strong>GPU:</strong>
                                        <strong>NVIDIA GeForce RTX 3090</strong>
                                    </li>
                                    <li>
                                        <strong>Hash Rate:</strong>
                                        <strong>Approximately 100-110 MH/s (Eth) </strong>
                                    </li>
                                    <li>
                                        <strong>CPU:</strong>
                                        <strong>AMD Ryzen 9 5950X</strong>
                                    </li>
                                    <li>
                                        <strong>RAM:</strong>
                                        <strong>64GB DDR4</strong>
                                    </li>
                                    <li>
                                        <strong>Storage:</strong>
                                        <strong>1TB NVMe SSD</strong>
                                    </li>
                                    <li>
                                        <strong>Power Supply:</strong>
                                        <strong>1600W</strong>
                                    </li>
                                    <li>
                                        <strong>Operating System</strong>
                                        <strong>HiveOS or EthOS (optimized for mining)</strong>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- orca Digger modal  -->
            <div class="modal fade" id="orca" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content rounded-0">
                        <div class="modal-header py-0">
                            <div class="w-10"> </div>
                            <h5 class="modal-title fs-6" id="dolphinLabel"></h5>
                            <div data-bs-theme="dark">
                                <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                    aria-label="Close"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="refer_members latest_buy text-start">
                                <h6>Configaration</h6>
                                <ul>
                                    <li>
                                        <strong>GPU:</strong>
                                        <strong>NVIDIA GeForce RTX 3080</strong>
                                    </li>
                                    <li>
                                        <strong>Hash Rate:</strong>
                                        <strong>Approximately 60-65 MH/s </strong>
                                    </li>
                                    <li>
                                        <strong>CPU:</strong>
                                        <strong>Intel Core i9-10900K</strong>
                                    </li>
                                    <li>
                                        <strong>RAM:</strong>
                                        <strong>32GB DDR4</strong>
                                    </li>
                                    <li>
                                        <strong>Storage:</strong>
                                        <strong>500GB NVMe SSD</strong>
                                    </li>
                                    <li>
                                        <strong>Power Supply:</strong>
                                        <strong>1000W</strong>
                                    </li>
                                    <li>
                                        <strong>Operating System</strong>
                                        <strong>Linux (Ubuntu)</strong>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Shark Digger modal  -->
            <div class="modal fade" id="shark" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content rounded-0">
                        <div class="modal-header py-0">
                            <div class="w-10"> </div>
                            <h5 class="modal-title fs-6" id="dolphinLabel"></h5>
                            <div data-bs-theme="dark">
                                <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                    aria-label="Close"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="refer_members latest_buy text-start">
                                <h6>Configaration</h6>
                                <ul>
                                    <li>
                                        <strong>GPU:</strong>
                                        <strong>NVIDIA GeForce GTX 1070</strong>
                                    </li>
                                    <li>
                                        <strong>Hash Rate:</strong>
                                        <strong>Approximately 30-35 MH/s</strong>
                                    </li>
                                    <li>
                                        <strong>CPU:</strong>
                                        <strong>Intel Core i7-8700K</strong>
                                    </li>
                                    <li>
                                        <strong>RAM:</strong>
                                        <strong>16GB DDR4</strong>
                                    </li>
                                    <li>
                                        <strong>Storage:</strong>
                                        <strong>240GB SSD</strong>
                                    </li>
                                    <li>
                                        <strong>Power Supply:</strong>
                                        <strong>750W</strong>
                                    </li>
                                    <li>
                                        <strong>Operating System</strong>
                                        <strong>Windows 11</strong>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Dolphin Digger modal  -->
            <div class="modal fade" id="dolphin" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content rounded-0">
                        <div class="modal-header py-0">
                            <div class="w-10"> </div>
                            <h5 class="modal-title fs-6" id="dolphinLabel"></h5>
                            <div data-bs-theme="dark">
                                <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                    aria-label="Close"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="refer_members latest_buy text-start">
                                <h6>Configaration</h6>
                                <ul>
                                    <li>
                                        <strong>GPU:</strong>
                                        <strong>NVIDIA GeForce GTX 1060</strong>
                                    </li>
                                    <li>
                                        <strong>Hash Rate:</strong>
                                        <strong>Approximately 20-25 MH/s</strong>
                                    </li>
                                    <li>
                                        <strong>CPU:</strong>
                                        <strong>Intel Core i5-8400</strong>
                                    </li>
                                    <li>
                                        <strong>RAM:</strong>
                                        <strong>8GB DDR4</strong>
                                    </li>
                                    <li>
                                        <strong>Storage:</strong>
                                        <strong>120GB SSD</strong>
                                    </li>
                                    <li>
                                        <strong>Power Supply:</strong>
                                        <strong>600W</strong>
                                    </li>
                                    <li>
                                        <strong>Operating System</strong>
                                        <strong>Windows 10</strong>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </body>

    </div>
</template>

<script setup>
import Child from '/pages/Child.vue'
import Header from "~/layouts/Header.vue";
import Footer from "~/layouts/Footer.vue";

</script>

<style>
.serv-item .text {
    color: #4e4e4e;
}

.serv-icon {
    display: flex;
    align-items: center;
    justify-content: center;
}

.serv-icon i {
    color: #1a6ca9;
    font-size: 28px;
}

body {
    overflow: auto !important;
}
</style>