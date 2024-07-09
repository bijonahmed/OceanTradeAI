<template>
    <div class="dashboard show">
        <title>Affiliate</title>

        <DashboardSidebar />
        <div class="dashboard_main_content">
        <div class="dashboard__content">

            
          <DashboardHeader/>

            <div class="dashboard__main">
                <div class="affiliate_section">
                    <div class="top_affi_balance">
                        <h1><img src="assets/images/usdt.png" alt="" class="img-fluid">   1,249.03</h1>
                        <p>Total Referal Earnings</p>
                        <span>This month 18.98% </span>

                    </div>
                    <!-- refer link section start here  -->
                    <div class="refer_link">
                        <div class="link_header">
                            <div>
                                <h4>Refer Fiends & Earn</h4>
                                <p>Lorem ipsum dolor sit amet.</p>
                            </div>
                            <div class="refer_bonus">
                                <h6>20.00 USDT</h6>
                                <p>Bonus</p>
                            </div>
                        </div>
                        <div class="refer_body">
                            <label for="">Refer link</label>
                            <div class="input_bt_group">
                                <input type="text" disabled value="https://oceantradeai.com?ref=2342323" class="form-control">
                                <button class="btn_copy"><i class="far fa-copy"></i></button>
                            </div>

                            <label for="">Refer Code</label>
                            <div class="input_bt_group">
                                <input type="text"  disabled value="2342323" class="form-control">
                                <button class="btn_copy"><i class="far fa-copy"></i></button>
                            </div>
                        </div>
                    </div>
                    <!-- team members  -->
                    <div class="team_container">
                        <nuxt-link to="/dashboard/affiliateAllhistory">
                            <div class="team_box">
                                <h4>Total Members: </h4>
                                <h4>600</h4>
                                <p>36.00 USDT</p>
                            </div>
                        </nuxt-link>
                        <nuxt-link to="/dashboard/affiliate-level-history">
                            <div class="team_box">
                                <h4>Level 1:</h4>
                                <h4>200 </h4>
                                <p>12.00 USDT</p>
                            </div>                            
                        </nuxt-link>
                        <nuxt-link to="/dashboard/affiliate-level-history">
                            <div class="team_box">
                                <h4>Level 2:</h4>
                                <h4>200 </h4>
                                <p>12.00 USDT</p>
                            </div>                            
                        </nuxt-link>
                        <nuxt-link to="/dashboard/affiliate-level-history">
                            <div class="team_box">
                                <h4>Level 3:</h4>
                                <h4>200 </h4>
                                <p>12.00 USDT</p>
                            </div>                            
                        </nuxt-link>
                    </div>
                    <!--refere members list  -->
                    <div class="refer_members">
                        <h4>Reffered members list</h4>
                        <ul>
                            <li>
                                <div class="member_left">
                                    <p>1</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com </p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>2</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>3</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>4</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>5</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>6</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>7</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>8</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>9</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                            <li>
                                <div class="member_left">
                                    <p>10</p>
                                    <div class="member_desc">
                                        <img src="assets/images/avt/team-01.jpg" alt="" class="img-fluid">
                                        <div>
                                            <p>abc@mail.com</p>
                                            <span>MID 234234234</span>
                                        </div>
                                    </div>
                                </div>
                                <strong><span class="text-success">+923423</span>USDT</strong>
                            </li>
                        </ul>
                        
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