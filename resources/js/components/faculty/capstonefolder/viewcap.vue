<template>
  <div class="contentOfThePage bg-light p-3">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercas fw-bolder boldThese">
        {{ GenCapData.title }}
      </h5>
      <hr class="toTop" />
      <p class="toTopp">TITLE</p>
    </div>

 
    <p class="text-left boldThese">PROJECT DESCRIPTION/ABSTRACT</p>

    <div class="contentOfThePage bg-light p-2">
      <p class="parag m-3">{{ GenCapData.abstract }}</p>
      <hr />

      

      <div
        v-if="
          GenCapData.name === 'AGREE' &&
          GenCapData.xf5 != null &&
          GenCapData.xf5 != 'null' &&
          GenCapData.xf5 != 'null'
        "
        class="row text-center px-2"
      >
        <button
          type="button"
          href="#"
          class="btn btn-primary col fw-bold"
          @click.prevent="getFileeee()"
        >
          OPEN MANUSCRIPT
        </button>
      </div>
      <div
        v-else-if="
          GenCapData.xf5 === null ||
          GenCapData.xf5 === 'null' ||
          GenCapData.xf5 === 'NULL'
        "
        class="row text-center px-2"
      >
        <button
          type="button"
          class="btn btn-warning col fw-bold border border-dark"
          @click="warningNoData()"
        >
          EMPTY MANUSCRIPT
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
          <p class="pt-2 text-uppercas fw-bolder boldThese">
            {{ GenCapData.groupname }}
          </p>
          <hr class="toTop" />
          <p class="toTopp">Group Name</p>
        </div>
    
      </div>
      <div class="form-floating mb-3 col">
      
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercas fw-bolder boldThese">
            {{ GenCapData.xf3 }}
          </p>
          <hr class="toTop" />
          <p class="toTopp">School Year</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="adviser.name != null && adviser.mname != null && adviser.lname != null"
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ adviser.name }} {{ adviser.mname }} {{ adviser.lname }}
          </p>

          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Adviser</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="
              coAdviser.name != null && coAdviser.mname != null && coAdviser.lname != null
            "
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ coAdviser.name }} {{ coAdviser.mname }} {{ coAdviser.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Co-Adviser</p>
        </div>
       
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p v-if="GenCapData.xf4 != null" class="pt-2 text-uppercas fw-bolder boldThese">
            {{ GenCapData.xf4 }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Client</p>
        </div>
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p class="pt-2 text-uppercas fw-bolder boldThese">
            {{ GenCapData.xf2 }}
          </p>
          <hr class="toTop" />
          <p class="toTopp">Status</p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="panels1.name != null && panels1.mname != null && panels1.lname != null"
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ panels1.name }} {{ panels1.mname }} {{ panels1.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>

          <hr class="toTop" />
          <p class="toTopp">Panel 1</p>
        </div>
      
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="panels2.name != null && panels2.mname != null && panels2.lname != null"
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ panels2.name }} {{ panels2.mname }} {{ panels2.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Panel 2</p>
        </div>
      
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="panels3.name != null && panels3.mname != null && panels3.lname != null"
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ panels3.name }} {{ panels3.mname }} {{ panels3.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Panel 3</p>
        </div>
     
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="
              secretarys.name != null &&
              secretarys.mname != null &&
              secretarys.lname != null
            "
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ secretarys.name }} {{ secretarys.mname }} {{ secretarys.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Secretary</p>
        </div>
     
      </div>
    </div>

    <div class="row">
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="
              student1.name != null && student1.mname != null && student1.lname != null
            "
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ student1.name }} {{ student1.mname }} {{ student1.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Proponent 1</p>
        </div>
       
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="
              student2.name != null && student2.mname != null && student2.lname != null
            "
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ student2.name }} {{ student2.mname }} {{ student2.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Proponent 2</p>
        </div>
       
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="
              student3.name != null && student3.mname != null && student3.lname != null
            "
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ student3.name }} {{ student3.mname }} {{ student3.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Proponent 3</p>
        </div>
     
      </div>
      <div class="form-floating mb-3 col">
        <div class="" id="titleSize">
          <p
            v-if="
              student4.name != null && student4.mname != null && student4.lname != null
            "
            class="pt-2 text-uppercas fw-bolder boldThese"
          >
            {{ student4.name }} {{ student4.mname }} {{ student4.lname }}
          </p>
          <p v-else class="pt-2 text-uppercas fw-bolder boldThese">no data</p>
          <hr class="toTop" />
          <p class="toTopp">Proponent 4</p>
        </div>
       
      </div>
    </div>


    <div class="row paddingSide mt-3">
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 1</label>
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
          type="button"
          class="m-1 btnSize btn btn-primary boldThese"
          @click="onView1()"
        >
          VIEW
        </button>
        <button
          v-else
          type="button"
          class="m-1 btnSize btn btn-warning boldThese"
          @click="unavailable()"
        >
          UNAVAILABLE
        </button>
      </div>
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 2</label>
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
          type="button"
          class="m-1 btnSize btn btn-primary boldThese"
          @click="onView2()"
        >
          VIEW
        </button>
        <button
          v-else
          type="button"
          class="m-1 btnSize btn btn-warning boldThese"
          @click="unavailable()"
        >
          UNAVAILABLE
        </button>
      </div>
      <div class="col row mx-2 contentOfThePage text-center">
        <div class="col">
          <label for="view" class="m-2">Capstone 3</label>
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
          type="button"
          class="m-1 btnSize btn btn-primary boldThese"
          @click="onView3()"
        >
          VIEW
        </button>
        <button
          v-else
          type="button"
          class="m-1 btnSize btn btn-warning boldThese"
          @click="unavailable()"
        >
          UNAVAILABLE
        </button>
      </div>
    </div>

    <br />

 
  </div>
</template>

<script setup>
import router from "../../../routers/facultyRouter";
import { onMounted } from "vue";
import { ref } from "vue";

const getFileeee = () => {
  let link = window.location.pathname.split("/")[0];
 

  window.open(link + "/pdf/" + GenCapData.value.xf5, "_blank");
};
let DocumentType = ref({
  file: "",
});


let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
  start_date: "",
  xf2: "",
  xf3: "",
  xf4: null,
  xf5: null,
  name: "",
});

let dataNull = ref({
  stud1: null,
  stud2: null,
  stud3: null,
  stud4: null,
  ad: null,
  coAd: null,
  sec: null,
  pan1: null,
  pan2: null,
  pan3: null,
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
let secretarys = ref({
  name: null,
  mname: null,
  lname: null,
});

onMounted(async () => {
  getsingleUser2();
  getsingleUser4();
  getsingleUser();
  
  getsingleUser1();

  getsingleUser3();
  getsingleUser11();

  getsingleUser5();
  getsingleUser6();
  getsingleUser7();
  getsingleUser8();
  getsingleUser9();
  getsingleUser10();
});



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
    secretarys.value = response.data.userCaps;
  }
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
  

  axios
    .post("/api/create_capstone_proj/" + id)
    .then((response) => {
      router.push("/capstone1/" + id);
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};
const onView2 = () => {
  let id = getIDfromURL();

  axios
    .post("/api/create_capstone_proj/" + id)
    .then((response) => {
      router.push("/capstone2/" + id);
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};
const onView3 = () => {
  let id = getIDfromURL();

  axios
    .post("/api/create_capstone_proj/" + id)
    .then((response) => {
      router.push("/capstone3/" + id);
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};

const viewOcr = () => {
  let id = getIDfromURL();
  router.push("/ocrdocuments/" + id);
};
const warning = () => {
  toast.fire({
    icon: "warning",
    title:
      "The group " +
      GenCapData.value.groupname +
      ", did not Agree to share their manuscript!",
  });
};
const warningNoData = () => {
  toast.fire({
    icon: "warning",
    title:
      "The group " + GenCapData.value.groupname + ", did not submit their manuscript!",
  });
};

const unavailable = () => {
  toast.fire({
    icon: "warning",
    title: "Panelist must be complete!",
  });
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
  text-transform: uppercase;
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
