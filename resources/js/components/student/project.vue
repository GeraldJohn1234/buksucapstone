<template>
  <div class="contentOfThePage p-3">
    <!-- <button type="button" class="m-1 btnSize btn btn-primary fw-bold" @click="tryy()">
      Save
    </button> -->

    <!-- <h5 class="text-left boldThese">Optical Character Recognition for ABSTRACT</h5>
    <div class="row">
      <div class="col row contentOfThePage me-1 ms-3">
        <span class="text-danger">
          NOTE: The conversion of Image to Text, will depend on the clarity of the images.
        </span>
        <div class="col-10">
          <input
            type="file"
            accept="image/*"
            id="imageLoader"
            @change="updateCanvasImage"
          />
        </div>
        <div class="col stats">{{ status }}</div>

        <div class="journey">
          <div class="centerne">
            <canvas id="imageCanvas" ref="imageCanvas"></canvas>
          </div>
        </div>
      </div>
    
      <div class="col contentOfThePage ms-1 me-3">
        <p class="text-left">
          <span class="titleText boldThese">CONVERTED TEXT</span> (<span
            class="text-primary"
            >You can edit the <span class="fw-bold"> converted text</span> before adding
            to abstract.</span
          >)
        </p>

        <div class="form-floating col">
          <textarea
            class="form-control inputColor"
            placeholder="Leave a comment here"
            id="floatingTextarea2"
            style="height: 500px"
            name="texttext"
            v-model="textcontent"
          ></textarea>
          <label class="ps-4" for="floatingTextarea2">Content</label>
          <br />
        </div>
        <button
          type="button"
          class="m-1 btnSize btn btn-primary W-100 fw-bold"
          @click="saveCapstonee1()"
        >
          ADD TO ABSTRACT
        </button>
      </div>
    </div> -->
    <!-- v-model="GenCaps.abstract" -->
    <!-- <br /> -->

    <h5 class="text-left boldThese">Abstract Or Project Descriptions</h5>
    <div class="form-floating col">
      <textarea
        v-model="GenCaps.abstract"
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 150px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
      <!-- <button
        type="button"
        class="m-1 btnSize btn btn-primary W-100 fw-bold"
        @click="saveCapstonee2()"
      >
        SAVE ABSTRACT
      </button> -->
    </div>
    <hr />
    <P class="text-left boldThese">GENERAL INFORMATION</P>
    <h5 class="text-left boldThese">Title</h5>
    <div class="form-floating col">
      <textarea
        v-model="GenCaps.title"
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 100px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Title</label>
      <br />
    </div>
    <div class="row">
      <div class="form-group col-3">
        <label for="exampleFormControlTextarea1" id="">Group Name</label>
        <textarea
          v-model="GenCaps.groupname"
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Groupname"
        ></textarea>
      </div>
      <!-- <div class="col">
        <label for="lastname" class="form-label">Choose Year</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor">
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
            v-model="GenCaps.xf2"
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
            id="inputGroupSelect01"
            v-model="GenCaps.xf1"
          >
            <option selected disabled>Choose...</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>
            <!-- <option value="5th year">5th year</option> -->
            <option value="Graduated">Graduated</option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="date" class="form-label">Capstone From:</label>
        <!-- <input type="date" class="col-12 inputColor" v-model="GenCaps.start_date" /> -->
        <Datepicker v-model="year.fromYear" yearPicker />
      </div>
      <div class="col">
        <label for="date" class="form-label">Capstone To:</label>
        <!-- <input type="date" class="col-12 inputColor" v-model="GenCaps.start_date" /> -->
        <Datepicker v-model="year.toYear" yearPicker />
        <!-- <input type="text" v-model="fromYear" /> -->
        <!-- <p>{{ year.toYear }}</p>
        <p>{{ year.fromYear }}</p> -->
      </div>
    </div>

    <div class="row">
      <div class="col">
        <label for="panel1" class="form-label">Panel 1</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.panels1"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="panel2" class="form-label">Panel 2</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.panels2"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="panel3" class="form-label">Panel 3</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.panels3"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="secretary" class="form-label">Secretary</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.secretarys"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <!-- <h5 class="boldThese">Proponents</h5> -->
    <div class="row">
      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students1"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students2"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students3"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students4"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <label for="adviser" class="form-label">Adviser</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.adviser"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="coAdviser" class="form-label">Co-Adviser</label>
        <div class="input-group mb-3">
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.coAdviser"
          >
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
    </div>
    <!-- <br> -->
    <!-- <hr> -->
    <!-- <div class="row">
      <div class="col">
        <button type="button" class="m-1 btnSize btn btn-primary fw-bold" @click="onOCR()">
          Uploading Documentation through Octical Character Recognition
        </button>
      </div>
    </div> -->
    <hr />
    <div class="row">
      <div class="col">
        <button
          type="button"
          class="m-1 btnSize btn btn-primary fw-bold fw-bold"
          @click="saveCaps()"
        >
          SAVE
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../routers/studentRouter";
import Datepicker from "@vuepic/vue-datepicker";
import "@vuepic/vue-datepicker/dist/main.css";

