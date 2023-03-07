<template>
  <div class="contentOfThePage rounded bg-light p-3">
    <div class="">
      <div class="forInline capsList">FACULTY LIST</div>

      <div class="forInline float-end mtop">
        <router-link class="nav_link" to="/create">
          <button type="button" class="btn btn-primary box1">CREATE</button>
        </router-link>
      </div>
    </div>
    <hr />

    <div class="">
      <div class="input-group">
        <input
          class="inputColor"
          type="search"
          placeholder="Search"
          aria-label="Search"
          aria-describedby="search-addon"
          v-model="capslistt.searching"
        />
      </div>

      <div class="float-end topM">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block botM" for="">Sort by: </span>
          <select
            class="form-select inline-block box1"
            v-model="capslisttsort.sorting"
            id="inputGroupSelect01"
          >
            <option selected>Choose...</option>
            <option value="name">NAME</option>
            <option value="lname">LAST NAME</option>
            <option value="mname">MIDDLE NAME</option>
            <option value="year">YEAR</option>
            <option value="email">EMAIL</option>
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
          <th class="col">#</th>
          <th class="text-uppercase">Avatar</th>
          <th class="col">I.D</th>
          <th class="col">FULLNAME</th>

          <th class="col-2">ACTION</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, index) in users" :key="item.id">
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

          <td class="">
            <ul class="nav row">
              <li class="col-lg-4 my-1 col-sm-12 col-md-12">
                <i class="btn btn-outline-dark" @click="onView(item.id)">
                  <font-awesome-icon icon="fa-solid fa-eye" />
                </i>
              </li>
              <li class="col-lg-4 my-1 col-sm-12 col-md-12">
                <i class="btn btn-outline-primary" @click="onEdith(item.id)">
                  <font-awesome-icon icon="fa-solid fa-edit" />
                </i>
              </li>
              <li class="col-lg-4 my-1 col-sm-12 col-md-12">
                <i class="btn btn-outline-danger" @click="deleteUser(item.id)">
                  <font-awesome-icon icon="fa-solid fa-trash" />
                </i>
              </li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script setup>
import axios from "axios";

import { onMounted, reactive, ref, watch } from "vue";
import router from "../../routers/administratorRouter";

const capslistt = reactive({ searching: null });
const capslisttsort = reactive({ sorting: null });

watch(capslistt, (newValue, oldValue) => {
  console.log(newValue, oldValue);
  dataCapstoneSearch();
});
watch(capslisttsort, (newValue, oldValue) => {
  console.log(newValue, oldValue);
  dataCapstonesort();
});

const dataCapstoneSearch = async () => {
  let response = await axios
    .get("/api/get_all_faculty_search", {
      params: { searching: capslistt.searching },
    })

    .then((response) => {
      users.value = response.data.facultys;
      console.log("RESUUUULTTT:::::::::::", users.value);
    })

    .catch(function (error) {
      console.log(error);
    });
};

const dataCapstonesort = async () => {
  let response = await axios
    .get("/api/get_all_faculty_sort", {
      params: { sorting: capslisttsort.sorting },
    })

    .then((response) => {
      users.value = response.data.facultys;
    })

    .catch(function (error) {
      console.log(error);
    });
};

let users = ref([]);
let capst = ref([]);

onMounted(async () => {
  getCapstone();
  dataCapstoneSearch();
});

const getCapstone = async () => {
  let response = await axios.get("/api/get_all");
  capst.value = response.data.capstone;
};

const trry = (id) => {
  {
    Swal.fire("Delete", "User account, deleted successfully" + id, "success");
  }
};
const ourImage = (img) => {
  return "/upload/" + img;
};
const onEdith = (id) => {
  router.push("/update/" + id);
};
const onView = (id) => {
  router.push("/viewfaculty/" + id);
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
          Swal.fire("Delete", "User account, deleted successfully", "success");

          dataCapstoneSearch();
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
