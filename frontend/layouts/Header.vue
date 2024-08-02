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
                            <nav id="main-nav" class="main-nav  d-none d-xl-block">
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
                            <!-- <div class="mobile-button"><span></span></div> -->
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
.header__logo img{
  max-width: 250px;
  width: 100%;
  min-width: 120px;  
  max-height: 55px;
}
</style>