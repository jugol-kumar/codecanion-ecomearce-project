<?php

// uesr and profile related all route will go there

use Illuminate\Support\Facades\Artisan;

Route::group(['middleware' => 'auth'], function () {

    Route::get('profile',
        [
            'as'   => 'user.profile',
            'uses' => 'Front\User\UserController@index',
            'middleware' => ['otpverification'],
        ]
    );

    Route::get('profile/logout',
        [
            'as'   => 'user.logout',
            'uses' => 'Front\User\UserController@logout',
        ]
    );

    Route::get('user-dashboard-data', 'Front\User\UserController@dashboardData')->middleware('otpverification');

    Route::get('profile/update',
        [
            'as'   => 'user.information',
            'uses' => 'Front\User\UserController@profileUpdate',
            'middleware' => ['otpverification'],
        ]
    );

    Route::get('profile/order',
        [
            'as'   => 'user.order',
            'uses' => 'Front\User\UserController@order',
            'middleware' => ['otpverification'],
        ]
    );

    Route::get('user-order-list',
        [
            'as'   => 'user-order-list',
            'uses' => 'Front\User\UserController@getUserOrder',
            'middleware' => ['otpverification'],
        ]
    );

    Route::get('user/order/{id}/details', 'Front\User\UserController@getUserOrderDetails')->middleware('otpverification');
    Route::get('user-order-details-pdf/{id}', 'Front\User\UserController@OrderDetailsPdf')->middleware('otpverification');

    Route::get('profile/change-password',
        [
            'as'   => 'user.change.password',
            'uses' => 'Front\User\UserController@passwordChange',
            'middleware' => ['otpverification'],
        ]
    );

    Route::post('profile/change-password',
        [
            'as'   => 'change.password.post',
            'uses' => 'Front\User\UserController@storeNewPassword',
            'middleware' => ['otpverification'],
        ]
    );

    Route::get('authenticate-user', 'Front\User\UserController@authenticateUser')->middleware('otpverification');;
    Route::post('update-profile', 'Front\User\UserController@storeUpdateProfile')->middleware('otpverification');;

    Route::get('my-coupon', 'Front\User\UserController@myCoupon')->name('my.coupon')->middleware('otpverification');;

});

Route::get('otp/enable/{code}', 'OTP\OTPController@enableOtp');
Route::get('otp/disable/{code}', 'OTP\OTPController@disableOtp');

Route::group(['middleware' => 'guest'], function () {
    Route::get('dev/test', 'Admin\AdminController@tester');
    Route::post('otp', 'OTP\OTPController@store')->name('send.otp');

    Route::post('user-password-email-reset-link', 'Front\User\UserController@sendEmailLink')->name('user-password-email-reset-link');
    Route::get('user/reset/{token?}', 'Front\User\UserController@viewUserResetPage');
    Route::post('user/reset/password', 'Front\User\UserController@storeResetPassword')->name('user.confirm.password');

    Route::get('/user/send/otp', [\App\Http\Controllers\Auth\SendOtpController::class, 'sendSingleOtp']);
});

Route::get('otp/submit/{phone}', 'OTP\OTPController@otpForm')->name('otp.form');
Route::post('otp/submit', 'OTP\OTPController@otpSubmitByUser')->name('submit.otp');
Route::get('/resend/otp/{phone}', 'OTP\OTPController@resend_otp_code')->name('resend.otp');


Route::get('/send/me', function (){
    return sendBulkOtpSms("8801723717933", "send me");
});
