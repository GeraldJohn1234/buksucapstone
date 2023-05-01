<template>
  <div class="contentOfThePage rounded bg-light p-2 m-2 table-wrapper">
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
      <div class="">
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
          <td class="text-uppercase">{{ item.title }}</td>
          <td>{{ item.created_at }}</td>
          <td>
            <p
              v-if="item.status === 'Available'"
              class="text-success fw-bold text-uppercase"
            >
              {{ item.status }}
            </p>
            <p v-else class="text-warning fw-bold text-uppercase">{{ item.status }}</p>
          </td>

          <td class="">
            <ul class="nav row">
              <li class="col-4 my-1">
                <i class="btn btn-outline-dark" @click="taketopic(item.id)">
                  <font-awesome-icon icon="fa-solid fa-eye" />
                </i>
              </li>
              <li class="col-4 my-1">
                <i class="btn btn-outline-primary" @click="edithtopic(item.id)">
                  <font-awesome-icon icon="fa-solid fa-edit" />
                </i>
              </li>
              <li class="col-4 my-1">
                <i class="btn btn-outline-danger" @click="deletetopic(item.id)">
                  <font-awesome-icon icon="fa-solid fa-trash" />
                </i>
              </li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>
    <hr class="topHi" />
  </div>
</template>

<script setup>
import router from "../../routers/facultyRouter";
import { onMounted, reactive, ref, watch } from "vue";

let projects = ref([]);

const capslistt = reactive({ searching: null });
const capslisttsort = reactive({ sorting: null });

watch(capslistt, (newValue, oldValue) => {
  console.log(newValue, oldValue);
  dataCapstone();
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
    })

    .catch(function (error) {
      console.log(error);
    });
};

const edithtopic = (id) => {
  router.push("/updatetopic/" + id);
};

const taketopic = (id) => {
  router.push("/taketopic/" + id);
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
