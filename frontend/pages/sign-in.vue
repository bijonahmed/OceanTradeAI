<template>
    <div>
        <title>Sign In</title>
        <section class="sign-in">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="sign-in__top center">
                            <nuxt-link to="/">
                                <img  src="/assets/images/logo.png" style="height: 60px;">
                            </nuxt-link>
                        </div>
                        <div class="sign-in__main">
                            <div class="top center">
                                <h3 class="title">Sign in</h3>
                                <p class="fs-17">With your ICO Account</p>
                            </div>

                            <form @submit.prevent="login()">
                                <center><span class="text-danger text-center">{{ errors.account }}</span></center>
                                <div class="form-group">
                                    <label>Email address <span>*</span> </label>
                                    <input type="email" class="form-control" placeholder="example@gmail.com"
                                        v-model="email">
                                    <span class="text-danger">{{ errors.email }}</span>

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password<span>*</span></label>
                                    <input type="password" class="form-control" placeholder="Password"
                                        v-model="password">
                                    <span class="text-danger">{{ errors.password }}</span>
                                </div>
                                <div class="form-check">
                                    <div class="left" style="height: 20px;">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                                    </div>
                                    <p class="mb-0"><nuxt-link to="/forget-password">Forgot Your Password?</nuxt-link></p>
                                </div>

                                <!-- chapcha  -->
                                <div class="input_group">
                                    <div class='CaptchaWrap'>
                                        <div id="CaptchaImageCode" class="CaptchaTxtField">
                                            <canvas id="CapCode" class="capcode" width="300" height="80"></canvas>
                                        </div>

                                        <div>
                                            <img src="/assets/images/refresh.webp" alt=""
                                                style="height:50px;width: 50px;" @click="createCaptcha" />
                                            <!-- <input type="button" class="ReloadBtn" @click="createCaptcha"> -->
                                        </div>

                                    </div>

                                    <input type="hidden" id="UserCaptchaCode" class="CaptchaTxtField form-control mt-2"
                                        placeholder='Enter Captcha - Case Sensitive' v-model="captchaInput"
                                        @input="validateCaptcha">

                                    <input type="text" class="CaptchaTxtField form-control mt-2"
                                        placeholder='Enter Captcha - Case Sensitive' v-model="userCapInput">

                                    <span id="WrongCaptchaError" class="error">{{ captchaError }}</span>
                                    <span class="text-danger">{{ errors.userCapInput }}</span>
                                </div>

                                <button type="submit " class="btn-action style-1" :disabled="loading"><span>Sign
                                        In</span>
                                    <span v-if="loading">&nbsp;Loading...</span>
                                </button>
                            </form>

                        </div>

                        <p class="bottom">Dont have an account? <nuxt-link to="/sign-up">Sign up</nuxt-link></p>
                    </div>
                </div>
            </div>
        </section>

    </div>

</template>

<script setup>
import axios from 'axios';
import {
    useUserStore
} from '~~/stores/user';

const userStore = useUserStore()
const router = useRouter()

definePageMeta({
    middleware: 'is-logged-in'
})

const loading = ref(false)
const email = ref('')
const password = ref('')
const errors = ref({ email: '', password: '' }); // Initialize error messages
const emailError = ref('');
const passwordError = ref('');

const captchaInput = ref('');
const userCapInput = ref('');
const account = ref('');
const captchaError = ref('');
const captchaValid = ref(false);

const passwordFieldType = ref('password');
const confirmPasswordFieldType = ref('password');

const togglePassword = (id) => {
    const inputField = document.querySelector(id);
    if (inputField.type === 'password') {
        inputField.type = 'text';
    } else {
        inputField.type = 'password';
    }
};

function createCaptcha() {
    const canvas = document.getElementById('CapCode');
    const context = canvas.getContext('2d');
    const captchaCode = generateCaptchaCode(6); // Change the length as needed

    context.clearRect(0, 0, canvas.width, canvas.height);
    context.font = '48px Arial';
    context.fillText(captchaCode, 10, 50);

    captchaInput.value = captchaCode;
}

function generateCaptchaCode(length) {
    const characters = '0123456789';
    let result = '';
    for (let i = 0; i < length; i++) {
        result += characters.charAt(Math.floor(Math.random() * characters.length));
    }
    return result;
}

function validateCaptcha() {

    if (captchaInput.value.toUpperCase() !== document.getElementById('UserCaptchaCode').value.toUpperCase()) {
        captchaError.value = 'Incorrect CAPTCHA code';
        captchaValid.value = false;
    } else {
        captchaError.value = '';
        captchaValid.value = true;
    }

}

async function login() {

    try {
        loading.value = true;
        // Your login logic here
        // Assuming you're making an API request to log in
        await userStore.login(email.value, password.value, captchaInput.value, userCapInput.value);
        const token = window.localStorage.getItem('token');
        //console.log("My token: " + token);
        if (token) {
            axios.defaults.headers.common['Authorization'] = 'Bearer ' + userStore.api_token;
        }
        router.push('/dashboard/mining')
    } catch (error) {
        loading.value = false;
        // If the request fails, display the error messages
        if (error.response && error.response.data.errors) {
            const responseErrors = error.response.data.errors;
            errors.value = {
                email: responseErrors.email ? responseErrors.email[0] : '',
                password: responseErrors.password ? responseErrors.password[0] : '',
                userCapInput: responseErrors.userCapInput ? responseErrors.userCapInput[0] : '',
                account: responseErrors.account ? responseErrors.account[0] : ''
            };
        } else {
            console.error('An error occurred while logging in:', error);
        }
    }
}

onMounted(() => {
    createCaptcha();
});

</script>

<style scoped>
.sign-in {
    padding: 10px 0;
    display: flex;
    align-items: center;
    justify-content: center;
}
.sign-in .sign-in__main {
	padding: 01px 10px;
}
</style>