<template>
  <div class="rounded bg-light p-3 contentOfThePage table-wrapper">
    <div class="">
      <div class="forInline capsList">CAPSTONE LIST</div>
    </div>
    <hr class="zindexx" />

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
            <option value="groupname">GROUP NAME</option>
            <option value="title">TITLE</option>
            <option value="xf3">SCHOOL YEAR</option>
            <option value="xf1">YEAR</option>
            <option value="xf2">STATUS</option>
          </select>
        </div>
      </div>
    </div>

    <br />
    <table class="table table-hover table-lg-4 table-bordered table-striped responsive">
      <thead class="colorNeh">
        <tr>
          <th class="text-center">#</th>
          <th class="col-3 text-center">TITLE</th>
          <th class="col-2 text-center">GROUP NAME</th>
          <th class="col text-center">YEAR LEVEL</th>
          <th class="col text-center">SCHOOL YEAR</th>
          <th class="col text-center">STATUS</th>
          <th class="col-1 text-center">ACTION</th>
        </tr>
      </thead>

      <tbody class="colorNeh">
        <tr v-for="(item, index) in projects" :key="item.id">
          <template v-if="index <= limitlist">
            <td class="text-center align-middle text-uppercase">{{ index + 1 }}</td>
            <td class="align-middle text-uppercase">{{ item.title }}</td>
            <td class="text-center align-middle text-uppercase">
              {{ item.groupname }}
            </td>
            <td class="align-middle text-center text-uppercase">{{ item.xf1 }}</td>
            <td class="text-center align-middle text-uppercase">{{ item.xf3 }}</td>
            <td class="text-center align-middle text-uppercase">{{ item.xf2 }}</td>

            <td class="text-center align-middle">
              <ul class="nav row">
                <li class="col">
                  <i class="btn btn-outline-primary" @click="viewCap(item.id)">
                    <font-awesome-icon icon="fa-solid fa-eye" />
                  </i>
                </li>
              </ul>
            </td>
          </template>
        </tr>
      </tbody>
    </table>
    <hr class="topHi" />
  </div>
</template>
<script setup>
import router from "../../routers/studentRouter";
import { onMounted, reactive, ref, watch } from "vue";

let projects = ref([]);

let nextlist = 0;
let limitlist = 10000;

const capslistt = reactive({ searching: null });
const capslisttsort = reactive({ sorting: null });

onMounted(async () => {
  dataCapstone();
});
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
    .get("/api/get_all_capstone", {
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
    .get("/api/get_all_capstonesort", {
      params: { sorting: capslisttsort.sorting },
    })

    .then((response) => {
      projects.value = response.data.capstones;
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
  router.push("/viewcap/" + id);
};

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
.table-wrapper {
  min-width: 900px;
  overflow-x: auto;
  box-sizing: border-box;
}

.table-wrapper * {
  box-sizing: border-box;
}
.zindexx {
  z-index: 1 !important;
}
</style>
