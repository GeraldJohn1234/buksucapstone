<template>
  <div class="contentOfThePage">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase boldThese">CREATE TOPIC SUGGESTIONS</h5>
      <hr class="toTop" />
      <!-- <p class="toTopp boldThese">CREATE TOPIC SUGGESTIONS</p> -->
    </div>

    <h5 class="text-left boldThese">TITLE</h5>
    <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 100px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Title</label>
      <br />
    </div>

    <h5 class="text-left boldThese">TOPIC DESCRIPTION</h5>
    <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 200px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
    </div>
    <P class="text-left boldThese">INFORMATION</P>
    <div class="row">
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Client Name</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Client Name"
        ></textarea>
      </div>
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Client Company</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Company"
        ></textarea>
      </div>
    </div>
    <div class="row">
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Client Location</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Location"
        ></textarea>
      </div>
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Thoughts</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Thoughts about the topic"
        ></textarea>
      </div>
    </div>

    <br />
    <div class="row">
      <div class="col">
        <button type="button" class="m-1 btnSize btn btn-primary">CREATE TOPIC</button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../../routers/administratorRouter";

let secretarys = ref({});
let students = ref({
  name: "",
  mname: "",
  lname: "",
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
});

onMounted(async () => {
  getSecretary();
  getStudent();
  getPanel();
  getAdviser();
  getInstructor();
});

const saveCaps = () => {
  if (GenCaps.value.students1 == GenCaps.value.students2) {
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
  } else if (GenCaps.value.panels1 == GenCaps.value.instructor) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels1 and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.secretarys) {
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
  } else if (GenCaps.value.panels2 == GenCaps.value.instructor) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels2 and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.secretarys) {
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
  } else if (GenCaps.value.panels3 == GenCaps.value.instructor) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.panels3 == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field panels3 and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.adviser == GenCaps.value.coAdviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and coAdviser",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.adviser == GenCaps.value.instructor) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.adviser == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.coAdviser == GenCaps.value.instructor) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field coAdviser and instructor",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.coAdviser == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field coAdviser and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else if (GenCaps.value.instructor == GenCaps.value.secretarys) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field instructor and secretarys",
      // title: GenCaps.value.panels1,
    });
  } else {
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

    formData.append("instructor", GenCaps.value.instructor);

    formData.append("secretarys", GenCaps.value.secretarys);

    axios
      .post("/api/add_capstone", formData)
      .then((response) => {
        (GenCaps.value.title = ""),
          (GenCaps.value.abstract = ""),
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
