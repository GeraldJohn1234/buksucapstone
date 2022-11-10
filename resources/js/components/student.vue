<template>
  <div class="wrapper container-fluid">
    <div class="sidebar" id="scrollAble">
      <!-- <img class="avatarImg" src="/images/buksu.png" alt="User Avatar">
      <h2 class="">SideBar</h2> -->

      <div class="row logoHeader point" @click="dash()">
        <div class="col-md-4 avatarImg">
          <img src="/images/buksu.png" alt="logo" />
        </div>
        <div class="col-md-8 row1">
          <h2><span id="label">BukSU</span></h2>
        </div>
      </div>

      <!-- <ul>
   
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
 
        <li id="">
          <a href="#" @click="rateddd()">
            <i>
              <font-awesome-icon
                icon="fa-solid fa-user-pen"
                style="width: 24px; height: 24px"
              />
            </i>

            <span id="label">MY PROJECT</span>
          </a>
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

        <li>
          <router-link class="a nav_link" to="/topic">
            <i>
              <font-awesome-icon
                icon="fa-solid fa-lightbulb"
                style="width: 24px; height: 24px"
              />
            </i>

            <span id="label">TOPIC SUGGESTION</span>
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
      </ul> -->
      <ul>
        <!-- <li class="pt-4" @click="active1()">
          <div class="a nav_link row" :class="activehead1">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-dashboard"
                style="width: 24px; height: 24px"
              />
            </i>
            <div class="col-md-8" id="label">DASHBOARD</div>
          </div>
        </li> -->
        <li class="" @click="active2()">
          <div class="a nav_link row" :class="activehead2">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-address-card"
                style="width: 24px; height: 24px"
              />
            </i>
            <div class="col-md-8" id="label">PROFILE</div>
          </div>
        </li>
        <!-- <li id="">
          <a href="#" @click="rateddd()">
            <i>
              <font-awesome-icon
                icon="fa-solid fa-user-pen"
                style="width: 24px; height: 24px"
              />
            </i>

            <span id="label">MY PROJECT</span>
          </a>
        </li> -->
        <li @click="active6()">
          <div class="a nav_link row" :class="activehead6">
            <!-- <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-users"
                style="width: 24px; height: 24px"
              />
            </i> -->
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-user-pen"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">MY PROJECT</div>
          </div>
        </li>

        <li @click="active3()">
          <div class="a nav_link row" :class="activehead3">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-file"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">CAPSTONE LIST</div>
          </div>
        </li>

        <li @click="active4()">
          <div class="a nav_link row" :class="activehead4">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-lightbulb"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">TOPIC SUGGESTION</div>
          </div>
        </li>
        <!-- <li @click="active6()">
          <div class="a nav_link row" :class="activehead6">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-users"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">STUDENT</div>
          </div>
        </li>

        <div class="listOfUser pt-3 ps-2">
          <a id="listOfUser">
            <div class="" id="label">CAPSTONE ROLE</div>
          </a>
        </div>

        <li @click="active5()">
          <div class="a nav_link row" :class="activehead5">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-chalkboard-teacher"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">ADVISEE</div>
          </div>
        </li>

        <li @click="active7()">
          <div class="a nav_link row" :class="activehead7">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-user"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">INSTRUCTOR</div>
          </div>
        </li>

        <li @click="active8()">
          <div class="a nav_link row" :class="activehead8">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-users-rectangle"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">PANEL</div>
          </div>
        </li> -->

        <li id="logout" @click="logout">
          <div class="row a nav_link">
            <i class="col-md-3">
              <font-awesome-icon
                icon="fa-solid fa-right-from-bracket"
                style="width: 24px; height: 24px"
              />
            </i>

            <div class="col-md-8" id="label">LOGOUT</div>
          </div>
        </li>
      </ul>
    </div>
    <div class="main_content">
      <div class="header topHeader">
        <div class="headerL">Capstone Archiving Management System</div>

        <div class="headerR rheadertop footer content bg-light row">
          <img
            @click="active2()"
            class="avatarUser mt-3 rounded-circle border bg-info col point"
            id="rizal"
            :src="getPhoto()"
            alt="img"
          />

          <div class="col text-center mx-2 mt-2">
            <span class="topA" id="labelAvatar">
              {{ form.name }} {{ form.mname }} {{ form.lname }}
            </span>
            <br />
            <p class="roleAvatar mt-1 mx-5">STUDENT</p>
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
// import { useRouter } from "vue-router";
import { ref } from "vue";
import router from "../routers/studentRouter";
// import router from "../routers/facultyRouter";

