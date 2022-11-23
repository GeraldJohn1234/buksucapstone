<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Auth\EmailVerificationPromptController;
use App\Http\Controllers\Auth\NewPasswordController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\Auth\VerifyEmailController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Route::middleware('guest')->group(function () {
    Route::get('register1', [RegisteredUserController::class, 'create'])
                ->name('register1');

    Route::post('register1', [RegisteredUserController::class, 'store']);

    Route::get('login1', [AuthenticatedSessionController::class, 'create'])
                ->name('login1');

    Route::post('login1', [AuthenticatedSessionController::class, 'store']);
    Auth::routes();

    Route::get('forgot-password1', [PasswordResetLinkController::class, 'create'])
                ->name('password1.request');

    Route::post('forgot-password1', [PasswordResetLinkController::class, 'store'])
                ->name('password1.email');

    Route::get('reset-password1/{token}', [NewPasswordController::class, 'create'])
                ->name('password1.reset');

    Route::post('reset-password1', [NewPasswordController::class, 'store'])
                ->name('password1.update');
});
Route::middleware('auth')->group(function () {
    Route::get('verify-email', [EmailVerificationPromptController::class, '__invoke'])
                ->name('verification.notice');

    Route::get('verify-email/{id}/{hash}', [VerifyEmailController::class, '__invoke'])
                ->middleware(['signed', 'throttle:6,1'])
                ->name('verification.verify');

    Route::post('email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
                ->middleware('throttle:6,1')
                ->name('verification1.send');

    Route::get('confirm-password', [ConfirmablePasswordController::class, 'show'])
                ->name('password1.confirm');

    Route::post('confirm-password', [ConfirmablePasswordController::class, 'store']);

    Route::post('logout', [AuthenticatedSessionController::class, 'destroy'])
                ->name('logout');
});
