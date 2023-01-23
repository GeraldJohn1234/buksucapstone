<template>
  <!-- class="modal bg-success contentOfThePage" -->
  <div v-if="modall.open" class="modalist contentOfThePage bg-light p-5">
    <button class="btn btn-danger float" @click="modall.open = false">X</button>
    <br />
    <h4 class="text-center text-uppercase fw-bold">Information Sharing Consent</h4>
    <br />
    <p class="parag">
      <span class="">We</span> the group
      <span class="text-uppercase fw-bold">{{ GenCapData.groupname }}</span> Proponents of
      <span class="text-uppercase fw-bold">{{ GenCapData.title }}</span> hereby give our
      permission for (Information Technology Department) to share our study including
      accessing the manuscript We understand that (Information Technology Department) may
      hold information gathered about our study and our rights under the Data Protection
      Act will not be affected.
    </p>
    <p>
      <span class="leftSpacess">&nbsp;We</span> understand that (Information Technology
      Department) may hold information gathered about our study and our rights under the
      Data Protection Act will not be affected.
    </p>
    <br />
    <h5 class="fw-bold">Statement of Consent:</h5>
    <p class="">
      <span class="fw-bold">• </span> <span class="leftSpaces"> We</span> understand that
      our capstone study information well be shared.
    </p>
    <p class="">
      <span class="fw-bold">• </span> <span class="leftSpaces"> We</span> have had the
      opportunity to discuss the implications of sharing or not sharing information about
      the study.
    </p>
    <hr />
    <!-- <br /> -->
    <div class="form-check">
      <input
        class="form-check-input"
        type="radio"
        name="flexRadioDefault"
        id="flexRadioDefault1"
        value="AGREE"
        v-model="GenCapData.name"
      />
      <label class="form-check-label fw-bold" for="flexRadioDefault1">
        <span class="leftSpacess">Agree</span>
      </label>
    </div>
    <div class="form-check">
      <input
        class="form-check-input"
        type="radio"
        name="flexRadioDefault"
        id="flexRadioDefault2"
        value="NOT_AGREE"
        v-model="GenCapData.name"
      />
      <label class="form-check-label fw-bold pt-1" for="flexRadioDefault2">
        <span class="leftSpacess">Disagree.</span>
      </label>
    </div>
    <br />
    <p>
      <span class="fw-bold"
        >Your consent to share your study information is entirely voluntary and you may
        withdraw your consent at any time.</span
      >
      If you wish to withdraw your consent, please re submit and change your choice.
    </p>
    <br />
    <button
      v-if="GenCapData.name === '' || GenCapData.name === null"
      class="btnSize btn btn-primary fw-bold"
      disabled
    >
      SUBMIT
    </button>
    <button v-else class="btnSize btn btn-primary fw-bold" @click="saveCapstone()">
      SUBMIT
    </button>
    <!-- <button @click="modall.open = false">Close</button> -->
    <!-- <button class="btn btn-primary" @click="modall.open = false">X</button> -->

    <br />
  </div>

  <div class="contentOfThePage" :class="modall">
    <h5 class="text-left boldThese">Title</h5>
    <div class="form-floating col">
      <textarea
        v-model="GenCapData.title"
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 100px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Title</label>
      <br />
    </div>

    <h5 class="text-left boldThese">Abstract</h5>
    <div class="form-floating col">
      <textarea
        v-model="GenCapData.abstract"
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 250px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
    </div>
    <P class="text-left boldThese">INFORMATION</P>
    <div class="row">
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Group Name</label>
        <textarea
          v-model="GenCapData.groupname"
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Groupname"
          required
        ></textarea>
      </div>
      <!-- <div class="col">
        <label for="instructor" class="form-label">Instructor</label>
        <label for="" class="float-end colorText"
          >{{ instructor.name }} {{ instructor.mname }} {{ instructor.lname }}</label
        >
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.instructor">
           
            <option selected>Open this select menu</option>
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div> -->
      <div class="col-3">
        <label for="lastname" class="form-label">Project Status</label>
        <div class="input-group mb-3">
          <select
            class="form-select inputColor"
            id="inputGroupSelect01"
            v-model="GenCapData.xf2"
          >
            <option selected disabled>Choose...</option>
            <option value="UNDER DEVELOPMENT">UNDER DEVELOPMENT</option>
            <option value="DEPLOYED">DEPLOYED</option>
            <option value="UNIMPLEMENTED">UNIMPLEMENTED</option>
          </select>
        </div>
      </div>

      <div class="col-3">
        <label for="lastname" class="form-label">Choose Year</label>
        <div class="input-group mb-3">
          <select
            class="form-select inputColor"
            v-model="GenCapData.xf1"
            id="inputGroupSelect01"
          >
            <option selected disabled>Choose...</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>
            <option value="5th year">5th year</option>
            <option value="Graduated">Graduated</option>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-3">
        <label for="adviser" class="form-label">Adviser</label>
        <label
          v-if="adviser.name != null && adviser.mname != null && adviser.lname != null"
          for=""
          class="float-end colorText"
          >{{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.adviser">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in advisers" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col-3">
        <label for="coAdviser" class="form-label">Co-Adviser</label>
        <label
          v-if="
            coAdviser.name != null && coAdviser.mname != null && coAdviser.lname != null
          "
          for=""
          class="float-end colorText"
          >{{ coAdviser.name }} {{ coAdviser.mname }} {{ coAdviser.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.coAdviser">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in advisers" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="form-group col-3">
        <label for="exampleFormControlTextarea1" id="">Client full name</label>
        <textarea
          v-model="GenCapData.xf4"
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Client full name"
          required
        ></textarea>
      </div>
      <div class="col-3">
        <label for="coAdviser" class="form-label">Manuscript (pdf only!)</label>
        <!-- <input type="file" id="" /> -->
        <div class="input-group mb-3 col-12 border border-primary">
          <input type="file" id="" accept=".pdf" class="" @change="onChange" />
          <!-- @change="updatePhoto" -->
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col">
        <label for="panel1" class="form-label">Panel 1</label>
        <label
          v-if="panels1.name != null && panels1.mname != null && panels1.lname != null"
          for=""
          class="float-end colorText"
          >{{ panels1.name }} {{ panels1.mname }} {{ panels1.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.panels1">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in panels" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="panel2" class="form-label">Panel 2</label>
        <label
          v-if="panels2.name != null && panels2.mname != null && panels2.lname != null"
          for=""
          class="float-end colorText"
          >{{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.panels2">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in panels" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="panel3" class="form-label">Panel 3</label>
        <label
          v-if="panels3.name != null && panels3.mname != null && panels3.lname != null"
          for=""
          class="float-end colorText"
          >{{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.panels3">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in panels" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="secretary" class="form-label">Secretary</label>
        <label
          v-if="
            secretary.name != null && secretary.mname != null && secretary.lname != null
          "
          for=""
          class="float-end colorText"
          >{{ secretary.name }} {{ secretary.mname }} {{ secretary.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.secretarys">
            <option v-for="item in secretarys" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <h5 class="boldThese">Proponents</h5>
    <div class="row">
      <div class="col">
        <label for="students" class="form-label">Proponet 1</label>
        <label
          v-if="student1.name != null && student1.mname != null && student1.lname != null"
          for=""
          class="float-end colorText"
          >{{ student1.name }} {{ student1.mname }} {{ student1.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.students1">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="students" class="form-label">Proponet 2</label>
        <label
          v-if="student2.name != null && student2.mname != null && student2.lname != null"
          for=""
          class="float-end colorText"
          >{{ student2.name }} {{ student2.mname }} {{ student2.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.students2">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="students" class="form-label">Proponet 3</label>
        <label
          v-if="student3.name != null && student3.mname != null && student3.lname != null"
          for=""
          class="float-end colorText"
          >{{ student3.name }} {{ student3.mname }} {{ student3.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.students3">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="students" class="form-label">Proponet 4{{ GenCaps.students4 }}</label>
        <label
          v-if="student4.name != null && student4.mname != null && student4.lname != null"
          for=""
          class="float-end colorText"
          >{{ student4.name }} {{ student4.mname }} {{ student4.lname }}</label
        >
        <label v-else for="" class="float-end colorText">no data</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.students4">
            <!-- <option selected disabled>Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <hr />

    <div class="row paddingSide mt-3">
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 1</label>
          <button type="button" class="m-1 btnSize btn btn-primary" @click="onView1()">
            VIEW
          </button>
        </div>

        <div class="col">
          <label for="update" class="m-2">Status: Under-revision</label>

          <button type="button" class="m-1 btnSize btn btn-primary" @click="onUpdate1()">
            UPDATE
          </button>
        </div>
      </div>
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 2</label>
          <button type="button" class="m-1 btnSize btn btn-primary" @click="onView2()">
            VIEW
          </button>
        </div>

        <div class="col">
          <label for="update" class="m-2">Status: Development</label>

          <button type="button" class="m-1 btnSize btn btn-primary" @click="onUpdate2()">
            UPDATE
          </button>
        </div>
      </div>
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 3</label>
          <button type="button" class="m-1 btnSize btn btn-primary" @click="onView3()">
            VIEW
          </button>
        </div>

        <div class="col">
          <label for="update" class="m-2">Status: Under-revision</label>

          <button type="button" class="m-1 btnSize btn btn-primary" @click="onUpdate3()">
            UPDATE
          </button>
        </div>
      </div>
    </div>
    <hr />

    <!-- <div class="row contentOfThePage mx-1">
      <label for="button" class="fw-bold"
        >For Uploading Documentation through OCR</label
      > -->
    <!-- <div class="row">
      <div class="col">
        <button
          type="button"
          class="m-1 btnSize btn btn-primary fw-bold"
          @click="onOCR()"
        >
          Uploading Documentation through Octical Character Recognition
        </button>
      </div>
    </div> -->

    <!-- </div> -->

    <div class="row">
      <div class="col">
        <button
          type="submit"
          class="m-1 btnSize btn btn-primary"
          @click="modall.open = true"
        >
          Save
        </button>
        <!-- <button class="btnSize btn btn-primary" >
          Open Modal
        </button> -->
      </div>
    </div>
  </div>
</template>

<script setup>
import router from "../../../routers/administratorRouter";
import axios from "axios";
import { onMounted, ref } from "vue";

let students = ref({});
let panels = ref({});
let advisers = ref({});
let instructors = ref({});
let secretarys = ref({});

// let modall = false;
let modall = ref({
  open: false,
});

let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
  xf1: "",
  xf2: "",
  xf4: "",
  xf5: null,
  file: null,
  name: "",
});
let student1 = ref({
  name: null,
  mname: null,
  lname: null,
});
let student2 = ref({
  name: null,
  mname: null,
  lname: null,
});
let student3 = ref({
  name: null,
  mname: null,
  lname: null,
});
let student4 = ref({
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
let adviser = ref({
  name: null,
  mname: null,
  lname: null,
});
let coAdviser = ref({
  name: null,
  mname: null,
  lname: null,
});
let instructor = ref({
  name: null,
  mname: null,
  lname: null,
});
let secretary = ref({
  name: null,
  mname: null,
  lname: null,
});

let caps1Instructor = ref({
  instructor: "",
});

let GenCaps = ref({
  // title: "",
  // abstract: "",
  // groupname: "",
  students1: null,
  students2: null,
  students3: null,
  students4: null,
  panels1: null,
  panels2: null,
  panels3: null,
  adviser: null,
  coAdviser: null,
  secretarys: null,
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
  getSecretary();
  getStudent();
  getPanel();
  getAdviser();
  getInstructor();
});
const onChange = (e) => {
  // let file = e.target.files[0];
  // let reader = new FileReader();
  // let limit = 1024 * 1024 * 20;
  // if (file["size"] > limit) {
  //   return false;
  // }
  console.log("Selected FILE: ", e.target.files[0]);
  // reader.onloadend = (file) => {
  // GenCapData.value.file = reader.result;
  GenCapData.value.file = e.target.files[0];
  // };
  // reader.readAsDataURL(file);
};

const gettIdfromURL = () => {
  return window.location.pathname.split("/")[2];
};
const props = defineProps({
  id: {
    type: String,
    default: "",
  },
});
const onOCR = (id) => {
  let capstoneid = gettIdfromURL();
  router.push("/ocrpages/" + capstoneid);
};
const saveCapstone = () => {
  // if(GenCapData.value.name==""||GenCapData.value.name==null){
  //   toast.fire({
  //     icon: "warning",
  //     title: "Please ",
  //   });
  // }
  let capstoneid = gettIdfromURL();
  // if (GenCapData.value.file != null) {
  const formData = new FormData();
  formData.append("title", GenCapData.value.title);
  formData.append("abstract", GenCapData.value.abstract);
  formData.append("groupname", GenCapData.value.groupname);
  formData.append("xf1", GenCapData.value.xf1);
  formData.append("xf2", GenCapData.value.xf2);
  formData.append("xf4", GenCapData.value.xf4);
  if (GenCapData.value.file != null) {
    formData.append("file", GenCapData.value.file);
  }
  if (GenCaps.value.students1 != null) {
    formData.append("students1", GenCaps.value.students1);
  } else {
    formData.append("students1", 10000000);
  }
  if (GenCaps.value.students2 != null) {
    formData.append("students2", GenCaps.value.students2);
  } else {
    formData.append("students2", 10000000);
  }
  if (GenCaps.value.students3 != null) {
    formData.append("students3", GenCaps.value.students3);
  } else {
    formData.append("students3", 10000000);
  }
  if (GenCaps.value.students4 != null) {
    formData.append("students4", GenCaps.value.students4);
  } else {
    formData.append("students4", 10000000);
  }

  if (GenCaps.value.panels1 != null) {
    formData.append("panels1", GenCaps.value.panels1);
  } else {
    formData.append("panels1", 10000000);
  }
  if (GenCaps.value.panels2 != null) {
    formData.append("panels2", GenCaps.value.panels2);
  } else {
    formData.append("panels2", 10000000);
  }
  if (GenCaps.value.panels3 != null) {
    formData.append("panels3", GenCaps.value.panels3);
  } else {
    formData.append("panels3", 10000000);
  }

  if (GenCaps.value.adviser != null) {
    formData.append("adviser", GenCaps.value.adviser);
  } else {
    formData.append("adviser", 10000000);
  }
  if (GenCaps.value.coAdviser != null) {
    formData.append("coAdviser", GenCaps.value.coAdviser);
  } else {
    formData.append("coAdviser", 10000000);
  }
  if (GenCaps.value.secretarys != null) {
    formData.append("secretarys", GenCaps.value.secretarys);
  } else {
    formData.append("secretarys", 10000000);
  }

  formData.append("name", GenCapData.value.name);
  axios
    .post("/api/update_capstone/" + capstoneid, formData)
    .then((response) => {
      (GenCapData.value.title = null),
        (GenCapData.value.abstract = null),
        (GenCapData.value.groupname = null),
        (GenCapData.value.xf1 = null),
        (GenCapData.value.xf2 = null),
        (GenCapData.value.file = null),
        (GenCapData.value.name = null),
        (GenCaps.value.students1 = null),
        (GenCaps.value.students2 = null),
        (GenCaps.value.students3 = null),
        (GenCaps.value.students4 = null),
        (GenCaps.value.panels1 = null),
        (GenCaps.value.panels2 = null),
        (GenCaps.value.panels3 = null),
        (GenCaps.value.adviser = null),
        (GenCaps.value.coAdviser = null),
        (GenCaps.value.secretarys = null),
        // (GenCaps.value.secretarys = null),
        router.push("/editcap/" + props.id);

      toast.fire({
        icon: "success",
        title: "Project save successfully",
      });
      location.reload();
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "Please fill all field, CHOOSE TEMPORARY IF NONE",
      });
    });
};

const getsingleUser = async () => {
  let response = await axios.get("/api/get_capstone/" + props.id);
  GenCapData.value = response.data.capstones;

  // GenCaps.value = response.data.userCaps;
  console.warn("Caps", GenCapData.value);
};

// const getsingleUser1 = async () => {
//   let response = await axios.get("/api/get_capstone_student1/" + props.id);
//   student1.value = response.data.userCaps;
//   console.warn("TRY", student1.value);
// };
// const getsingleUser2 = async () => {
//   let response = await axios.get("/api/get_capstone_student2/" + props.id);
//   student2.value = response.data.userCaps;
// };

// const getsingleUser3 = async () => {
//   let response = await axios.get("/api/get_capstone_student3/" + props.id);
//   student3.value = response.data.userCaps;
// };
// const getsingleUser11 = async () => {
//   let response = await axios.get("/api/get_capstone_student4/" + props.id);
//   student4.value = response.data.userCaps;
// };

// const getsingleUser4 = async () => {
//   let response = await axios.get("/api/get_capstone_panels1/" + props.id);
//   panels1.value = response.data.userCaps;
// };
// const getsingleUser5 = async () => {
//   let response = await axios.get("/api/get_capstone_panels2/" + props.id);
//   panels2.value = response.data.userCaps;
// };
// const getsingleUser6 = async () => {
//   let response = await axios.get("/api/get_capstone_panels3/" + props.id);
//   panels3.value = response.data.userCaps;
// };
// const getsingleUser7 = async () => {
//   let response = await axios.get("/api/get_capstone_adviser/" + props.id);
//   adviser.value = response.data.userCaps;
// };
// const getsingleUser8 = async () => {
//   let response = await axios.get("/api/get_capstone_coAdviser/" + props.id);
//   coAdviser.value = response.data.userCaps;
// };
// const getsingleUser9 = async () => {
//   let response = await axios.get("/api/get_capstone_instructor/" + props.id);
//   instructor.value = response.data.userCaps;
// };
// const getsingleUser10 = async () => {
//   let response = await axios.get("/api/get_capstone_secretarys/" + props.id);
//   secretary.value = response.data.userCaps;
// };
const getsingleUser1 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_student1/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    student1.value = response.data.userCaps;
  }

  // console.warn("TRY", student1.value);
};
const getsingleUser2 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_student2/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    student2.value = response.data.userCaps;
  }
};

const getsingleUser3 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_student3/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    student3.value = response.data.userCaps;
  }
};
const getsingleUser11 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_student4/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    student4.value = response.data.userCaps;
  }
};

const getsingleUser4 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_panels1/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    panels1.value = response.data.userCaps;
  }
};
const getsingleUser5 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_panels2/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    panels2.value = response.data.userCaps;
  }
};
const getsingleUser6 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_panels3/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    panels3.value = response.data.userCaps;
  }
};
const getsingleUser7 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_adviser/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    adviser.value = response.data.userCaps;
  }
};
const getsingleUser8 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_coAdviser/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    coAdviser.value = response.data.userCaps;
  }
};
const getsingleUser9 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_instructor/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    instructor.value = response.data.userCaps;
  }
};
const getsingleUser10 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_secretarys/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    secretary.value = response.data.userCaps;
  }
};

