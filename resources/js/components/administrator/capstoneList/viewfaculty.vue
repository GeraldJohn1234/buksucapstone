<template>
  <!-- <div class="card mb-3 boxProfile text-center mx-auto d-block">
      <img src="/images/buksuBg.jpg" alt="logo" class="boxBg" />
      <img src="/images/luffy.jfif" alt="logo" class="boxP" />
      <div class="text-center">
        <h5>Monkey D. Luffy</h5>
        <p>College of Technologies</p>
        <p>Bachelor of Science in Information Technology - 4</p>
        <p>1801104017@student.buksu.edu.ph</p>
      </div>
    </div> -->
  <div class="card mb-3 boxProfile text-center mx-auto d-block contentOfThePage">
    <img src="/images/buksuBg.jpg" alt="logo" class="boxBg" />
    <!-- <img src="/images/luffy.jfif" alt="logo" class="boxP" /> -->
    <img id="" :src="getPhoto()" alt="img" class="boxP" />
    <div class="text-center">
      <h5>{{ form.name }} {{ form.mname }} {{ form.lname }}</h5>
      <p>1234567876543College of Technologies</p>
      <p>Bachelor of Science in Information Technology - {{ form.year }}</p>
      <p>{{ form.email }}</p>
    </div>
  </div>
  <div class="formProfile pe-3 ms-1 shadow p-3 mb-5 bg-light contentOfThePage">
    <h5 class="fw-bold">FACULTY INFORMATION</h5>
    <br />
    <div class="row">
      <div class="col">
        <label for="universityID" class="form-label">University ID</label>
        <input
          disabled
          type="text"
          class="form-control input"
          v-model="form.uid"
          aria-label="University ID"
        />
      </div>
      <div class="col">
        <label for="emailAddress" class="form-label">Email Address</label>
        <input
          disabled
          type="text"
          class="form-control input"
          aria-label="Email Address"
          v-model="form.email"
        />
      </div>

      <div class="col">
        <label for="password" class="form-label">Password</label>

        <div class="input-group mb-3">
          <input
            disabled
            :type="type"
            class="form-control"
            aria-label="Recipient's username"
            aria-describedby="button-addon2"
            v-model="form.password"
          />
          <button
            class="btn btn-outline-secondary"
            type="button"
            id="button-addon2"
            @click="showPassword"
          >
            {{ btnText }}
          </button>
        </div>
      </div>
    </div>
    <div class="row pt-2">
      <div class="col">
        <label for="firstname" class="form-label">First Name</label>
        <input
          disabled
          type="text"
          class="form-control"
          placeholder="FIRST NAME"
          aria-label="First name"
          v-model="form.name"
        />
      </div>
      <div class="col">
        <label for="middlename" class="form-label">Middle Name</label>
        <input
          disabled
          type="text"
          class="form-control"
          placeholder="MIDDLE NAME"
          aria-label="Middle Name"
          v-model="form.mname"
        />
      </div>
      <div class="col">
        <label for="lastname" class="form-label">Last Name</label>
        <input
          disabled
          type="text"
          class="form-control"
          placeholder="LAST NAME"
          aria-label="Last name"
          v-model="form.lname"
        />
      </div>
    </div>
    <div class="row pt-3">
      <div class="col-4">
        <label for="college" class="form-label">College (disabled)</label>
        <input
          disabled
          type="text"
          class="form-control"
          placeholder="COLLEGE OF TECHNOLOGY"
          aria-label="COLLEGE OF TECHNOLOGY"
        />
      </div>

      <div class="col-4">
        <label for="lastname" class="form-label">Year</label>
        <input
          disabled
          type="text"
          class="form-control"
          placeholder="YEAR"
          aria-label="Last name"
          v-model="form.year"
        />
      </div>

      <!-- <div class="col-2">
        <label for="lastname" class="form-label">Choose Year</label>
        <div class="input-group mb-3">
          <select class="form-select" id="inputGroupSelect01" v-model="form.year">
            <option selected>Choose...</option>
            <option value="THIRD YEAR">THIRD YEAR</option>
            <option value="FOURTH YEAR">FOURTH YEAR</option>
            <option value="FIFTH YEAR">FIFTH YEAR</option>
          </select>
        </div>
      </div> -->
      <div class="col">
        <label for="gender" class="form-label">Gender</label>
        <input
          disabled
          type="text"
          class="form-control"
          aria-label="Gender"
          v-model="form.gender"
        />
      </div>

      <!-- <div class="col pt-4"></div> -->

      <div class="row">
        <!-- <li>
            <img id="imgPhoto" :src="getPhoto()" alt="img" />
          </li> -->
        <!-- <li>
            <input
              type="file"
              accept="image/*"
              alt="imgNeh"
              @change="updatePhoto"
            />
          </li> -->
      </div>
    </div>
    <br />
    <hr />
    <!-- <div class="container bg-light">
        <div class="col-md-12 text-center">
          <button type="button" class="btn btn-primary" @click="updateUser()">
            UPDATE
          </button>
        </div>
      </div> -->
    <h5 class="fw-bold">PROJECT DATA</h5>
    <!-- <h5 class="mt-5 fw-bold text-center text-warning" v-if="check0.check1 == '0'">
      STUDENT DOESN'T HAVE A PROJECT
    </h5> -->
    <br />
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <h4 class="pt-2 text-uppercas fw-bolder boldThese">
            {{ adstart0.adstart1 }}
          </h4>
          <hr class="toTop" />
          <p class="toTopp">Number of project as an adviser (under-development)</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <h4 class="pt-2 text-uppercas fw-bolder boldThese">
            {{ adend0.adend1 }}
          </h4>
          <hr class="toTop" />
          <p class="toTopp">Number of project as an adviser (completed)</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <h4 class="pt-2 text-uppercas fw-bolder boldThese">
            {{ sec0.sec1 }}
          </h4>
          <hr class="toTop" />
          <p class="toTopp">Number of project as a secretary</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <h4 class="pt-2 text-uppercas fw-bolder boldThese">
            <!-- {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }} -->
            {{ pan0.pan1 }}
          </h4>
          <hr class="toTop" />
          <p class="toTopp">Number of project as a panelist</p>
        </div>
      </div>
    </div>
    <!-- <div class="row text-center px-2" v-if="check0.check1 != '0'">
      <button type="button" class="btn btn-primary col fw-bold" @click="viewCap()">
        VISIT CAPSTONE PROJECT
      </button>
    </div> -->
    <br />
  </div>
