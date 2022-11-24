<template>
  <div class="row">
    <div class="contentOfThePage caps1Side col-8">
      <h5 class="text-left boldThese">CAPSTONE 1</h5>

      <div class="" id="titleSize">
        <h5 class="pt-2 text-uppercase boldThese">{{ GenCapData.title }}</h5>
        <hr class="toTop" />
        <p class="toTopp">Title</p>
      </div>
      <h5 class="text-left boldThese">PROJECT DESCRIPTION</h5>
      <div class="contentOfThePage">
        <p class="parag m-2">{{ GenCapData.abstract }}</p>
      </div>
      <!-- <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 200px"
          v-model="GenCapData.abstract"
        ></textarea>
        <label class="ps-4" for="floatingTextarea2">Abstract</label>
        <br />
      </div> -->
      <br />
      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Revised Manuscript of Chapter 1-3</p>
          <button
            v-if="
              GenCadocu123.revise_manuscript === null ||
              GenCadocu123.revise_manuscript === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="onView123()"
          >
            OPEN
          </button>
          <!-- v-else-if="GenCadocu123.revise_manuscript !== null" -->
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Action Done Matrix for Capstone 1</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="done()"
          >
            OPEN
          </button> -->
          <button
            v-if="
              GenCadocu123.action_done === null || GenCadocu123.action_done === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="done()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>MOU between Advisee and adviser</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="mou()"
          >
            OPEN
          </button> -->
          <button
            v-if="GenCadocu123.mou === null || GenCadocu123.mou === 'null'"
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="mou()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Capstone Project Title Proposal Form</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="proposalForm()"
          >
            OPEN
          </button> -->
          <button
            v-if="
              GenCadocu123.title_proposal_form === null ||
              GenCadocu123.title_proposal_form === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="proposalForm()"
          >
            OPEN
          </button>
        </div>
      </div>

      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Capstone Adviser Appointment Form</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="appForm()"
          >
            OPEN
          </button> -->
          <button
            v-if="
              GenCadocu123.adviser_appointmentform === null ||
              GenCadocu123.adviser_appointmentform === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="appForm()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Capstone Powerpoint Presentation</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ppt()"
          >
            OPEN
          </button> -->
          <button
            v-if="GenCadocu123.ppt === null || GenCadocu123.ppt === 'null'"
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="ppt()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Recorded Proposal Presentation</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="recordProposal()"
          >
            OPEN
          </button> -->
          <button
            v-if="
              GenCadocu123.recorded_proposal === null ||
              GenCadocu123.recorded_proposal === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="recordProposal()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Minutes of the Proposal Defense</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="minutes()"
          >
            OPEN
          </button> -->
          <button
            v-if="GenCadocu123.minutes === null || GenCadocu123.minutes === 'null'"
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="minutes()"
          >
            OPEN
          </button>
        </div>
      </div>

      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>File Containing the Screenshots of the gcash payment to the panel</p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ssPayment()"
          >
            OPEN
          </button> -->

          <button
            v-if="
              GenCadocu123.gcash_ss_file === null || GenCadocu123.gcash_ss_file === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="ssPayment()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>
            File Containing the Screenshot of the acceptance of the panel to the revision
            done to chapter 1-3
          </p>
          <!-- <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ssAccept()"
          >
            OPEN
          </button> -->
          <button
            v-if="
              GenCadocu123.acceptance_of_panel === null ||
              GenCadocu123.acceptance_of_panel === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="ssAccept()"
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
          <p class="fw-bold">{{ ratee1.total }} %</p>
          <br />
          <div v-if="ratee1.xf1 === 'PENDING'">
            <button class="btn btn-warning w-100 position-absolute bottom-0 start-0">
              {{ ratee1.xf1 }}
            </button>
          </div>
          <div v-else-if="ratee1.xf1 === 'APPROVED'">
            <button class="btn btn-success w-100 position-absolute bottom-0 start-0">
              {{ ratee1.xf1 }}
            </button>
          </div>
          <div v-else>
            <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
              {{ ratee1.xf1 }}
            </button>
          </div>
        </div>

        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}
          </p>
          <p class="fw-bold">{{ ratee2.total }} %</p>
          <br />
          <div v-if="ratee2.xf1 === 'PENDING'">
            <button class="btn btn-warning w-100 position-absolute bottom-0 start-0">
              {{ ratee2.xf1 }}
            </button>
          </div>
          <div v-else-if="ratee2.xf1 === 'APPROVED'">
            <button class="btn btn-success w-100 position-absolute bottom-0 start-0">
              {{ ratee2.xf1 }}
            </button>
          </div>
          <div v-else>
            <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
              {{ ratee2.xf1 }}
            </button>
          </div>
          <!-- <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
            {{ ratee2.xf1 }}
          </button> -->
        </div>

        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}
          </p>
          <p class="fw-bold">{{ ratee3.total }} %</p>
          <br />
          <div v-if="ratee3.xf1 === 'PENDING'">
            <button class="btn btn-warning w-100 position-absolute bottom-0 start-0">
              {{ ratee3.xf1 }}
            </button>
          </div>
          <div v-else-if="ratee3.xf1 === 'APPROVED'">
            <button class="btn btn-success w-100 position-absolute bottom-0 start-0">
              {{ ratee3.xf1 }}
            </button>
          </div>
          <div v-else>
            <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
              {{ ratee3.xf1 }}
            </button>
          </div>
          <!-- <button class="btn w-100 btn-primary position-absolute bottom-0 start-0">
            {{ ratee3.xf1 }}
          </button> -->
        </div>
      </div>
      <div class="" id="titleSize">
        <h5 class="pt-2 text-uppercase fw-bold">
          {{ GenCadocu123.xf2 }}, {{ parseFloat(GenCadocu123.xf1).toFixed(2) }} %
        </h5>
        <hr class="toTop" />
        <p class="toTopp">Rating status</p>
      </div>

      <button class="btn btn-primary rateButton fw-bold" @click="rateddd()">RATE</button>
      <hr />
      <br />
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 boldThese text-uppercase">
            {{ GenCapData.groupname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp">Group Name</p>
        </div>
        <br />
        <div class="" id="titleSize">
          <p
            v-if="
              GenCadocu123.xf3 != null &&
              GenCadocu123.xf3 != '' &&
              GenCadocu123.xf3 != 'NOT YET, SET'
            "
            class="pt-2 boldThese text-uppercase"
          >
            {{ instructorr.name }} {{ instructorr.mname }} {{ instructorr.lname }}
          </p>
          <p v-else class="pt-2 boldThese text-uppercase">"Not set"</p>
          <hr class="toTop" />
          <p class="toTopp">Instructor</p>
        </div>

        <div class="" id="titleSize">
          <p class="pt-2 boldThese text-uppercase">
            {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp">Adviser</p>
        </div>
        <div class="" id="titleSize">
          <p class="pt-2 boldThese text-uppercase">
            {{ formcaps1.propose_date }}
            <!-- April 25, 2022 -->
          </p>
          <hr class="toTop" />
          <p class="toTopp">Date of Proposal Defense</p>
        </div>
      </div>
      <br /><br />

      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase boldThese">{{ formcaps1.status }}</p>
          <hr class="toTop" />
          <p class="toTopp">STATUS</p>
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
import router from "../../../routers/facultyRouter";
import { onMounted } from "vue";
import { ref } from "vue";
import Instructor from "../instructor.vue";

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

let instructorr = ref({
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
  xf3: "",
  revise_manuscript: "",
  action_done: "",
  mou: "",
  title_proposal_form: "",
  adviser_appointmentform: "",
  ppt: "",
  recorded_proposal: "",
  minutes: "",
  gcash_ss_file: "",
  acceptance_of_panel: "",
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

let formcaps1 = ref({
  status: "",
  propose_date: "",
});
let rated = ref({
  id: "",
});

onMounted(async () => {
  // getIsstructor1();

  getsingleUser();
  // Instructor();

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

const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};

// let instruct = ref({
//   name: "",
//   mname: "",
//   lname: "",
// });
// const getIsstructor1 = async () => {
//   let capstoneid = getIDfromURL();
//   let response = await axios.get("/api/get_capstone_instructor1/" + capstoneid);
//   instruct.value = response.data.instruct;
// };

const getsingleUser = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone/" + capstoneid);
  GenCapData.value = response.data.capstones;

  // GenCaps.value = response.data.userCaps;
  // console.warn("Caps", GenCapData.value);
};
const getCapston1Data = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee111/" + capstoneid);
  formcaps1.value = response.data.capstone11111;
  console.warn("CAPSTON 1", formcaps1.value);
};

const getsingleUser7 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_adviser/" + capstoneid);
  adviser.value = response.data.userCaps;
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
  let response = await axios.get("/api/get_rate_panel1/" + capstoneid);
  ratee1.value = response.data.panelrate1;
  // console.warn("111111111111111111", ratee1.value);
};
const panelrates2 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel2/" + capstoneid);
  ratee2.value = response.data.panelrate2;
  // console.warn("2222222222222222222", ratee2.value);
};

const panelrates3 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel3/" + capstoneid);
  ratee3.value = response.data.panelrate3;
  // console.warn("3333333333333333333", ratee3.value.xf1);
};

const getcaps123 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps123/" + capstoneid);
  GenCadocu123.value = response.data.capstonee1;

  let intn = parseInt(GenCadocu123.value.xf3);
  let responsed = await axios.get("/api/get_edit_user/" + intn);
  instructorr.value = responsed.data.userrs;
  // console.warn("INSTRUCTOR name", instructorr.value.name);
  // console.warn("5555555555555555555555", intn.toFixed(2));
  // console.warn("6666666666666666666", GenCadocu123);
};

