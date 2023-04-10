<template>
  <div class="contentOfThePage p-3">
    <h5 class="text-left boldThese">Abstract Or Project Descriptions</h5>
    <div class="form-floating col">
      <textarea
        v-model="caps.ocr"
        class="form-control inputColor"
        :class="abstrctRed"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 200px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Abstract</label>
      <p class="text-danger hidedd fw-bold" :class="abstrctRedText">
        Invalid, Please fill out the abstract field
      </p>

      <button
        type="button"
        class="m-1 btnSize btn btn-primary W-100 fw-bold"
        @click="saveCapstonee2()"
      >
        SAVE ABSTRACT
      </button>
    </div>

    <P class="text-left boldThese">GENERAL INFORMATION</P>
    <h5 class="text-left boldThese">Title</h5>
    <div class="form-floating col">
      <textarea
        v-model="GenCaps.title"
        class="form-control inputColor"
        :class="titleRed"
        placeholder="Leave a comment here"
        id="floatingTextarea2"
        style="height: 100px"
        required
      ></textarea>
      <label class="ps-4" for="floatingTextarea2">Title</label>
      <p class="text-danger hidedd fw-bold" :class="titleRedText">
        Invalid, Please fill out the title field
      </p>
    </div>
    <br />
    <div class="row">
      <div class="form-group col-3">
        <label for="exampleFormControlTextarea1" id="">Group Name</label>
        <textarea
          v-model="GenCaps.groupname"
          class="form-control pbn inputColor"
          :class="groupRed"
          id="exampleFormControlTextarea1"
          rows="1"
          placeholder="Input Groupname"
        ></textarea>
        <p class="text-danger hidedd fw-bold" :class="groupRedText">
          Invalid, Please fill out the groupname field
        </p>
      </div>

      <div class="col-3">
        <label for="lastname" class="form-label">Project Status</label>
        <div class="input-group mb-3">
          <select
            class="form-select inputColor"
            :class="statusRed"
            id="inputGroupSelect01"
            v-model="GenCaps.xf2"
          >
            <option selected disabled>Choose...</option>
            <option value="UNDER DEVELOPMENT">UNDER DEVELOPMENT</option>
            <option value="DEPLOYED">DEPLOYED</option>
            <option value="UNIMPLEMENTED">UNIMPLEMENTED</option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="statusRedText">
          Invalid, Please fill out the status field
        </p>
      </div>

      <div class="col-3">
        <label for="lastname" class="form-label">Choose Year</label>
        <div class="input-group mb-3">
          <select
            class="form-select inputColor"
            :class="yearRed"
            id="inputGroupSelect01"
            v-model="GenCaps.xf1"
          >
            <option selected disabled>Choose...</option>
            <option value="3rd year">3rd year</option>
            <option value="4th year">4th year</option>

            <option value="Graduated">Graduated</option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="yearRedText">
          Invalid, Please fill out the year field
        </p>
      </div>
      <div class="col">
        <label for="date" class="form-label">Capstone From:</label>

        <Datepicker class="inputColor" v-model="year.fromYear" yearPicker />
      </div>
      <div class="col">
        <label for="date" class="form-label">Capstone To:</label>

        <Datepicker class="inputColor" v-model="year.toYear" yearPicker />
      </div>
    </div>

    <div class="row">
      <div class="col">
        <label for="panel1" class="form-label">Panel 1</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              panel1Red.redColor ||
              p1p2Red.redColor ||
              p1p3Red.redColor ||
              p1adRed.redColor ||
              p1coadRed.redColor ||
              p1secRed.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.panels1"
          >
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="panel1RedText">
          Invalid, Please fill out the panelist 1 field
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1p2RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1p3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1adRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1coadRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1secRedText">
          Invalid, Duplication of role
        </p>
      </div>

      <div class="col">
        <label for="panel2" class="form-label">Panel 2</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              panel2tRed.redColor ||
              p2p3Red.redColor ||
              p2adRed.redColor ||
              p2coadRed.redColor ||
              p2secRed.redColor ||
              p1p2Red.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.panels2"
          >
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>

        <p class="text-danger hidedd fw-bold" :class="panel2RedText">
          Invalid, Please fill out the panelist 1 field
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2p3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2adRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2coadRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2secRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1p2RedText">
          Invalid, Duplication of role
        </p>
      </div>

      <div class="col">
        <label for="panel3" class="form-label">Panel 3</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              panel3tRed.redColor ||
              p1p3Red.redColor ||
              p2p3Red.redColor ||
              p3adRed.redColor ||
              p3coadRed.redColor ||
              p3secRed.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.panels3"
          >
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="panel3RedText">
          Invalid, Please fill out the panelist3 field
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1p3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2p3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p3adRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p3coadRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p3secRedText">
          Invalid, Duplication of role
        </p>
      </div>

      <div class="col">
        <label for="secretary" class="form-label">Secretary</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              secRed.redColor ||
              p1secRed.redColor ||
              p2secRed.redColor ||
              p3secRed.redColor ||
              adsecRed.redColor ||
              coadsecRed.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.secretarys"
          >
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="secRedText">
          Invalid, Please fill out the secretary field
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1secRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2secRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p3secRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="adsecRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="coadsecRedText">
          Invalid, Duplication of role
        </p>
      </div>
    </div>

    <div class="row">
      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              proponentsRed.redColor ||
              s1s2Red.redColor ||
              s1s3Red.redColor ||
              s1s4Red.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students1"
          >
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="proponentsRedText">
          Invalid, Please fill out atleast one proponents
        </p>
        <p class="text-danger hidedd fw-bold" :class="s1s2RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s1s3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s1s4RedText">
          Invalid, Duplication of role
        </p>
      </div>

      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              proponentsRed.redColor ||
              s1s2Red.redColor ||
              s2s3Red.redColor ||
              s2s4Red.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students2"
          >
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="proponentsRedText">
          Invalid, Please fill out atleast one proponents
        </p>
        <p class="text-danger hidedd fw-bold" :class="s1s2RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s2s3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s2s4RedText">
          Invalid, Duplication of role
        </p>
      </div>

      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              proponentsRed.redColor ||
              s1s3Red.redColor ||
              s2s3Red.redColor ||
              s3s4Red.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students3"
          >
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="proponentsRedText">
          Invalid, Please fill out atleast one proponents
        </p>
        <p class="text-danger hidedd fw-bold" :class="s1s3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s2s3RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s3s4RedText">
          Invalid, Duplication of role
        </p>
      </div>

      <div class="col">
        <label for="students" class="form-label">Proponent</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              proponentsRed.redColor ||
              s1s4Red.redColor ||
              s2s4Red.redColor ||
              s3s4Red.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.students4"
          >
            <option v-for="item in students" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="proponentsRedText">
          Invalid, Please fill out atleast one proponents
        </p>
        <p class="text-danger hidedd fw-bold" :class="s1s4RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s2s4RedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="s3s4RedText">
          Invalid, Duplication of role
        </p>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <label for="adviser" class="form-label">Adviser</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              adviserRed.redColor ||
              p1adRed.redColor ||
              p2adRed.redColor ||
              p3adRed.redColor ||
              adsecRed.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.adviser"
          >
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="adviserText">
          Invalid, Please fill out the adviser field
        </p>
        <p class="text-danger hidedd fw-bold" :class="p1adRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2adRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p3adRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="adsecRedText">
          Invalid, Duplication of role
        </p>
      </div>
      <div class="col">
        <label for="coAdviser" class="form-label">Co-Adviser</label>
        <div
          class="input-group mb-3"
          :class="{
            redColor:
              p1coadRed.redColor ||
              p2coadRed.redColor ||
              p3coadRed.redColor ||
              coadsecRed.redColor,
          }"
        >
          <select
            class="form-control inputColor"
            onfocus="this.size=8;"
            onblur="this.size=1;"
            onchange="this.size=1; this.blur();"
            v-model="GenCaps.coAdviser"
          >
            <option v-for="item in instructors" :key="item.id" :value="item.id">
              {{ item.name }} {{ item.mname }} {{ item.lname }}
            </option>
          </select>
        </div>
        <p class="text-danger hidedd fw-bold" :class="p1coadRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p2coadRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="p3coadRedText">
          Invalid, Duplication of role
        </p>
        <p class="text-danger hidedd fw-bold" :class="coadsecRedText">
          Invalid, Duplication of role
        </p>
      </div>
    </div>

    <hr />
    <div class="row">
      <div class="col">
        <button
          type="button"
          class="m-1 btnSize btn btn-primary fw-bold fw-bold"
          @click="saveCaps()"
        >
          CREATE PROJECT
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import axios from "axios";
import { onMounted, ref, reactive, watch } from "vue";
import router from "../../routers/administratorRouter";
import Datepicker from "@vuepic/vue-datepicker";
import "@vuepic/vue-datepicker/dist/main.css";

