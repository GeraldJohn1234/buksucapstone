<template>
  <div class="contentOfThePage bg-light p-3">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase">{{ Topic.title }}</h5>
      <hr class="toTop" />
      <p class="toTopp boldThese">TITLE</p>
    </div>
    <h5 class="text-left boldThese">PROJECT DESCRIPTION</h5>
    <p class="contentOfThePage">{{ Topic.abstract }}</p>

    <br />
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ uploader.name }} {{ uploader.mname }}{{ uploader.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">UPLOADER</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">{{ Topic.client_name }}</p>
          <hr class="toTop" />
          <p class="toTopp boldThese">CLIENT</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">{{ Topic.created_at }}</p>
          <hr class="toTop" />
          <p class="toTopp boldThese">DATE UPLOAD</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">{{ Topic.client_company }}</p>
          <hr class="toTop" />
          <p class="toTopp boldThese">CLIENT COMPANY</p>
        </div>
      </div>
    </div>

    <br />
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../../routers/facultyRouter";

let Topic = ref({
  title: "",
  abstract: "",
  client_name: "",
  client_location: "",
  client_company: "",
  created_at: "",
  xf1: "",
  uploader_id: "",
});
onMounted(async () => {
  getTopic();
});

let uploader = ref({
  name: "",
  mname: "",
  lname: "",
});

const getTopic = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_topic/" + capstoneid);
  Topic.value = response.data.topic;

  let responsed = await axios.get("/api/get_capstone_topic/" + Topic.value.uploader_id);
  uploader.value = responsed.data.uploader;
};

const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};
const saveCaps = () => {
  let capstoneid = getIDfromURL();
  let response = axios.get("/api/get_topic/" + capstoneid);
  Topic.value = response.data.topic;

  toast.fire({
    icon: "warning",
    title: "DATA: " + Topic.value.title,
  });
};
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
