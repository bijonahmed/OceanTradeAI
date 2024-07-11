<!DOCTYPE html>
<html>
<head>
    <title>Reset Password Notification</title>
</head>
<body>
<p>Hello,</p>
    <p>You are receiving this email because we received a password reset request for your account.</p>
    <p>Click the link below to reset your password:</p>
    <p>
       <a href="<?php echo e($baseUrl); ?>/<?php echo e($token); ?>">Reset Password</a>
    </p>
    <p>If you did not request a password reset, no further action is required.</p>
    <p>Regards,<br>OCN</p>
</body>
</html>
<?php /**PATH F:\Server\htdocs\OceanTradeAI\api\resources\views/emails/forgetPassword.blade.php ENDPATH**/ ?>