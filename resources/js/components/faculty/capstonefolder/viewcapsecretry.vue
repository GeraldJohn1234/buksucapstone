<template>
  <!-- <button class="col-12" @click="testlink()">TAPPP</button> -->
  <div class="contentOfThePage bg-light p-2">
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

      <!-- <div v-if="GenCapData.name === 'AGREE'" class="row text-center px-2">
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
      </div> -->
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
      <div class="col row mx-2 contentOfThePage">
        <div class="col-12 text-center">
          <label for="view" class="m-2 fw-bold">Capstone 1</label>
        </div>

        <div class="col-12">
          <label for="coAdviser" class="form-label">Minutes (pdf only!)</label>

          <div class="input-group mb-3 col-12 border border-primary">
            <input type="file" id="" accept=".pdf" class="" @change="onChange1" />
          </div>
        </div>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="caps1minutes()">
          UPLOAD
        </button>
        <button
          v-if="caps1.minutes1 != null && caps1.minutes1 != 'NULL'"
          type="button"
          class="m-1 btnSize btn btn-success"
          @click.prevent="getMinutes1()"
        >
          VIEW
        </button>
        <button
          v-else
          type="button"
          class="m-1 btnSize btn btn-warning"
          @click="warning()"
        >
          NOT YET UPLOADED
        </button>
      </div>
      <div class="col row mx-2 contentOfThePage">
        <div class="col-12 text-center">
          <label for="view" class="m-2 fw-bold">Capstone 1</label>
        </div>

        <div class="col-12">
          <label for="coAdviser" class="form-label">Minutes (pdf only!)</label>

          <div class="input-group mb-3 col-12 border border-primary">
            <input type="file" id="" accept=".pdf" class="" @change="onChange2" />
          </div>
        </div>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="caps2minutes()">
          UPLOAD
        </button>
        <button
          v-if="caps2.minutes1 != null && caps2.minutes1 != 'NULL'"
          type="button"
          class="m-1 btnSize btn btn-success"
          @click.prevent="getMinutes2()"
        >
          VIEW
        </button>
        <button
          v-else
          type="button"
          class="m-1 btnSize btn btn-warning"
          @click="warning()"
        >
          NOT YET UPLOADED
        </button>
      </div>
      <div class="col row mx-2 contentOfThePage">
        <div class="col-12 text-center">
          <label for="view" class="m-2 fw-bold">Capstone 1</label>
        </div>

        <div class="col-12">
          <label for="coAdviser" class="form-label">Minutes (pdf only!)</label>

          <div class="input-group mb-3 col-12 border border-primary">
            <input type="file" id="" accept=".pdf" class="" @change="onChange3" />
          </div>
        </div>
        <button type="button" class="m-1 btnSize btn btn-primary" @click="caps3minutes()">
          UPLOAD
        </button>
        <button
          v-if="caps3.minutes1 != null && caps3.minutes1 != 'NULL'"
          type="button"
          class="m-1 btnSize btn btn-success"
          @click.prevent="getMinutes3()"
        >
          VIEW
        </button>
        <button
          v-else
          type="button"
          class="m-1 btnSize btn btn-warning"
          @click="warning()"
        >
          NOT YET UPLOADED
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
import router from "../../../routers/facultyRouter";
import { onMounted } from "vue";
import { ref } from "vue";
// import pdf from "vue-pdf";
// components: {
//   pdf;
// }
const getMinutes1 = () => {
  let link = window.location.pathname.split("/")[0];
  window.open(link + "/pdfminutes1/" + caps1.value.minutes1, "_blank");
};
const getMinutes2 = () => {
  let link = window.location.pathname.split("/")[0];
  window.open(link + "/pdfminutes2/" + caps2.value.minutes1, "_blank");
};
const getMinutes3 = () => {
  let link = window.location.pathname.split("/")[0];
  window.open(link + "/pdfminutes3/" + caps3.value.minutes1, "_blank");
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
let caps1 = ref({
  minutes1: null,
});
let caps2 = ref({
  minutes1: null,
});
let caps3 = ref({
  minutes1: null,
});
const onChange1 = (e) => {
  console.log("Selected FILE: ", e.target.files[0]);
  caps1.value.minutes1 = e.target.files[0];
};
const onChange2 = (e) => {
  console.log("Selected FILE: ", e.target.files[0]);
  caps2.value.minutes1 = e.target.files[0];
};
const onChange3 = (e) => {
  console.log("Selected FILE: ", e.target.files[0]);
  caps3.value.minutes1 = e.target.files[0];
};

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
  getcaps1minutes();
  getcaps2minutes();
  getcaps3minutes();
});

