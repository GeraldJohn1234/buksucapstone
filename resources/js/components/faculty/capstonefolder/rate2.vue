<template>
  <div class="contentOfThePage p-3">
    <h5 class="design">
      CAPSTONE 2 EVALUATION RUBRIC
      <hr />
    </h5>

    <!-- <div class="contentOfThePage"> v-model="GenCaps.abstract" -->

    <table
      class="table tableBorder text-center align-middle table-striped table-bordered border-primary"
    >
      <thead>
        <tr>
          <th scope="col">Category</th>
          <th scope="col">4-Excellent</th>
          <th scope="col">3-Good</th>
          <th scope="col">2-Average</th>
          <th scope="col">1-Needs Improvement</th>
          <th scope="col">Weight(%)</th>
          <th scope="col-3" class="col-2">Score</th>
          <th scope="col">Rating(%)</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Program Utility</h5>
            <div>*Solves a real world problem</div>
            <div>*Creative, original solution to the problem not currently available</div>
          </td>
          <td>Great I want to buy it once it is finished</td>
          <td>Creative and Original</td>
          <td>resembles other program that currently solve the same problem</td>
          <td>Unable to figure out why someone would want to use the program</td>
          <td>15</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="background"
                  v-model="caps1rate.background"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="background"
                  v-model="caps1rate.background"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="background"
                  v-model="caps1rate.background"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="background"
                  v-model="caps1rate.background"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (15 * caps1rate.background) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Appropriateness to target User</h5>
            <div>*Prototype ues terms and symbols appropriate to target user</div>
            <div>*Look and feel appropriate to target user</div>
            <div>*Usability apprpriate to target user</div>
          </td>

          <td>Perfect for target User.</td>
          <td>Designed for a well defined target user with 1 lacking criteria.</td>
          <td>Designed for a well defined target user- with 2 lacking criteria.</td>
          <td>prototype designed without well-defined target user in mind.</td>
          <td>15</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="backgrounds"
                  v-model="caps1rate.backgrounds"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="backgrounds"
                  v-model="caps1rate.backgrounds"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="backgrounds"
                  v-model="caps1rate.backgrounds"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="backgrounds"
                  v-model="caps1rate.backgrounds"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (15 * caps1rate.backgrounds) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Prototype's Interaction Usability</h5>
            <div>*User interface uses a simple and natural interaction style</div>
            <div>*User interface minimize need to memorize</div>
          </td>

          <td>Intitutive, easy to learn, and easy to use.</td>
          <td>Easy to use once you learn it.</td>
          <td>Hard to use.</td>
          <td>Hard to figure out how to even get started using the propotype.</td>
          <td>10</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj1"
                  v-model="caps1rate.obj1"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj1"
                  v-model="caps1rate.obj1"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj1"
                  v-model="caps1rate.obj1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj1"
                  v-model="caps1rate.obj1"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (10 * caps1rate.obj1) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Completeness:Breadth of Interface</h5>
            <div>* Multiple features present in the interface</div>
            <div>* Prototype features go beyond a minimal implementation</div>
            <div>* well thought out features set</div>
          </td>
          <td>Provided a complete feature set and able to comply the 3 criteria.</td>
          <td>Complete feature set with one of the criteria missing.</td>
          <td>Complete feature set with two(2) of the criteria missing.</td>
          <td>Too much still remain to be done to evaluate the usefullnes of the GUI.</td>
          <td>10</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj2"
                  v-model="caps1rate.obj2"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj2"
                  v-model="caps1rate.obj2"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj2"
                  v-model="caps1rate.obj2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj2"
                  v-model="caps1rate.obj2"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (10 * caps1rate.obj2) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Completeness:Depth of Interface</h5>
            <div>* All program features appear to be complete.</div>
            <div>* No bugs apparent during demonstration</div>
          </td>

          <td>Everything needed in a prototype is included.</td>
          <td>Some of the minor features is unclear.</td>
          <td>Some of the important features is unclear.</td>
          <td>Multiple features still do not exist in the prototype.</td>
          <td>10</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj3"
                  v-model="caps1rate.obj3"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj3"
                  v-model="caps1rate.obj3"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj3"
                  v-model="caps1rate.obj3"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="obj3"
                  v-model="caps1rate.obj3"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (10 * caps1rate.obj3) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Sophistication of Solution</h5>
            <div>*Hard problem tackled with non-trivial solution.</div>
          </td>

          <td>Hard problem and had great ideas for solving it.</td>
          <td>Medium problem difficulty.</td>
          <td>
            Routine solution that should have been re -thought to provide more interesting
            challenges.
          </td>
          <td>The solution does not solve the problem.</td>
          <td>15</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s1"
                  v-model="caps1rate.s1"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s1"
                  v-model="caps1rate.s1"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s1"
                  v-model="caps1rate.s1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s1"
                  v-model="caps1rate.s1"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (15 * caps1rate.s1) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Prototype's Graphical Design</h5>
            <div>* Prototype is visually appealing.</div>
            <div>* Components are laid out sensibly on the screen.</div>
            <div>* Pototype's apperance is aprropriate to target user.</div>
          </td>

          <td>Great use of colors, fonts, graphics, and layout.</td>
          <td>Pleasant looking, clean, well organized GUI; have 1 criteria missing.</td>
          <td>Boring or Overly cluttered interface; with two criteria missing.</td>
          <td>User interface design seems inappropriate for problem area.</td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s2"
                  v-model="caps1rate.s2"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s2"
                  v-model="caps1rate.s2"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s2"
                  v-model="caps1rate.s2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="s2"
                  v-model="caps1rate.s2"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.s2) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Creativity</h5>
            <div>* User interaction with prototype is creative</div>
            <div>* Feedback to user is creative</div>
            <div>* Interaction with prototype is intitutive and fun</div>
          </td>

          <td>Created a novel user interface that is natural to use.</td>
          <td>
            A few interesting tweaks to the conventional GUI; with 1 missing criteria.
          </td>
          <td>2 missing criteria for a creative prototype.</td>
          <td>Nothings is new with the program.</td>
          <td>10</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="sc"
                  v-model="caps1rate.sc"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="sc"
                  v-model="caps1rate.sc"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="sc"
                  v-model="caps1rate.sc"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="sc"
                  v-model="caps1rate.sc"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (10 * caps1rate.sc) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Prototype's Feedback to the user.</h5>
            <div>* prototype provides clear feedback to user actions.</div>
            <div>* prototype provides clearly market exit paths.</div>
            <div>* prototype provides error messages.</div>
          </td>

          <td>Clear feedback, useful help, and error checking features are provided.</td>
          <td>Most actions provided clear feedback.</td>
          <td>Some actions lacked feedback.</td>
          <td>Many actions lacked feedback or error handling.</td>
          <td>10</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="df"
                  v-model="caps1rate.df"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="df"
                  v-model="caps1rate.df"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="df"
                  v-model="caps1rate.df"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="df"
                  v-model="caps1rate.df"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (10 * caps1rate.df) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td scope="row" colspan="5">
            <h5 class="fw-bold py-1" float-start>TOTAL</h5>
          </td>
          <td>100</td>
          <td></td>
          <td>
            <h5 class="fw-bold">
              {{
                (15 * caps1rate.background) / 4 +
                (15 * caps1rate.backgrounds) / 4 +
                (10 * caps1rate.obj1) / 4 +
                (10 * caps1rate.obj2) / 4 +
                (10 * caps1rate.obj3) / 4 +
                (15 * caps1rate.s1) / 4 +
                (5 * caps1rate.s2) / 4 +
                (10 * caps1rate.sc) / 4 +
                (10 * caps1rate.df) / 4
              }}
              <!-- +
                (5 * caps1rate.lr1) / 4 +
                (5 * caps1rate.lr2) / 4 +
                (5 * caps1rate.meth1) / 4 +
                (3 * caps1rate.meth2) / 4 +
                (2 * caps1rate.meth3) / 4 +
                (5 * caps1rate.ref1) / 4 +
                (5 * caps1rate.format) / 4 +
                (5 * caps1rate.oralCom) / 4 +
                (5 * caps1rate.ppt) / 4 +
                (5 * caps1rate.attire) / 4 +
                (10 * caps1rate.resp) / 4 -->
            </h5>
          </td>
        </tr>
      </tbody>
    </table>

    <br />

    <div class="row">
      <div class="col-9"></div>
      <div class="col">
        <h5 class="d-inline fw-bold" for="total">RATING&nbsp;</h5>
        <h5 class="d-inline fw-bold">
          :&nbsp;&nbsp;&nbsp;
          {{
            (15 * caps1rate.background) / 4 +
            (15 * caps1rate.backgrounds) / 4 +
            (10 * caps1rate.obj1) / 4 +
            (10 * caps1rate.obj2) / 4 +
            (10 * caps1rate.obj3) / 4 +
            (15 * caps1rate.s1) / 4 +
            (5 * caps1rate.s2) / 4 +
            (10 * caps1rate.sc) / 4 +
            (10 * caps1rate.df) / 4
          }}
          %
        </h5>
      </div>
    </div>

    <div class="row">
      <div class="col-9"></div>
      <div class="col">
        <div class="input-group mb-3 inline-block">
          <span class="inline-block fw-bold sizelab" for="">Remarks : &nbsp;&nbsp;</span>
          <select class="form-select" id="inputGroupSelect01" v-model="caps1rate.xf2">
            <option disabled selected>Choose...</option>
            <option value="Passed with no revision">Passed with no revision</option>
            <option value="Passed with minor revisions">
              Passed with minor revisions
            </option>
            <option value="Failed with major revisions">
              Passed with major revisions
            </option>
          </select>
        </div>
      </div>
    </div>
    <br />
    <div class="row text-center px-2">
      <button type="button" class="btn btn-primary col fw-bold" @click="temporary()">
        PARTIAL SAVE
      </button>
    </div>

    <div class="row text-center mt-2 px-2">
      <button type="button" class="btn btn-success col fw-bold" @click="approved()">
        APPROVE AND SUBMIT
      </button>
    </div>

    <!-- </div> -->
  </div>