let secretarys = ref({});

// let year;
// const fromYear = ref(new Date().getFullYear());
// const toYear = ref(new Date().getFullYear());
// let fromYear = ref(new Date().getFullYear());

const year = ref({
  toYear: ref(new Date().getFullYear()),
  fromYear: ref(new Date().getFullYear()),
});

let students = ref({
  name: "",
  mname: "",
  lname: "",
});
// let schoolYear = year.value.fromYear + "-" + year.value.toYear;
// const tryy = () => {
//   toast.fire({
//     icon: "success",
//     title: schoolYear,
//   });
// };
let caps = ref({
  ocr: "",
});
let panels = ref({});
let advisers = ref({});
let instructors = ref({});

let GenCaps = ref({
  name: "",
  title: "",
  abstract: "",
  groupname: "",
  students1: "",
  students2: "",
  students3: "",
  students4: "",
  panels1: "",
  panels2: "",
  panels3: "",
  adviser: "",
  coAdviser: "",
  instructor: "",
  secretarys: "",
  xf1: "",
  xf2: "",
  start_date: "",
});

onMounted(async () => {
  getSecretary();
  getStudent();
  getPanel();
  getAdviser();
  getInstructor();
  datato();
});
// const tryy = () => {
//   axios.get("/api/get_capstonee1").then((response) => {
//     caps.value = response.data.capstone11111;
//   });
//   // caps.value.ocr;

//   toast.fire({
//     icon: "warning",
//     title: caps.value.ocr,
//     // title: GenCaps.value.panels1,
//   });
// };

const datato = async () => {
  let response = await axios.get("/api/get_capstonee1");
  caps.value = response.data.capstone11111;
};