</template>

<script setup>
// import { vue } from 'laravel-mix';
// import axios from "axios";
//  import router from "../../routers/administratorRouter";
// import { error } from "console";
// import { response } from "express";
// import axios from "axios";
// import axios from "axios";
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { ref } from "vue";

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
let check0 = ref({
  check1: 0,
});
let adstart0 = ref({
  adstart1: 0,
});
let adend0 = ref({
  adend1: 0,
});
let sec0 = ref({
  sec1: 0,
});
let pan0 = ref({
  pan1: 0,
});
let checkdata;
const getAdviserStart = async () => {
  let responsed = await axios.get("/api/advisee_count_not_done/" + props.id);
  adstart0.value.adstart1 = responsed.data.capstones;
  // console.warn("0000000000000000000", adstart0.value.adstart1);
};
const getAdviserEnd = async () => {
  let responsed = await axios.get("/api/advisee_count_done/" + props.id);
  adend0.value.adend1 = responsed.data.capstones;
  // console.warn("1111111111111111", adend0.value.adend1);
};

const getSec = async () => {
  let responsed = await axios.get("/api/secretarys_count/" + props.id);
  sec0.value.sec1 = responsed.data.capstones;
  // console.warn("2222222222222222", sec0.value.sec1);
};
const getPanl = async () => {
  let responsed = await axios.get("/api/panels_count/" + props.id);
  pan0.value.pan1 = responsed.data.capstones;
  // console.warn("33333333333333333", pan0.value.pan1);
};
const getcapstone = async () => {
  // console.warn("Caps", GenCapData.value);

  let responsed = await axios.get("/api/get_capstone_check/" + props.id);
  check0.value.check1 = responsed.data.ans;

  if (check0.value.check1 != 0) {
    let response = await axios.get("/api/get_capstone/" + check0.value.check1);
    GenCapData.value = response.data.capstones;
  }
};
const getsingleUser7 = async () => {
  let response = await axios.get("/api/get_one_user/" + props.id);
  adviser.value = response.data.userrs;
};
let adviser = ref({
  name: "",
  mname: "",
  lname: "",
});