</template>

<script setup>
import { onMounted } from "vue";
import { useRouter } from "vue-router";
import { ref } from "vue";
import axios from "axios";

let status;
let rate;

let caps1rate = ref({
  background: "",
  backgrounds: "",
  obj1: "",
  obj2: "",
  obj3: "",
  s1: "",
  s2: "",
  sc: "",
  df: "",
});
// v-model="GenCaps.abstract"

const router = useRouter();

const approved = () => {
  if (
    caps1rate.value.background != null &&
    caps1rate.value.backgrounds != null &&
    caps1rate.value.obj1 != null &&
    caps1rate.value.obj2 != null &&
    caps1rate.value.obj3 != null &&
    caps1rate.value.s1 != null &&
    caps1rate.value.s2 != null &&
    caps1rate.value.sc != null &&
    caps1rate.value.df != null
  ) {
    saveRatinggFinal();
  } else {
    toast.fire({
      icon: "warning",
      title: "Rate Unsuccessful, please fill all field",
    });
  }
};

const temporary = () => {
  if (
    caps1rate.value.background != null &&
    caps1rate.value.backgrounds != null &&
    caps1rate.value.obj1 != null &&
    caps1rate.value.obj2 != null &&
    caps1rate.value.obj3 != null &&
    caps1rate.value.s1 != null &&
    caps1rate.value.s2 != null &&
    caps1rate.value.sc != null &&
    caps1rate.value.df != null
  ) {
    saveRatingg();
  } else {
    toast.fire({
      icon: "warning",
      title: "Rate Unsuccessful, please fill all field",
    });
  }
};
onMounted(async () => {
  getCaps1Rate();
});
const getCaps1Rate = async () => {
  let capsID = window.location.pathname.split("/")[2];
  let response = await axios.get("/api/get_rating2/" + capsID);
  caps1rate.value = response.data.ratecaps;
  console.warn("CAPSTONE:1 ", caps1rate.value);
};

