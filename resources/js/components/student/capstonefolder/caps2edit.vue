<template>
  <div class="row">
    <div v-if="modall.open" class="modalist contentOfThePage bg-light p-5">
      <button class="btn btn-danger float" @click="modall.open = false">X</button>
      <br />
      <h4 class="text-center text-uppercase fw-bold">Information Sharing Consent</h4>
      <br />
      <p class="parag">
        <span class="">We</span> the group
        <span class="text-uppercase fw-bold">{{ GenCapData.groupname }}</span> Proponents
        of <span class="text-uppercase fw-bold">{{ GenCapData.title }}</span> hereby give
        our permission for (Information Technology Department) to share our study
        including accessing the manuscript We understand that (Information Technology
        Department) may hold information gathered about our study and our rights under the
        Data Protection Act will not be affected.
      </p>
      <p>
        <span class="leftSpacess">&nbsp;We</span> understand that (Information Technology
        Department) may hold information gathered about our study and our rights under the
        Data Protection Act will not be affected.
      </p>
      <br />
      <h5 class="fw-bold">Statement of Consent:</h5>
      <p class="">
        <span class="fw-bold">• </span> <span class="leftSpaces"> We</span> understand
        that our capstone study information well be shared.
      </p>
      <p class="">
        <span class="fw-bold">• </span> <span class="leftSpaces"> We</span> have the
        opportunity to discuss the implications of sharing or not sharing information
        about the study.
      </p>
      <hr />

      <div class="form-check">
        <input
          class="form-check-input"
          type="radio"
          name="flexRadioDefault"
          id="flexRadioDefault1"
          value="AGREE"
          v-model="capstone2data.xf4"
        />
        <label class="form-check-label fw-bold" for="flexRadioDefault1">
          <span class="leftSpacess">Agree</span>
        </label>
      </div>
      <div class="form-check">
        <input
          class="form-check-input"
          type="radio"
          name="flexRadioDefault"
          id="flexRadioDefault2"
          value="NOT_AGREE"
          v-model="capstone2data.xf4"
        />
        <label class="form-check-label fw-bold pt-1" for="flexRadioDefault2">
          <span class="leftSpacess">Disagree</span>
        </label>
      </div>
      <br />
      <p>
        <span class="fw-bold"
          >Your consent to share your study information is entirely voluntary and you may
          withdraw your consent at any time.</span
        >
        If you wish to withdraw your consent, please re submit and change your choice.
      </p>
      <br />
      <button
        v-if="capstone2data.xf4 === '' || capstone2data.xf4 === null"
        class="btnSize btn btn-primary fw-bold"
        disabled
      >
        SUBMIT
      </button>
      <button v-else class="btnSize btn btn-primary fw-bold" @click="saveCapstone2()">
        SUBMIT
      </button>

      <br />
    </div>

    <div class="contentOfThePage caps1Side col-7" :class="modall">
      <h5 class="text-left boldThese">CAPSTONE 2</h5>

      <section>
        <iframe
          alt="Video"
          class="sizeVideo"
          :src="embedSource()"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </section>
      <h5 class="text-left boldThese text-center">VIDEO TOTURIAL TO GET EMBED LINKS</h5>
      <br />
      <h5 class="text-left boldThese ml-2">GUIDE TO ADD EMBED LINKS</h5>
      <div class="contentOfThePage">
        <p>1. Upload Your pitch video of capstone 2 in YouTube.</p>
        <p>2. Get link in your video through SHARE then tap embed.</p>
        <p>3. Get the scr="" link, sample is the colored text below:</p>
        <p>
          &lt;iframe width="560" height="315" '\n' src="
          <span class="colorLink">https://www.youtube.com/embed/AbBk5r_i9WQ</span>"
          title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
          clipboard-wr ite; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen &gt;&lt;/iframe &gt;
        </p>
        <p>4. COPY that embed link then PASTE in text box above.</p>
      </div>

      <hr />
      <section>
        <iframe
          class="sizeVideo"
          src="https://www.youtube.com/embed/zgBN0bx4Hak?start=182"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </section>
      <h5 class="text-left boldThese text-center">
        HOW TO GET EMBED LINK ON GOOGLE DRIVE
      </h5>
      <h5 class="text-left boldThese ml-2">Guide to Add link</h5>
      <div class="contentOfThePage">
        <p>1. Upload Your Documents to Google drive.</p>
        <p>2. Tap File in navbar then hover share and tap publish to web.</p>
        <p>3. Tap publish and also tap the Embed</p>
        <p>
          &lt;iframe src="
          <span class="colorLink"
            >https://docs.google.com/document/d/e/2PACX-1vQcbThqknMjD53cvBretnA-55e3XQbnz-E5d8SUWDYvgSNPJZRbSHKImH6RP68kJw/pub?embedded=true</span
          >" &gt;&lt;/iframe &gt;
        </p>
        <p>4. COPY the embed link that highlight above.</p>
      </div>
      <hr />
    </div>
    <div class="col contentOfThePage">
      <h5 class="text-left boldThese ml-2">EMBED LINKS:</h5>
      <br />
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          required
          v-model="capstone2data.capstone_link"
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >System Demo/Recording of the Live Demo during defense! (YouTube)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="capstone2data.proto_minutes"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Minutes of the Propotype Defense (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="capstone2data.proto_matrix"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Action Done Matrix of Prototype Defense (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="capstone2data.ad_appointment_form"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Adviser Appointment Form (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="capstone2data.gcash_payment"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >File Containing the Screenshot of the gcash payment to the panel (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="capstone2data.acceptance_ss"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Screenshot of the acceptance of panel to the revision done to chapter 1-3
          (docs)</label
        >
        <br />
      </div>

      <div class="row">
        <div class="col">
          <h5 for="date" class="form-label">Date Approved</h5>
          <input
            type="date"
            class="col-12 inputColor"
            v-model="capstone2data.prototype_date"
          />
        </div>
        <div class="col">
          <label for="secretary" class="form-label">Instructor</label>
          <div class="input-group mb-3">
            <select
              class="form-control inputColor"
              required
              v-model="caps1Instructor.instruct"
            >
              <option selected disabled>Choose Instructor for capstone 1</option>
              <option v-for="item in instructors" :key="item.id" :value="item.id">
                {{ item.name }} {{ item.mname }} {{ item.lname }}
              </option>
            </select>
          </div>
        </div>
      </div>

      <div class="col">
        <label for="status" class="form-label">Status</label>
        <input
          type="text"
          disabled
          class="form-control"
          placeholder="status"
          aria-label="status"
          v-model="capstone2data.status"
        />
      </div>

      <div class="col">
        <label for="status" class="form-label">Choose Status</label>
        <div class="input-group mb-3">
          <select
            class="form-select"
            id="inputGroupSelect01"
            v-model="capstone2data.status"
          >
            <option value="Under-Development">Under-Development</option>
            <option value="Under-Revision">Under-Revision</option>
            <option value="Approved">Approved</option>
          </select>
        </div>
      </div>

      <br />
      <div class="col text-center">
        <button type="button" class="btn btnW btn-primary" @click="modall.open = true">
          SAVE
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { ref } from "vue";

let modall = ref({
  open: false,
});
let GenCapData = ref({
  title: "",
  abstract: "",
  groupname: "",
  xf1: "",
  xf2: "",
  xf4: "",
  xf5: null,
  file: null,
  name: "",
});
const getsingleUser = async () => {
  let linkid = window.location.pathname.split("/")[2];
  let response = await axios.get("/api/get_capstone/" + linkid);
  GenCapData.value = response.data.capstones;

  console.warn("Caps", GenCapData.value);
};

let capstone2data = ref({
  status: "",
  capstone_link: "",

  proto_minutes: "",
  proto_matrix: "",
  ad_appointment_form: "",
  gcash_payment: "",
  acceptance_ss: "",
  prototype_date: "",
  xf4: "",
});

let caps1Instructor = ref({
  instruct: "",
});

let instructor = ref({
  name: "",
  mname: "",
  lname: "",
});

const touch = async () => {
  let capstoneid = getIDfromURL();
  let idd = caps1Instructor.value.instruct;
  let response = await axios.get("/api/get_capstone_inst/" + idd);

  instructor.value = response.data.userCaps;
  let fullname =
    instructor.value.name + " " + instructor.value.mname + " " + instructor.value.lname;

  const formData = new FormData();

  formData.append("instructor", idd);

  axios
    .post("/api/capstone_instructor2/" + capstoneid, formData)
    .then((response) => {
      caps1Instructor.value.instruct = "";
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
      });
    });
};
const getInstructor = async () => {
  let response = await axios.get("/api/get_all_instructor_user");
  instructors.value = response.data.instructors;
};

let instructors = ref({});

const router = useRouter();
const getIDfromURL = () => {
  return window.location.pathname.split("/")[2];
};

onMounted(async () => {
  getsingleUser();
  getCapston2Data();
  getInstructor();
});

const getCapston2Data = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee2/" + capstoneid);
  capstone2data.value = response.data.capstone22222;
  console.warn("CAPSTON 2", capstone2data.value);
};

const saveCapstone2 = () => {
  let capstoneid = getIDfromURL();

  const formData = new FormData();
  formData.append("status", capstone2data.value.status);
  formData.append("capstone_link", capstone2data.value.capstone_link);

  formData.append("proto_minutes", capstone2data.value.proto_minutes);
  formData.append("proto_matrix", capstone2data.value.proto_matrix);
  formData.append("ad_appointment_form", capstone2data.value.ad_appointment_form);
  formData.append("gcash_payment", capstone2data.value.gcash_payment);
  formData.append("acceptance_ss", capstone2data.value.acceptance_ss);
  formData.append("prototype_date", capstone2data.value.prototype_date);

  formData.append("capstoneid", capstoneid);
  formData.append("xf4", capstone2data.value.xf4);

  axios
    .post("/api/addcapstone2/" + capstoneid, formData)
    .then((response) => {
      (capstone2data.value.status = ""),
        (capstone2data.value.capstone_link = ""),
        (capstone2data.value.proto_minutes = ""),
        (capstone2data.value.proto_matrix = ""),
        (capstone2data.value.ad_appointment_form = ""),
        (capstone2data.value.gcash_payment = ""),
        (capstone2data.value.acceptance_ss = ""),
        (capstone2data.value.prototype_date = ""),
        (capstone2data.value.xf4 = ""),
        (capstoneid = ""),
        getCapston2Data();
      touch();

      toast.fire({
        icon: "success",
        title: "Capstone embedded links, Added Successfully",
      });
      location.reload();
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "Failed to save, something wrong",
      });
    });
};

const embedSource = () => {
  return "https://www.youtube.com/embed/FAY1K2aUg5g";
};
</script>
<style>
.colorLabel {
  color: rgb(126, 126, 134);
}
.caps1Content {
  width: 74%;
  height: 100%;
  display: inline-block;
}
.caps1Side {
  margin-right: 10px;
  margin-left: 10px;
}
.sizeVideo {
  height: 600px;
  width: 100%;
}
.colorLink {
  color: blue;
}
.btnW {
  width: 100%;
}
</style>
