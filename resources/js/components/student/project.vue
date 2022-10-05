<template>
  <div class="contentOfThePage">
    <!-- <button type="button" class="m-1 btnSize btn btn-primary fw-bold" @click="tryy()">
      Save
    </button> -->
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
    <h5 class="text-left boldThese">Optical Character Recognition for ABSTRACT</h5>
    <div class="row">
      <div class="col row contentOfThePage me-1 ms-3">
        <div class="col-10">
          <input type="file" id="imageLoader" @change="updateCanvasImage" />
        </div>
        <div class="col stats">{{ status }}</div>

        <div class="journey">
          <div class="centerne">
            <canvas id="imageCanvas" ref="imageCanvas"></canvas>
          </div>
        </div>
      </div>
      <!-- v-model="RichTextEditor.content" -->
      <div class="col contentOfThePage ms-1 me-3">
        <h5 class="text-left boldThese">CONVERTED TEXT</h5>
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
    </div>
    <!-- v-model="GenCaps.abstract" -->

    <h5 class="text-left boldThese">Abstract Or Project Descriptions</h5>
    <div class="form-floating col">
      <textarea
        v-model="caps.ocr"
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 200px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
      <button
        type="button"
        class="m-1 btnSize btn btn-primary W-100 fw-bold"
        @click="saveCapstonee1()"
      >
        SAVE ABSTRACT
      </button>
    </div>
    <hr />
    <P class="text-left boldThese">GENERAL INFORMATION</P>
    <div class="row">
      <div class="form-group col">
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
      <div class="col">
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

      <div class="col">
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
            <option value="5th year">5th year</option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="date" class="form-label">Date Project Started</label>
        <input type="date" class="col-12 inputColor" v-model="GenCaps.start_date" />
      </div>
    </div>

    <div class="row">
      <div class="col">
        <label for="panel1" class="form-label">Panel 1</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" v-model="GenCaps.panels1">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in panels" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="panel2" class="form-label">Panel 2</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" v-model="GenCaps.panels2">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in panels" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="panel3" class="form-label">Panel 3</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" v-model="GenCaps.panels3">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in panels" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>

      <div class="col">
        <label for="secretary" class="form-label">Secretary</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" v-model="GenCaps.secretarys">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in secretarys" :key="item.id" :value="item.id">
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
          <select class="form-control inputColor" v-model="GenCaps.students1">
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
          <select class="form-control inputColor" v-model="GenCaps.students2">
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
          <select class="form-control inputColor" v-model="GenCaps.students3">
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
          <select class="form-control inputColor" v-model="GenCaps.students4">
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
          <select class="form-control inputColor" v-model="GenCaps.adviser">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in advisers" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
      </div>
      <div class="col">
        <label for="coAdviser" class="form-label">Co-Adviser</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" v-model="GenCaps.coAdviser">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in advisers" :key="item.id" :value="item.id">
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
          CREATE PROJECT
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../routers/studentRouter";

let secretarys = ref({});
const tryc = () => {
  toast.fire({
    icon: "success",
    title: "textcontent",
  });
};

let students = ref({
  name: "",
  mname: "",
  lname: "",
});
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
  // datato();
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

const saveCaps = () => {
  if (
    GenCaps.value.students1 == GenCaps.value.students2 &&
    GenCaps.value.students1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students1 and students2",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.students1 == GenCaps.value.students3 &&
    GenCaps.value.students1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students1 and students3",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.students1 == GenCaps.value.students4 &&
    GenCaps.value.students1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students1 and students4",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.students2 == GenCaps.value.students3 &&
    GenCaps.value.students2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students2 and students3",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.students2 == GenCaps.value.students4 &&
    GenCaps.value.students2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students2 and students4",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.students3 == GenCaps.value.students4 &&
    GenCaps.value.students3 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field students3 and students4",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels1 == GenCaps.value.panels2 &&
    GenCaps.value.panels1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and panels2",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels1 == GenCaps.value.panels3 &&
    GenCaps.value.panels1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and panels3",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels1 == GenCaps.value.adviser &&
    GenCaps.value.panels1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and adviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels1 == GenCaps.value.coAdviser &&
    GenCaps.value.panels1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and coAdviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels1 == GenCaps.value.instructor &&
    GenCaps.value.panels1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels1 == GenCaps.value.secretarys &&
    GenCaps.value.panels1 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels2 == GenCaps.value.panels3 &&
    GenCaps.value.panels2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and panels3",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels2 == GenCaps.value.adviser &&
    GenCaps.value.panels2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and adviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels2 == GenCaps.value.coAdviser &&
    GenCaps.value.panels2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and coAdviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels2 == GenCaps.value.instructor &&
    GenCaps.value.panels2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels2 == GenCaps.value.secretarys &&
    GenCaps.value.panels2 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels3 == GenCaps.value.adviser &&
    GenCaps.value.panels3 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and adviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels3 == GenCaps.value.coAdviser &&
    GenCaps.value.panels3 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and coAdviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels3 == GenCaps.value.instructor &&
    GenCaps.value.panels3 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.panels3 == GenCaps.value.secretarys &&
    GenCaps.value.panels3 != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.adviser == GenCaps.value.coAdviser &&
    GenCaps.value.adviser != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and coAdviser",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.adviser == GenCaps.value.instructor &&
    GenCaps.value.adviser != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.adviser == GenCaps.value.secretarys &&
    GenCaps.value.adviser != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.coAdviser == GenCaps.value.instructor &&
    GenCaps.value.coAdviser != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field coAdviser and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.coAdviser == GenCaps.value.secretarys &&
    GenCaps.value.coAdviser != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field coAdviser and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (
    GenCaps.value.instructor == GenCaps.value.secretarys &&
    GenCaps.value.instructor != 0
  ) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field instructor and secretarys",
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
    formData.append("abstract", caps.value.ocr);
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

    formData.append("instructor", GenCaps.value.instructor);

    formData.append("secretarys", GenCaps.value.secretarys);
    formData.append("xf1", GenCaps.value.xf1);
    formData.append("xf2", GenCaps.value.xf2);
    formData.append("start_date", GenCaps.value.start_date);

    axios
      .post("/api/add_capstone", formData)
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
              (GenCaps.value.instructor = ""),
              (GenCaps.value.secretarys = ""),
              (GenCaps.value.xf1 = ""),
              (GenCaps.value.xf2 = ""),
              (GenCaps.value.start_date = ""),
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
          (GenCaps.value.instructor = ""),
          (GenCaps.value.secretarys = ""),
          (GenCaps.value.xf1 = ""),
          (GenCaps.value.xf2 = ""),
          (GenCaps.value.start_date = ""),
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
          title: "User Add Unsuccessful",
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
            title: "User Capstone Successfully",
          });
          this.getCapstone();
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
