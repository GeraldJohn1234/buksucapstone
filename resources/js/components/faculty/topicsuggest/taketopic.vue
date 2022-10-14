<template>
  <div class="contentOfThePage bg-light">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase">DOUCUMENTS MANAGEMAENT SYSTEM</h5>
      <hr class="toTop" />
      <p class="toTopp boldThese">TITLE</p>
    </div>
    <h5 class="text-left boldThese">PROJECT DESCRIPTION</h5>
    <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 250px"
        v-model="abstractne"
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
    </div>

    <br />
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase"></p>
          <hr class="toTop" />
          <p class="toTopp boldThese">UPLOADER</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase"></p>
          <hr class="toTop" />
          <p class="toTopp boldThese">CLIENT</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase"></p>
          <hr class="toTop" />
          <p class="toTopp boldThese">DATE UPLOAD</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase"></p>
          <hr class="toTop" />
          <p class="toTopp boldThese">CLIENT COMPANY/LOCATION</p>
        </div>
      </div>
    </div>

    <br />
    <!-- <hr /> -->

    <!-- <button type="button" class="m-1 btnSize btn btn-primary disable">Update</button> -->
  </div>
</template>

<script setup>
import router from "../../../routers/administratorRouter";
import { onMounted } from "vue";
import { ref } from "vue";

let abstractne =
  "eople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things may";
</script>

<style>
.toTop {
  margin-top: -5px;
}
.toTopp {
  margin-top: -15px;
}
.btnSize {
  width: 100%;
}
.boldThese {
  font-weight: bolder;
}
#titleSize {
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  width: 80%;
}
.margin {
  margin-left: 0.1px;
  margin-right: 0.1px;
}
</style>
