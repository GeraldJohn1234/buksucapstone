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
         
        </div>
        <div class="col contentOfThePage m-1 text-center position-relative minHeight">
          <p>Action Done Matrix for Capstone 1</p>
         
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
        <h5 class="pt-2 text-uppercase fw-bold">
          {{ GenCadocu123.xf2 }}
       
        </h5>
        <hr class="toTop" />
        <p class="toTopp">Rating status</p>
      </div>

    
      <button
        v-if="GenCadocu123.minutes1 != null && GenCadocu123.minutes1 != 'NULL'"
        type="button"
        class="m-1 btnSize btn btn-success fw-bold"
        @click.prevent="getMinutes3()"
      >
        VIEW
      </button>
      <button
        v-else
        type="button"
        class="m-1 btnSize btn btn-warning fw-bold"
        @click="warning()"
      >
        PENDING
      </button>
      <hr class="toTop" />
      <p class="toTopp text-center">Secretary Minutes</p>
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

     
    </div>
  </div>
</template>

<script setup>
import router from "../../../routers/studentRouter";
import { onMounted } from "vue";
import { ref } from "vue";

const getMinutes3 = async () => {
  let idd = getIDfromURL();
  let response = await axios.get("/api/checkproponent/" + idd);

  let authcheck = response.data;
  if (authcheck != 0) {
    window.open(
      "http://127.0.0.1:8000/pdfminutes1/" + GenCadocu123.value.minutes1,
      "_blank"
    );
  } else {
    toast.fire({
      icon: "warning",
      title: "You do not have permission for this study",
    });
  }
  
};

let instructorr = ref({
  name: null,
  mname: null,
  lname: null,
});

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
  minutes1: null,
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

let formcaps1 = ref({
  status: "",
  propose_date: null,
  xf4: "",
});
let checkk = ref({
  idds: 0,
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
  let response = await axios.get("/api/get_capstonee111/" + capstoneid);

  let nullneh;
  nullneh = response.data.capstone11111;
  if (nullneh != null) {
    formcaps1.value = response.data.capstone11111;
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
const getsingleUser7 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstone_adviser/" + capstoneid);
 

  let nullneh;
  nullneh = response.data.userCaps;
  if (nullneh != null) {
    adviser.value = response.data.userCaps;
  }
};

const panelrates1 = async () => {
  let capstoneid = getIDfromURL();
  let nullneh;
  let response = await axios.get("/api/get_rate_panel1/" + capstoneid);
  nullneh = response.data.panelrate1;
  if (nullneh != null) {
    ratee1.value = response.data.panelrate1;
  }
  
};
const panelrates2 = async () => {
  let capstoneid = getIDfromURL();
  let nullneh;
  let response = await axios.get("/api/get_rate_panel2/" + capstoneid);

  nullneh = response.data.panelrate2;
  if (nullneh != null) {
    ratee2.value = response.data.panelrate2;
  }

 
};

const panelrates3 = async () => {
  let capstoneid = getIDfromURL();
  let nullneh;
  let response = await axios.get("/api/get_rate_panel3/" + capstoneid);

  nullneh = response.data.panelrate3;
  if (nullneh != null) {
    ratee3.value = response.data.panelrate3;
  }


};

const getcaps123 = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps123/" + capstoneid);
  GenCadocu123.value = response.data.capstonee1;
  let intn = parseInt(GenCadocu123.value.xf3);
  let responsed = await axios.get("/api/get_edit_user/" + intn);
  instructorr.value = responsed.data.userrs;

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

const warning = () => {
  toast.fire({
    icon: "warning",
    title: "The Secretary did not upload yet!",
  });
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
