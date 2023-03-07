<template>
  <form
    class="contentOfThePage formProfile stleBox1 pe-3 ms-1 shadow p-3 mb-5 bg-light ref"
  >
    <div></div>
    <h5 class="fw-bold">CREATE USER</h5>
    <br />
    <div class="row">
      <div class="col">
        <label for="universityID" class="form-label">University ID</label>
        <input
          type="text"
          class="form-control"
          placeholder="UNIVESITY ID"
          aria-label="University ID"
          v-model="form.uid"
        />
   
      </div>
      <div class="col">
        <label for="emailAddress" class="form-label">Email Address</label>
        <input
          type="text"
          class="form-control"
          placeholder="EMAIL ADDRESS"
          aria-label="Email Address"
          v-model="form.email"
        />
      </div>
  

      <div class="col">
        <label for="password" class="form-label">Password</label>

        <div class="input-group mb-3">
          <input
            :type="type"
            class="form-control"
            placeholder="Input Password"
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
    <div class="row">
      <div class="col">
        <label for="firstname" class="form-label">First Name</label>
        <input
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
          type="text"
          class="form-control"
          placeholder="LAST NAME"
          aria-label="Last name"
          v-model="form.lname"
        />
    
      </div>
    </div>
    <div class="row mt-3">
      <div class="col">
        <label for="college" class="form-label"
          >College <span id="colorspan">(disabled)</span></label
        >
        <input
          type="text"
          class="form-control"
          placeholder="COLLEGE OF TECHNOLOGY"
          aria-label="COLLEGE OF TECHNOLOGY"
          disabled
        />
      </div>

      <div class="col">
        <label for="lastname" class="form-label"
          >Year <span id="colorspan">(Student)</span>
        </label>
        <div class="input-group mb-3">
          <select class="form-select" id="inputGroupSelect01" v-model="form.year">
            <option selected>Choose...</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>
            <option value="5th year">5th year</option>
          </select>
        </div>
      </div>

      <div class="col">
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

        <div class="form-check twoSides">
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

      <div class="row">
        
        <div class="col-4">
          <label for="lastname" class="form-label">User Type</label>
          <div class="input-group mb-3">
            <select class="form-select" id="inputGroupSelect01" v-model="form.usertype">
              <option selected>Choose...</option>
              <option value="student">STUDENT</option>
            </select>
          </div>
        </div>
        <div class="col-1 forMArgin">
          <label for="Avatar" class="form-label ps-1">Avatar : </label>
        </div>
        <li class="col-2 forMArgin">
          <input
            id="getFile"
            for="myFile"
            type="file"
            accept="image/*"
            alt="imgNeh"
            @change="updatePhoto"
          />
        </li>
        <li class="col-1 paddingRimg">
          <img id="imgPhoto" class="border" :src="getPhoto()" alt="img" />
        </li>
      </div>
    </div>
    <br />
   

    <div class="row text-center px-2">
      <button type="button" class="btn btn-primary col fw-bold" @click="saveUser()">
        SAVE USER
      </button>
    </div>
  </form>
</template>

<script setup>

import { useRouter } from "vue-router";
import { ref } from "vue";
let form = ref({
  uid: "",
  email: "",
  password: "",
  name: "",
  mname: "",
  lname: "",
  year: "",
  gender: "",
  photo: null,
  usertype: "",
});

const router = useRouter();

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

const saveUser = () => {
  const formData = new FormData();
  formData.append("uid", form.value.uid);
  formData.append("email", form.value.email);
  formData.append("password", form.value.password);

  formData.append("name", form.value.name);
  formData.append("mname", form.value.mname);
  formData.append("year", form.value.year);
  formData.append("lname", form.value.lname);

  formData.append("gender", form.value.gender);

  if (form.value.photo != null) {
    formData.append("photo", form.value.photo);
  } else {
    formData.append("photo", "0");
  }

  formData.append("usertype", form.value.usertype);

  axios
    .post("/api/add_user", formData)
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
        (form.value.usertype = ""),
        router.push("/create");

      toast.fire({
        icon: "success",
        title: "User Add Successfully",
      });
    })
 
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "User Add Unsuccessful",
      });
  
    });
 
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
<style>
.twoSides {
  display: inline-block;
  margin-right: 5%;
  margin-top: 7%;
}
#imgPhoto {
  height: 200px;
  width: 200px;
}
.stleBox1 {
  border: 1px solid;
  box-shadow: 1px 1px 10px #0062ff !important;
  padding: 20px !important;
  height: 100% !important;
  padding-top: 50px !important;
  padding-bottom: 50px !important;
}
.forMArgin {
  margin-top: 42px;
}
#imgPhoto {
  height: 80px !important;
  width: 80px !important;
}
.paddingRimg {
  float: right;
}
#colorspan {
  color: #6b7179;
}
</style>