const dash = () => {
  router.push("/profile");
  // location.reload();
};
let activehead1 = ref({
  activeStyle1: false,
});
let activehead2 = ref({
  activeStyle1: false,
});
let activehead3 = ref({
  activeStyle1: false,
});
let activehead4 = ref({
  activeStyle1: false,
});
let activehead5 = ref({
  activeStyle1: false,
});
let activehead6 = ref({
  activeStyle1: false,
});
let activehead7 = ref({
  activeStyle1: false,
});
let activehead8 = ref({
  activeStyle1: false,
});
const active1 = () => {
  activehead1.value.activeStyle1 = true;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = false;
  storeDashoard();
};
const active2 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = true;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = false;
  profile();
};
const active3 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = true;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = false;
  capslist();
};
const active4 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = true;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = false;
  topic();
};
const active5 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = true;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = false;
  advisee();
};
const active6 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = true;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = false;
  // student();
  rateddd();
};
const active7 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = true;
  activehead8.value.activeStyle1 = false;
  instructor();
};
const active8 = () => {
  activehead1.value.activeStyle1 = false;
  activehead2.value.activeStyle1 = false;
  activehead3.value.activeStyle1 = false;
  activehead4.value.activeStyle1 = false;
  activehead5.value.activeStyle1 = false;
  activehead6.value.activeStyle1 = false;
  activehead7.value.activeStyle1 = false;
  activehead8.value.activeStyle1 = true;
  panel();
};
const panel = () => {
  router.push("/panel");
};
const advisee = () => {
  router.push("/advisee");
};
// const dash = () => {
//   router.push("/dashboard");
// };
const profile = () => {
  router.push("/profile");
};
const capslist = () => {
  router.push("/capslist");
};
const topic = () => {
  router.push("/topic");
};
const admin = () => {
  router.push("/admin");
};
const student = () => {
  router.push("/student");
};
const instructor = () => {
  router.push("/instructor");
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

// const myproject = () => {
//   router.push("/editcap/" + 1);
// };

const rateddd = async () => {
  let response = await axios.get("/api/project_check");
  let checkdata = response.data.ans;

  if (checkdata != 0) {
    axios
      .post("/api/create_capstone_proj/" + checkdata)
      .then((response) => {
        router.push("/editcap/" + checkdata);
      })
      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "SOMETHING WRONG",
        });
      });

    // router.push("/editcap/" + checkdata);
  } else {
    router.push("/noproject");
  }

  //   const edithCap = (id) => {
  //   axios
  //     .post("/api/create_capstone_proj/" + id)
  //     .then((response) => {
  //       router.push("/editcap/" + id);
  //     })

  //     .catch(function (error) {
  //       console.log(error.response.data.errors);
  //       console.log("ERRRR:: ", error.response.data);

  //       toast.fire({
  //         icon: "warning",
  //         title: "SOMETHING WRONG",
  //       });
  //     });
  // };

  // toast.fire({
  //   icon: "success",
  //   title: checkdata,
  // });
  // if (capsproject.value.capstone_id != null) {
  //   let id = capsproject.value.capstone_id;
  //   router.push("/editcap/" + id);
  // } else {
  //   router.push("/noproject");
  // }
};

const getPhoto = () => {
  let photo = "/images/student.jpg";
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

  // console.warn(test);

  // test = ("userrs", form.value.name);
};
// export default {
//   mounted() {
//     console.log("Component mounted.");
//   },
//   data() {
//     return {};
//   },
//   methods: {
//     logout() {
//       axios
//         .post("/logout", {})
//         .then((res) => {
//           location.href = "/";
//         })
//         .catch((err) => {});
//     },
//   },
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
.activeStyle1 {
  background: #0062ff;

  letter-spacing: 1px;
  color: #fff !important;

  padding-top: 10px;
  padding-bottom: 4px;
  font-weight: bolder;
  border-radius: 5px 50px 50px 5px;
}
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

/* this is a comment */

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
    width: 250px;
    height: 100%;
    background: #fff;
    padding: 0px 0;
    border-right: 0.11px solid #000000;
    box-shadow: 2px 1px 10px #888888;
  }

  .wrapper .main_content {
    width: 100%;
    margin-left: 250px;
    margin-right: 1px;
  }
  #logout {
    padding-top: 28px;
    position: absolute;
    bottom: 8px;

    width: 248px;
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
  padding-top: 13px;
  padding-bottom: 13px;
  cursor: pointer;

  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  border-top: 1px solid rgba(225, 225, 225, 0.05);
  background: rgb(255, 255, 255);
}

.a div {
  font-size: 13px;
  margin-top: 4px;
  font-family: "Myriad Pro", Myriad, "Liberation Sans", "Nimbus Sans L", "Helvetica Neue",
    Helvetica, Arial, sans-serif !important;
}
.wrapper .sidebar ul li .a i {
  color: #000;
  padding-left: 12px;
  padding-right: 10px;
}

.wrapper .sidebar ul li:hover {
  background: #e1e1e2;
}
.wrapper .sidebar ul li:hover .a {
  color: rgb(0, 0, 0);
  font-weight: bolder;
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
.toTop {
  top: 100px;
}
.centerThis {
  margin: auto;
  text-align: center;
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

div .active {
  background: #0062ff;
  letter-spacing: 1px;
  color: #fff !important;
  padding-bottom: 10px;
  padding-top: 10px;
  font-weight: bolder;
  border-radius: 5px 50px 50px 5px;
}
div .activeStyle1 i {
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