let secretarys = ref({});

let abstrctRed = ref({
  redColor: false,
});
let abstrctRedText = ref({
  redText: false,
});

let titleRed = ref({
  redColor: false,
});
let titleRedText = ref({
  redText: false,
});

let groupRed = ref({
  redColor: false,
});
let groupRedText = ref({
  redText: false,
});

let statusRed = ref({
  redColor: false,
});
let statusRedText = ref({
  redText: false,
});

let yearRed = ref({
  redColor: false,
});
let yearRedText = ref({
  redText: false,
});

let panel1Red = ref({
  redColor: false,
});
let panel1RedText = ref({
  redText: false,
});

let panel2tRed = ref({
  redColor: false,
});
let panel2RedText = ref({
  redText: false,
});

let panel3tRed = ref({
  redColor: false,
});
let panel3RedText = ref({
  redText: false,
});

let secRed = ref({
  redColor: false,
});
let secRedText = ref({
  redText: false,
});

let proponentsRed = ref({
  redColor: false,
});
let proponentsRedText = ref({
  redText: false,
});

let adviserRed = ref({
  redColor: false,
});
let adviserText = ref({
  redText: false,
});

let s1s2Red = ref({
  redColor: false,
});
let s1s2RedText = ref({
  redText: false,
});

let s1s3Red = ref({
  redColor: false,
});
let s1s3RedText = ref({
  redText: false,
});

