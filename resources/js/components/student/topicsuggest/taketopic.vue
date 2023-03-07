<template>
  <div class="contentOfThePage bg-light p-3">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase">{{ Topic.title }}</h5>
      <hr class="toTop" />
      <p class="toTopp boldThese">TITLE</p>
    </div>
    <h5 class="boldThese leftPlus">PROJECT DESCRIPTION</h5>
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

    <button
      type="button"
      class="m-1 btnSize btn btn-primary disable"
      @click="saveTopic()"
    >
      GET TOPIC
    </button>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../../routers/studentRouter";

let Topic = ref({
  title: "",
  abstract: "",
  client_name: "",
  client_location: "",
  client_company: "",
  created_at: "",
  xf1: "",
  uploader_id: "",
  status: "",
});
let caps = ref({
  ocr: "",
});

let GenCaps = ref({
  name: "",
  title: "",
  abstract: "",
  groupname: "",
  students1: "",
  students2: "",
  students3: "",
  students4: "",
  panels1: "",
  panels2: "",
  panels3: "",
  adviser: "",
  coAdviser: "",
  instructor: "",
  secretarys: "",
  xf1: "",
  xf2: "",
  start_date: "",
});

let data = ref({
  timestamp: "",
});

onMounted(async () => {
  getTopic();
  topicUploader();
  getNow();
});
const getNow = () => {
  const today = new Date();
  const date = today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
  const time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
  const dateTime = date + " " + time;
  return (data.value.timestamp = dateTime);
};

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

const rateddd = async () => {
  let response = await axios.get("/api/project_check");
  let checkdata = response.data.ans;

  if (checkdata != 0) {
    axios
      .post("/api/create_capstone_proj/" + checkdata)
      .then((response) => {
        router.push("/editcap/" + checkdata);
      })
      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "SOMETHING WRONG",
        });
      });
  } else {
    router.push("/noproject");
  }
};

const saveTopic = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_topic/" + capstoneid);
  Topic.value = response.data.topic;

  let responsee = await axios.get("/api/project_check");
  let checkdata = responsee.data.ans;

  if (Topic.value.status == "Available") {
    if (checkdata == 0) {
      const formData = new FormData();
      formData.append("title", Topic.value.title);
      formData.append("abstract", Topic.value.abstract);
      formData.append("groupname", "not set");

      formData.append("students1", 15);
      formData.append("students2", 15);
      formData.append("students3", 15);
      formData.append("students4", 15);

      formData.append("panels1", 16);
      formData.append("panels2", 16);
      formData.append("panels3", 16);

      formData.append("adviser", 16);
      formData.append("coAdviser", 16);

      formData.append("instructor", 16);

      formData.append("secretarys", 16);
      formData.append("xf1", "not set");
      formData.append("xf2", "UNDER DEVELOPMENT");
      formData.append("start_date", getNow());

      axios
        .post("/api/add_capstonetopic", formData)
        .then((response) => {
          const removeData = new FormData();
          removeData.append("texttext", ".");
          axios.post("/api/add_capstonee1", removeData).then((response) => {
            (Topic.value.title = ""), (Topic.value.abstract = "");

            const takeData = new FormData();
            takeData.append("status", "Taken");
            axios.post("/api/take_topic/" + capstoneid, takeData).then((response) => {
              router.push("/capslist");

              toast.fire({
                icon: "success",
                title: "Capstone Create Successfully",
              });
            });
          });
        })
        .catch(function (error) {
          console.log(error.response.data.errors);
          console.log("ERRRR:: ", error.response.data);

          toast.fire({
            icon: "warning",
            title: "Capstone Create Unsuccessful",
          });
        });
    } else {
      toast.fire({
        icon: "warning",
        title: "You have project already",
      });
    }
  } else {
    toast.fire({
      icon: "warning",
      title: "The Topic was already, Taken",
    });
  }
};
</script>

<style>
.leftPlus {
  margin-left: 10px !important;
}
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