const saveRatinggFinal = () => {
  let capsID = window.location.pathname.split("/")[2];

  const rateData = new FormData();
  rateData.append("background", caps1rate.value.background);
  rateData.append("backgrounds", caps1rate.value.backgrounds);
  rateData.append("obj1", caps1rate.value.obj1);
  rateData.append("obj2", caps1rate.value.obj2);
  rateData.append("obj3", caps1rate.value.obj3);
  rateData.append("s1", caps1rate.value.s1);
  rateData.append("s2", caps1rate.value.s2);
  rateData.append("sc", caps1rate.value.sc);
  rateData.append("df", caps1rate.value.df);

  rateData.append(
    "total",
    (15 * caps1rate.value.background) / 4 +
      (15 * caps1rate.value.backgrounds) / 4 +
      (10 * caps1rate.value.obj1) / 4 +
      (10 * caps1rate.value.obj2) / 4 +
      (10 * caps1rate.value.obj3) / 4 +
      (15 * caps1rate.value.s1) / 4 +
      (5 * caps1rate.value.s2) / 4 +
      (10 * caps1rate.value.sc) / 4 +
      (10 * caps1rate.value.df) / 4
  );
  rateData.append("xf1", "APPROVED");

  axios
    .post("/api/add_rating2/" + capsID, rateData)
    .then((response) => {
      toast.fire({
        icon: "success",
        title: "Approved and Rated Successfully",
      });

      getCaps1Rate();
      getStoreRatingRate2();

      (caps1rate.value.background = ""),
        (caps1rate.value.backgrounds = ""),
        (caps1rate.value.obj1 = ""),
        (caps1rate.value.obj2 = ""),
        (caps1rate.value.obj3 = ""),
        (caps1rate.value.s1 = ""),
        (caps1rate.value.s2 = ""),
        (caps1rate.value.sc = ""),
        (caps1rate.value.df = ""),
        (total = ""),
        (xf1 = "");
      // router.push("/create");

      // toast.fire({
      //   icon: "success",
      //   title: "Partial Rate Successfully",
      // });
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);

      toast.fire({
        icon: "warning",
        title: "Rate Unsuccessful",
      });
      // (error = {}));
    });
};