let form = ref({
  id: "",
  uid: "",
  email: "",
  password: "",
  name: "",
  mname: "",
  lname: "",
  year: "",
  gender: "",
  photo: "",
});

const router = useRouter();

onMounted(async () => {
  getsingleUser();
  getcapstone();
  getsingleUser7();
  getAdviserStart();
  getAdviserEnd();
  getSec();
  getPanl();
});

const props = defineProps({
  id: {
    type: String,
    default: "",
  },
});

const getPhoto = () => {
  let photo = "/upload/archiver.png";
  if (form.value.photo) {
    if (form.value.photo.indexOf("base64") != -1) {
      photo = form.value.photo;
    } else {
      photo = "/upload/" + form.value.photo;
    }
  }
  return photo;
};

const updatePhoto = (e) => {
  let file = e.target.files[0];
  let reader = new FileReader();
  let limit = 1024 * 1024 * 2;
  if (file["size"] > limit) {
    return false;
  }
  reader.onloadend = (file) => {
    form.value.photo = reader.result;
  };
  reader.readAsDataURL(file);
};

const getsingleUser = async () => {
  let response = await axios.get("/api/get_edit_user/" + props.id);
  form.value = response.data.userrs;
  console.warn("userrs", form.value);
};

const updateUser = () => {
  const formData = new FormData();
  formData.append("uid", form.value.uid);
  formData.append("email", form.value.email);
  formData.append("password", form.value.password);

  formData.append("name", form.value.name);
  formData.append("mname", form.value.mname);
  formData.append("year", form.value.year);
  formData.append("lname", form.value.lname);

  formData.append("gender", form.value.gender);
  formData.append("photo", form.value.photo);
  // ${form.value.id}
  axios
    .post("/api/update_user/" + props.id, formData)

    .then((response) => {
      (form.value.uid = ""),
        (form.value.email = ""),
        (form.value.password = ""),
        (form.value.name = ""),
        (form.value.mname = ""),
        (form.value.lname = ""),
        (form.value.year = ""),
        (form.value.gender = ""),
        (form.value.photo = ""),
        router.push("/student");

      toast.fire({
        icon: "success",
        title: "User Update Successfully",
      });
    })
    .catch((error) => {});
};

const type = ref("password");
const btnText = ref("SHOW");
const showPassword = () => {
  if (type.value === "password") {
    type.value = "text";
    btnText.value = "HIDE";
  } else {
    type.value = "password";
    btnText.value = "SHOW";
  }
};

const viewCap = () => {
  router.push("/viewcap/" + check0.value.check1);
};
</script>

<style>
.boxProfile {
  height: 100%;
  width: 50%;
  justify-content: center;
  border: 1px solid;
  box-shadow: 1px 1px 4px #0062ff;
  margin: 20px;
}
.boxBg {
  height: 120px;
  width: 100%;
  border: 1px solid;
}
.formProfile {
  height: 100% !important;
  width: 100%;
  margin-right: 10px;
  padding-left: 10px;
  border: 1px solid #0062ff;
  margin-bottom: 30px;
  border-radius: 10px;
}
.boxP {
  border: 1px solid #0062ff;
  border-radius: 50%;
  padding: 1px;
  width: 120px;
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-top: -10%;
}
</style>