const saveCaps = () => {
  if (GenCaps.value.students1 == null || GenCaps.value.students1 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on Proponet 1 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.title == null || GenCaps.value.title == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on title field",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.groupname == null || GenCaps.value.groupname == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on groupname field",
      // title: GenCaps.value.panels1,
    });
  }
  // else if (GenCaps.value.start_date == null || GenCaps.value.start_date == 0) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, Please fill on start_date field",

  //   });
  // }
  else if (GenCaps.value.students2 == null || GenCaps.value.students2 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on Proponet 2 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students3 == null || GenCaps.value.students3 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on Proponet 3 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students4 == null || GenCaps.value.students4 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on Proponet 4 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels1 == null || GenCaps.value.panels1 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on panel 1 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels2 == null || GenCaps.value.panels2 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on panel 2 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels3 == null || GenCaps.value.panels3 == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on panel 3 field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.adviser == null || GenCaps.value.adviser == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on adviser field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.coAdviser == null || GenCaps.value.coAdviser == 0) {
    toast.fire({
      icon: "warning",
      title:
        "Invalid, Please fill on Co-Adviser field, if none repeat the Adviser, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.secretarys == null || GenCaps.value.secretarys == 0) {
    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill on secretarys field, choose temporary if NONE",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students1 == GenCaps.value.students2) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students1 and students2",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students1 == GenCaps.value.students3) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students1 and students3",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students1 == GenCaps.value.students4) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students1 and students4",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students2 == GenCaps.value.students3) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students2 and students3",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students2 == GenCaps.value.students4) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students2 and students4",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.students3 == GenCaps.value.students4) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students3 and students4",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.panels2) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and panels2",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.panels3) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and panels3",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.adviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and adviser",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.coAdviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and coAdviser",
      // title: GenCaps.value.panels1,
    });
  }
  // else if (GenCaps.value.panels1 == GenCaps.value.instructor) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field panels1 and instructor",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  else if (GenCaps.value.panels1 == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.panels3) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and panels3",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.adviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and adviser",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.coAdviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and coAdviser",
      // title: GenCaps.value.panels1,
    });
  }
  // else if (GenCaps.value.panels2 == GenCaps.value.instructor) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field panels2 and instructor",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  else if (GenCaps.value.panels2 == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels3 == GenCaps.value.adviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and adviser",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels3 == GenCaps.value.coAdviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and coAdviser",
      // title: GenCaps.value.panels1,
    });
  }
  //  else if (GenCaps.value.panels3 == GenCaps.value.instructor) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field panels3 and instructor",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  else if (GenCaps.value.panels3 == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and secretarys",
      // title: GenCaps.value.panels1,
    });
  }
  // else if (GenCaps.value.adviser == GenCaps.value.coAdviser) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field adviser and coAdviser",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  // else if (GenCaps.value.adviser == GenCaps.value.instructor) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field adviser and instructor",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  else if (GenCaps.value.adviser == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and secretarys",
      // title: GenCaps.value.panels1,
    });
  }
  //  else if (GenCaps.value.coAdviser == GenCaps.value.instructor) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field coAdviser and instructor",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  else if (GenCaps.value.coAdviser == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field coAdviser and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else {
    axios.get("/api/get_capstonee1").then((response) => {
      caps.value = response.data.capstone11111;
    });
    // caps.value.ocr;

    // toast.fire({
    //   icon: "warning",
    //   title: caps.value.ocr,
    //   // title: GenCaps.value.panels1,
    // });

    const formData = new FormData();
    formData.append("title", GenCaps.value.title);
    formData.append("abstract", GenCaps.value.abstract);
    formData.append("groupname", GenCaps.value.groupname);

    formData.append("students1", GenCaps.value.students1);
    formData.append("students2", GenCaps.value.students2);
    formData.append("students3", GenCaps.value.students3);
    formData.append("students4", GenCaps.value.students4);

    formData.append("panels1", GenCaps.value.panels1);
    formData.append("panels2", GenCaps.value.panels2);
    formData.append("panels3", GenCaps.value.panels3);

    formData.append("adviser", GenCaps.value.adviser);
    formData.append("coAdviser", GenCaps.value.coAdviser);

    formData.append("instructor", year.value.fromYear + " - " + year.value.toYear);

    formData.append("secretarys", GenCaps.value.secretarys);
    formData.append("xf1", GenCaps.value.xf1);
    formData.append("xf2", GenCaps.value.xf2);
    // formData.append("c", "vdvdv");
    // formData.append("sy", year.value.fromYear + "-" + year.value.toYear);

    axios
      .post("/api/add_capstone_project", formData)
      .then((response) => {
        const removeData = new FormData();
        removeData.append("texttext", ".");
        axios
          .post("/api/add_capstonee1", removeData)

          .then((response) => {
            (GenCaps.value.title = ""),
              (caps.value.ocr = ""),
              (GenCaps.value.groupname = ""),
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
              (GenCaps.value.xf1 = ""),
              (GenCaps.value.xf2 = ""),
              // (GenCaps.value.start_date = ""),
              router.push("/capslist");

            toast.fire({
              icon: "success",
              title: "Capstone Create Successfully",
            });
          });

        (GenCaps.value.title = ""),
          (caps.value.ocr = ""),
          (GenCaps.value.groupname = ""),
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
          (GenCaps.value.xf1 = ""),
          (GenCaps.value.xf2 = ""),
          // (GenCaps.value.start_date = ""),
          router.push("/capslist");

        // toast.fire({
        //   icon: "success",
        //   title: "User Add Successfully",
        // });
      })
      // .catch((error = {}));
      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "Capstone Create Unsuccessful",
        });
        // (error = {}));
        // console.log("ERRRR:: ",error.response.data);
      });
    // console.log("ERRRR:: ",error.response.data);
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