const getcaps1minutes = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps123/" + capstoneid);
  caps1.value = response.data.capstonee1;
};
const getcaps2minutes = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps2/" + capstoneid);
  caps2.value = response.data.capstonee2;
};
const getcaps3minutes = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/getcaps3/" + capstoneid);
  caps3.value = response.data.capstonee1;
};

const caps1minutes = () => {
  let capstoneid = window.location.pathname.split("/")[2];
  //   caps1.value.minutes1

  if (caps1.value.minutes1 != null) {
    const formData = new FormData();
    formData.append("minutes1", caps1.value.minutes1);
    axios
      .post("/api/caps1minutes/" + capstoneid, formData)
      .then((response) => {
        (caps1.value.minutes1 = null), router.push("/viewcapsecretry/" + props.id);

        toast.fire({
          icon: "success",
          title: "Capstone 1 minutes uploaded Succesfully",
        });
        location.reload();
      })

      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "Someting Wrong",
        });
      });
  } else {
    toast.fire({
      icon: "warning",
      title: "Please upload pdf file",
    });
  }
};
const caps2minutes = () => {
  let capstoneid = window.location.pathname.split("/")[2];
  //   caps1.value.minutes1

  if (caps2.value.minutes1 != null) {
    const formData = new FormData();
    formData.append("minutes1", caps2.value.minutes1);
    axios
      .post("/api/caps2minutes/" + capstoneid, formData)
      .then((response) => {
        (caps2.value.minutes1 = null), router.push("/viewcapsecretry/" + props.id);

        toast.fire({
          icon: "success",
          title: "Capstone 2 minutes uploaded Succesfully",
        });
        location.reload();
      })

      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "Someting Wrong",
        });
      });
  } else {
    toast.fire({
      icon: "warning",
      title: "Please upload pdf file",
    });
  }
};
const caps3minutes = () => {
  let capstoneid = window.location.pathname.split("/")[2];
  //   caps1.value.minutes1

  if (caps3.value.minutes1 != null) {
    const formData = new FormData();
    formData.append("minutes1", caps3.value.minutes1);
    axios
      .post("/api/caps3minutes/" + capstoneid, formData)
      .then((response) => {
        (caps3.value.minutes1 = null), router.push("/viewcapsecretry/" + props.id);

        toast.fire({
          icon: "success",
          title: "Capstone 3 minutes uploaded Succesfully",
        });
        location.reload();
      })

      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "Someting Wrong",
        });
      });
  } else {
    toast.fire({
      icon: "warning",
      title: "Please upload pdf file",
    });
  }
};

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
// const testlink = () => {
//   let link = window.location.pathname.split("/")[1];

//   toast.fire({
//     icon: "warning",
//     title: "LINK IS" + link,
//   });
// };

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
    title: "Please upload the minutes first!",
  });
};
// const checkProponents = async () => {
//   let idd = getIDfromURL();
//   let response = await axios.get("/api/checkproponent/" + idd);
//   // console.warn("XFFFFFFFFF22222222", GenCadocu123.value.xf2);
//   // rated.value = response.data.userCaps;
//   let idss = response.data;
//   console.warn("IDDDDDDDDDDSSSS", idss);
//   toast.fire({
//     icon: "success",
//     title: "IDDD is" + idss,
//   });
//   //   if (idss == 1) {
//   //     // axios
//   //     //   .post("/api/create_rate/" + idd)
//   //     //   .then((response) => {
//   //     //     router.push("/rate/" + idd);
//   //     //   })
//   //     //   // router.push("/rate/" + idd);

//   //     //   .catch(function (error) {
//   //     //     console.log(error.response.data.errors);
//   //     //     console.log("ERRRR:: ", error.response.data);

//   //     //     toast.fire({
//   //     //       icon: "warning",
//   //     //       title: "SOMETHING WRONG",
//   //     //     });
//   //     //   });
//   //     toast.fire({
//   //       icon: "success",
//   //       title: "",
//   //     });
//   //   } else {
//   //     toast.fire({
//   //       icon: "warning",
//   //       title: "Sorry, You're not one of the Panelist",
//   //     });
//   //   }
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
.margin {
  margin-left: 0.1px;
  margin-right: 0.1px;
}
</style>
