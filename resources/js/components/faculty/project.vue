<template>
  <div class="contentOfThePage p-5">
    <h5 class="text-left boldThese">Titleeeeeeeeeeeeeee</h5>
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

    <h5 class="text-left boldThese">Abstract</h5>
    <div class="form-floating col">
      <textarea
        v-model="GenCaps.abstract"
        class="form-control inputColor"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 200px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <br />
    </div>
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
      <div class="col">
        <label for="instructor" class="form-label">Instructor</label>
        <div class="input-group mb-3">
          <select class="form-control inputColor" v-model="GenCaps.instructor">
            <!-- <option value="0">Select instructor</option> -->
            <option v-for="item in instructors" :key="item.id" :value="item.id">
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
    <h5 class="boldThese">Proponents</h5>
    <div class="row">
      <div class="col">
        <label for="students" class="form-label">Proponet</label>
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
        <label for="students" class="form-label">Proponet</label>
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
        <label for="students" class="form-label">Proponet</label>
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
        <label for="students" class="form-label">Proponet</label>
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
    <br />
    <div class="row">
      <div class="col">
        <button type="button" class="m-1 btnSize btn btn-primary" @click="saveCaps()">
          Save
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref } from "vue";
import router from "../../routers/facultyRouter";

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
  } else if (GenCaps.value.adviser == GenCaps.value.coAdviser) {
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role for field adviser and coAdviser",
      // title: GenCaps.value.panels1,
    });
  }
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
  }
  // else if (GenCaps.value.instructor == GenCaps.value.secretarys) {
  //   toast.fire({
  //     icon: "warning",
  //     title: "Invalid, duplicate role for field instructor and secretarys",
  //     // title: GenCaps.value.panels1,
  //   });
  // }
  else {
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

    // formData.append("instructor", GenCaps.value.instructor);

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
