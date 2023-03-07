<template>
  <div class="row">
    <div class="contentOfThePage caps1Side col-8">
      <h5 class="text-left boldThese">CAPSTONE 3</h5>

      <div class="" id="titleSize">
        <h5 class="pt-2 text-uppercase boldThese">{{ GenCapData.title }}</h5>
        <hr class="toTop" />
        <p class="toTopp">TITLE</p>
      </div>
      <h5 class="text-left boldThese">PROJECT DESCRIPTION</h5>
      <div class="contentOfThePage">
        <p class="parag m-2">{{ GenCapData.abstract }}</p>
      </div>
      <br />
      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Revised Manuscript of Chapter 1-5</p>

          <button
            v-if="GenCadocu123.final_docu === null || GenCadocu123.final_docu === 'null'"
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="onView3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Action Done Matrix for Capstone 3</p>

          <button
            v-if="
              GenCadocu123.proto_matrix === null || GenCadocu123.proto_matrix === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="done3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Minutes of the Proposal Defense</p>

          <button
            v-if="
              GenCadocu123.proto_minutes === null || GenCadocu123.proto_minutes === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="minutes3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Capstone 3 Powerpoint Presentation</p>

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
            v-if="
              GenCadocu123.software_demo === null || GenCadocu123.software_demo === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
            @click="recordProposal3()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Source code GitHub Link</p>

          <button
            v-if="GenCadocu123.githublink === null || GenCadocu123.githublink === 'null'"
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
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
            v-if="
              GenCadocu123.gcash_payment === null || GenCadocu123.gcash_payment === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
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
            v-if="
              GenCadocu123.acceptance_ss === null || GenCadocu123.acceptance_ss === 'null'
            "
            class="btn btn-warning w-100 position-absolute bottom-0 start-0"
            @click="pending()"
          >
            PENDING
          </button>
          <button
            v-else
            class="btn btn-success w-100 position-absolute bottom-0 start-0"
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
          <p
            v-if="panels1.name != null && panels1.mname != null && panels1.lname != null"
            class="text-uppercase panelH"
          >
            {{ panels1.name }} {{ panels1.mname }} {{ panels1.lname }}
          </p>
          <p v-else class="text-uppercase panelH text-danger">no data</p>
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
          <div v-else-if="ratee1.xf1 === 'PARTIAL'">
            <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
              {{ ratee1.xf1 }}
            </button>
          </div>
          <div v-else>
            <button class="btn btn-danger w-100 position-absolute bottom-0 start-0">
              NO DATA
            </button>
          </div>
        </div>

        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p
            v-if="panels2.name != null && panels2.mname != null && panels2.lname != null"
            class="text-uppercase panelH"
          >
            {{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}
          </p>
          <p v-else class="text-uppercase panelH text-danger">no data</p>

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
          <div v-else-if="ratee2.xf1 === 'PARTIAL'">
            <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
              {{ ratee2.xf1 }}
            </button>
          </div>

          <div v-else>
            <button class="btn btn-danger w-100 position-absolute bottom-0 start-0">
              NO DATA
            </button>
          </div>
        </div>

        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p
            v-if="panels3.name != null && panels3.mname != null && panels3.lname != null"
            class="text-uppercase panelH"
          >
            {{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}
          </p>
          <p v-else class="text-uppercase panelH text-danger">no data</p>

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
          <div v-else-if="ratee3.xf1 === 'PARTIAL'">
            <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
              {{ ratee3.xf1 }}
            </button>
          </div>
          <div v-else>
            <button class="btn btn-danger w-100 position-absolute bottom-0 start-0">
              NO DATA
            </button>
          </div>
        </div>
      </div>

      <div class="" id="titleSize">
        <p class="pt-2 text-uppercase boldThese">
          {{ GenCadocu123.xf2 }}, {{ GenCadocu123.xf1 }} %
        </p>
        <hr class="toTop" />
        <p class="toTopp">RATING STATUS</p>
      </div>
      <button
        v-if="
          panels1.name != null &&
          panels1.mname != null &&
          panels1.lname != null &&
          panels2.name != null &&
          panels2.mname != null &&
          panels2.lname != null &&
          panels3.name != null &&
          panels3.mname != null &&
          panels3.lname != null
        "
        class="btn btn-primary rateButton fw-bold"
        @click="rateddd()"
      >
        RATE
      </button>
      <button v-else class="btn btn-warning rateButton fw-bold" @click="unavailable()">
        RATE UNAVAILABLE!
      </button>
      <hr />
      <br />
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase boldThese">
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
          <p
            v-if="adviser.name != null && adviser.mname != null && adviser.lname != null"
            class="pt-2 boldThese text-uppercase"
          >
            {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}
          </p>
          <p v-else class="pt-2 boldThese text-uppercase">"Not set"</p>
          <hr class="toTop" />
          <p class="toTopp">Adviser</p>
        </div>

        <div class="" id="titleSize">
          <p v-if="formcaps3.final_date != null" class="pt-2 text-uppercase boldThese">
            {{ formcaps3.final_date }}
          </p>
          <p v-else class="pt-2 text-uppercase boldThese">NOT SET</p>
          <hr class="toTop" />
          <p class="toTopp">Final Defense Date</p>
        </div>
      </div>
      <br /><br />

      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase boldThese">{{ formcaps3.status }}</p>
          <hr class="toTop" />
          <p class="toTopp">STATUS</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import router from "../../../routers/administratorRouter";
import { onMounted } from "vue";
import { ref } from "vue";

let panels1 = ref({
  name: null,
  mname: null,
  lname: null,
});
let panels2 = ref({
  name: null,
  mname: null,
  lname: null,
});
let panels3 = ref({
  name: null,
  mname: null,
  lname: null,
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
  final_docu: "",
  proto_minutes: "",
  proto_matrix: "",
  ppt: "",
  software_demo: "",
  gcash_payment: "",
  acceptance_ss: "",
  githublink: "",
});

let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
});
let adviser = ref({
  name: null,
  mname: null,
  lname: null,
});
let instructor = ref({
  name: null,
  mname: null,
  lname: null,
});
let formcaps3 = ref({
  status: "",
  final_date: null,
});
let rated = ref({
  id: "",
});
let instructorr = ref({
  name: null,
  mname: null,
  lname: null,
});