// const onView1 = () => {
//   router.push("/capstone1");
// };
// const onView2 = () => {
//   router.push("/capstone2");
// };
// const onView3 = () => {
//   router.push("/capstone3");
// };
// const onUpdate1 = () => {
//   router.push("/caps1edit");
// };
// const onUpdate2 = () => {
//   router.push("/caps2edit");
// };
// const onUpdate3 = () => {
//   router.push("/caps3edit");
// };
</script>

<style>
hr {
  border: 1px solid #0062ff;
}
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
.pbn {
  margin-top: 8px;
}
.inputColor {
  border: 1px solid #0062ff;
  border-radius: 4px;
}
.titleText {
  font-size: 16;
  font-weight: bolder;
}
</style>

<script>
// import Vue from "vue";
import { ref, defineComponent, onMounted } from "vue";
// import { onMounted, ref } from "vue";
import { QuillEditor } from "@vueup/vue-quill";
import "@vueup/vue-quill/dist/vue-quill.snow.css";
import Camera from "simple-vue-camera";

// import { useRouter } from "vue-router";
// const router = useRouter();

export default defineComponent({
  name: "RichTextEditor",
  name: "Camera",
  components: {
    QuillEditor,
    Camera,
  },
  data() {
    return {
      dataUrl: "",
      status: "",
      isCameraOpen: false,
      isPhotoTaken: false,
      textcontent: "",
      concatSting: "",
      caps: { ocr: "" },
      mainAbstract: "",
    };
  },
  methods: {
    updateCanvasImage(e) {
      this.status = "initialize";
      var self = this;

      // const canvas = document
      //   .getElementById("photoTaken")
      //   .toDataURL("image/jpeg")
      //   .replace("image/jpeg", "image/octet-stream");

      var reader,
        files = e.target.files;

      var reader = new FileReader();

      reader.onload = (e) => {
        var img = new Image();
        img.onload = function () {
          self.drawCanvasImage(img);
        };
        img.src = event.target.result;
      };

      reader.readAsDataURL(files[0]);
    },

    drawCanvasImage(img) {
      var vm = this;

      var canvas = this.$refs.imageCanvas;

      canvas.width = img.width;
      canvas.height = img.height;

      var ctx = canvas.getContext("2d");
      ctx.drawImage(img, 0, 0);
      this.dataUrl = canvas.toDataURL();
      this.status = "READING!!!";
      Tesseract.recognize(this.dataUrl, "eng", {
        logger: (log) => {
          console.log(log);
        },
      })
        .then((result) => {
          // alert(result.data.text);
          this.textcontent = result.data.text;

          this.mainAbstract = this.textcontent;
          vm.status = "";
        })
        .catch((error) => console.log(error))
        .finally(() => {});
    },

    saveCapstonee1() {
      axios
        .post("/api/add_capstonee1", {
          texttext: this.getCapstoneData() + this.textcontent,
        })
        .then((response) => {
          toast.fire({
            icon: "success",
            title: "Succesfully Added",
          });
          location.reload();
          // this.getCapstone();
          // $("#success").html(response.data.message);
        });
    },
    saveCapstonee2() {
      axios
        .post("/api/add_capstonee1", {
          texttext: this.getCapstoneData(),
        })
        .then((response) => {
          toast.fire({
            icon: "success",
            title: "Abstract Save Successfully",
          });
          // location.reload();
          // this.getCapstone();
          // $("#success").html(response.data.message);
        });
    },
    getCapstone() {
      axios.get("/api/get_capstonee1").then((response) => {
        this.caps = response.data.capstone11111;
      });
    },
    getCapstoneData() {
      axios.get("/api/get_capstonee1").then((response) => {
        this.caps = response.data.capstone11111;
      });
      return this.caps.ocr;
    },
  },

  created() {
    this.getCapstone();
    this.getCapstoneData();
  },
});
</script>
