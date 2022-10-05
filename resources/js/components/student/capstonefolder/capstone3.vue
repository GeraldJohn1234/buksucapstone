<template>
  <div class="row">
    <div class="contentOfThePage caps1Side col-8">
      <h5 class="text-left boldThese">CAPSTONE 1</h5>

      <div class="" id="titleSize">
        <h5 class="pt-2 text-uppercase">{{ GenCapData.title }}</h5>
        <hr class="toTop" />
        <p class="toTopp boldThese">TITLE</p>
      </div>
      <h5 class="text-left boldThese">PROJECT DESCRIPTION</h5>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 200px"
          v-model="GenCapData.abstract"
        ></textarea>
        <label class="ps-4" for="floatingTextarea2">Abstract</label>
        <br />
      </div>

      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Revised Manuscript of Chapter 1-5</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="onView3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Action Done Matrix for Capstone 3</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="done3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Minutes of the Proposal Defense</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="minutes3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Capstone 3 Powerpoint Presentation</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ppt3()"
          >
            OPEN
          </button>
        </div>
      </div>

      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Software Demo</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="recordProposal3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Source code GitHub Link</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="gitHub()"
          >
            OPEN
          </button>
        </div>
      </div>

      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>File Containing the Screenshots of the gcash payment to the panel</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ssPayment3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>
            File Containing the Screenshot of the acceptance of the panel to the revision
            done to chapter 1-5
          </p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ssAccept3()"
          >
            OPEN
          </button>
        </div>
      </div>
    </div>
    <div class="col contentOfThePage">
      <h5 class="text-left boldThese ml-2">PANELIST</h5>
      <div class="row m-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels1.name }} {{ panels1.mname }} {{ panels1.lname }}
          </p>
          <!-- <p class="fw-bold">{{ ratee1.total }} %</p> -->
          <br />
          <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
            {{ ratee1.xf1 }}
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}
          </p>
          <!-- <p class="fw-bold">{{ ratee2.total }} %</p> -->
          <br />
          <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
            {{ ratee2.xf1 }}
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}
          </p>
          <!-- <p class="fw-bold">{{ ratee3.total }} %</p> -->
          <br />
          <button class="btn w-100 btn-primary position-absolute bottom-0 start-0">
            {{ ratee3.xf1 }}
          </button>
        </div>
      </div>

      <div class="" id="titleSize">
        <p class="pt-2 text-uppercase fw-bold">
          {{ GenCadocu123.xf2 }}
          <!-- {{ GenCadocu123.xf1 }} % -->
        </p>
        <hr class="toTop" />
        <p class="toTopp boldThese">RATE STATUS</p>
      </div>
      <!-- <button class="btn btn-primary rateButton fw-bold" @click="rateddd()">RATE</button> -->
      <hr />
      <br />
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ GenCapData.groupname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Group Name</p>
        </div>
        <br />
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ instruct.name }} {{ instruct.mname }} {{ instruct.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Instructor</p>
        </div>
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Adviser</p>
        </div>
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ formcaps3.final_date }}
            <!-- April 25, 2022 -->
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Final Defense Date</p>
        </div>
      </div>
      <br /><br />

      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase boldThese">{{ formcaps3.status }}</p>
          <hr class="toTop" />
          <p class="toTopp boldThese">STATUS</p>
        </div>
      </div>

      <!-- <h5 class="text-left boldThese ml-2">STATUS</h5> -->

      <!-- <h5 class="text-left boldThese ml-2">RECOMMENDATION/COMMENTS/SUGGESTION</h5>
      <div class="form-floating col">
        <textarea
          class="form-control"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 700px"
        ></textarea>
        <label class="ps-4" for="floatingTextarea2">Comments Temp</label>
        <br />
      </div> -->
    </div>
  </div>
</template>

<script setup>
import router from "../../../routers/studentRouter";
import { onMounted } from "vue";
import { ref } from "vue";

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
let ratee1 = ref({
  total: 0,
  xf1: "",
});
let ratee2 = ref({
  total: 0,
  xf1: "",
});
let ratee3 = ref({
  total: 0,
  xf1: "",
});