const getSecretary = async () => {
  let response = await axios.get("/api/get_all_secretary_user");
  secretarys.value = response.data.secretarys;
};

const getStudent = async () => {
  let response = await axios.get("/api/get_all_student_user");
  students.value = response.data.students;
};

const getPanel = async () => {
  let response = await axios.get("/api/get_all_panel_user");
  panels.value = response.data.panels;
};

const getAdviser = async () => {
  let response = await axios.get("/api/get_all_adviser_user");
  advisers.value = response.data.advisers;
};

const getInstructor = async () => {
  let response = await axios.get("/api/get_all_instructor_user");
  instructors.value = response.data.instructors;
};

const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};
// const onView1 = () => {
//   let id = getIDfromURL();
//   router.push("/capstone1/" + id);
// };

// const onView2 = () => {
//   let id = getIDfromURL();
//   router.push("/capstone2/" + id);
// };
// const onView3 = () => {
//   let id = getIDfromURL();
//   router.push("/capstone3/" + id);
// };
const onUpdate1 = () => {
  let id = getIDfromURL();
  router.push("/caps1edit/" + id);
};
const onUpdate2 = () => {
  let id = getIDfromURL();
  router.push("/caps2edit/" + id);
};
const onUpdate3 = () => {
  let id = getIDfromURL();
  router.push("/caps3edit/" + id);
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

// const onView1 = async () => {
//   let idd = getIDfromURL();
//   let response = await axios.get("/api/panel_rate_check/" + idd);
//   console.warn("TYTRTYTRYTRYTRY", GenCadocu123.value.xf2);
//   rated.value = response.data.userCaps;
//   console.warn("TYTRTYTRYTRYTRY", rated.value.id);
//   if (rated.value.id == 1) {
//     axios
//       .post("/api/create_rate/" + idd)
//       .then((response) => {
//         // router.push("/rate/" + idd);
//         router.push("/capstone1/" + id);
//       })
//       // router.push("/rate/" + idd);

//       .catch(function (error) {
//         console.log(error.response.data.errors);
//         console.log("ERRRR:: ", error.response.data);

//         toast.fire({
//           icon: "warning",
//           title: "SOMETHING WRONG",
//         });
//       });
//   } else {
//     toast.fire({
//       icon: "warning",
//       title: "Sorry, You're not one of the Panelist",
//     });
//   }
// };
// const onView2 = async () => {
//   let idd = getIDfromURL();
//   let response = await axios.get("/api/panel_rate_check/" + idd);
//   console.warn("TYTRTYTRYTRYTRY", GenCadocu123.value.xf2);
//   rated.value = response.data.userCaps;
//   console.warn("TYTRTYTRYTRYTRY", rated.value.id);
//   if (rated.value.id == 1) {
//     axios
//       .post("/api/create_rate/" + idd)
//       .then((response) => {
//         // router.push("/rate/" + idd);
//         router.push("/capstone2/" + id);
//       })
//       // router.push("/rate/" + idd);

//       .catch(function (error) {
//         console.log(error.response.data.errors);
//         console.log("ERRRR:: ", error.response.data);

//         toast.fire({
//           icon: "warning",
//           title: "SOMETHING WRONG",
//         });
//       });
//   } else {
//     toast.fire({
//       icon: "warning",
//       title: "Sorry, You're not one of the Panelist",
//     });
//   }
// };
// const onView3 = async () => {
//   let idd = getIDfromURL();
//   let response = await axios.get("/api/panel_rate_check/" + idd);
//   console.warn("TYTRTYTRYTRYTRY", GenCadocu123.value.xf2);
//   rated.value = response.data.userCaps;
//   console.warn("TYTRTYTRYTRYTRY", rated.value.id);
//   if (rated.value.id == 1) {
//     axios
//       .post("/api/create_rate/" + idd)
//       .then((response) => {
//         // router.push("/rate/" + idd);
//         router.push("/capstone3/" + id);
//       })
//       // router.push("/rate/" + idd);

//       .catch(function (error) {
//         console.log(error.response.data.errors);
//         console.log("ERRRR:: ", error.response.data);

//         toast.fire({
//           icon: "warning",
//           title: "SOMETHING WRONG",
//         });
//       });
//   } else {
//     toast.fire({
//       icon: "warning",
//       title: "Sorry, You're not one of the Panelist",
//     });
//   }
// };
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
.colorText {
  color: #9ba7ff;
}
.leftSpace {
  margin-left: 50px;
}
.leftSpacess {
  margin-left: 25px;
}
.leftSpaces {
  margin-left: 37px;
}
.modalist {
  width: 50%;
  z-index: 999;

  position: fixed;
  top: 45%;
  left: 55%;
  transform: translate(-50%, -50%);
}
.float {
  float: right !important;
}
.open {
  opacity: 0.5;
  z-index: 998;
}
.parag {
  margin: 0;
  text-indent: 2rem;
  text-align: justify;
}
</style>
<!-- text-align: center;
  position: fixed;
  z-index: 999;
  top: 20%;

  width: 50%;

  margin-left: auto;
  margin-right: auto;

  width: 50%;

  padding: 10px; -->

<!-- <template>
  <h5 class="projHead">CREATE PROJECT</h5>
  <div class="contentOfThePage">
    <H5 class="projHead">General Information</H5>
    <div class="row">
      <div class="form-floating col">
        <textarea
          class="form-control"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 150px"
        ></textarea>
        <label class="ps-4" for="floatingTextarea2">TITLE</label>
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 150px"
        ></textarea>
        <label class="ps-4" for="floatingTextarea2">ABSTRACT</label>
      </div>
    </div>

    <br />
    
    <div class="row">
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Group Name</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Instructor</label>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Adviser</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Co-Adviser</label>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Panel 1</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Panel 2</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Panel 3</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Secretary</label>
      </div>
    </div>
    <h5 class="">Proponents</h5>
    <div class="row">
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label>
      </div>
      <div class="form-floating mb-3 col">
        <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label>
      </div>
    </div>

    <br /><br />
    <div class="row">
      <div class="col text-center">
        <button type="button" class="btn btn-primary buttonStyle" @click="onCaps1()">
          CAPSTONE 1
        </button>
      </div>
      <div class="col text-center">
        <button type="button" class="btn btn-primary buttonStyle"  @click="onCaps2()">
          CAPSTONE 2
        </button>
      </div>
      <div class="col text-center">
        <button type="button" class="btn btn-primary buttonStyle"  @click="onCaps3()">
          CAPSTONE 3
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref } from "vue";
 import router from "../../routers/administratorRouter";


const onCaps1 =() =>{
  router.push('/capstone1')
}
const onCaps2 =() =>{
  router.push('/capstone2')
}
const onCaps3 =() =>{
  router.push('/capstone3')
}
</script>

<style scoped>
.projContent {
  height: 100%;
  width: 100%;

  padding: 10px;
  background: #fff;
  box-shadow: 2px 1px 10px #888888;
  border-radius: 5px;
}
.projHead {
  font-weight: bolder;
  margin-left: 10px;
}
.buttonStyle {
  height: 60px;
  width: 100%;
  font-size: 20px;
}
</style>>
 -->
