<template>
  <div class="contentOfThePage">
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

      <div class="col">
        <label for="lastname" class="form-label">Choose Year</label>
        <div class="input-group mb-3">
          <select class="form-select inputColor" id="inputGroupSelect01">
            <option selected>Choose...</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>
            <option value="5th year">5th year</option>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <label for="adviser" class="form-label">Adviser</label>
        <label for="" class="float-end colorText"
          >{{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}</label
        >
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.adviser">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in advisers" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="coAdviser" class="form-label">Co-Adviser</label>
        <label for="" class="float-end colorText"
          >{{ coAdviser.name }} {{ coAdviser.mname }} {{ coAdviser.lname }}</label
        >
        <div class="input-group mb-3">
          <select class="form-control inputColor" required v-model="GenCaps.coAdviser">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in advisers" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <label for="panel1" class="form-label">Panel 1</label>
        <label for="" class="float-end colorText"
          >{{ panels1.name }} {{ panels1.mname }} {{ panels1.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ secretary.name }} {{ secretary.mname }} {{ secretary.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ student1.name }} {{ student1.mname }} {{ student1.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ student2.name }} {{ student2.mname }} {{ student2.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ student3.name }} {{ student3.mname }} {{ student3.lname }}</label
        >
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
        <label for="" class="float-end colorText"
          >{{ student4.name }} {{ student4.mname }} {{ student4.lname }}</label
        >
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
        <button type="button" class="m-1 btnSize btn btn-primary" @click="saveCapstone()">
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
let secretary = ref({
  name: "",
  mname: "",
  lname: "",
});
let caps1Instructor = ref({
  instructor: "",
});

let GenCaps = ref({
  // title: "",
  // abstract: "",
  // groupname: "",
  students1: "",
  students2: "",
  students3: "",
  students4: "",
  panels1: "",
  panels2: "",
  panels3: "",
  adviser: "",
  coAdviser: "",
  secretarys: "",
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
  // if (
  //   false
  // GenCaps.value.students1 == GenCaps.value.students2 ||
  // GenCaps.value.students1 == GenCaps.value.students3 ||
  // GenCaps.value.students1 == GenCaps.value.students4 ||
  // GenCaps.value.panels1 == GenCaps.value.panels2 ||
  // GenCaps.value.panels1 == GenCaps.value.panels3 ||
  // GenCaps.value.panels1 == GenCaps.value.adviser ||
  // GenCaps.value.panels1 == GenCaps.value.coAdviser ||
  // GenCaps.value.panels1 == GenCaps.value.instructor ||
  // GenCaps.value.panels1 == GenCaps.value.secretarys ||
  // GenCaps.value.panels2 == GenCaps.value.panels3 ||
  // GenCaps.value.panels2 == GenCaps.value.adviser ||
  // GenCaps.value.panels2 == GenCaps.value.coAdviser ||
  // GenCaps.value.panels2 == GenCaps.value.instructor ||
  // GenCaps.value.panels2 == GenCaps.value.secretarys ||
  // GenCaps.value.panels3 == GenCaps.value.adviser ||
  // GenCaps.value.panels3 == GenCaps.value.coAdviser ||
  // GenCaps.value.panels3 == GenCaps.value.instructor ||
  // GenCaps.value.panels3 == GenCaps.value.secretarys ||
  // GenCaps.value.adviser == GenCaps.value.coAdviser ||
  // GenCaps.value.adviser == GenCaps.value.instructor ||
  // GenCaps.value.adviser == GenCaps.value.secretarys ||
  // GenCaps.value.coAdviser == GenCaps.value.instructor ||
  // GenCaps.value.coAdviser == GenCaps.value.secretarys ||
  // GenCaps.value.instructor == GenCaps.value.secretarys
  // ) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, You have Entered duplicate role",
  //     // title: GenCaps.value.panels1,
  //   });
  // } else {
  const formData = new FormData();
  formData.append("title", GenCapData.value.title);
  formData.append("abstract", GenCapData.value.abstract);
  formData.append("groupname", GenCapData.value.groupname);

  formData.append("students1", GenCaps.value.students1);
  formData.append("students2", GenCaps.value.students2);
  formData.append("students3", GenCaps.value.students3);
  formData.append("students4", GenCaps.value.students4);

  formData.append("panels1", GenCaps.value.panels1);
  formData.append("panels2", GenCaps.value.panels2);
  formData.append("panels3", GenCaps.value.panels3);

  formData.append("adviser", GenCaps.value.adviser);
  formData.append("coAdviser", GenCaps.value.coAdviser);
  // formData.append("instructor", GenCaps.value.instructor);
  formData.append("secretarys", GenCaps.value.secretarys);

  axios
    .post("/api/update_capstone/" + capstoneid, formData)
    .then((response) => {
      // caps2Inst();
      (GenCapData.value.title = ""),
        (GenCapData.value.abstract = ""),
        (GenCapData.value.groupname = ""),
        (GenCaps.value.students1 = ""),
        (GenCaps.value.students2 = ""),
        (GenCaps.value.students3 = ""),
        (GenCaps.value.students4 = ""),
        (GenCaps.value.panels1 = ""),
        (GenCaps.value.panels2 = ""),
        (GenCaps.value.panels3 = ""),
        (GenCaps.value.adviser = ""),
        (GenCaps.value.coAdviser = ""),
        // (GenCaps.value.instructor = ""),
        (GenCaps.value.secretarys = ""),
        router.push("/capslist");

      toast.fire({
        icon: "success",
        title: "User Add Successfully",
      });
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title:
          "Capstone Save Unsuccessful" +
          "s1" +
          GenCaps.value.students1 +
          "s2" +
          GenCaps.value.students2 +
          "s3" +
          GenCaps.value.students3 +
          "s4" +
          GenCaps.value.students4 +
          "p1" +
          GenCaps.value.panels1 +
          "p2" +
          GenCaps.value.panels2 +
          "p3" +
          GenCaps.value.panels3 +
          "adv" +
          GenCaps.value.adviser +
          "coAd" +
          GenCaps.value.coAdviser +
          "sec" +
          GenCaps.value.secretarys,
        // title: capstoneid,
      });
      // (error = {}));
      // console.log("ERRRR:: ",error.response.data);
    });
  // console.log("ERRRR:: ",error.response.data);
  // }
};

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
  secretary.value = response.data.userCaps;
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
  color: #0062ff;
}
</style>

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
