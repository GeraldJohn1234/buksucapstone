<template>
  <div class="contentOfThePage bg-light">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase">{{ Topic.title }}</h5>
      <hr class="toTop" />
      <p class="toTopp boldThese">TITLE</p>
    </div>
    <h5 class="text-left boldThese">PROJECT DESCRIPTION</h5>
    <p class="contentOfThePage">{{ Topic.abstract }}</p>
    <!-- <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 250px"
        v-model="abstractne"
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
    </div> -->

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
    <!-- <hr /> -->

    <!-- <button type="button" class="m-1 btnSize btn btn-primary disable">GET TOPIC</button> -->
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../../routers/administratorRouter";

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
  topicUploader();
});

let uploader = ref({
  name: "",
  mname: "",
  lname: "",
});
// const topicUploader = async () => {
//   let capstoneid = window.location.pathname.split("/")[2];
//   let response = await axios.get("/api/get_capstone_topic/" + capstoneid);
//   uploader.value = response.data.uploader;
//   // console.warn("UPLOADER:", uploader.value);
// };
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

  // const formData = new FormData();
  // formData.append("title", GenCaps.value.title);
  // formData.append("abstract", caps.value.ocr);
  // formData.append("groupname", GenCaps.value.groupname);

  // formData.append("students1", GenCaps.value.students1);
  // formData.append("students2", GenCaps.value.students2);
  // formData.append("students3", GenCaps.value.students3);
  // formData.append("students4", GenCaps.value.students4);

  // formData.append("panels1", GenCaps.value.panels1);
  // formData.append("panels2", GenCaps.value.panels2);
  // formData.append("panels3", GenCaps.value.panels3);

  // formData.append("adviser", GenCaps.value.adviser);
  // formData.append("coAdviser", GenCaps.value.coAdviser);

  // formData.append("instructor", GenCaps.value.instructor);

  // formData.append("secretarys", GenCaps.value.secretarys);
  // formData.append("xf1", GenCaps.value.xf1);
  // formData.append("xf2", GenCaps.value.xf2);
  // formData.append("start_date", GenCaps.value.start_date);

  // axios
  //   .post("/api/add_capstone", formData)
  //   .then((response) => {
  //     const removeData = new FormData();
  //     removeData.append("texttext", ".");
  //     axios
  //       .post("/api/add_capstonee1", removeData)

  //       .then((response) => {
  //         (GenCaps.value.title = ""),
  //           (caps.value.ocr = ""),
  //           (GenCaps.value.groupname = ""),
  //           (GenCaps.value.students1 = ""),
  //           (GenCaps.value.students2 = ""),
  //           (GenCaps.value.students3 = ""),
  //           (GenCaps.value.students4 = ""),
  //           (GenCaps.value.panels1 = ""),
  //           (GenCaps.value.panels2 = ""),
  //           (GenCaps.value.panels3 = ""),
  //           (GenCaps.value.adviser = ""),
  //           (GenCaps.value.coAdviser = ""),
  //           (GenCaps.value.instructor = ""),
  //           (GenCaps.value.secretarys = ""),
  //           (GenCaps.value.xf1 = ""),
  //           (GenCaps.value.xf2 = ""),
  //           (GenCaps.value.start_date = ""),
  //           router.push("/capslist");

  //         toast.fire({
  //           icon: "success",
  //           title: "Capstone Create Successfully",
  //         });
  //       });

  //     (GenCaps.value.title = ""),
  //       (caps.value.ocr = ""),
  //       (GenCaps.value.groupname = ""),
  //       (GenCaps.value.students1 = ""),
  //       (GenCaps.value.students2 = ""),
  //       (GenCaps.value.students3 = ""),
  //       (GenCaps.value.students4 = ""),
  //       (GenCaps.value.panels1 = ""),
  //       (GenCaps.value.panels2 = ""),
  //       (GenCaps.value.panels3 = ""),
  //       (GenCaps.value.adviser = ""),
  //       (GenCaps.value.coAdviser = ""),
  //       (GenCaps.value.instructor = ""),
  //       (GenCaps.value.secretarys = ""),
  //       (GenCaps.value.xf1 = ""),
  //       (GenCaps.value.xf2 = ""),
  //       (GenCaps.value.start_date = ""),
  //       router.push("/capslist");
  //   })
  //   .catch(function (error) {
  //     console.log(error.response.data.errors);
  //     console.log("ERRRR:: ", error.response.data);

  //     toast.fire({
  //       icon: "warning",
  //       title: "User Add Unsuccessful",
  //     });
  //   });
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
