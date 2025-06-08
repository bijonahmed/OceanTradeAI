<template>
    <div class="fixed-top">
        <header id="header_main" class="header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="header__body">
                            <div class="header__logo">
                                <nuxt-link to="/">
                                    <img src="/assets/images/logo.png" alt="" class="img-fluid">
                                </nuxt-link>
                            </div>
                            <div class="header__right">
                                <nav id="main-nav" class="main-nav ">
                                    <ul id="menu-primary-menu" class="menu">
                                        <li class="menu-item " v-if="isLoggedIn">
                                            <nuxt-link to="/dashboard/mining">Mining</nuxt-link>
                                        </li>
                                        <li class="menu-item " v-if="isLoggedIn">
                                            <nuxt-link to="/dashboard/trading">Trading</nuxt-link>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="group-button">
                                    <nuxt-link class="btn-action" to="/sign-in" v-if="!isLoggedIn">
                                        <span>LOGIN</span>
                                    </nuxt-link>


                                    <nuxt-link class="btn-action" to="/sign-up" v-if="!isLoggedIn">
                                        <span>Register</span>
                                    </nuxt-link>

                                    <a class="btn-action" href="#" v-if="isLoggedIn" @click="logout">
                                        <span>Logout</span>
                                    </a>
                                </div>
                                <div v-if="isLoggedIn" class="mobile-button"><span></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
</template>

<script setup>
import $ from 'jquery';
import { useUserStore } from '~~/stores/user'
import { storeToRefs } from 'pinia';
import { useCartStore } from '~~/stores/cart';
const userStore = useUserStore();
const { isLoggedIn } = storeToRefs(userStore)
const cartStore = useCartStore()


const userRoleIsAdmin = computed(() => userStore.role_id === 1);
const userStatusIsAdmin = computed(() => userStore.status === 1);

const headerFixed = () => {
    var nav = $('#header_main');
    if (nav.length) {
        var offsetTop = nav.offset().top;
        var injectSpace = $('<div />').insertAfter(nav);

        $(window).on('load scroll', function () {
            if ($(window).scrollTop() > 200) {
                nav.addClass('is-fixed');
                injectSpace.show();
            } else {
                nav.removeClass('is-fixed');
                injectSpace.hide();
            }

            if ($(window).scrollTop() > 400) {
                nav.addClass('is-small');
            } else {
                nav.removeClass('is-small');
            }
        });
    }
};
const mobileNav = () => {
    $(document).on("click", ".mobile-button", function () {
        console.log("Mobile button clicked");
        $(this).toggleClass("active");
        $("#main-nav-mobi").slideToggle();
    });

    $(document).on("click", ".mobile-button", function () {
        $(this).toggleClass("active");
        $("#main-nav-mobi").slideToggle();
    });
    $(document).on("click", ".mobile-button-style2", function () {
        $(this).toggleClass("active");
        $("#main-nav-mobi").slideToggle();
    });
    $(document).on("click", "#main-nav-mobi .arrow", function () {
        $(this).toggleClass("active").next().slideToggle();
    });
    chkResponsive();
    
};

const chkResponsive=()=>{
    

    var mobile = window.matchMedia("(max-width: 1024px)");
    var wrapMenu = $(".header__right");
    var navExtw = $(".nav-extend.active");
    var navExt = $(".nav-extend.active").children();

    responsivemenu(mobile);

    mobile.addListener(responsivemenu);

    function responsivemenu(mobile) {
        if (mobile.matches) {
            $("#main-nav")
                .attr("id", "main-nav-mobi")
                // .appendTo("#header_main")
                .hide()
                .children(".menu")
                .append(navExt)
                .find("li:has(ul)")
                .children("ul")
                .removeAttr("style")
                .hide()
                .before('<span class="arrow"></span>');
        } else {
            $("#main-nav-mobi")
                .attr("id", "main-nav")
                .removeAttr("style")
                .prependTo(".header__right")
                .find(".ext")
                .appendTo(navExtw)
                .parent()
                .siblings("#main-nav")
                .find(".sub-menu")
                .removeAttr("style")
                .prev()
                .remove();

            $(".mobile-button").removeClass("active");
            $(".mobile-button-style2").removeClass("active");
            $(".sub-menu").addClass("d-block");
        }
    }

}


// Run the headerFixed function when the component is mounted
onMounted(async () => {
    await nextTick(); // ✅ Works now
    // const cleanup = mobileNav();
    // onUnmounted(cleanup);
    chkResponsive();
    headerFixed();

});

computed(async () => {
    try {
        await userStore.getUser()
    } catch (error) { }
})
const logout = async () => {
    const router = useRouter(); // Get the router object
    try {
        await userStore.logout();
        localStorage.removeItem('token');
        router.push('/'); // Redirect to the root route
        return;
    } catch (error) {
        console.error(error);
    }
};
</script>
<style scoped>
.header__logo img {
    max-width: 250px;
    width: 100%;
    min-width: 120px;
    max-height: 55px;
}
</style>