let GenCadocu123 = ref({
  xf1: "",
  xf2: "",
});

let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
});
let adviser = ref({
  name: "",
  mname: "",
  lname: "",
});
let instructor = ref({
  name: "",
  mname: "",
  lname: "",
});
let formcaps3 = ref({
  status: "",
  final_date: "",
});
let rated = ref({
  id: "",
});

onMounted(async () => {
  getIsstructor1();
  getsingleUser();
  getsingleUser7();

  getCapston1Data();

  getsingleUser4();
  getsingleUser5();
  getsingleUser6();
  panelrates1();
  panelrates2();
  panelrates3();
  getcaps123();
});

let instruct = ref({
  name: "",
  mname: "",
  lname: "",
});
const getIsstructor1 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_instructor2/" + capstoneid);
  instruct.value = response.data.instruct;
};

const getsingleUser4 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_panels1/" + capstoneid);
  panels1.value = response.data.userCaps;
};
const getsingleUser5 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_panels2/" + capstoneid);
  panels2.value = response.data.userCaps;
};
const getsingleUser6 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_panels3/" + capstoneid);
  panels3.value = response.data.userCaps;
};

const panelrates1 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel13/" + capstoneid);
  ratee1.value = response.data.panelrate1;
  // console.warn("111111111111111111", ratee1.value);
};
const panelrates2 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel23/" + capstoneid);
  ratee2.value = response.data.panelrate2;
  // console.warn("2222222222222222222", ratee2.value);
};

const panelrates3 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel33/" + capstoneid);
  ratee3.value = response.data.panelrate3;
  // console.warn("3333333333333333333", ratee3.value.xf1);
};

const getcaps123 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee3/" + capstoneid);
  GenCadocu123.value = response.data.capstone33333;
  console.warn("12345678", GenCadocu123.value);
};

const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};

const getsingleUser = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone/" + capstoneid);
  GenCapData.value = response.data.capstones;

  // GenCaps.value = response.data.userCaps;
  // console.warn("Caps", GenCapData.value);
};

const getsingleUser7 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_adviser/" + capstoneid);
  adviser.value = response.data.userCaps;
};

const getCapston1Data = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee3/" + capstoneid);
  formcaps3.value = response.data.capstone33333;
  console.warn("CAPSTON 1", formcaps3.value);
};

const onView3 = () => {
  let id = getIDfromURL();
  router.push("/capsdocs3/" + id);
};
const done3 = () => {
  let id = getIDfromURL();
  router.push("/actiondone3/" + id);
};
const ppt3 = () => {
  let id = getIDfromURL();
  router.push("/ppt3/" + id);
};
const recordProposal3 = () => {
  let id = getIDfromURL();
  router.push("/recordproposal3/" + id);
};
const minutes3 = () => {
  let id = getIDfromURL();
  router.push("/minutes3/" + id);
};
const ssPayment3 = () => {
  let id = getIDfromURL();
  router.push("/ssfile3/" + id);
};
const ssAccept3 = () => {
  let id = getIDfromURL();
  router.push("/ssacept3/" + id);
};
const gitHub = () => {
  let id = getIDfromURL();
  router.push("/ssfile3/" + id);
};
const rateddd = async () => {
  let idd = getIDfromURL();
  let response = await axios.get("/api/panel_rate_check/" + idd);
  rated.value = response.data.userCaps;
  if (rated.value.id == 1) {
    axios
      .post("/api/create_rate/" + idd)
      .then((response) => {
        // router.push("/rate3/" + idd);
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
    toast.fire({
      icon: "warning",
      title: "Sorry, You're not one of the Panelist",
    });
  }
};
</script>
<style>
.caps1Content {
  width: 74%;
  height: 100%;
  display: inline-block;
}
.caps1Side {
  margin-right: 10px;
  margin-left: 10px;
}
</style>
