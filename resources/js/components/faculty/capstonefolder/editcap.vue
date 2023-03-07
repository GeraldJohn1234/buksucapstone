<template>

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
      
        <div class="input-group mb-3 col-12 border border-primary">
          <input type="file" id="" accept=".pdf" class="" @change="onChange" />
         
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

    

    <div class="row">
      <div class="col">
        <button
          type="submit"
          class="m-1 btnSize btn btn-primary"
          @click="modall.open = true"
        >
          Save
        </button>
     
      </div>
    </div>
  </div>
</template>

<script setup>
import router from "../../../routers/facultyRouter";
import axios from "axios";
import { onMounted, ref } from "vue";

let students = ref({});
let panels = ref({});
let advisers = ref({});
let instructors = ref({});
let secretarys = ref({});


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
 
  console.log("Selected FILE: ", e.target.files[0]);
  
  GenCapData.value.file = e.target.files[0];
 
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
 
  let capstoneid = gettIdfromURL();

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

 
  console.warn("Caps", GenCapData.value);
};


const getsingleUser1 = async () => {
  let nullneh;
  let response = await axios.get("/api/get_capstone_student1/" + props.id);

  nullneh = response.data.userCaps;
  if (nullneh != null) {
    student1.value = response.data.userCaps;
  }

  
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

