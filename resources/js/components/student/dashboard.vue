<template>
  <div class="rowLeft">
    <h5 class="rowLeftHHH">USERS</h5>
    <div class="row">
      <div class="col box text-center">
        <img class="userImages" src="/images/student.jpg" alt="Student" />
        <br />
        <span class="marginTop">STUDENT</span>
        <h4>{{ dashboard.instructor1 }}</h4>
      </div>
      <div class="col box text-center">
        <img class="userImages" src="/images/adviser.jpg" alt="Student" />
        <br />
        <span class="marginTop">ADVISER</span>
        <h4>55</h4>
      </div>
      <div class="col box text-center">
        <img class="userImages" src="/images/instructor.png" alt="Student" />
        <br />
        <span class="marginTop">INSTRUCTOR</span>
        <h4>55</h4>
      </div>

      <div class="col box text-center">
        <img class="userImages" src="/images/panelist.png" alt="Student" />
        <br />
        <span class="marginTop">PANELIST</span>
        <h4>55</h4>
      </div>
      <div class="col box text-center">
        <img class="userImages" src="/images/archiver.png" alt="Student" />
        <br />
        <span class="marginTop">ARCHIVER</span>
        <h4>55</h4>
      </div>
      <div class="col box text-center">
        <img class="userImages" src="/images/secretary.png" alt="Student" />
        <br />
        <span class="marginTop">SECRETARY</span>
        <h4>55</h4>
      </div>
    </div>
  </div>
  <br />
  <h5 class="rowLeftHH">CAPSTONE PROJECT STATUS</h5>
  <div class="row pieChartbox">
    <table class="table table-borderless rounded bg-light col">
      <tr class="pt-3">
        <td class="fontSize pt-3">UNDER DEVELOPMENT</td>
        <td class="fontSize1">15</td>
      </tr>
      <tr>
        <td class="fontSize">DEPLOYED</td>
        <td class="fontSize1">10</td>
      </tr>
      <tr>
        <td class="fontSize">UNIMPLEMENTED</td>
        <td class="fontSize1">5</td>
      </tr>
    </table>
    <div class="col-4 pieChartbox2 center pt-3">
      <canvas class="pieChart" id="myChart"></canvas>
    </div>
  </div>

  <br />
  <h5 class="rowLeftHH">CAPSTONE PHASE STATUS SUMMARY</h5>
  <div class="row pRigthStatus">
    <table class="table table-hover text-center col boxStatus table-borderless">
      <thead>
        <tr>
          <th class="bdB">CAPSTONE 1</th>
          <th class="bgData bdB">DATA</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Number of Group:</td>
          <td class="bgData">20</td>
        </tr>
        <tr>
          <td>Approve Title by Adviser:</td>
          <td class="bgData">90%</td>
        </tr>
        <tr>
          <td>Proposed:</td>
          <td class="bgData">80%</td>
        </tr>
        <tr>
          <td>Done revised manuscript and aprove by Panels:</td>
          <td class="bgData">50%</td>
        </tr>
      </tbody>
    </table>
    <table class="table table-hover table-borderless text-center col boxStatus">
      <thead>
        <tr>
          <th class="bdB">CAPSTONE 2</th>
          <th class="bgData bdB">DATA</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Number of Group</td>
          <td class="bgData">20</td>
        </tr>
        <tr>
          <td>Defense</td>
          <td class="bgData">50%</td>
        </tr>
        <tr>
          <td>Done revised manuscript and aprove by Panels</td>
          <td class="bgData">10%</td>
        </tr>
      </tbody>
    </table>
    <table class="table table-hover table-borderless text-center col boxStatus">
      <thead>
        <tr>
          <th class="bdB">CAPSTONE 3</th>
          <th class="bgData bdB">DATA</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Number of Group</td>
          <td class="bgData">20</td>
        </tr>
        <tr>
          <td>Defense</td>
          <td class="bgData">40%</td>
        </tr>
        <tr>
          <td>Done revised manuscript and aprove by Panels</td>
          <td class="bgData">10%</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
<script>
import Chart from "chart.js/auto";
export default {
  data() {
    return {
      age: 5,
      dashboard: {
        instructor1: 0,
        instructor2: 0,
        instructor3: 0,
        panelist: 0,
        students: 0,
        adviser: 0,
        co_adviser: 0,
        archiver: 0,
        secretary: 0,
        under_develop: 0,
        deploy: 0,
        unimplemented: 0,
        no_group1: 0,
        no_propose_def: 0,
        under_revision_1: 0,
        approved_panels_1: 0,
        no_group2: 0,
        no_prototype_def: 0,
        under_revision_2: 0,
        approved_panels_2: 0,
        no_group3: 0,
        no_final_def: 0,
        under_revision_3: 0,
        approved_panels_3: 0,
      },
    };
  },
  mounted() {
    const ctx = document.getElementById("myChart");

    const data = {
      labels: ["DEVELOPMENT", "DEPLOYED", "UNIMPLEMENTED"],
      datasets: [
        {
          label: "My First Dataset",
          data: [15, 10, 5],
          backgroundColor: [
            "rgb(255, 99, 132)",
            "rgb(54, 162, 235)",
            "rgb(255, 205, 86)",
          ],
          hoverOffset: 4,
        },
      ],
    };
    const myChart = new Chart(ctx, {
      type: "pie",
      data: data,
    });
    myChart;
  },

  methods: {
    youTap(num) {
      this.age = num + this.age;
    },
    getDashoard() {
      let response = axios.get("/api/get_dashboard");
      dashboard.value = response.data.dashboards;
      console.warn("DASHBOARD", dashboard.value);
    },
  },
  created() {
    this.getDashoard();
  },
};
</script>
<style>
.pieChartbox {
  height: 300px;
  margin-right: -0.5rem;
  margin-left: 5px;
  background: #fff;
  box-shadow: 2px 1px 10px #888888;
  border-radius: 5px;
  border-color: #0062ff;
}
.pieChartbox2 {
  height: 300px;

  background: #fff;
}

.pieChart {
  width: 80% !important;
  height: 85% !important;
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.box {
  height: 200px;
  margin-right: 5px;
  margin-left: 5px;
  background: #fff;
  box-shadow: 2px 1px 10px #888888;
  border-radius: 5px;
  border-color: #0062ff;
  font-family: "Myriad Pro", Myriad, "Liberation Sans", "Nimbus Sans L", "Helvetica Neue",
    Helvetica, Arial, sans-serif !important;
}

.boxStatus {
  background: #fff;
  box-shadow: 2px 1px 10px #888888;
  border-radius: 5px;
  margin-right: 5px;
  margin-left: 5px;
}

.pRigthStatus {
  padding-left: 10px;
}

.rowLeft {
  margin-left: 12px;
}
.rowLeftH {
  margin-left: -6px;
}

.rowLeftHH {
  margin-left: 5px;
  font-weight: bold;
}
.rowLeftHHH {
  font-weight: bold;
  margin-left: -6px;
}

.userImages {
  height: 100px;
  margin-top: 5px;
  border-color: 1px #000000;
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
.marginTop {
  margin-top: -5px;
}
.fontSize1 {
  font-size: 20px;
  font-weight: bolder;
  padding-left: 250px !important;
}
.fontSize {
  font-size: 18px;
}
.bgData {
  color: #fff;
  background: #0062ff !important;
}
.bdB {
  border-bottom: #9b9da1 solid 1px !important;
}
</style>
