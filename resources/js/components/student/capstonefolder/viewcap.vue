<template>
  <div class="contentOfThePage bg-light">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase boldThese">
        {{ GenCapData.title }}
      </h5>
      <hr class="toTop" />
      <p class="toTopp boldThese">TITLE</p>
    </div>

    <!-- <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 250px"
        v-model="GenCapData.abstract"
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
    </div> -->
    <!-- <P class="text-left boldThese">INFORMATION</P> -->
    <p class="text-left boldThese">PROJECT DESCRIPTION/ABSTRACT</p>

    <div class="contentOfThePage bg-light p-2">
      <p class="parag m-3">{{ GenCapData.abstract }}</p>
      <hr />

      <!-- <a href="#" @click.prevent="getFileeee()">tryyyyyyyyyyyyyyyyy</a> -->
      <!-- <a href="#" @click.prevent="getFileeee()">fsff</a> -->

      <div v-if="GenCapData.name === 'AGREE'" class="row text-center px-2">
        <button
          type="button"
          href="#"
          class="btn btn-primary col fw-bold"
          @click.prevent="getFileeee()"
        >
          OPEN MANUSCRIPT
        </button>
      </div>
      <div v-else class="row text-center px-2">
        <button
          type="button"
          class="btn btn-warning col fw-bold border border-dark"
          @click="warning()"
        >
          OPEN MANUSCRIPT
        </button>
      </div>
    </div>

    <br />
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ GenCapData.groupname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Group Name</p>
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
            {{ GenCapData.xf3 }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">School Year</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Adviser</p>
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
            {{ coAdviser.name }} {{ coAdviser.mname }} {{ coAdviser.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Co-Adviser</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        
        />
        <label class="ps-4" for="floatingInput">Co-Adviser</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ GenCapData.xf4 }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Client</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ GenCapData.xf2 }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Status</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ panels1.name }} {{ panels1.mname }} {{ panels1.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Panel 1</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Panel 1</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Panel 2</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Panel 2</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Panel 3</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Panel 3</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ secretarys.name }} {{ secretarys.mname }} {{ secretarys.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Secretary</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Secretary</label> -->
      </div>
    </div>

    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ student1.name }} {{ student1.mname }} {{ student1.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Proponent 1</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ student2.name }} {{ student2.mname }} {{ student2.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Proponent 2</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ student3.name }} {{ student3.mname }} {{ student3.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Proponent 3</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label> -->
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercase">
            {{ student4.name }} {{ student4.mname }} {{ student4.lname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp boldThese">Proponent 4</p>
        </div>
        <!-- <input
          type="email"
          class="form-control"
          id="floatingInput"
          placeholder="name@example.com"
        />
        <label class="ps-4" for="floatingInput">Member</label> -->
      </div>
    </div>
    <!-- <div class="row">
      <div class="col">
        <button type="button" class="m-1 btnSize btn btn-primary">Save</button>
      </div>
    </div> -->

    <div class="row paddingSide mt-3">
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 1</label>
        </div>

        <div class="col">
          <label for="update" class="m-2">Status: Under-revision</label>
        </div>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="onView1()">
          VIEW
        </button>
      </div>
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 2</label>
        </div>

        <div class="col">
          <label for="update" class="m-2">Status: Development</label>
        </div>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="onView2()">
          VIEW
        </button>
      </div>
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 3</label>
        </div>

        <div class="col">
          <label for="update" class="m-2">Status: Under-revision</label>
        </div>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="onView3()">
          VIEW
        </button>
      </div>
    </div>

    <br />

    <!-- <div class="row margin contentOfThePage text-center">
      <div class="col">
        <label for="update" class="m-1"
          >DOUCUMENTS THROUGHT OCTICAL CHARACTER RECOGNITION</label
        >

        <button
          type="button"
          class="m-1 btnSize btn btn-primary"
          @click="onUpdate3()"
        >
          UPDATE
        </button>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="viewOcr()">
          VIEW
        </button>
      </div>
    </div> -->
  </div>
</template>

<script setup>
import router from "../../../routers/studentRouter";
import { onMounted } from "vue";
import { ref } from "vue";
// import pdf from "vue-pdf";
// components: {
//   pdf;
// }
const getFileeee = () => {
  // window.open("pdf/" + file, "_blank");
  window.open("http://127.0.0.1:8000/pdf/" + GenCapData.value.xf5, "_blank");
};
let DocumentType = ref({
  file: "",
});
// const getfiles = async () => {
//   let response = await axios.get("/api/showpdf/");
//   DocumentType.value.file = response.data.file;
// };

let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
  start_date: "",
  xf2: "",
  xf3: "",
  xf4: "",
  xf5: null,
  name: "",
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
  // getfiles();
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

// const manuscript = () => {
//   // window.open("https://http://127.0.0.1:8000/pdf/" + file, "_blank");
//   window.open(
//     "http ://127.0.0.1:8000/pdf/1667409656.HIPONIA-IT136-Final-Module1.pdf",
//     "_blank"
//   );
//   //  showpdf
//   // let response = axios.get("/api/showpdf");
//   // GenCapData.value = response.data.capstones;
// };

const getsingleUser = async () => {
  let response = await axios.get("/api/get_capstone/" + props.id);
  GenCapData.value = response.data.capstones;

  // GenCaps.value = response.data.userCaps;  1667371804.5. File Containing the Screenshot of the gcash payment to the panel.docx
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
const warning = () => {
  toast.fire({
    icon: "warning",
    title:
      "The Group: " + GenCapData.value.groupname + " did not Agree to share their work!",
  });
};
//
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
