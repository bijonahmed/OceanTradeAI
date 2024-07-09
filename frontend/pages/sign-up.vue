<template>
  <div>
    <title>Sign Up</title>
    <section class="sign-in sign-up">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="sign-in__top center">
              <nuxt-link to="/">
                <img id="site-logo" src="/assets/images/logo/logo-main.png" alt="Monteno" width="165" height="40"
                  data-retina="assets/images/logo/logo-main@x2.png" data-width="165" data-height="40">
              </nuxt-link>
            </div>
            <div class="sign-in__main">
              <div class="top center">
                <h3 class="title">Sign up</h3>
                <p class="fs-17">Create New ICOLand Account</p>
              </div>

              <form>
                <div class="form-group">
                  <label>Email address <span>*</span> </label>
                  <div class="input_bt_group">
                    <input type="text" placeholder="example@gmail.com" class="form-control">
                    <button class="btn_copy">Send code </button>
                  </div>

                </div>
                <div class="form-group">
                  <label for="code">OTP Code<span>*</span></label>
                  <input type="text" class="form-control" id="code" placeholder="OTP">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password<span>*</span></label>
                  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Confirm Password<span>*</span></label>
                  <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Confirm Password">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Invite code <span>*</span></label>
                  <input type="text" class="form-control" id="exampleInputPassword2" placeholder="Invite code">
                </div>
                <div class="form-check">
                  <div class="left" style="height: 20px;">
                    <input type="checkbox" checked class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">I agree to the <a href="#">Terms
                        of User</a></label>
                  </div>
                </div>
                <!-- chapcha  -->
                <div class="input_group">
                  <div class="CaptchaWrap">
                    <div id="CaptchaImageCode" class="CaptchaTxtField">
                      <canvas id="CapCode" class="capcode" width="500" height="80"></canvas>
                    </div>
                    <button type="button" class="ReloadBtn">
                      <img src="/assets/images/refresh.webp" alt="" />
                    </button>
                  </div>

                  <input type="hidden" id="UserCaptchaCode" class="CaptchaTxtField form-control mt-2"
                    placeholder="Enter Captcha - Case Sensitive" />

                  <input type="text" class="CaptchaTxtField form-control mt-2"
                    placeholder="Enter Captcha - Case Sensitive" v-model="userCapInput" />

                  <span id="WrongCaptchaError" class="error">WrongCaptchaError</span>
                </div>


                <button type="submit" class="btn-action style-1"><span>Sign Up</span> </button>
              </form>

            </div>

            <p class="bottom">Dont have an account? <nuxt-link to="/sign-in">Sign in</nuxt-link></p>
          </div>
        </div>
      </div>
    </section>
  </div>

</template>


<script setup>


</script>