const saveRatingg = () => {
  let capsID = window.location.pathname.split("/")[2];

  const rateData = new FormData();
  rateData.append("background", caps1rate.value.background);
  rateData.append("backgrounds", caps1rate.value.backgrounds);
  rateData.append("obj1", caps1rate.value.obj1);
  rateData.append("obj2", caps1rate.value.obj2);
  rateData.append("obj3", caps1rate.value.obj3);
  rateData.append("s1", caps1rate.value.s1);
  rateData.append("s2", caps1rate.value.s2);
  rateData.append("sc", caps1rate.value.sc);
  rateData.append("df", caps1rate.value.df);

  rateData.append(
    "total",
    (15 * caps1rate.value.background) / 4 +
      (15 * caps1rate.value.backgrounds) / 4 +
      (10 * caps1rate.value.obj1) / 4 +
      (10 * caps1rate.value.obj2) / 4 +
      (10 * caps1rate.value.obj3) / 4 +
      (15 * caps1rate.value.s1) / 4 +
      (5 * caps1rate.value.s2) / 4 +
      (10 * caps1rate.value.sc) / 4 +
      (10 * caps1rate.value.df) / 4
  );
  rateData.append("xf1", "PARTIAL");

  axios
    .post("/api/add_rating2/" + capsID, rateData)
    .then((response) => {
      toast.fire({
        icon: "success",
        title: "Partially Rated Successfully",
      });

      getCaps1Rate();
      getStoreRatingRate2();

      (caps1rate.value.background = ""),
        (caps1rate.value.backgrounds = ""),
        (caps1rate.value.obj1 = ""),
        (caps1rate.value.obj2 = ""),
        (caps1rate.value.obj3 = ""),
        (caps1rate.value.s1 = ""),
        (caps1rate.value.s2 = ""),
        (caps1rate.value.sc = ""),
        (caps1rate.value.df = ""),
        (total = ""),
        (xf1 = "");
      // router.push("/create");

      // toast.fire({
      //   icon: "success",
      //   title: "Partial Rate Successfully",
      // });
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);

      toast.fire({
        icon: "warning",
        title: "Rate Unsuccessful",
      });
      // (error = {}));
    });
};

const getStoreRatingRate2 = async () => {
  let capsID = window.location.pathname.split("/")[2];
  let response = await axios.get("/api/approved_rate2/" + capsID);
  rate = response.data.totalrate;

  let responsed = await axios.get("/api/approved_rate_status2/" + capsID);
  status = responsed.data.ratestatus;

  const rateData = new FormData();
  rateData.append("rating", rate);
  rateData.append("status", status);

  axios
    .post("/api/post_approved_rate_status2/" + capsID, rateData)
    .then((response) => {
      (rate = ""), (status = "");
      // toast.fire({
      //   icon: "success",
      //   title: "Usser Add Successfully" + status,
      // });
    })
    .catch(function (error) {
      console.log(error.response.data.errors);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};
</script>

<style>
.flt {
  float: right;
}

.design {
  width: 100%;
  text-align: center;
  font-weight: bolder;
  color: #000;

  border-radius: 10px;
  padding: 10px;
}
.forBg {
  background: #d9d9d9;
}
.tableBorder {
  border-radius: 10px;
}
</style>
