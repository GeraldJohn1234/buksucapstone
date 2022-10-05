<template>
  <div class="contentOfThePage rounded bg-light">
    <div class="">
      <div class="forInline capsList">TOPIC AND SUGGESTIONS LIST</div>

      <div class="forInline float-end mtop">
        <button class="nav_link" to="/createsuggestion">
          <button type="button" class="btn btn-primary box1">CREATE</button>
        </button>
      </div>
    </div>
    <hr />

    <div class="">
      <div class="input-group">
        <input
          type="search"
          placeholder="Search"
          aria-label="Search"
          aria-describedby="search-addon"
        />
        <button type="button" class="btn btn-outline-primary">search</button>
      </div>

      <div class="float-end topM">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block botM" for="">Sort by: </span>
          <select class="form-select inline-block box1" id="inputGroupSelect01">
            <option selected>Choose...</option>
            <option value="1">FIRST YEAR</option>
            <option value="2">SECOND YEAR</option>
            <option value="3">THIRD YEAR</option>
            <option value="4">FOURTH YEAR</option>
            <option value="5">FIFTH YEAR</option>
          </select>
        </div>
      </div>
    </div>

    <br />
    <table class="table table-hover table-bordered table-striped text-center">
      <thead>
        <tr>
          <th>#</th>
          <th>UPLOADER NAME</th>
          <th>CLIENT NAME</th>
          <th>TITLE</th>
          <th>STATUS</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>2</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>3</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>4</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>5</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>6</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>7</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>8</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>9</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
        <tr>
          <td>10</td>
          <td>Monkey D. Luffy</td>
          <td>Monkey D. Dragon</td>
          <td>Document Management System</td>
          <td>available</td>
          <td class="">
            <ul class="nav row">
              <li class="col">
                <button class="nav_link" @click="taketopic()">
                  <button type="button" class="btn btn-outline-primary button1">
                    VIEW
                  </button>
                </button>
              </li>
            </ul>
          </td>
        </tr>
      </tbody>
    </table>
    <div class="">
      <a href="#" class="previous">&laquo; Previous</a>
      <a href="#" class="next">Next &raquo;</a>

      <div class="float-end">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block botM" for="">Row visible: </span>
          <select class="form-select inline-block box1" id="inputGroupSelect01">
            <option selected>Choose...</option>
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="15">15</option>
            <option value="20">20</option>
          </select>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import router from "../../routers/administratorRouter";

const taketopic = () => {
  router.push("/taketopic");
};
// @click="taketopic()"
//
</script>

<style>
td {
  font-size: small;
}
.forInline {
  display: inline-block;
}
.topM {
  margin-top: -42px;
}

.contentOfThePage {
  border: 0.3px solid #0062ff;
  box-shadow: 2px 1px 10px #888888;
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
  font-size: 0.6rem;
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
  font-weight: bolder;
}
</style>
