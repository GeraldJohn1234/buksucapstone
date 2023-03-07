<template>
  <div class="contentOfThePage rounded bg-light p-2">
    <div class="">
      <div class="forInline capsList">LIST OF CAPSTONE AS A PANEL</div>
    </div>
    <hr />

    <br />
    <table class="table table-hover table-bordered table-striped text-center">
      <thead class="colorNeh">
        <tr>
          <th class="">#</th>
          <th class="col-4">TITLE</th>
          <th class="col-2">GROUP NAME</th>
          <th class="col">YEAR</th>
          <th class="col">DATE STARTED</th>
          <th class="col-1">ACTION</th>
        </tr>
      </thead>

      <tbody class="colorNeh">
        <tr v-for="(item, index) in projects" :key="item.id">
          <td class="text-uppercase">{{ index + 1 }}</td>
          <td class="text-uppercase">{{ item.title }}</td>
          <td class="text-center">
            {{ item.groupname }}
          </td>
          <td class="text-uppercase">{{ item.xf1 }}</td>
          <td>{{ item.start_date }}</td>

          <td class="">
            <ul class="nav row">
              <li class="col">
                <i class="btn btn-outline-primary" @click="viewCap(item.id)">
                  <font-awesome-icon icon="fa-solid fa-eye" />
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
    .get("/api/get_all_capstone_panel", {
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
    .get("/api/getadviseesort", {
      params: { sorting: capslisttsort.sorting },
    })

    .then((response) => {
      projects.value = response.data.capstones;
    })

    .catch(function (error) {
      console.log(error);
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
  dataCapstone();
});

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
</style>
