<template>
    <div>
        <center v-if="isLoggedIn">
            <div class="loading-indicator" v-if="loading" style="text-align: center">
                <Loader />
            </div>
        </center>

        <section class="banner-top style-2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-12">
                        <div class="banner-top__content">
                            <h2 class="title">Get a Lone to Mine, trade, and Swap on <span>OCN</span> .</h2>
                            <p class="desc">Outcome-centered products that reduce churn, optimize pricing, and grow your
                                subscription business end-to-end.</p>
                            <div class="button">
                                <nuxt-link to="/sign-up" class="btn-action style-2"><span>Get Loan</span></nuxt-link>
                            </div>

                            <ul class="content-list">
                                <li>
                                    <img src="/assets/images/icon1.png" alt="" class="img-fluid content_icon">
                                    <h5>+128K</h5>
                                    <p>Current Holders</p>
                                </li>
                                <li>
                                    <img src="/assets/images/icon2.png" alt="" class="img-fluid content_icon">
                                    <h5>+2 mILLION</h5>
                                    <p>CryptoItem</p>
                                </li>
                                <li>
                                    <img src="/assets/images/icon3.png" alt="" class="img-fluid content_icon">
                                    <h5>+3.000 USD</h5>
                                    <p>Total Volume</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-12">
                        <div class="banner-top__sale">
                            <img src="/assets/images/layout/banner01.png" class="img-fluid" alt="ICOLand">
                            <div class="sale-content">
                                <h6>Token sale End In!</h6>

                                <span class="js-countdown" data-timer="1865550"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- end Banner Top -->

        <!-- Section Features -->
        <section class="about style-2">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="about__content">
                            <div class="row">
                                <div class="col-xl-5 col-md-12">
                                    <div class="block-text">
                                        <h3 class="title">What is ICO?</h3>
                                        <p class="fs-20 mt-12">ICO Land is a generative NFT art collectible project of
                                            10.000 unique, digitally hand-drawn avatars immortalized on the Ethereum
                                            blockchain.</p>
                                    </div>
                                </div>
                                <div class="col-xl-7 col-md-12">
                                    <div class="tf-box">
                                        <div class="box-icon">
                                            <img src="/assets/images/icon4.png" alt="" class="img-fluid content_icon">
                                            <p>Buy and sell items easily</p>
                                        </div>
                                        <div class="box-icon">
                                            <img src="/assets/images/icon5.png" alt="" class="img-fluid content_icon">
                                            <p>Create collections & earn rewards</p>
                                        </div>
                                        <div class="box-icon">
                                            <img src="/assets/images/icon6.png" alt="" class="img-fluid content_icon">
                                            <p>Chase limited edition ICOLand</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Section Features -->

        <!-- Section Creation -->
        <section class="creation" id="creation">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="block-text center" data-aos="fade-up" data-aos-duration="1000">
                            <h3 class="title">Mining Rigs</h3>
                            <p class="desc">The most technologically advanced species will not stop any time soon...</p>
                        </div>
                        <div class="creation__main">
                            <div class="box-nft">
                                <span class="icon-union-01"></span>
                                <span class="icon-union-02"></span>
                                <span class="icon-union-03"></span>
                                <span class="icon-union-04"></span>
                                <div class="box-nft__main">
                                    <a data-bs-toggle="modal" data-bs-target="#dolphin" type="button"><img
                                            src="/assets/images/1.png" alt="ICOLand"></a>
                                    <div class="content">
                                        <a type="button" data-bs-toggle="modal" data-bs-target="#dolphin"
                                            class="h4 title">Dolphin Digger</a>
                                    </div>
                                </div>
                            </div>
                            <div class="box-nft">
                                <span class="icon-union-01"></span>
                                <span class="icon-union-02"></span>
                                <span class="icon-union-03"></span>
                                <span class="icon-union-04"></span>
                                <div class="box-nft__main">
                                    <a type="button" data-bs-toggle="modal" data-bs-target="#shark"><img
                                            src="/assets/images/2.png" alt="ICOLand"></a>
                                    <div class="content">
                                        <a type="button" data-bs-toggle="modal" data-bs-target="#shark"
                                            class="h4 title">Shark Driller</a>
                                    </div>
                                </div>
                            </div>
                            <div class="box-nft">
                                <span class="icon-union-01"></span>
                                <span class="icon-union-02"></span>
                                <span class="icon-union-03"></span>
                                <span class="icon-union-04"></span>
                                <div class="box-nft__main">
                                    <a type="button" data-bs-toggle="modal" data-bs-target="#orca"><img
                                            src="/assets/images/3.png" alt="ICOLand"></a>
                                    <div class="content">
                                        <a type="button" data-bs-toggle="modal" data-bs-target="#orca"
                                            class="h4 title">Orca Drillmaster</a>
                                    </div>
                                </div>
                            </div>
                            <div class="box-nft">
                                <span class="icon-union-01"></span>
                                <span class="icon-union-02"></span>
                                <span class="icon-union-03"></span>
                                <span class="icon-union-04"></span>
                                <div class="box-nft__main">
                                    <a type="button" data-bs-toggle="modal" data-bs-target="#whale"><img
                                            src="/assets/images/4.png" alt="ICOLand"></a>
                                    <div class="content">
                                        <a type="button" data-bs-toggle="modal" data-bs-target="#whale"
                                            class="h4 title">Whale Excavator</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Section Creation -->

        <!-- Section Document -->
        <section class="document style-1" id="document">
            <div class="container">
                <div class="row">
                    <div class="document__main">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="block-text center">
                                    <h3 class="heading">Document</h3>
                                    <p class="desc">Download the whitepaper and learn about ICO Token, the unique ICO
                                        Crypto approach and the team/advisors.</p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="document__content">
                                    <div class="box-document">
                                        <div class="content">
                                            <h4 class="title">About XYZ</h4>
                                            <a href="about-us.html" class="icon">
                                                <img src="/assets/images/icon/download.png" alt="ICOLand">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="box-document">
                                        <div class="content">
                                            <h4 class="title">WHITE PAPER</h4>
                                            <a href="white-paper.html" class="icon">
                                                <img src="/assets/images/icon/download.png" alt="ICOLand">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="box-document">
                                        <div class="content">
                                            <h4 class="title">PRIVACY POLICY</h4>
                                            <a href="privacy-policy.html" class="icon">
                                                <img src="/assets/images/icon/download.png" alt="ICOLand">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="box-document">
                                        <div class="content">
                                            <h4 class="title">TERM OF COIN SALES</h4>
                                            <a href="terms-coin-sale.html" class="icon">
                                                <img src="/assets/images/icon/download.png" alt="ICOLand">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Section Document -->

        <!-- Section Faq -->
        <section class="section-faq style-2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-12">
                        <div class="faq__content">
                            <div class="block-text">
                                <h3 class="heading">Have Any Question? </h3>
                                <p>Download the whitepaper and learn about ICO Token, the unique ICO Crypto approach and
                                    the team/advisors.</p>
                            </div>

                            <div class="flat-tabs">
                                <div class="content-tab">
                                    <div class="content-inner flat-accordion">
                                        <div class="flat-toggle">
                                            <h6 class="toggle-title">How can I track my order?</h6>
                                            <p class="toggle-content">We try to keep returns and exchanges as simple as
                                                possible. As long as they meet our criteria, it should be no problem at
                                                all to return or exchange them.</p>
                                        </div>
                                        <div class="flat-toggle active">
                                            <h6 class="toggle-title active">What is Shopi. return/exchange policy?</h6>
                                            <p class="toggle-content">We try to keep returns and exchanges as simple as
                                                possible. As long as they meet our criteria, it should be no problem at
                                                all to return or exchange them.</p>
                                        </div>
                                        <div class="flat-toggle">
                                            <h6 class="toggle-title">How can I track my order?</h6>
                                            <p class="toggle-content">We try to keep returns and exchanges as simple as
                                                possible. As long as they meet our criteria, it should be no problem at
                                                all to return or exchange them.</p>
                                        </div>
                                        <div class="flat-toggle">
                                            <h6 class="toggle-title">How can I track my order?</h6>
                                            <p class="toggle-content">We try to keep returns and exchanges as simple as
                                                possible. As long as they meet our criteria, it should be no problem at
                                                all to return or exchange them.</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-12">
                        <div class="faq__images">
                            <img src="/assets/images/layout/imgfaq.png" class="img-fluid" alt="ICOLand">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Section Faq -->
        <!-- Section Join -->
        <section class="join-now" id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="join-now__main">
                            <h3>Join our Community</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim sed pulvinar nisl amet,
                                viverra nulla ut. Aliquet nunc justo, bibendum nisl varius fringilla odio eu. Ut et,
                                nullam tristique at ultrices. Viverra eget ultrices risus risus massa adipiscing
                                adipiscing. Integer tempus aliquam vitae urna, ipsum mattis hendrerit quam.</p>
                            <div class="join-now__button">
                                <a href="#" class="btn-action style-2"><span>JOIN COMMUNITY</span></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Section Join -->


    </div>
