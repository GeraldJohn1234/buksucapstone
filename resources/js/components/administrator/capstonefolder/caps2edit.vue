<template>
  <div class="row">
    <div class="contentOfThePage caps1Side col-7">
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
        <button type="button" class="btn btnW btn-primary" @click="saveCapstone2()">
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
let capstone2data = ref({
  status: "",
  capstone_link: "",

  proto_minutes: "",
  proto_matrix: "",
  ad_appointment_form: "",
  gcash_payment: "",
  acceptance_ss: "",
  prototype_date: "",
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
        title: caps1Instructor.value.instruct,
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
        (capstoneid = ""),
        getCapston2Data();
      touch();

      toast.fire({
        icon: "success",
        title: "Capstone Embed links, Add Successfully",
      });
    })

    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "User Add Unsuccessful",
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