let s1s4Red = ref({
  redColor: false,
});
let s1s4RedText = ref({
  redText: false,
});

let s2s3Red = ref({
  redColor: false,
});
let s2s3RedText = ref({
  redText: false,
});
let s2s4Red = ref({
  redColor: false,
});
let s2s4RedText = ref({
  redText: false,
});
let s3s4Red = ref({
  redColor: false,
});
let s3s4RedText = ref({
  redText: false,
});

let p1p2Red = ref({
  redColor: false,
});
let p1p2RedText = ref({
  redText: false,
});

let p1p3Red = ref({
  redColor: false,
});
let p1p3RedText = ref({
  redText: false,
});

let p1adRed = ref({
  redColor: false,
});
let p1adRedText = ref({
  redText: false,
});
let p1coadRed = ref({
  redColor: false,
});
let p1coadRedText = ref({
  redText: false,
});
let p1secRed = ref({
  redColor: false,
});
let p1secRedText = ref({
  redText: false,
});
let p2p3Red = ref({
  redColor: false,
});
let p2p3RedText = ref({
  redText: false,
});
let p2adRed = ref({
  redColor: false,
});
let p2adRedText = ref({
  redText: false,
});
let p2coadRed = ref({
  redColor: false,
});
let p2coadRedText = ref({
  redText: false,
});
let p2secRed = ref({
  redColor: false,
});
let p2secRedText = ref({
  redText: false,
});
let p3adRed = ref({
  redColor: false,
});
let p3adRedText = ref({
  redText: false,
});
let p3coadRed = ref({
  redColor: false,
});
let p3coadRedText = ref({
  redText: false,
});
let p3secRed = ref({
  redColor: false,
});
let p3secRedText = ref({
  redText: false,
});
let adsecRed = ref({
  redColor: false,
});
let adsecRedText = ref({
  redText: false,
});
let coadsecRed = ref({
  redColor: false,
});
let coadsecRedText = ref({
  redText: false,
});

const year = ref({
  toYear: ref(new Date().getFullYear()),
  fromYear: ref(new Date().getFullYear()),
});

let students = ref({
  name: "",
  mname: "",
  lname: "",
});

let caps = ref({
  ocr: null,
});
let panels = ref({});
let advisers = ref({});
let instructors = ref({});

