<template>
  <div class="contentOfThePage caps1Side">
    <h5 class="text-left boldThese">CAPSTONE 1</h5>

    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase">{{ GenCapData.title }}</h5>
      <hr class="toTop" />
      <p class="toTopp boldThese">TITLE</p>
    </div>

    <img class="backSize" src="/images/backPre.png" @click="onVBack()" alt="Student" />

    <div class="">
      <p class="toTopp boldThese text-uppercase centerDocuTitle">
        MOU between Advisee and adviser
      </p>
      <iframe
        class="centerDocu"
        width="800"
        height="800"
        :src="GenCadocu123.mou"
      ></iframe>
    </div>
  </div>
</template>

<script setup>
import router from "../../../../routers/studentRouter";
import { onMounted } from "vue";
import { ref } from "vue";

let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
});
let GenCadocu123 = ref({
  mou: "",
});

onMounted(async () => {
  getsingleUser();
  getcaps123();
});
const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};

const getsingleUser = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone/" + capstoneid);
  GenCapData.value = response.data.capstones;
};

const getcaps123 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps123/" + capstoneid);
  GenCadocu123.value = response.data.capstonee1;

  console.warn("Caps", GenCadocu123.value);
};

const onVBack = () => {
  router.go(-1);
};
</script>

<style>
.centerDocu {
  padding: 0.1rem;
  background-color: #0062ff;
  border: 1px solid rgb(255, 0, 0);
  text-align: center;
  margin: auto;
  display: block;
}
.centerDocuTitle {
  padding: 0.1rem;
  text-align: center;
  margin: auto;
  display: block;
}
.backSize {
  height: 50px;
  width: 65px;
  padding-left: 10px;
}
</style>
