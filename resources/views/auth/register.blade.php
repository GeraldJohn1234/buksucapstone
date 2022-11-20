<x-guest-layout>
    <x-auth-card>
        <x-slot name="logo">
            {{-- <a href="/">
                <x-application-logo class="w-20 h-20 fill-current text-gray-500" />
            </a> --}}
            
            {{-- <h2>Registration</h2> --}}
        </x-slot>

        <!-- Validation Errors -->
        <x-auth-validation-errors class="mb-4" :errors="$errors" />

        <form method="POST" action="{{ route('register1') }}">
            <img class=" fill-current imagesCenter" src="/images/buksu.png" alt="logo" />
            <h1 class=" text-center bold schoolName">BukSU Capstone Archiving Management System</h1>
            <br>
            @csrf

            <!-- Name -->
            <div>
                <x-label for="name" :value="__('First Name')" />

                <x-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus />
            </div>
            <div>
                <x-label for="mname" :value="__('Middle Initial')" />

                <x-input id="mname" class="block mt-1 w-full" type="text" name="mname" :value="old('mname')" required autofocus />
            </div>
            <div>
                <x-label for="lname" :value="__('Last Name')" />

                <x-input id="lname" class="block mt-1 w-full" type="text" name="lname" :value="old('lname')" required autofocus />
            </div>  
            <div>
                <x-label for="uid" :value="__('University I.D')" />

                <x-input id="uid" class="block mt-1 w-full" type="text" name="uid" :value="old('uid')" required autofocus />
            </div>  

            <!-- Email Address -->
            <div class="mt-4">
                <x-label for="email" :value="__('Email')" />

                <x-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-label for="password" :value="__('Password')" />

                <x-input id="password" class="block mt-1 w-full"
                                type="password"
                                name="password"
                                required autocomplete="new-password" />
            </div>

            <!-- Confirm Password -->
            <div class="mt-4">
                <x-label for="password_confirmation" :value="__('Confirm Password')" />

                <x-input id="password_confirmation" class="block mt-1 w-full"
                                type="password"
                                name="password_confirmation" required />
            </div>

            <div class="mt-4">
                <x-label for="role_id" value="{{ _('Register as:') }}"/>
                <select name="role_id" class="block mt-1 w-full border-gray-300 focus:border-indigo-300 focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm" id="">
                    <option value="student">Student</option>
                    {{-- <option value="archiver">Archiver</option> --}}
                    <option value="faculty">Faculty</option>
                </select>

            </div>

            <br>

            <div class="flex items-center justify-between mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login1') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-button class="ml-4 clorNE">
                    {{ __('Sign Up') }}
                </x-button>
            </div>
        </form>
    </x-auth-card>
</x-guest-layout>