onMounted(async () => {
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

const getsingleUser7 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_adviser/" + capstoneid);

  let nullneh;
  nullneh = response.data.userCaps;
  if (nullneh != null) {
    adviser.value = response.data.userCaps;
  }
};

const getsingleUser4 = async () => {
  let nullneh;
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_panels1/" + capstoneid);
  nullneh = response.data.userCaps;
  if (nullneh != null) {
    panels1.value = response.data.userCaps;
  }
};
const getsingleUser5 = async () => {
  let nullneh;
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_panels2/" + capstoneid);
  nullneh = response.data.userCaps;
  if (nullneh != null) {
    panels2.value = response.data.userCaps;
  }
};
const getsingleUser6 = async () => {
  let nullneh;
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_panels3/" + capstoneid);
  nullneh = response.data.userCaps;
  if (nullneh != null) {
    panels3.value = response.data.userCaps;
  }
};

const panelrates1 = async () => {
  let capstoneid = getIDfromURL();
  let nullneh;

  let response = await axios.get("/api/get_rate_panel13/" + capstoneid);
  nullneh = response.data.panelrate1;
  if (nullneh != null) {
    ratee1.value = response.data.panelrate1;
  }
};
const panelrates2 = async () => {
  let capstoneid = getIDfromURL();
  let nullneh;

  let response = await axios.get("/api/get_rate_panel23/" + capstoneid);
  nullneh = response.data.panelrate2;
  if (nullneh != null) {
    ratee2.value = response.data.panelrate2;
  }
};

const panelrates3 = async () => {
  let capstoneid = getIDfromURL();
  let nullneh;

  let response = await axios.get("/api/get_rate_panel33/" + capstoneid);
  nullneh = response.data.panelrate3;
  if (nullneh != null) {
    ratee3.value = response.data.panelrate3;
  }
};

const getcaps123 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee3/" + capstoneid);
  GenCadocu123.value = response.data.capstone33333;
  console.warn("12345678", GenCadocu123.value);
  let intn = parseInt(GenCadocu123.value.xf3);
  let responsed = await axios.get("/api/get_edit_user/" + intn);
  instructorr.value = responsed.data.userrs;
};

const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};

const getsingleUser = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone/" + capstoneid);
  GenCapData.value = response.data.capstones;
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
  router.push("/gitlink/" + id);
};
const unavailable = () => {
  toast.fire({
    icon: "warning",
    title: "Need three panelist for rating!",
  });
};
const rateddd = async () => {
  let idd = getIDfromURL();
  let response = await axios.get("/api/panel_rate_check/" + idd);
  console.warn("XFFFFFFFFF22222222", GenCadocu123.value.xf2);

  let idss = response.data;
  console.warn("IDDDDDDDDDD", idss);
  if (idss == 1) {
    axios
      .post("/api/create_rate/" + idd)
      .then((response) => {
        router.push("/rate/" + idd);
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
