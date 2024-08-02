<template>
    <!-- Footer -->
    <footer class="footer style-1">
        <div class="footer__top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-md-12 m-auto">
                        <div class="content-right px-0">
                            
                            <ul class="list-social justify-content-center">
                                <li><span class="icon-twitter"></span></li>
                                <li><span class="icon-facebook"></span></li>
                                <li><span class="icon-place"></span></li>
                                <li><span class="icon-youtobe"></span></li>
                                <li><span class="icon-tiktok"></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p class="text-center">© 2024. All rights reserved by <a href="index.html">XYZ</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->
    <a id="scroll-top"></a>
</template>

<script setup>
 onMounted(() => {
    $(window).scroll(function() {
            if ($(this).scrollTop() > 800) {
                $('#scroll-top').addClass('show');
            } else {
                $('#scroll-top').removeClass('show');
            }
        });

        $('#scroll-top').on('click', function () {
            $("html, body").animate({ scrollTop: 0 }, 200, 'easeInOutExpo');
            return false;
        });

});



</script>