</template>


<script setup>
import { ref, onMounted } from 'vue';
import axios from 'axios';
import DashboardSidebar from "~/layouts/DashboardSidebar.vue";
import DashboardHeader from "~/layouts/DashboardHeader.vue";
import { useRouter } from 'vue-router';
import Swal from "sweetalert2";
const router = useRouter();
const loading = ref(false);

const categoryData = ref([]);
const notifyMsg = ref("");
const mining_id = ref(null);

const fetchData = async () => {
    var args = { duration: 600 };
    $('.flat-toggle .toggle-title.active').siblings('.toggle-content').show();

    $('.flat-toggle.enable .toggle-title').on('click', function () {
        $(this).closest('.flat-toggle').find('.toggle-content').slideToggle(args);
        $(this).toggleClass('active');
    }); // toggle 

    $('.flat-accordion .toggle-title').on('click', function () {
        $('.flat-accordion .flat-toggle').removeClass('active');
        $(this).closest('.flat-toggle').toggleClass('active');

        if (!$(this).is('.active')) {
            $(this).closest('.flat-accordion').find('.toggle-title.active').toggleClass('active').next().slideToggle(args);
            $(this).toggleClass('active');
            $(this).next().slideToggle(args);
        } else {
            $(this).toggleClass('active');
            $(this).next().slideToggle(args);
            $('.flat-accordion .flat-toggle').removeClass('active');
        }
    }); // accordion

    //counter 
    if ($(document.body).hasClass("counter-scroll")) {
        var a = 0;
        $(window).scroll(function () {
            var oTop = $(".counter").offset().top - window.innerHeight;
            if (a == 0 && $(window).scrollTop() > oTop) {
                if ($().countTo) {
                    $(".counter")
                        .find(".number")
                        .each(function () {
                            var to = $(this).data("to"),
                                speed = $(this).data("speed");

                            $(this).countTo({
                                to: to,
                                speed: speed,
                            });
                        });
                }
                a = 1;
            }
        });
    }


    // Sidebar Toggle

    $('.btn').click(function () {
        $(this).toggleClass("click");
        $('.dashboard__sidebar').toggleClass("show");
        $('.dashboard').toggleClass("show");
    });
    $('.feat-btn').click(function () {
        $('nav ul .feat-show').toggleClass("show");
    });

    $('.sidebar__menu li').click(function () {
        $(this).addClass("active").siblings().removeClass("active");
    });

    $(function () {

        var url = window.location.pathname,
            urlRegExp = new RegExp(url.replace(/\/$/, '') + "$"); // create regexp to match current url pathname and remove trailing slash if present as it could collide with the link in navigation in case trailing slash wasn't present there
        // now grab every link from the navigation
        $('.sidebar__menu a').each(function () {
            // and test its normalized href against the url pathname regexp
            if (urlRegExp.test(this.href.replace(/\/$/, ''))) {
                $(this).addClass('active');
            }
        });

    });
    // End Sidebar Toggle



};

onMounted(() => {
    fetchData();

});

</script>

<style scoped>
.countdown {
    font-size: 24px;
    margin-top: 20px;
}

button {
    margin-top: 20px;
    padding: 10px 20px;
    font-size: 16px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.custom-btn {
    background-color: #29529e;
    /* Custom background color */
    color: white;
    /* Custom text color */
}

.custom-btn:hover {
    background-color: #29529e;
    /* Custom hover color */
}

@media(max-width: 576px) {
    .resources-card canvas {
        height: 300px !important;
    }
}
</style>