const onView123 = () => {
  let id = getIDfromURL();
  router.push("/capsdocs/" + id);
};
const done = () => {
  let id = getIDfromURL();
  router.push("/actiondone/" + id);
};

const pending = () => {
  toast.fire({
    icon: "warning",
    title: "Student, did not submit yet!",
  });
};

const mou = () => {
  let id = getIDfromURL();
  router.push("/mou/" + id);
};
const proposalForm = () => {
  let id = getIDfromURL();
  router.push("/proposalform/" + id);
};
const appForm = () => {
  let id = getIDfromURL();
  router.push("/appform/" + id);
};
const ppt = () => {
  let id = getIDfromURL();
  router.push("/ppt/" + id);
};
const recordProposal = () => {
  let id = getIDfromURL();
  router.push("/recordproposal/" + id);
};
const minutes = () => {
  let id = getIDfromURL();
  router.push("/minutes/" + id);
};
const ssPayment = () => {
  let id = getIDfromURL();
  router.push("/ssfile/" + id);
};
const ssAccept = () => {
  let id = getIDfromURL();
  router.push("/ssacept/" + id);
};
const rateddd = async () => {
  let idd = getIDfromURL();
  let response = await axios.get("/api/panel_rate_check/" + idd);
  console.warn("XFFFFFFFFF22222222", GenCadocu123.value.xf2);
  // rated.value = response.data.userCaps;
  let idss = response.data;
  console.warn("IDDDDDDDDDD", idss);
  if (idss == 1) {
    axios
      .post("/api/create_rate/" + idd)
      .then((response) => {
        router.push("/rate/" + idd);
      })
      // router.push("/rate/" + idd);

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
.minHeight {
  min-height: 120px;
}
.rateButton {
  width: 96%;

  margin-left: 2%;
  margin-right: 2%;
}
.heightBox {
  height: 200px !important;
}

.panelH {
  height: 60px;
}
.parag {
  margin: 0;
  text-indent: 2rem;
  text-align: justify;
}
</style>