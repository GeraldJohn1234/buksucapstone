<template>
  <div class="contentOfThePage rounded bg-light">
    <div class="">
      <div class="forInline capsList">CAPSTONE LIST</div>

      <div class="forInline float-end mtop">
        <router-link class="nav_link" to="/project">
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

        <!-- <button type="button" class="btn btn-outline-primary">search</button> -->
      </div>

      <div class="float-end topM">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block botM" for="">Sort by: </span>
          <select
            class="form-select inline-block box1 inputColor"
            id="inputGroupSelect01"
            v-model="capslisttsort.sorting"
          >
            <option selected>Choose...</option>
            <option value="title">TITLE</option>
            <option value="start_date">STARTED YEAR</option>
            <option value="xf1">YEAR</option>
            <option value="groupname">GROUP NAME</option>
          </select>
        </div>
      </div>
    </div>

    <br />
    <table class="table table-hover table-bordered table-striped text-center">
      <thead class="colorNeh">
        <tr>
          <th class="">#</th>
          <th class="col-4">TITLE</th>
          <th class="col-2">GROUP NAME</th>
          <th class="col">YEAR</th>
          <th class="col">DATE STARTED</th>
          <th class="col-3">Action</th>
        </tr>
      </thead>

      <tbody class="colorNeh">
        <tr v-for="(item, index) in projects" :key="item.id">
          <td>{{ index + 1 }}</td>
          <td>{{ item.title }}</td>
          <td class="text-center">
            {{ item.groupname }}
          </td>
          <td>{{ item.xf1 }}</td>
          <td>{{ item.start_date }}</td>

          <!-- <td>{{ item.name }} {{ item.mname }} {{ item.lname }}</td>
          <td>{{ item.year }}</td> -->
          <!-- <img
              class="avatarImage1"
              :src="ourImage(item.photo)"
              alt="a"
              v-if="item.photo"
            /> -->
          <!-- <td>Buksu Archiving and Monitoring System</td> -->

          <td class="">
            <ul class="nav row">
              <li class="col">
                <button
                  type="button"
                  class="btn btn-outline-primary button1 m-1"
                  @click="viewCap(item.id)"
                >
                  <!-- @click="onView(item.id)" -->
                  VIEW
                </button>
              </li>
              <li class="col">
                <button
                  type="button"
                  class="btn btn-outline-primary button1 m-1"
                  @click="edithCap(item.id)"
                >
                  <!-- @click="onEdith(item.id)" -->
                  UPDATE
                </button>
              </li>
              <!-- <li class="col">
                <button
                  type="button"
                  class="btn btn-outline-primary button1 m-1"
                  @click="deleteCapstone(item.id)"
                >
                  DELETE
                </button>
              </li> -->
            </ul>
          </td>
        </tr>
      </tbody>
    </table>
    <hr class="topHi" />
    <div class="">
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
    </div>
  </div>
</template>

<script setup>
import router from "../../routers/facultyRouter";
import { onMounted, reactive, ref, watch } from "vue";

// import { reactive, ref, watch } from "vue";

let projects = ref([]);

const capslistt = reactive({ searching: null });
const capslisttsort = reactive({ sorting: null });

watch(capslistt, (newValue, oldValue) => {
  console.log(newValue, oldValue);
  dataCapstone();
  // dataCapstonesort();
});
watch(capslisttsort, (newValue, oldValue) => {
  console.log(newValue, oldValue);
  dataCapstonesort();
});

const dataCapstone = async () => {
  let response = await axios
    .get("/api/get_all_capstone", {
      params: { searching: capslistt.searching },
    })

    .then((response) => {
      projects.value = response.data.capstones;
      // toast.fire({
      //   icon: "success",
      //   title: "SOMETHING WRONG",
      // });
    })

    .catch(function (error) {
      console.log(error);
    });
};
const dataCapstonesort = async () => {
  let response = await axios
    .get("/api/get_all_capstonesort", {
      params: { sorting: capslisttsort.sorting },
    })

    .then((response) => {
      projects.value = response.data.capstones;
      // toast.fire({
      //   icon: "success",
      //   title: "SOMETHING WRONG",
      // });
    })

    .catch(function (error) {
      console.log(error);
    });
};

const edithCap = (id) => {
  axios
    .post("/api/create_capstone_proj/" + id)
    .then((response) => {
      router.push("/editcap/" + id);
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};

const viewCap = (id) => {
  axios
    .post("/api/create_capstone_proj/" + id)
    .then((response) => {
      router.push("/viewcap/" + id);
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};

onMounted(async () => {
  // getCapstone();
  dataCapstone();
});

// const getCapstoneSearch = async () => {
//   let iddd = window.location.pathname.split("/")[2];
//   const formData = new FormData();
//   formData.append("searching");
//   let response = await axios.get("/api/get_all_capstone_search");
//   projects.value = response.data.capstones;
// };
// const getCapstone = async () => {
//   const formData = new FormData();
//   let response = await axios.get("/api/get_all_capstone/" + capslistt.value.searching);
//   projects.value = response.data.capstones;
// };

// const getCapstone = async () => {
//   let response = await axios.get("/api/get_all_capstone");
//   projects.value = response.data.capstones;
// };

const deleteCapstone = (id) => {
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
        .get("/api/delete_capstone/" + id)
        .then(() => {
          Swal.fire("Delete", "Capstone delete successfully", "success");
          // getCapstone();
          dataCapstone();
        })
        .catch(() => {
          Swal.fire("Failed!", "There was Something Wrongcdcdcdcdcdcdc.", "Warning");
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
  border-top: 3px solid #0062ff !important;
  box-shadow: 2px 1px 10px #5f5c5c;
  border-radius: 10px !important;
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
  margin-top: 5px;
}

.topHi {
  margin-top: -15px;
}
</style>
