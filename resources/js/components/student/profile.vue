<template>
  <div
    class="card mb-3 boxProfilee text-center mx-auto d-block col-md-6 contentOfThePage"
  >
    <img src="/images/buksuBg.jpg" alt="logo" class="boxBg" />

    <img id="" :src="getPhoto()" alt="img" class="boxP" />
    <div class="text-center">
      <h5>{{ form.name }} {{ form.mname }} {{ form.lname }}</h5>
      <p>College of Technologies</p>
      <p>Bachelor of Science in Information Technology - {{ form.year }}</p>
      <p>{{ form.email }}</p>
    </div>
  </div>
  <div class="formProfile pe-3 ms-1 shadow p-3 mb-5 bg-light contentOfThePage">
    <h5 class="fw-bold">PROFILE</h5>
    <br />
    <div class="row">
      <div class="col-lg-4">
        <label for="universityID" class="form-label">University ID</label>
        <input
          type="text"
          class="form-control input"
          v-model="form.uid"
          aria-label="University ID"
        />
      </div>
      <div class="col-lg-4">
        <label for="emailAddress" class="form-label">Email Address</label>
        <input
          type="text"
          class="form-control input"
          aria-label="Email Address"
          v-model="form.email"
        />
      </div>

      <div class="col-lg-4">
        <label for="password" class="form-label">Password</label>

        <div class="input-group mb-3">
          <input
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
      <div class="col-lg-4">
        <label for="firstname" class="form-label">First Name</label>
        <input
          type="text"
          class="form-control"
          placeholder="FIRST NAME"
          aria-label="First name"
          v-model="form.name"
        />
      </div>
      <div class="col-lg-4">
        <label for="middlename" class="form-label">Middle Initial</label>
        <input
          type="text"
          class="form-control"
          placeholder="MIDDLE INITIAL"
          aria-label="Middle Name"
          v-model="form.mname"
        />
      </div>
      <div class="col-lg-4">
        <label for="lastname" class="form-label">Last Name</label>
        <input
          type="text"
          class="form-control"
          placeholder="LAST NAME"
          aria-label="Last name"
          v-model="form.lname"
        />
      </div>
    </div>
    <div class="row pt-3">
      <div class="col-lg-4">
        <label for="college" class="form-label">College (disabled)</label>
        <input
          type="text"
          class="form-control"
          placeholder="COLLEGE OF TECHNOLOGY"
          aria-label="COLLEGE OF TECHNOLOGY"
          disabled
        />
      </div>

      <div class="col-lg-4">
        <label for="lastname" class="form-label">Choose Year (Student)</label>
        <div class="input-group mb-3">
          <select
            class="form-select"
            id="inputGroupSelect01"
            disabled
            v-model="form.year"
          >
            <option selected>Choose...</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>
          </select>
        </div>
      </div>

      <div class="col-lg-4">
        <div class="form-check twoSides">
          <input
            class="form-check-input"
            type="radio"
            name="Male"
            value="Male"
            id="Male"
            v-model="form.gender"
          />
          <label class="form-check-label" for="flexRadioDefault1"> Male </label>
        </div>

        <div class="form-check twoSides col-4">
          <input
            class="form-check-input"
            type="radio"
            name="Female"
            value="Female"
            id="Female"
            v-model="form.gender"
          />
          <label class="form-check-label" for="flexRadioDefault2"> Female </label>
        </div>
      </div>
      <hr />
      <div class="row">
        <li>
          <img id="imgPhoto" :src="getPhoto()" alt="img" />
        </li>
        <li>
          <input type="file" accept="image/*" alt="imgNeh" @change="updatePhoto" />
        </li>
      </div>
    </div>
    <br />
    <hr />

    <div class="row text-center px-2">
      <button type="button" class="btn btn-primary col fw-bold" @click="updateUser()">
        UPDATE
      </button>
    </div>
  </div>
</template>

<script setup>
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { ref } from "vue";

let form = ref({
  userId: "",
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
});

const props = defineProps({
  id: {
    type: String,
    default: "",
  },
});

const getPhoto = () => {
  let photo = "/images/instructor.jpg";
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
  let response = await axios.get("/api/myprofile/");
  form.value = response.data.userrs;
  console.warn("userrs", form.value);
};

const updateUser = () => {
  if (form.value.password == "" || form.value.password == null) {
    toast.fire({
      icon: "warning",
      title: "Please fill the password field",
    });
  } else {
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

    axios
      .post("/api/myprofile_update", formData)

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
          window.location.reload();
        getsingleUser();
        toast.fire({
          icon: "success",
          title: "Updated Successfully",
        });
      })

      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "Update failed, please change the the temporary avatar",
        });
      });
  }
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
</script>

<style scope>
.boxProfilee {
  height: 100%;

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
