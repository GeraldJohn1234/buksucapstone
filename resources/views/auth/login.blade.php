<x-guest-layout class="bgNEh">
    <x-auth-card class="loginStyle ">

        <x-slot name="logo">
       

        </x-slot>

        <!-- Session Status -->
        <x-auth-session-status class="mb-4 " :status="session('status')" />

        <!-- Validation Errors -->
        <x-auth-validation-errors class="mb-4" :errors="$errors" />

        <form method="POST" action="{{ route('login1') }}" class="fonTs ">
            <img class=" fill-current imagesCenter" src="/images/buksu.png" alt="logo" />
            <h5 class=" text-center bold schoolName">BukSU Capstone Archiving Management System</h5>
            <br>
            @csrf

            <!-- Email Address -->
            <div>
                <x-label for="email" :value="__('')" />

                <x-input id="email" class="block mt-1 w-full" type="email" placeholder="Email" name="email"
                    :value="old('email')" required autofocus />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-label for="password" :value="__('')" />

                <x-input id="password" class="block mt-1 w-full" type="password" placeholder="Password" name="password"
                    required autocomplete="current-password" />
            </div>

         
            <div class="flex items-center justify-between mt-4">
             
                @if (Route::has('password1.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900"
                        href="{{ route('password1.request') }}">
                        {{ __('Forgot your password?') }}

                    </a>
                @endif
            </div>
            <br>

            <div class="flex items-center justify-between mt-4">
                <p>Do not have an account?
                    <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('register1') }}">
                        {{ __(' Sign Up') }}
                    </a>
                </p>

                <x-button class="ml-3 clorNE">
                    {{ __('Log in') }}
                </x-button>
            </div>
        </form>

    </x-auth-card>
</x-guest-layout>
