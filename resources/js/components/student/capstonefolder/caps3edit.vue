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
      <!-- <br /> -->
      <div class="form-check">
        <input
          class="form-check-input"
          type="radio"
          name="flexRadioDefault"
          id="flexRadioDefault1"
          value="AGREE"
          v-model="formcaps3.xf4"
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
          v-model="formcaps3.xf4"
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
        v-if="formcaps3.xf4 === '' || formcaps3.xf4 === null"
        class="btnSize btn btn-primary fw-bold"
        disabled
      >
        SUBMIT
      </button>
      <button v-else class="btnSize btn btn-primary fw-bold" @click="saveCapstone3()">
        SUBMIT
      </button>

      <br />
    </div>

    <div class="contentOfThePage caps1Side col-7" :class="modall">
      <h5 class="text-left boldThese">CAPSTONE 3</h5>
      <!-- width="560"
          height="315" 
           src="https://www.youtube.com/embed/AbBk5r_i9WQ"
          -->
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
        <!-- <iframe
         class="sizeVideo"
          src="https://www.youtube.com/embed/VrxrzH3V4vE"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe> -->
      </section>
      <h5 class="text-left boldThese text-center">
        Pitch Video of Archiving Management System
      </h5>
      <h5 class="text-left boldThese ml-2">Guide to Add link</h5>
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
        <!-- <iframe
          alt="Video"
          class="sizeVideo"
          :src="embedSource()"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe> -->
        <iframe
          class="sizeVideo"
          src="https://www.youtube.com/embed/zgBN0bx4Hak?start=182"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
        <!-- <iframe
         class="sizeVideo"
          src="https://www.youtube.com/embed/VrxrzH3V4vE"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe> -->
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

          <!-- &lt;iframe width="560" height="315" '\n' src="
          <span class="colorLink">https://www.youtube.com/embed/AbBk5r_i9WQ</span>"
          title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
          clipboard-wr ite; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen &gt;&lt;/iframe &gt; -->
        </p>
        <p>4. COPY the embed link that highlight above.</p>
      </div>
      <hr />

      <!-- <br />
      <h5 class="text-left boldThese text-center">Abstract</h5>
      <div class="contentOfThePage">
        <textarea
          class="form-control"
          placeholder="Add Abstract Or Summary Here!"
          id="floatingTextarea2"
          style="height: 150px"
          v-model="formcaps3.video_description"
        ></textarea>
      </div> -->
    </div>
    <div class="col contentOfThePage">
      <!-- <div class="row contentOfThePage mx-1">
        <label for="button" class="fw-bold"
          >For Uploading Documentation through OCR</label
        >
        <button type="button" class="btn btn-primary col mt-1" @click="onOCR()">
          Octical Character Recognition
        </button>
      </div> -->

      <h5 class="text-left boldThese ml-2">EMBED LINKS:</h5>
      <hr />
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          required
          v-model="formcaps3.final_docu"
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Revised Manuscript of Chapter 1-5 (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.proto_matrix"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Action Done Matrix for Capstone 3 (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.proto_minutes"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Minutes of the Proposal Defense (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.ppt"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Capstone 3 Powerpoint Presentation (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.software_demo"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Software Demo (YouTube)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.githublink"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Source code GitHub Link (git)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.gcash_payment"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >File Containing the Screenshots of the gcash payment to the panel</label
        >
        <br />
      </div>
      <!-- <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.minutes"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Minutes of the Proposal Defense (DOCX)</label
        >
        <br />
      </div> -->
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps3.acceptance_ss"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >File Containing the Screenshot of the acceptance of the panel to the revision
          done to chapter 1-5 (DOCX)</label
        >
        <br />
      </div>

      <hr />
      <div class="col">
        <h5 for="status" class="form-label">Status</h5>
        <input
          type="text"
          class="form-control"
          placeholder="status"
          aria-label="status"
          disabled
          v-model="formcaps3.status"
        />
      </div>

      <div class="col">
        <label for="status" class="form-label">Choose Status</label>
        <div class="input-group mb-3">
          <select class="form-select" id="inputGroupSelect01" v-model="formcaps3.status">
            <!-- <option selected>Choose...</option> -->
            <option value="Working Chapter 1,2,3">Working Chapter 1,2,3</option>
            <option value="Under-Revision">Under-Revision</option>
            <option value="Done-Approved">Done-Approved</option>
          </select>
        </div>
      </div>

      <div class="row">
        <div class="col">
          <h5 for="date" class="form-label">Date Approved</h5>
          <input type="date" class="col-12 inputColor" v-model="formcaps3.final_date" />
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

      <hr />

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

  // GenCaps.value = response.data.userCaps;
  console.warn("Caps", GenCapData.value);
};

let formcaps3 = ref({
  status: "",
  final_docu: "",
  proto_minutes: "",
  proto_matrix: "",
  ppt: "",
  software_demo: "",
  gcash_payment: "",
  acceptance_ss: "",
  githublink: "",
  final_date: "",
  xf4: "",
});

let instructor = ref({
  name: "",
  mname: "",
  lname: "",
});
let caps1Instructor = ref({
  instruct: "",
});
// const caps2Inst = () => {
//   let capstoneid = getIDfromURL();

//   const formData = new FormData();

//   formData.append("instructor", caps1Instructor.value.instruct);

//   axios
//     .post("/api/capstone_instructor3/" + capstoneid, formData)
//     .then((response) => {
//       (caps1Instructor.value.instruct = ""),
//         toast.fire({
//           icon: "success",
//           title: "User Add Successfully",
//         });
//     })
//     // .catch((error = {}));
//     .catch(function (error) {
//       console.log(error.response.data.errors);
//       console.log("ERRRR:: ", error.response.data);

//       toast.fire({
//         icon: "warning",
//         title: caps1Instructor.value.instructor,
//         // title: capstoneid,
//       });
//     });
// };

const touch = async () => {
  let capstoneid = getIDfromURL();
  let idd = caps1Instructor.value.instruct;
  let response = await axios.get("/api/get_capstone_inst/" + idd);

  // console.warn("TYTRTYTRYTRYTRY", GenCadocu123.value.xf2);
  instructor.value = response.data.userCaps;
  let fullname =
    instructor.value.name + " " + instructor.value.mname + " " + instructor.value.lname;

  const formData = new FormData();

  // formData.append("instructor", fullname);
  formData.append("instructor", idd);

  axios
    .post("/api/capstone_instructor3/" + capstoneid, formData)
    .then((response) => {
      caps1Instructor.value.instruct = "";
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: caps1Instructor.value.instruct,
        // title: capstoneid,
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
const onOCR = (id) => {
  let capstoneid = getIDfromURL();
  router.push("/ocrpages/" + capstoneid);
};

onMounted(async () => {
  getsingleUser();
  getCapston1Data();
  getInstructor();
});

const getCapston1Data = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee3/" + capstoneid);
  formcaps3.value = response.data.capstone33333;
  console.warn("CAPSTON 1", formcaps3.value);
};

// let id = window.location.pathname.split("/")[2];
//       axios.get("/api/get_capstonee1/" + id).then((response) => {
//         this.caps = response.data.capstone11111;
//       });

const saveCapstone3 = () => {
  // status: "",
  // final_docu: "",
  // proto_minutes: "",
  // proto_matrix: "",
  // ppt: "",
  // software_demo: "",
  // gcash_payment: "",
  // acceptance_ss: "",
  // githublink: "",
  // final_date: "",

  let capstoneid = getIDfromURL();

  const formData = new FormData();
  formData.append("capstoneid", capstoneid);

  formData.append("final_docu", formcaps3.value.final_docu);
  formData.append("proto_minutes", formcaps3.value.proto_minutes);
  formData.append("proto_matrix", formcaps3.value.proto_matrix);
  formData.append("ppt", formcaps3.value.ppt);
  formData.append("software_demo", formcaps3.value.software_demo);
  formData.append("gcash_payment", formcaps3.value.gcash_payment);
  formData.append("acceptance_ss", formcaps3.value.acceptance_ss);
  formData.append("githublink", formcaps3.value.githublink);
  formData.append("final_date", formcaps3.value.final_date);
  formData.append("status", formcaps3.value.status);
  formData.append("xf4", formcaps3.value.xf4);

  axios
    .post("/api/addcapstone3/" + capstoneid, formData)
    .then((response) => {
      (formcaps3.value.status = ""),
        (formcaps3.value.final_docu = ""),
        (formcaps3.value.proto_minutes = ""),
        (formcaps3.value.proto_matrix = ""),
        (formcaps3.value.ppt = ""),
        (formcaps3.value.software_demo = ""),
        (formcaps3.value.gcash_payment = ""),
        (formcaps3.value.acceptance_ss = ""),
        (formcaps3.value.githublink = ""),
        (formcaps3.value.final_date = ""),
        (formcaps3.value.xf4 = ""),
        (capstoneid = ""),
        // router.push("/create");
        getCapston1Data();
      touch();

      toast.fire({
        icon: "success",
        title: "Capstone embedded links, Added Successfully",
      });
      location.reload();
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "Failed to save, something wrong",
      });
      // (error = {}));
      // console.log("ERRRR:: ",error.response.data);
    });
  // console.log("ERRRR:: ",error.response.data);
};

const embedSource = () => {
  return "https://www.youtube.com/embed/FAY1K2aUg5g";
};
</script>
<style>
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
