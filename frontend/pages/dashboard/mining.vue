<template>
    <div  class="dashboard show">
        <title>Mining</title>
            <DashboardSidebar/>
            <div class="dashboard_main_content">
                <div class="dashboard__content">
                    <DashboardHeader/>
                    <div class="dashboard__main">
                        <div class="banner">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xl-12 col-md-12">
                                        <ul class="content-list">
                                            <li>
                                                <h5>30 MILLION </h5>
                                                <p>Max Supply</p>
                                            </li>
                                            <li>
                                                <h5>+4.5 MILLION</h5>
                                                <p>Total Supply</p>
                                            </li>
                                            <li>
                                                <h5>+500000.00</h5>
                                                <p>Cerculating Supply</p>
                                            </li>
                                            <li>
                                                <h5>+500.000 </h5>
                                                <p>Market Cap.</p>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-12">
                                        <section class="slider_section">
                                            <div class="slider">
                                                <div class="slide-track">
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                    <div class="slide">
                                                        <h6> @user1 get ulkjalsdfas </h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                    <div class="col-xl-12 col-md-12">
                                        <div class="banner-top__sale">
                                            <div class=" mechine_container">
                                                <div class="mechine">
                                                    <h4>Dolphin Digger</h4>
                                                    <div class="img_machine">
                                                        <img src="/assets/images/1.png" alt="ICOLand">
                                                        <img src="/assets/images/mining.gif" alt=""
                                                            class="machine_ovelay">
                                                    </div>
                                                    <nuxt-link to="/dashboard/pricing"
                                                        class="btn-action disabled style-5 btn_boost">Mine</nuxt-link>
                                                    <nuxt-link to="/dashboard/pricing"
                                                        class="btn-action style-5 btn_boost">Buy</nuxt-link>
                                                </div>
                                                <div class="mechine">
                                                    <h4>Shark Driller</h4>
                                                    <div class="img_machine active">
                                                        <img src="/assets/images/2.png" alt="ICOLand">
                                                        <img src="/assets/images/mining.gif" alt=""
                                                            class="machine_ovelay">
                                                    </div>
                                                    <span class="sm_timer">
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Hour</p>
                                                        </strong>
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Minute</p>
                                                        </strong>
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Second</p>
                                                        </strong>
                                                    </span>
                                                    <button class="btn-action style-5 btn_boost" data-bs-toggle="modal"
                                                        data-bs-target="#boostModal">Boost</button>
                                                </div>
                                                <div class="mechine">
                                                    <h4>Orca Drillmaster</h4>
                                                    <div class="img_machine active">
                                                        <img src="/assets/images/3.png" alt="ICOLand">
                                                        <img src="/assets/images/mining.gif" alt=""
                                                            class="machine_ovelay">
                                                    </div>
                                                    <span class="sm_timer">
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Hour</p>
                                                        </strong>
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Minute</p>
                                                        </strong>
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Second</p>
                                                        </strong>
                                                    </span>
                                                    <button class="btn-action style-5 btn_boost" data-bs-toggle="modal"
                                                        data-bs-target="#boostModal">Boost</button>
                                                </div>
                                                <div class="mechine">
                                                    <h4>Whale Excavator</h4>
                                                    <div class="img_machine active">
                                                        <img src="/assets/images/4.png" alt="ICOLand">
                                                        <img src="/assets/images/mining.gif" alt=""
                                                            class="machine_ovelay">
                                                    </div>
                                                    <span class="sm_timer">
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Hour</p>
                                                        </strong>
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Minute</p>
                                                        </strong>
                                                        <strong>
                                                            <div class="t_box">
                                                                10
                                                            </div>
                                                            <p>Second</p>
                                                        </strong>
                                                    </span>
                                                    <button class="btn-action style-5 btn_boost" data-bs-toggle="modal"
                                                        data-bs-target="#boostModal">Boost</button>
                                                </div>
                                            </div>

                                            <div class="sale-content">
                                                <h5>Token sale End In!</h5>

                                                <span class="js-countdown" data-timer="1865550"></span>
                                            </div>

                                            <div class="group-button justify-content-center">
                                                <a href="#" type="button" class="btn-action style-5"
                                                    data-bs-toggle="offcanvas" data-bs-target="#buyToken"
                                                    aria-controls="buyToken"><span>Buy Tokens
                                                        now</span></a>
                                                <a href="#" class="btn-action-outline style-5"><span>White
                                                        paper</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ================== Boost modal ================  -->
            <div class="modal fade" id="boostModal" tabindex="-1" aria-labelledby="boostModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content rounded-0">
                        <div class="modal-header py-0">
                            <div class="w-10"> </div>
                            <h5 class="modal-title fs-6" id="boostModalLabel"></h5>
                            <div data-bs-theme="dark">
                                <button type="button" class="btn_close text-white" data-bs-dismiss="modal"
                                    aria-label="Close"><i class="fas fa-times"></i></button>
                            </div>
                        </div>
                        <div class="modal-body">
                            <div class="boost_form">
                                <div class="top_balance top">
                                    <p>Your shared balance</p>
                                    <h4 class="text-center"><img src="/assets/images/gold_coin.png" alt=""
                                            class="img-fluid img_g_coin"> 2500</h4>
                                </div>
                                <div class="top_balance">
                                    <p>Your USDT balance</p>
                                    <h4 class="text-center"><img src="/assets/images/usdt.png" alt=""
                                            class="img-fluid img_g_coin"> 2500</h4>
                                </div>
                                <form action="">
                                    <h5>Select mechine</h5>
                                    <div class="select_mechine">
                                        <div class="input_group  d-flex">
                                            <input type="radio" id="d_digger" name="machine" checked>
                                            <label for="d_digger">
                                                <img src="/assets/images/m1.png" alt="" class="img-fluid">
                                                <p>Dolphin Digger</p>
                                            </label>
                                        </div>
                                        <div class="input_group">
                                            <input type="radio" id="Shark" name="machine">
                                            <label for="Shark">
                                                <img src="/assets/images/m2.png" alt="" class="img-fluid">
                                                <p>Shark Driller</p>
                                            </label>
                                        </div>
                                        <div class="input_group">
                                            <input type="radio" id="Orca" name="machine">
                                            <label for="Orca">
                                                <img src="/assets/images/m3.png" alt="" class="img-fluid">
                                                <p>Orca Drillmaster</p>
                                            </label>
                                        </div>
                                        <div class="input_group">
                                            <input type="radio" id="Whale" name="machine">
                                            <label for="Whale">
                                                <img src="/assets/images/m4.png" alt="" class="img-fluid">
                                                <p>Whale Excavator</p>
                                            </label>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="boost_options">
                                <h5>Boosted</h5>
                                <button class="btn_boost_option" data-bs-toggle="offcanvas"
                                    data-bs-target="#mininge_confirm" aria-controls="mininge_confirm">
                                    <div class="m_btn_left">
                                        <img src="/assets/images/mining.png" alt="" class="img-fluid">
                                        <div>
                                            <h6>Mining</h6>
                                            <p> <img src="/assets/images/usdt.png" alt="" class="img-fluid">200 ||
                                                Level-1</p>
                                        </div>
                                    </div>
                                    <i class="fas fa-chevron-right"></i>
                                </button>
                                <button class="btn_boost_option" data-bs-toggle="offcanvas"
                                    data-bs-target="#bot_confirm" aria-controls="bot_confirm">
                                    <div class="m_btn_left">
                                        <img src="/assets/images/bot.png" alt="" class="img-fluid">
                                        <div>
                                            <h6>Bot</h6>
                                            <p><img src="/assets/images/usdt.png" alt="" class="img-fluid">200 || Level-1
                                            </p>
                                        </div>
                                    </div>
                                    <i class="fas fa-chevron-right"></i>
                                </button>
                            </div>



                        </div>
                    </div>
                </div>
            </div>

            <!-- mining offcanvas  -->
            <div class="offcanvas offcanvas-bottom " tabindex="-1" id="mininge_confirm"
                aria-labelledby="mininge_confirmLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
                    <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                            class="fas fa-times"></i></button>
                </div>
                <div class="offcanvas-body small">
                    <div class="confirmation_box">
                        <div class="row">
                            <div class="col-md-8 m-auto">
                                <div class="confirm_details">
                                    <img src="/assets/images/mining.png" alt="" class="img-fluid message_icon">
                                    <h4>Mining</h4>
                                    <p>Increase aniybt if Tap you can earn per one tap.</p>
                                    <p>+1 per tap for each level</p>
                                    <h6><img src="/assets/images/usdt.png" alt="" class="img-fluid">200</h6>
                                    <button class="btn-action style-1">Got it</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Bot offcanvas  -->
            <div class="offcanvas offcanvas-bottom " tabindex="-1" id="bot_confirm" aria-labelledby="bot_confirmLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
                    <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                            class="fas fa-times"></i></button>
                </div>
                <div class="offcanvas-body small">
                    <div class="confirmation_box">
                        <div class="row">
                            <div class="col-md-8 m-auto">
                                <div class="confirm_details">
                                    <img src="/assets/images/bot.png" alt="" class="img-fluid message_icon">
                                    <h4>Bot</h4>
                                    <p>Increase aniybt if Tap you can earn per one tap.</p>
                                    <p>+1 per tap for each level</p>
                                    <h6><img src="/assets/images/usdt.png" alt="" class="img-fluid">200</h6>
                                    <button class="btn-action style-1">Got it</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- buy token offcanvas  -->
            <div class="offcanvas offcanvas-bottom buy_popup " tabindex="-1" id="buyToken"
                aria-labelledby="buyTokenLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="mininge_confirmLabel"></h5>
                    <button type="button" class="btn_close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"><i
                            class="fas fa-times"></i></button>
                </div>
                <div class="offcanvas-body small">
                    <div class="confirmation_box">
                        <div class="row">
                            <div class="col-md-6 m-auto">
                                <div class="confirm_details">
                                    <div class="top_balance top">
                                        <p>Your USDT balance</p>
                                        <h4 class="text-center"><img src="/assets/images/usdt.png" alt=""
                                                class="img-fluid img_g_coin"> 2500</h4>
                                    </div>
                                    <form action="" class="but_token_form">
                                        <div class=" mb-2">
                                            <label for="">USDT <span>min purchase amount: 20 USDT</span> </label>
                                            <div class="input_group">
                                                <input type="text" class="form-control" value="20.00"
                                                    placeholder="00.00">
                                                <img src="/assets/images/usdt.png" alt="" class="img-fluid img_g_coin">
                                            </div>
                                        </div>
                                        <div class=" mb-3">
                                            <h6>You will get </h6>
                                            <div class="input_group">
                                                <input type="text" class="form-control" disabled placeholder="00.00"
                                                    value="10.00">
                                                <img src="/assets/images/gold_coin.png" alt="" class="img-fluid">
                                            </div>
                                        </div>
                                        <button class="btn-action style-1">Confirm</button>
                                        <p class="text-center my-2">The estimated value of your purchased Ocean (OCN)
                                            coin after the launch is estimated to be <strong> 125 USDT</strong>.</p>
                                    </form>
                                    <div class="refer_members latest_buy text-start">
                                        <h6>Latest purchase</h6>
                                        <ul>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                            <li>
                                                <strong>@user1 buy 100 OCN </strong>
                                            </li>
                                        </ul>

                                    </div>
                                </div>
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
</script>
 