<x-guest-layout>
    <x-auth-card class="loginStyle">

        <x-slot name="logo">
            {{-- <a href="/">
                <x-application-logo class="w-20 h-20 fill-current text-gray-500" />
            </a> --}}
            {{-- <img class=" fill-current imagesCenter" src="/images/buksu.png" alt="logo" />
            <h1 class=" text-center schoolName">Bukidnon State University </h1> --}}

        </x-slot>

        <!-- Session Status -->
        <x-auth-session-status class="mb-4" :status="session('status')" />

        <!-- Validation Errors -->
        <x-auth-validation-errors class="mb-4" :errors="$errors" />

        <form method="POST" action="{{ route('login1') }}" class="fonTs">
            <img class=" fill-current imagesCenter" src="/images/buksu.png" alt="logo" />
            <h5 class=" text-center bold schoolName">Capstone Archiving Management System</h5>
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

            <!-- Remember Me -->
            <div class="flex items-center justify-between mt-4">
                <label for="remember_me" class="inline-flex items-center">
                    <input id="remember_me" type="checkbox"
                        class="rounded border-gray-300 text-indigo-600 shadow-sm focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                        name="remember">
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me?') }}</span>
                </label>

                {{-- @auth
                    {{ Auth::user()->name }} {{ Auth::user()->email }}
                @endauth --}}
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
