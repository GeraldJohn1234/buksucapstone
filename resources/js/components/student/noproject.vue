<template>
  <div>
    <div class="boxProfile text-center mx-auto d-block contentOfThePage p-5 m-5">
      <h1 class="fontE">NO PROJECT FOUND</h1>

      <router-link class="nav_link" to="/project">
        <button type="button" class="fontE btn btn-primary fw-bold">
          <i class="fa-regular fa-file-circle-plus">
            <font-awesome-icon
              icon="fa-solid fa-file-circle-plus"
              style="width: 100px; height: 100px"
            />
          </i>
          <h3>CREATE PROJECT</h3>
        </button>
      </router-link>
    </div>
  </div>
</template>

<script setup></script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Alkalami&display=swap");
.fontE {
  font-family: "Alkalami", serif;
  padding: 20px;
}
</style>