let GenCaps = ref({
  name: null,
  title: null,
  abstract: null,
  groupname: null,
  students1: null,
  students2: null,
  students3: null,
  students4: null,
  panels1: null,
  panels2: null,
  panels3: null,
  adviser: null,
  coAdviser: null,
  instructor: null,
  secretarys: null,
  xf1: null,
  xf2: null,
});

onMounted(async () => {
  getSecretary();
  getStudent();
  getPanel();
  getAdviser();
  getInstructor();
  datato();
});

const datato = async () => {
  let response = await axios.get("/api/get_capstonee1");
  caps.value = response.data.capstone11111;
};

const saveCaps = () => {
  if (caps.value.ocr == null || caps.value.ocr == "") {
    abstrctRed.value.redColor = true;
    abstrctRedText.value.redText = true;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the abstract field",
    });
  } else if (GenCaps.value.title == null || GenCaps.value.title == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;
    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;
    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    titleRed.value.redColor = true;
    titleRedText.value.redText = true;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the title field",
    });
  } else if (GenCaps.value.groupname == null || GenCaps.value.groupname == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = true;
    groupRedText.value.redText = true;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the groupname field",
    });
  } else if (GenCaps.value.xf2 == null || GenCaps.value.xf2 == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = true;
    statusRedText.value.redText = true;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the status field",
    });
  } else if (GenCaps.value.xf1 == null || GenCaps.value.xf1 == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = true;
    yearRedText.value.redText = true;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the year field",
    });
  } else if (GenCaps.value.panels1 == null || GenCaps.value.panels1 == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = true;
    panel1RedText.value.redText = true;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the panel 1 field",
    });
  } else if (GenCaps.value.panels2 == null || GenCaps.value.panels2 == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = true;
    panel2RedText.value.redText = true;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the panel 2 field",
    });
  } else if (GenCaps.value.panels3 == null || GenCaps.value.panels3 == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = true;
    panel3RedText.value.redText = true;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the panel 3 field",
    });
  } else if (GenCaps.value.secretarys == null || GenCaps.value.secretarys == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = true;
    secRedText.value.redText = true;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the secretarys field",
    });
  } else if (
    GenCaps.value.students1 == null &&
    GenCaps.value.students2 == null &&
    GenCaps.value.students3 == null &&
    GenCaps.value.students4 == null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = true;
    proponentsRedText.value.redText = true;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please input atleast one student!",
    });
  } else if (GenCaps.value.adviser == null || GenCaps.value.adviser == "") {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = true;
    adviserText.value.redText = true;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, Please fill out the adviser field",
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.panels2) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    p1p2Red.value.redColor = true;
    p1p2RedText.value.redText = true;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels1 and panels2",
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.panels3) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = true;
    p1p3RedText.value.redText = true;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels1 and panels3",
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.secretarys) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = true;
    p1secRedText.value.redText = true;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels1 and secretarys",
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.adviser) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = true;
    p1adRedText.value.redText = true;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels1 and adviser",
    });
  } else if (GenCaps.value.panels1 == GenCaps.value.coAdviser) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = true;
    p1coadRedText.value.redText = true;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels1 and coAdviser",
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.panels3) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = true;
    p2p3RedText.value.redText = true;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels2 and panels3",
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.adviser) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = true;
    p2adRedText.value.redText = true;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels2 and adviser",
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.coAdviser) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = true;
    p2coadRedText.value.redText = true;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels2 and coAdviser",
    });
  } else if (GenCaps.value.panels2 == GenCaps.value.secretarys) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = true;
    p2secRedText.value.redText = true;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels2 and secretarys",
    });
  } else if (GenCaps.value.panels3 == GenCaps.value.adviser) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    p3adRed.value.redColor = true;
    p3adRedText.value.redText = true;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels3 and adviser",
    });
  } else if (GenCaps.value.panels3 == GenCaps.value.coAdviser) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = true;
    p3coadRedText.value.redText = true;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels3 and coAdviser",
    });
  } else if (GenCaps.value.panels3 == GenCaps.value.secretarys) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = true;
    p3secRedText.value.redText = true;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field panels3 and secretarys",
    });
  } else if (GenCaps.value.adviser == GenCaps.value.secretarys) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = true;
    adsecRedText.value.redText = true;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field adviser and secretarys",
    });
  } else if (GenCaps.value.coAdviser == GenCaps.value.secretarys) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = true;
    coadsecRedText.value.redText = true;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field coAdviser and secretarys",
    });
  } else if (
    GenCaps.value.students1 == GenCaps.value.students2 &&
    GenCaps.value.students1 != null &&
    GenCaps.value.students2 != null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = true;
    s1s2RedText.value.redText = true;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field students1 and students2",
    });
  } else if (
    GenCaps.value.students1 == GenCaps.value.students3 &&
    GenCaps.value.students1 != null &&
    GenCaps.value.students3 != null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = true;
    s1s3RedText.value.redText = true;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field students1 and students3",
    });
  } else if (
    GenCaps.value.students1 == GenCaps.value.students4 &&
    GenCaps.value.students1 != null &&
    GenCaps.value.students4 != null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = true;
    s1s4RedText.value.redText = true;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field students1 and students4",
    });
  } else if (
    GenCaps.value.students2 == GenCaps.value.students3 &&
    GenCaps.value.students2 != null &&
    GenCaps.value.students3 != null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = true;
    s2s3RedText.value.redText = true;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;

    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field students2 and students3",
    });
  } else if (
    GenCaps.value.students2 == GenCaps.value.students4 &&
    GenCaps.value.students2 != null &&
    GenCaps.value.students4 != null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = true;
    s2s4RedText.value.redText = true;

    s3s4Red.value.redColor = false;
    s3s4RedText.value.redText = false;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field students2 and students4",
    });
  } else if (
    GenCaps.value.students3 == GenCaps.value.students4 &&
    GenCaps.value.students3 != null &&
    GenCaps.value.students4 != null
  ) {
    abstrctRed.value.redColor = false;
    abstrctRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    groupRed.value.redColor = false;
    groupRedText.value.redText = false;

    statusRed.value.redColor = false;
    statusRedText.value.redText = false;

    yearRed.value.redColor = false;
    yearRedText.value.redText = false;

    panel1Red.value.redColor = false;
    panel1RedText.value.redText = false;

    panel2tRed.value.redColor = false;
    panel2RedText.value.redText = false;

    panel3tRed.value.redColor = false;
    panel3RedText.value.redText = false;

    secRed.value.redColor = false;
    secRedText.value.redText = false;

    proponentsRed.value.redColor = false;
    proponentsRedText.value.redText = false;

    adviserRed.value.redColor = false;
    adviserText.value.redText = false;

    s1s2Red.value.redColor = false;
    s1s2RedText.value.redText = false;

    s1s3Red.value.redColor = false;
    s1s3RedText.value.redText = false;

    s1s4Red.value.redColor = false;
    s1s4RedText.value.redText = false;

    s2s3Red.value.redColor = false;
    s2s3RedText.value.redText = false;

    s2s4Red.value.redColor = false;
    s2s4RedText.value.redText = false;

    s3s4Red.value.redColor = true;
    s3s4RedText.value.redText = true;

    p1p2Red.value.redColor = false;
    p1p2RedText.value.redText = false;

    p1p3Red.value.redColor = false;
    p1p3RedText.value.redText = false;

    p1adRed.value.redColor = false;
    p1adRedText.value.redText = false;

    p1coadRed.value.redColor = false;
    p1coadRedText.value.redText = false;

    p1secRed.value.redColor = false;
    p1secRedText.value.redText = false;

    p2p3Red.value.redColor = false;
    p2p3RedText.value.redText = false;

    p2adRed.value.redColor = false;
    p2adRedText.value.redText = false;

    p2coadRed.value.redColor = false;
    p2coadRedText.value.redText = false;

    p2secRed.value.redColor = false;
    p2secRedText.value.redText = false;

    titleRed.value.redColor = false;
    titleRedText.value.redText = false;

    p3adRed.value.redColor = false;
    p3adRedText.value.redText = false;

    p3coadRed.value.redColor = false;
    p3coadRedText.value.redText = false;

    p3secRed.value.redColor = false;
    p3secRedText.value.redText = false;

    adsecRed.value.redColor = false;
    adsecRedText.value.redText = false;

    coadsecRed.value.redColor = false;
    coadsecRedText.value.redText = false;
    toast.fire({
      icon: "warning",
      title: "Invalid, duplicate role in field students3 and students4",
    });
  } else {
    axios.get("/api/get_capstonee1").then((response) => {
      caps.value = response.data.capstone11111;
    });

    const formData = new FormData();
    formData.append("title", GenCaps.value.title);
    formData.append("abstract", caps.value.ocr);
    formData.append("groupname", GenCaps.value.groupname);
    if (GenCaps.value.students1 != null) {
      formData.append("students1", GenCaps.value.students1);
    }
    if (GenCaps.value.students2 != null) {
      formData.append("students2", GenCaps.value.students2);
    }
    if (GenCaps.value.students3 != null) {
      formData.append("students3", GenCaps.value.students3);
    }
    if (GenCaps.value.students4 != null) {
      formData.append("students4", GenCaps.value.students4);
    }
    formData.append("panels1", GenCaps.value.panels1);
    formData.append("panels2", GenCaps.value.panels2);
    formData.append("panels3", GenCaps.value.panels3);

    formData.append("adviser", GenCaps.value.adviser);

    if (GenCaps.value.coAdviser != null) {
      formData.append("coAdviser", GenCaps.value.coAdviser);
    }

    formData.append("instructor", year.value.fromYear + " - " + year.value.toYear);

    formData.append("secretarys", GenCaps.value.secretarys);
    formData.append("xf1", GenCaps.value.xf1);
    formData.append("xf2", GenCaps.value.xf2);

    axios
      .post("/api/add_capstone_project", formData)
      .then((response) => {
        const removeData = new FormData();
        removeData.append("texttext", ".");
        axios
          .post("/api/add_capstonee1", removeData)

          .then((response) => {
            (GenCaps.value.title = ""),
              (caps.value.ocr = ""),
              (GenCaps.value.groupname = ""),
              (GenCaps.value.students1 = ""),
              (GenCaps.value.students2 = ""),
              (GenCaps.value.students3 = ""),
              (GenCaps.value.students4 = ""),
              (GenCaps.value.panels1 = ""),
              (GenCaps.value.panels2 = ""),
              (GenCaps.value.panels3 = ""),
              (GenCaps.value.adviser = ""),
              (GenCaps.value.coAdviser = ""),
              (GenCaps.value.secretarys = ""),
              (GenCaps.value.xf1 = ""),
              (GenCaps.value.xf2 = ""),
              router.push("/capslist");

            toast.fire({
              icon: "success",
              title: "Capstone successfully created",
            });
          });

        (GenCaps.value.title = ""),
          (caps.value.ocr = ""),
          (GenCaps.value.groupname = ""),
          (GenCaps.value.students1 = ""),
          (GenCaps.value.students2 = ""),
          (GenCaps.value.students3 = ""),
          (GenCaps.value.students4 = ""),
          (GenCaps.value.panels1 = ""),
          (GenCaps.value.panels2 = ""),
          (GenCaps.value.panels3 = ""),
          (GenCaps.value.adviser = ""),
          (GenCaps.value.coAdviser = ""),
          (GenCaps.value.secretarys = ""),
          (GenCaps.value.xf1 = ""),
          (GenCaps.value.xf2 = ""),
          router.push("/capslist");
      })

      .catch(function (error) {
        console.log(error.response.data.errors);
        console.log("ERRRR:: ", error.response.data);

        toast.fire({
          icon: "warning",
          title: "Capstone creation failed!",
        });
      });
  }
};

