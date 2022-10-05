<template>
  <div class="row">
    <div class="contentOfThePage caps1Side col-8">
      <h5 class="text-left boldThese">CAPSTONE 2</h5>

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
      <hr />
      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Capstone Adviser Appointment Form</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="appForm()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Minutes of the Propotype Defense</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="minutes()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Action Done Matrix of Prototype Defense</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="done()"
          >
            OPEN
          </button>
        </div>
      </div>
      <br />

      <div class="row px-2">
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>System Demo Recorded Video/ Recording of the Live Demo during defense</p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="recordProposal()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>
            Capstone 2 File Containing the Screenshot of the gcash payment to the panel
          </p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
            @click="ssPayment()"
          >
            OPEN
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>
            File Containing the Screenshot of the acceptance of the panel to the revision
            done to the system
          </p>
          <button
            class="btn btn-primary w-100 position-absolute bottom-0 start-0"
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
          <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
            {{ ratee1.xf1 }}
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}
          </p>
          <p class="fw-bold">{{ ratee2.total }} %</p>
          <br />
          <button class="btn btn-primary w-100 position-absolute bottom-0 start-0">
            {{ ratee2.xf1 }}
          </button>
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p class="text-uppercase panelH">
            {{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}
          </p>
          <p class="fw-bold">{{ ratee3.total }} %</p>
          <br />
          <button class="btn w-100 btn-primary position-absolute bottom-0 start-0">
            {{ ratee3.xf1 }}
          </button>
        </div>
      </div>

      <div class="" id="titleSize">
        <p class="pt-2 text-uppercase">{{ GenCadocu123.xf2 }}: {{ GenCadocu123.xf1 }} %</p>
        <hr class="toTop" />
        <p class="toTopp boldThese">RATE STATUS</p>
      </div>

      <button class="btn btn-primary rateButton fw-bold" @click="rateddd()">RATE</button>
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
            Temporary
            <!-- {{ instructor.name }} {{ instructor.mname }} {{ instructor.lname }} -->
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
            {{ capstone2data.prototype_date }}
            <!-- April 25, 2022 -->
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Prototype defense Date</p>
        </div>
      </div>
      <br /><br />

      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase boldThese">{{ capstone2data.status }}</p>
          <hr class="toTop" />
          <p class="toTopp boldThese">STATUS</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import router from "../../../routers/facultyRouter";
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
let capstone2data = ref({
  status: "",
  prototype_date: "",
});
let rated = ref({
  id: "",
});

onMounted(async () => {
  getsingleUser();
  getsingleUser7();
  getsingleUser9();
  getCapston2Data();

  getsingleUser4();
  getsingleUser5();
  getsingleUser6();
  panelrates1();
  panelrates2();
  panelrates3();
  getcaps123();
});


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
  let response = await axios.get("/api/get_rate_panel12/" + capstoneid);
  ratee1.value = response.data.panelrate1;
  // console.warn("111111111111111111", ratee1.value);
};
const panelrates2 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel22/" + capstoneid);
  ratee2.value = response.data.panelrate2;
  // console.warn("2222222222222222222", ratee2.value);
};

const panelrates3 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_rate_panel32/" + capstoneid);
  ratee3.value = response.data.panelrate3;
  // console.warn("3333333333333333333", ratee3.value.xf1);
};

const getcaps123 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps2/" + capstoneid);
  GenCadocu123.value = response.data.capstonee2;
  // console.warn("3333333333333333333",  GenCadocu123.value);
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
const getsingleUser9 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_instructor/" + capstoneid);
  instructor.value = response.data.userCaps;
};
const getCapston2Data = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee2/" + capstoneid);
  capstone2data.value = response.data.capstone22222;
  console.warn("CAPSTON 2", capstone2data.value);
};

const done = () => {
  let id = getIDfromURL();
  router.push("/actiondone2/" + id);
};
const appForm = () => {
  let id = getIDfromURL();
  router.push("/appform2/" + id);
};
const recordProposal = () => {
  let id = getIDfromURL();
  router.push("/recordproposal2/" + id);
};
const minutes = () => {
  let id = getIDfromURL();
  router.push("/minutes2/" + id);
};
const ssPayment = () => {
  let id = getIDfromURL();
  router.push("/ssfile2/" + id);
};
const ssAccept = () => {
  let id = getIDfromURL();
  router.push("/ssacept2/" + id);
};
const rateddd = async () => {
  let idd = getIDfromURL();
  let response = await axios.get("/api/panel_rate_check/" + idd);
  rated.value = response.data.userCaps;
  if (rated.value.id == 1) {
    // router.push("/rate2/" + idd);

    axios
      .post("/api/create_rate/" + idd)
      .then((response) => {
        router.push("/rate2/" + idd);
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
