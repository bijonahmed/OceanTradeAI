<template>
    <div class="fixed-top">
     <header id="header_main" class="header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="header__body">
                        <div class="header__logo">
                            <nuxt-link to="/">
                                <h4>OceanTradeAI</h4>
                            </nuxt-link>
                        </div>
                        <div class="header__right">
                            <nav id="main-nav" class="main-nav">
                                <ul id="menu-primary-menu" class="menu">
                                    <li class="menu-item  ">
                                        <nuxt-link to="/dashboard/mining">Mining</nuxt-link>
                                    </li>
                                    <li class="menu-item ">
                                        <nuxt-link to="/dashboard/trading">Trading</nuxt-link>
                                    </li>
                                </ul>
                            </nav>
                            <div class="group-button">
                                <nuxt-link class="btn-action" to="/sign-in">
                                    <span>LOGIN</span>
                                </nuxt-link>
                                <nuxt-link class="btn-action" to="/sign-up">
                                    <span>Register</span>
                                </nuxt-link>
                            </div>
                            <div class="mobile-button"><span></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</div>
</template>

<script setup>
 


</script>