const getSecretary = async () => {
  let response = await axios.get("/api/get_all_secretary_user");
  secretarys.value = response.data.secretarys;
};

const getStudent = async () => {
  let response = await axios.get("/api/get_all_student_user");
  students.value = response.data.students;
};

const getPanel = async () => {
  let response = await axios.get("/api/get_all_panel_user");
  panels.value = response.data.panels;
};

const getAdviser = async () => {
  let response = await axios.get("/api/get_all_adviser_user");
  advisers.value = response.data.advisers;
};

const getInstructor = async () => {
  let response = await axios.get("/api/get_all_instructor_user");
  instructors.value = response.data.instructors;
};
</script>

<style>
hr {
  border: 1px solid #0062ff;
}
.dropdown-menu {
  max-height: 250px;
  overflow: auto;
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
.hidedd {
  display: none;
}
.redColor {
  border: 1px solid red !important;
  border-radius: 4px;
  animation: shake 0.5s;
  animation-iteration-count: 3.5s;
}
.redText {
  display: block !important;
  animation: shake 0.5s;
  animation-iteration-count: 3.5s;
}

@keyframes shake {
  0% {
    transform: translate(1px, 1px) rotate(0deg);
  }
  10% {
    transform: translate(-1px, -2px) rotate(-1deg);
  }
  20% {
    transform: translate(-3px, 0px) rotate(1deg);
  }
  30% {
    transform: translate(3px, 2px) rotate(0deg);
  }
  40% {
    transform: translate(1px, -1px) rotate(1deg);
  }
  50% {
    transform: translate(-1px, 2px) rotate(-1deg);
  }
  60% {
    transform: translate(-3px, 1px) rotate(0deg);
  }
  70% {
    transform: translate(3px, 1px) rotate(-1deg);
  }
  80% {
    transform: translate(-1px, -1px) rotate(1deg);
  }
  90% {
    transform: translate(1px, 2px) rotate(0deg);
  }
  100% {
    transform: translate(1px, -2px) rotate(-1deg);
  }
}

.titleText {
  font-size: 16;
  font-weight: bolder;
}
.navbar-nav .dropdown-menu {
  overflow: auto;
  height: 100px;
}
</style>

<script>
import { ref, defineComponent, onMounted } from "vue";

import { QuillEditor } from "@vueup/vue-quill";
import "@vueup/vue-quill/dist/vue-quill.snow.css";
import Camera from "simple-vue-camera";

export default defineComponent({
  name: "RichTextEditor",
  name: "Camera",
  components: {
    QuillEditor,
    Camera,
  },
  data() {
    return {
      dataUrl: "",
      status: "",
      isCameraOpen: false,
      isPhotoTaken: false,
      textcontent: "",
      concatSting: "",
      caps: { ocr: "" },
      mainAbstract: "",
    };
  },
  methods: {
    updateCanvasImage(e) {
      this.status = "initialize";
      var self = this;

      var reader,
        files = e.target.files;

      var reader = new FileReader();

      reader.onload = (e) => {
        var img = new Image();
        img.onload = function () {
          self.drawCanvasImage(img);
        };
        img.src = event.target.result;
      };

      reader.readAsDataURL(files[0]);
    },

    drawCanvasImage(img) {
      var vm = this;

      var canvas = this.$refs.imageCanvas;

      canvas.width = img.width;
      canvas.height = img.height;

      var ctx = canvas.getContext("2d");
      ctx.drawImage(img, 0, 0);
      this.dataUrl = canvas.toDataURL();
      this.status = "READING!!!";
      Tesseract.recognize(this.dataUrl, "eng", {
        logger: (log) => {
          console.log(log);
        },
      })
        .then((result) => {
          this.textcontent = result.data.text;

          this.mainAbstract = this.textcontent;
          vm.status = "";
        })
        .catch((error) => console.log(error))
        .finally(() => {});
    },

    saveCapstonee1() {
      axios
        .post("/api/add_capstonee1", {
          texttext: this.getCapstoneData() + this.textcontent,
        })
        .then((response) => {
          toast.fire({
            icon: "success",
            title: "Succesfully Added",
          });
          location.reload();
        });
    },
    saveCapstonee2() {
      axios
        .post("/api/add_capstonee1", {
          texttext: this.getCapstoneData(),
        })
        .then((response) => {
          toast.fire({
            icon: "success",
            title: "Abstract successfully saved ",
          });
        });
    },
    getCapstone() {
      axios.get("/api/get_capstonee1").then((response) => {
        this.caps = response.data.capstone11111;
      });
    },
    getCapstoneData() {
      axios.get("/api/get_capstonee1").then((response) => {
        this.caps = response.data.capstone11111;
      });
      return this.caps.ocr;
    },
  },

  created() {
    this.getCapstone();
    this.getCapstoneData();
  },
});
</script>
