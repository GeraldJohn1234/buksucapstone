<template>
  <div class="contentOfThePage rounded bg-light p-2">
    <div class="">
      <div class="forInline capsList">TOPIC SUGGESTIONS LIST</div>

      <div class="forInline float-end mtop">
        <router-link class="nav_link" to="/createsuggestion">
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
            <option value="client_name">CLIENT NAME</option>
            <option value="title">TITLE</option>
            <option value="created_at">DATE CREATED</option>
            <option value="status">STATUS</option>
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
          <th class="col">DATE CREATED</th>
          <th class="col-2">STATUS</th>
          <th class="col-4">ACTION</th>
        </tr>
      </thead>

      <tbody class="colorNeh">
        <tr v-for="(item, index) in projects" :key="item.id">
          <td>{{ index + 1 }}</td>
          <td>{{ item.title }}</td>
          <td>{{ item.created_at }}</td>
          <td>
            <!-- {{ item.status }} -->
            <p v-if="item.status === 'Available'" class="text-success">
              {{ item.status }}
            </p>
            <p v-else class="text-warning">{{ item.status }}</p>
          </td>

          <!-- 
          v-if="
          GenCadocu123.revise_manuscript === null ||
          GenCadocu123.revise_manuscript === 'null'
        " -->

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
                  class="btn btn-outline-success fw-bold button1 my-1"
                  @click="taketopic(item.id)"
                >
                  <!-- @click="viewCap(item.id)" -->
                  VIEW
                </button>
              </li>
              <li class="col">
                <button
                  type="button"
                  class="btn btn-outline-primary fw-bold button1 my-1"
                  @click="edithtopic(item.id)"
                >
                  UPDATE
                </button>
              </li>
              <li class="col">
                <button
                  type="button"
                  class="btn btn-outline-warning fw-bold button1 my-1"
                  @click="deletetopic(item.id)"
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
import router from "../../routers/administratorRouter";
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
    .get("/api/get_all_topic", {
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
    .get("/api/get_all_topicsort", {
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

const edithtopic = (id) => {
  // axios
  //   .post("/api/create_capstone_proj/" + id)
  //   .then((response) => {
  router.push("/updatetopic/" + id);
  //   })
  //   .catch(function (error) {
  //     console.log(error.response.data.errors);
  //     console.log("ERRRR:: ", error.response.data);
  //     toast.fire({
  //       icon: "warning",
  //       title: "SOMETHING WRONG",
  //     });
  //   });
};

const taketopic = (id) => {
  // axios
  //   .post("/api/create_capstone_proj/" + id)
  //   .then((response) => {
  router.push("/taketopic/" + id);
  //   })
  //   .catch(function (error) {
  //     console.log(error.response.data.errors);
  //     console.log("ERRRR:: ", error.response.data);
  //     toast.fire({
  //       icon: "warning",
  //       title: "SOMETHING WRONG",
  //     });
  //   });
};

onMounted(async () => {
  dataCapstone();
});

const deletetopic = (id) => {
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
        .get("/api/delete_topic/" + id)
        .then(() => {
          Swal.fire("Delete", "Capstone delete successfully", "success");
          // getCapstone();
          dataCapstone();
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
