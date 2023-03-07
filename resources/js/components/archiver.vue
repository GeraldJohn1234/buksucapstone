<template>
  <div class="wrapper container-fluid">
    <div class="sidebar" id="scrollAble">
      <div class="row logoHeader point" @click="dash()">
        <div class="col-md-4 avatarImg">
          <img src="/images/buksu.png" alt="logo" />
        </div>
        <div class="col-md-8 row1">
          <h2><span id="label">BukSU</span></h2>
        </div>
      </div>

      <ul>
        <li>
          <router-link class="a nav_link" to="/profile">
            <i>
              <font-awesome-icon
                icon="fa-solid fa-address-card"
                style="width: 24px; height: 24px"
              />
            </i>
            <span id="label">PROFILE</span>
          </router-link>
        </li>

        <li>
          <router-link class="a nav_link" to="/capslist">
            <i>
              <font-awesome-icon
                icon="fa-solid fa-file"
                style="width: 24px; height: 24px"
              />
            </i>

            <span id="label">CAPSTONE LIST</span>
          </router-link>
        </li>

        <li id="logout">
          <a href="#" @click="logout">
            <i>
              <font-awesome-icon
                icon="fa-solid fa-right-from-bracket"
                style="width: 24px; height: 24px"
              />
            </i>

            <span id="label">LOGOUT</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="main_content">
      <div class="header">
        <div class="headerL">Capstone Project Monitoring and Archiving System</div>
        <div class="headerR row">
          <div class="footer content">
            <img
              id="rizal"
              class="avatarUser mt-3 rounded-circle border border-dark"
              :src="getPhoto()"
              alt="img"
            />
            <div class="p">
              <span class="topA ms-1" id="labelAvatar">
                {{ form.name }} {{ form.mname }} {{ form.lname }}
              </span>
              <br />
            </div>
            <p class="roleAvatar ms-5 me-2">ARCHIVER</p>
          </div>
        </div>
      </div>

      <br />

      <!-- CONTENT -->
      <div class="info">
        <router-view></router-view>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { ref } from "vue";
import router from "../routers/archiverRouter";

const dash = () => {
  router.push("/profile");
};

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

onMounted(async () => {
  getsingleUser();
  getPhoto();
});

const storeDashoard = () => {
  axios
    .post("/api/store_dashboard")
    .then((response) => {})

    .catch(function (error) {});
};

const getPhoto = () => {
  let photo = "/upload/leader.jpg";
  if (form.value.photo) {
    if (form.value.photo.indexOf("base64") != -1) {
      photo = form.value.photo;
    } else {
      photo = "/upload/" + form.value.photo;
    }
  }
  return photo;
};
const props = defineProps({
  userId: {
    type: String,
    default: "",
  },
});
const getsingleUser = async () => {
  let response = await axios.get("/api/myprofile");
  form.value = response.data.userrs;
  console.warn("userrs", form.value);
};

const logout = () => {
  axios
    .post("/logout", {})
    .then((res) => {
      location.href = "/";
    })
    .catch((err) => {});
};
</script>

<style scoped>
.point {
  cursor: pointer;
}
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;

  font-family: "Myriad Pro", Myriad, "Liberation Sans", "Nimbus Sans L", "Helvetica Neue",
    Helvetica, Arial, sans-serif !important;
}
.wrapper {
  display: flex;
  position: relative;
}

@media screen and (min-width: 811px) {
  .logoHeader {
    border-bottom: 1px solid #000;
    box-shadow: 2px 1px 10px #888888;
    padding: 3px;
    padding-left: 15px;
  }
  .roleAvatar {
    font-size: 18px;
    margin-top: -23px;
    text-align: center;
  }
  .wrapper .sidebar {
    position: fixed;
    width: 230px;
    height: 100%;
    background: #fff;
    padding: 0px 0;
    border-right: 0.11px solid #000000;
    box-shadow: 2px 1px 10px #888888;
  }

  .wrapper .main_content {
    width: 100%;
    margin-left: 230px;
    margin-right: 1px;
  }
  #logout {
    position: absolute;
    bottom: 8px;
    left: 0px;
    width: 230px;
    border-top: 1px solid #d6d2d2;
  }
}

@media screen and (max-width: 1019px) {
  #labelAvatar,
  .roleAvatar {
    display: none;
  }

  #label {
    display: none;
  }
  .logoHeader {
    border-bottom: 1px solid #000;
    box-shadow: 2px 1px 10px #888888;
    padding-left: 10px;
  }
  .wrapper .sidebar {
    position: fixed;
    width: 80px;
    height: 100%;
    background: #fff;
    padding: 0px 0;
    border-right: 0.11px solid #000000;
    box-shadow: 2px 1px 10px #888888;
  }
  #logout {
    position: absolute;
    bottom: 8px;
    left: 0px;
    width: 80px;
    border-top: 1px solid #d6d2d2;
  }
  .wrapper .main_content {
    width: 100%;
    margin-left: 80px;
  }
}

@media screen and (max-width: 731px) {
  #rizal {
    display: none;
  }
}

.wrapper .sidebar .row .row1 h2 {
  text-transform: uppercase;
  font-weight: bold;
  margin-bottom: 15px;
  margin-top: 15px;
  padding-left: 2px;
  padding-top: 18;
  padding-bottom: 18;
  font-size: 25px;
  color: #000000;
}
.wrapper .sidebar ul li {
  padding: 15px;
  padding-top: 10px;
  padding-bottom: 10px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  border-top: 1px solid rgba(225, 225, 225, 0.05);
}
.wrapper .sidebar ul li a {
  color: #000000;
  display: block;
  font-size: 12px;
  justify-content: center;
}
.wrapper .sidebar ul li a i {
  color: #000;
  padding-left: 12px;
  padding-right: 10px;
}

.wrapper .sidebar ul li:hover {
  background: #e1e1e2;
}
.wrapper .sidebar ul li:hover a {
  color: rgb(0, 0, 0);
  font-weight: bold;
}

.info {
  margin-left: 10px;
  margin-right: 20px;
}
.wrapper .main_content .header {
  height: 67px;
  border-bottom: 1px solid #3b3b3b;
  box-shadow: 2px 1px 10px #888888;
  background: #ffffff;
}
.wrapper .main_content .headerL {
  padding: 11px;
  font-size: 25px;
  background: #fff;
  color: #717171;
  float: left;
}
.wrapper .main_content .headerR {
  background: #fff;
  color: #717171;
  float: right;
  font-size: 10px;
}

#r {
  float: right;
}
#l {
  float: left;
}
.footer.content > img {
  display: inline-block;
  width: 35px;
  height: 35px;
}
.p {
  display: inline-block;
  margin-left: 5px;
  margin-right: 10px;
  margin-top: 18px;
  justify-content: center;
}
.topA {
  font-size: 12px;
  font-weight: bolder;
}
#listOfUser {
  font-weight: bolder;
  color: rgb(0, 0, 0);
  margin-left: 60px;
  border-bottom: 1px solid #3b3b3b;
  cursor: default;
}
.router-link-active {
  background: #0062ff;
  letter-spacing: 1px;
  color: #fff !important;
  padding-bottom: 10px;
  padding-top: 10px;
  font-weight: bolder;
  border-radius: 5px 50px 50px 5px;
}
.router-link-active i {
  color: #fff !important;
}
.avatarImg {
  width: 40px;
  height: 40px;
  margin-left: 10px;
  margin-right: 10px;
  margin-top: 10px;
}
</style>
