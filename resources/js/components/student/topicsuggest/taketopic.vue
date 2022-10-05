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
    <!-- <P class="text-left boldThese">INFORMATION</P> -->
    <br />
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            <!-- {{ GenCapData.groupname }} -->
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">UPLOADER</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
          v-model="GenCapData.groupname"
        />
        <label class="ps-4" for="floatingInput">Group Name</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
          v-model="student1['name'+'mname']"

        />
        <label class="ps-4" for="floatingInput">Instructor</label> -->
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            <!-- {{ instructor.name }} {{ instructor.mname }} {{ instructor.lname }} -->
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">CLIENT</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            <!-- {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }} -->
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">DATE UPLOAD</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
         
        />
        <label class="ps-4" for="floatingInput">Adviser</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            <!-- {{ coAdviser.name }} {{ coAdviser.mname }} {{ coAdviser.lname }} -->
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">CLIENT COMPANY/LOCATION</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        
        />
        <label class="ps-4" for="floatingInput">Co-Adviser</label> -->
      </div>
    </div>

    <!-- <div class="row">
      <div class="col">
        <button type="button" class="m-1 btnSize btn btn-primary">Save</button>
      </div>
    </div> -->

    <br />
    <hr />

    <button type="button" class="m-1 btnSize btn btn-primary">GET TOPIC</button>
  </div>
</template>

<script setup>
import router from "../../../routers/studentRouter";
import { onMounted } from "vue";
import { ref } from "vue";

let abstractne =
  "eople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things mayeople are more into delivery vehicles like trucks carrying various things may";

let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
});
let student1 = ref({
  name: "",
  mname: "",
  lname: "",
});
let student2 = ref({
  name: "",
  mname: "",
  lname: "",
});
let student3 = ref({
  name: "",
  mname: "",
  lname: "",
});
let student4 = ref({
  name: "",
  mname: "",
  lname: "",
});
let panels1 = ref({
  name: "",
  mname: "",
  lname: "",
});
let panels2 = ref({
  name: "",
  mname: "",
  lname: "",
});
let panels3 = ref({
  name: "",
  mname: "",
  lname: "",
});
let adviser = ref({
  name: "",
  mname: "",
  lname: "",
});
let coAdviser = ref({
  name: "",
  mname: "",
  lname: "",
});
let instructor = ref({
  name: "",
  mname: "",
  lname: "",
});
let secretarys = ref({
  name: "",
  mname: "",
  lname: "",
});

onMounted(async () => {
  getsingleUser();
  getsingleUser1();
  getsingleUser2();
  getsingleUser3();
  getsingleUser11();
  getsingleUser4();
  getsingleUser5();
  getsingleUser6();
  getsingleUser7();
  getsingleUser8();
  getsingleUser9();
  getsingleUser10();
});

const getsingleUser = async () => {
  let response = await axios.get("/api/get_capstone/" + props.id);
  GenCapData.value = response.data.capstones;

  // GenCaps.value = response.data.userCaps;
  console.warn("Caps", GenCapData.value);
};

const getsingleUser1 = async () => {
  let response = await axios.get("/api/get_capstone_student1/" + props.id);
  student1.value = response.data.userCaps;
  console.warn("TRY", student1.value);
};
const getsingleUser2 = async () => {
  let response = await axios.get("/api/get_capstone_student2/" + props.id);
  student2.value = response.data.userCaps;
};

const getsingleUser3 = async () => {
  let response = await axios.get("/api/get_capstone_student3/" + props.id);
  student3.value = response.data.userCaps;
};
const getsingleUser11 = async () => {
  let response = await axios.get("/api/get_capstone_student4/" + props.id);
  student4.value = response.data.userCaps;
};

const getsingleUser4 = async () => {
  let response = await axios.get("/api/get_capstone_panels1/" + props.id);
  panels1.value = response.data.userCaps;
};
const getsingleUser5 = async () => {
  let response = await axios.get("/api/get_capstone_panels2/" + props.id);
  panels2.value = response.data.userCaps;
};
const getsingleUser6 = async () => {
  let response = await axios.get("/api/get_capstone_panels3/" + props.id);
  panels3.value = response.data.userCaps;
};
const getsingleUser7 = async () => {
  let response = await axios.get("/api/get_capstone_adviser/" + props.id);
  adviser.value = response.data.userCaps;
};
const getsingleUser8 = async () => {
  let response = await axios.get("/api/get_capstone_coAdviser/" + props.id);
  coAdviser.value = response.data.userCaps;
};
const getsingleUser9 = async () => {
  let response = await axios.get("/api/get_capstone_instructor/" + props.id);
  instructor.value = response.data.userCaps;
};
const getsingleUser10 = async () => {
  let response = await axios.get("/api/get_capstone_secretarys/" + props.id);
  secretarys.value = response.data.userCaps;
};

const props = defineProps({
  id: {
    type: String,
    default: "",
  },
});

const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};

const onView1 = () => {
  let id = getIDfromURL();
  router.push("/capstone1/" + id);
};
const onView2 = () => {
  let id = getIDfromURL();
  router.push("/capstone2/" + id);
};
const onView3 = () => {
  let id = getIDfromURL();
  router.push("/capstone3/" + id);
};

const viewOcr = () => {
  let id = getIDfromURL();
  router.push("/ocrdocuments/" + id);
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
