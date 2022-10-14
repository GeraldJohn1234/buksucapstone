<template>
  <div class="row">
    <div class="contentOfThePage caps1Side col-7">
      <h5 class="text-left boldThese">CAPSTONE 1</h5>
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
      <h5 class="text-left boldThese text-center">HOW TO GET EMBED LINK ON YOUTUBE</h5>
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
      <h5 class="text-left boldThese text-zzyycenter">
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
    </div>

    <div class="col contentOfThePage">
      <!-- <hr /> -->

      <h5 class="text-left boldThese ml-2">EMBED LINKS:</h5>
      <hr />
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          required
          v-model="formcaps1.revise_manuscript"
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Revised Manuscript of Chapter 1-3 (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps1.action_done"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Action Done Matrix for Capstone 1 (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps1.mou"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >MOU between Advisee and adviser (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps1.title_proposal_form"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Capstone Project Title Proposal Form (DOCX)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps1.adviser_appointmentform"
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
          v-model="formcaps1.ppt"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Powerpoint Presentation (PPT)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps1.recorded_proposal"
          required
        ></textarea>
        <label class="ps-4 colorLabel" for="floatingTextarea2"
          >Recorded Proposal Presentation (YOUTUBE)</label
        >
        <br />
      </div>
      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 100px"
          v-model="formcaps1.minutes"
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
          v-model="formcaps1.gcash_ss_file"
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
          v-model="formcaps1.acceptance_of_panel"
          required
        ></textarea>
        <br />
        <label class="ps-4 colorLabel pb-5 mb-5" for="floatingTextarea2"
          >Screenshot of the acceptance of panel to the revision done to chapter 1-3
          (docs)
        </label>

        <br />
      </div>

      <hr />

      <div class="row">
        <div class="col">
          <h5 for="date" class="form-label">Date Approved</h5>
          <input type="date" class="col-12 inputColor" v-model="formcaps1.propose_date" />
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
        <!-- <h5 class="text-left boldThese ml-2">STATUS</h5> -->
        <!-- <hr /> -->
        <label for="status" class="form-label">Choose Status</label>
        <div class="input-group mb-3">
          <select
            class="form-select inputColor"
            id="inputGroupSelect01"
            v-model="formcaps1.status"
          >
            <!-- <option selected>Choose...</option> -->
            <option value="Working Chapter 1,2,3">Working Chapter 1,2,3</option>
            <option value="Under-Revision">Under-Revision</option>
            <option value="Done-Approved">Done-Approved</option>
          </select>
        </div>
      </div>
      <!-- class="col-12 inputColor" -->

      <div class="col">
        <h5 for="status" class="form-label">Status</h5>
        <input
          type="text"
          class="form-control inputColor"
          placeholder="status"
          aria-label="status"
          disabled
          v-model="formcaps1.status"
        />
      </div>

      <br />
      <div class="col text-center">
        <button type="button" class="btn btnW btn-primary" @click="saveCapstone1()">
          SAVE
        </button>
        <!-- <button type="button" class="btn btnW btn-primary" @click="touch()">TOUCH</button> -->
      </div>
    </div>
  </div>
</template>

<script setup>
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { ref } from "vue";
let formcaps1 = ref({
  status: "",
  revise_manuscript: "",
  action_done: "",
  mou: "",
  title_proposal_form: "",
  adviser_appointmentform: "",
  ppt: "",
  recorded_proposal: "",
  minutes: "",
  gcash_ss_file: "",
  acceptance_of_panel: "",
  propose_date: "",
});

// const date = ref({
//   date: "",
// });

let caps1Instructor = ref({
  instruct: "",
});
// const caps2Inst = () => {
//   let capstoneid = getIDfromURL();

//   const formData = new FormData();

//   formData.append("instructor", caps1Instructor.value.instruct);

//   axios
//     .post("/api/capstone_instructor1/" + capstoneid, formData)
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
//         title: caps1Instructor.value.instruct,
//         // title: capstoneid,
//       });
//     });
// };

let instructor = ref({
  name: "",
  mname: "",
  lname: "",
});

const touch = async () => {
  let capstoneid = getIDfromURL();
  let idd = caps1Instructor.value.instruct;
  let response = await axios.get("/api/get_capstone_inst/" + idd);

  // console.warn("TYTRTYTRYTRYTRY", GenCadocu123.value.xf2);
  instructor.value = response.data.userCaps;
  let fullname =
    instructor.value.name + " " + instructor.value.mname + " " + instructor.value.lname;

  const formData = new FormData();

  formData.append("instructor", fullname);

  axios
    .post("/api/capstone_instructor1/" + capstoneid, formData)
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
// toast.fire({
//   icon: "warning",
//   title: fullname,
// });
// console.warn("TYTRTYTRYTRYTRY", rated.value.id);
// if (rated.value.id == 1) {
//   axios
//     .post("/api/create_rate/" + idd)
//     .then((response) => {
//       // router.push("/rate/" + idd);
//       router.push("/capstone2/" + id);
//     })
//     // router.push("/rate/" + idd);

//     .catch(function (error) {
//       console.log(error.response.data.errors);
//       console.log("ERRRR:: ", error.response.data);

//       toast.fire({
//         icon: "warning",
//         title: "SOMETHING WRONG",
//       });
//     });
// } else {
//   toast.fire({
//     icon: "warning",
//     title: "Sorry, You're not one of the Panelist",
//   });
// }

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
  getCapston1Data();
  getInstructor();
});

const getCapston1Data = async () => {
  let capstoneid = getIDfromURL();
  let response = await axios.get("/api/get_capstonee111/" + capstoneid);
  formcaps1.value = response.data.capstone11111;
  console.warn("CAPSTON 1", formcaps1.value);
};

// let id = window.location.pathname.split("/")[2];
//       axios.get("/api/get_capstonee1/" + id).then((response) => {
//         this.caps = response.data.capstone11111;
//       });

const saveCapstone1 = () => {
  let capstoneid = getIDfromURL();

  const formData = new FormData();
  formData.append("capstoneid", capstoneid);

  formData.append("status", formcaps1.value.status);

  formData.append("revise_manuscript", formcaps1.value.revise_manuscript);
  formData.append("action_done", formcaps1.value.action_done);
  formData.append("mou", formcaps1.value.mou);
  formData.append("title_proposal_form", formcaps1.value.title_proposal_form);
  formData.append("adviser_appointmentform", formcaps1.value.adviser_appointmentform);
  formData.append("ppt", formcaps1.value.ppt);
  formData.append("recorded_proposal", formcaps1.value.recorded_proposal);
  formData.append("minutes", formcaps1.value.minutes);
  formData.append("gcash_ss_file", formcaps1.value.gcash_ss_file);
  formData.append("acceptance_of_panel", formcaps1.value.acceptance_of_panel);
  formData.append("propose_date", formcaps1.value.propose_date);

  axios
    .post("/api/addcapstone1/" + capstoneid, formData)
    .then((response) => {
      (formcaps1.value.status = ""),
        (formcaps1.value.revise_manuscript = ""),
        (formcaps1.value.action_done = ""),
        (formcaps1.value.mou = ""),
        (formcaps1.value.title_proposal_form = ""),
        (formcaps1.value.adviser_appointmentform = ""),
        (formcaps1.value.ppt = ""),
        (formcaps1.value.recorded_proposal = ""),
        (formcaps1.value.minutes = ""),
        (formcaps1.value.gcash_ss_file = ""),
        (formcaps1.value.acceptance_of_panel = ""),
        (formcaps1.value.propose_date = ""),
        (capstoneid = ""),
        // router.push("/create");
        getCapston1Data();
      // caps2Inst();
      touch();

      toast.fire({
        icon: "success",
        title: "Capstone Embed links, Add Successfully",
      });
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "User Add Unsuccessful",
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
