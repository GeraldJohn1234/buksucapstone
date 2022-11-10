<template>
  <div class="contentOfThePage rounded bg-light p-2">
    <div class="">
      <div class="forInline capsList">STUDENT LIST</div>

      <div class="forInline float-end mtop">
        <!-- <button type="button" class="btn btn-primary box1" @click="create">CREATE</button> -->

        <router-link class="nav_link" to="/create">
          <button type="button" class="btn btn-primary box1">CREATE</button>
        </router-link>
      </div>
    </div>
    <hr />

    <div class="">
      <div class="input-group">
        <input
          type="search"
          placeholder="Search"
          aria-label="Search"
          aria-describedby="search-addon"
        />
        <button type="button" class="btn btn-outline-primary">search</button>
      </div>

      <div class="float-end topM">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block botM" for="">Sort by: </span>
          <select class="form-select inline-block box1" id="inputGroupSelect01">
            <option selected>Choose...</option>
            <option value="1">NAME</option>
            <option value="2">LAST NAME</option>
            <option value="3">YEAR</option>
            <option value="3">GROUPNAME</option>
          </select>
        </div>
      </div>
    </div>

    <br />
    <table
      class="table table--items users_list_item table-hover table-bordered table-striped text-center"
    >
      <thead>
        <tr>
          <th>#</th>
          <th>Avatar</th>
          <th>I.D</th>
          <th>FULLNAME</th>
          <th>YEAR</th>
          <!-- <th>GROUP NAME</th> -->
          <th class="col-4">Action</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, index) in users" :key="item.id">
          <!-- let capst = ref([]); -->
          <!-- <td>1</td> -->
          <td>{{ index + 1 }}</td>

          <td class="text-center">
            <img
              class="avatarImage1"
              :src="ourImage(item.photo)"
              alt="a"
              v-if="item.photo"
            />
          </td>
          <td>{{ item.uid }}</td>
          <td>{{ item.name }} {{ item.mname }} {{ item.lname }}</td>
          <td>{{ item.year }}</td>
          <!-- <td>
            {{ item.groupname }}
          </td> -->
          <td class="">
            <ul class="nav row">
              <li class="col">
                <!-- <router-link class="nav_link" to="/view"> -->
                <button
                  type="button"
                  class="btn btn-outline-success button1 fw-bold button1 my-1"
                  @click="onView(item.id)"
                >
                  VIEW
                </button>
                <!-- </router-link> -->
              </li>
              <li class="col">
                <!-- <router-link class="nav_link" to="/update"> -->
                <button
                  type="button"
                  class="btn btn-outline-primary button1 fw-bold button1 my-1"
                  @click="onEdith(item.id)"
                >
                  UPDATE
                </button>
                <!-- </router-link> -->
              </li>
              <li class="col">
                <!-- <router-link class="nav_link" to="/view">
                  <button type="button" class="btn btn-outline-primary button1">
                    DELETE
                  </button>
                </router-link> -->
                <button
                  type="button"
                  class="btn btn-outline-warning button1 fw-bold button1 my-1"
                  @click="deleteUser(item.id)"
                >
                  DELETE
                </button>
              </li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>
    <hr class="topHi" />
    <!-- <div v-else></div> -->
    <!-- <div class="">
      <a href="#" class="previous">&laquo; Previous</a>
      <a href="#" class="next">Next &raquo;</a>

      <div class="float-end">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block botM" for="">Row visible: </span>
          <select class="form-select inline-block box1" id="inputGroupSelect01">
            <option selected>Choose...</option>
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="15">15</option>
            <option value="20">20</option>
          </select>
        </div>
      </div>
    </div> -->
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref } from "vue";
import router from "../../routers/administratorRouter";
//import {useRouter} from 'vue-router'

//const router = useRouter

let users = ref([]);
let capst = ref([]);

onMounted(async () => {
  getUsers();
  getCapstone();
});

// const create = () => {
//   router.push('/create')
// }

const getUsers = async () => {
  let response = await axios.get("/api/get_all_student_user");
  users.value = response.data.students;
  // console.log("users", users.value);
};
const getCapstone = async () => {
  let response = await axios.get("/api/get_all");
  capst.value = response.data.capstone;
  // console.log("users", users.value);
};

const trry = (id) => {
  {
    Swal.fire("Delete", "Student account, delete successfully" + id, "success");
  }
};
const ourImage = (img) => {
  return "/upload/" + img;
};
const onEdith = (id) => {
  router.push("/update/" + id);
};
const onView = (id) => {
  router.push("/view/" + id);
};
const deleteUser = (id) => {
  Swal.fire({
    title: "Are You Sure?",
    text: "You can't go back!",
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "#3085d6",
    cancelButtonText: "No!",
    confirmButtonText: "Yes, delete it!",
  }).then((result) => {
    if (result.value) {
      axios
        .get("/api/delete_user/" + id)
        .then(() => {
          Swal.fire("Delete", "Student account, delete successfully", "success");
          getUsers();
        })
        .catch(() => {
          Swal.fire("Failed!", "There was Something Wrong.", "Warning");
        });
    }
  });
};
</script>

<style>
.forInline {
  display: inline-block;
}
.topM {
  margin-top: -42px;
}

.contentOfThePage {
  border: 0.3px solid #0062ff;
  box-shadow: 2px 1px 10px #888888;
  padding: 10px;
}
.botM {
  padding: 10px;
  margin-right: 10px;
}
.box1 {
  width: 175px;
}

.widt {
  width: 20px;
  margin-right: 10px;
  margin-left: 10px;
}
a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}

.next {
  background-color: #0062ff;
  color: white;
}

.round {
  border-radius: 50%;
}
.button1 {
  padding: 5px 24px;
  margin-top: -15px;
  margin-bottom: -15px;
  margin-left: -55px;
  margin-right: -55px;
}
.mtop {
  margin-top: -10px;
  margin-right: -15px;
}
.capsList {
  font-weight: bolder;
  margin-top: 5px;
}
.avatarImage1 {
  height: 30px;
  width: 30px;
  border-radius: 50%;
  margin: auto;
}
</style>
