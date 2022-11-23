<template>
  <div class="contentOfThePage p-3">
    <div class="" id="titleSize">
      <h5 class="pt-2 text-uppercase boldThese">CREATE TOPIC SUGGESTIONS</h5>
      <hr class="toTop" />
      <!-- <p class="toTopp boldThese">CREATE TOPIC SUGGESTIONS</p> -->
    </div>

    <h5 class="text-left boldThese">TITLE</h5>
    <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Input Title"
        v-model="Topic.title"
        id="floatingTextarea2"
        style="height: 100px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Title</label>
      <br />
    </div>

    <h5 class="text-left boldThese">TOPIC DESCRIPTION</h5>
    <div class="form-floating col">
      <textarea
        class="form-control inputColor"
        placeholder="Input topic description"
        v-model="Topic.abstract"
        id="floatingTextarea2"
        style="height: 200px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Description</label>
      <br />
    </div>
    <P class="text-left boldThese">INFORMATION</P>
    <div class="row">
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Client Name</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Client Name"
          v-model="Topic.client_name"
        ></textarea>
      </div>
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Client Company</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Company Name"
          v-model="Topic.client_company"
        ></textarea>
      </div>
    </div>
    <div class="row">
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Client Location</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Client Location"
          v-model="Topic.client_location"
        ></textarea>
      </div>
      <div class="form-group col">
        <label for="exampleFormControlTextarea1" id="">Thoughts</label>
        <textarea
          class="form-control pbn inputColor"
          id="exampleFormControlTextarea1"
          rows="1"
          v-model="Topic.xf1"
          placeholder="Thoughts about the topic"
        ></textarea>
      </div>
    </div>

    <br />
    <div class="row">
      <div class="col">
        <button type="button" class="m-1 btnSize btn btn-primary" @click="saveTopic()">
          CREATE TOPIC
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../../routers/facultyRouter";

let Topic = ref({
  title: "",
  abstract: "",
  client_name: "",
  client_location: "",
  client_company: "",
  xf1: "",
});

const toTopic = () => {
  router.push("/topic");
};

const saveTopic = () => {
  if(Topic.value.title==null||Topic.value.title==''){
    toast.fire({
          icon: "warning",
          title: "Title should not empty!",
        });
  }else if(Topic.value.abstract==null||Topic.value.abstract==''){
    toast.fire({
          icon: "warning",
          title: "Topic description should not empty!",
        });
  }else{

  
  const formData = new FormData();
  formData.append("title", Topic.value.title);
  formData.append("abstract", Topic.value.abstract);
  formData.append("client_name", Topic.value.client_name);
  formData.append("client_location", Topic.value.client_location);
  formData.append("client_company", Topic.value.client_company);
  formData.append("xf1", Topic.value.xf1);

  axios
    .post("/api/add_topic", formData)
    .then((response) => {
      (Topic.value.title = ""),
        (Topic.value.abstract = ""),
        (Topic.value.client_name = ""),
        (Topic.value.client_location = ""),
        (Topic.value.client_company = ""),
        (Topic.value.xf1 = ""),
        // router.push("/create");

        toast.fire({
          icon: "success",
          title: "Topic Successfully, Added! ",
        });
      toTopic();
    })
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "Topic Add, Unsuccessful",
      });
      // (error = {}));
      // console.log("ERRRR:: ",error.response.data);
    });
  // console.log("ERRRR:: ",error.response.data);
}
};
</script>

<style>
hr {
  border: 1px solid #0062ff;
}
.toTop {
  margin-top: -5px;
}
.toTopp {
  margin-top: -15px;
}
.btnSize {
  width: 100%;
}
.boldThese {
  font-weight: bolder;
}
#titleSize {
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  width: 80%;
}
.pbn {
  margin-top: 8px;
}
.inputColor {
  border: 1px solid #0062ff;
  border-radius: 4px;
}
</style>
