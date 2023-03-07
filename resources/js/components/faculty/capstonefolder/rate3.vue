<template>
  <div class="contentOfThePage p-3">
    <h5 class="design">
      CAPSTONE 3 EVALUATION RUBRIC FOR MANUSCRIPT
      <hr />
    </h5>

  
    <table
      class="table tableBorder text-center align-middle table-striped table-bordered border-primary"
    >
      <thead>
        <tr>
          <th scope="col">Standards</th>
          <th scope="col">3-Very Good</th>
          <th scope="col">2-Good</th>
          <th scope="col">1-Poor</th>
       
          <th scope="col-3" class="col-2">Rate</th>
          <th scope="col">Score</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td scope="row" rowspan="2">
            <h5 class="fw-bold py-1">Abstract</h5>
          </td>
          <td>Clearly states problem and question to be resolved.</td>
          <td>Summarizes problem and questions but lack some details.</td>
          <td>Is vague about the problem.</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="background"
                  v-model="caps1rate.background"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="background"
                  v-model="caps1rate.background"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.background }}</h5>
          </td>
        </tr>
        <tr>
          <td>clearly summarizes method, results, and conclusions.</td>
          <td>Summarizes results, and conclusions but lacks some details.</td>
          <td>Does not provide a summary of the whole project.</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="backgrounds"
                  v-model="caps1rate.backgrounds"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.backgrounds }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="3">
            <h5 class="fw-bold py-1">Introduction</h5>
          </td>
          <td>
            Provides background research into the topic and summarizes important findings
            from the review of the literature.
          </td>
          <td>
            Provides background research into the topic and describes the problem to be
            solved.
          </td>
          <td>
            Provides background research into the topic but does not describe the problem
            to be solved; fails to explain details to non-specialists
          </td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="obj1"
                  v-model="caps1rate.obj1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.obj1 }}</h5>
          </td>
        </tr>
        <tr>
          <td>
            Describes thoroughly the problem to be solved and thoroughly justifies the
            study;
          </td>
          <td>
            Describes the problem to be solved but did not thoroughly justifies the study;
          </td>
          <td>Describes the problem to be solved but did not justifies the study;</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="obj2"
                  v-model="caps1rate.obj2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.obj2 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            Explains thoroughly the significance of the problem to an audience of
            non-specialists.
          </td>
          <td>
            Explains the significance of the problem to an audience of non-specialists.
          </td>
          <td>Explains the significance of the problem to technical specialists.</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="obj3"
                  v-model="caps1rate.obj3"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.obj3 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Problem</h5>
          </td>
          <td>
            Addresses the problem with clarity and a strong rationale/justification.
          </td>
          <td>Addresses the problem but lacks details in rationale/justification.</td>
          <td>Does not clearly address the problem</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="s1"
                  v-model="caps1rate.s1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.s1 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Procedure (Methodology)</h5>
          </td>
          <td>
            Presents easy-to-follow steps that are logical and adequately detailed;
            mehtodology is appropriate to address the problem.
          </td>
          <td>
            Presents most of the steps but lacks in details or explanation of sampling.
          </td>
          <td>Misses procedural steps of has steps that are not sequential.</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="s2"
                  v-model="caps1rate.s2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.s2 }}</h5>
          </td>
        </tr>
        <tr>
          <td scope="row">
            <h5 class="fw-bold py-1">Data and results</h5>
          </td>

          <td>Provides complete explanation of data and results.</td>
          <td>Explains data and results with some aspects lacking detail.</td>
          <td>Lacks description of data and results.</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="sc"
                  v-model="caps1rate.sc"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.sc }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row">
            <h5 class="fw-bold py-1">Conclusion</h5>
          </td>

          <td>
            Presents a logical explanation for findings and addresses recommendations
            and/or implications for further research or use/application.
          </td>
          <td>Presents a logical explanation for findings.</td>
          <td>Does not adequately explain findings.</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
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
                  class="pointerr form-check-input"
                  type="radio"
                  name="df"
                  v-model="caps1rate.df"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.df }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Mechanics and documentation</h5>
          </td>
          <td>
            Is free or almost free of errors of grammar, spelling, and writing mechanics
            and appropriately documents sources.
          </td>
          <td>
            Has errors but they don’t represent a major distraction; documents sources.
          </td>
          <td>
            Has many errors that obscure meaning of content or add confusion; neglects
            important sources or documents few to no sources.
          </td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="lr1"
                  v-model="caps1rate.lr1"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="lr1"
                  v-model="caps1rate.lr1"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="lr1"
                  v-model="caps1rate.lr1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.lr1 }}</h5>
          </td>
        </tr>
        <tr>
          <td scope="row" rowspan="1">
            <h5 class="fw-bold py-1">Sources</h5>
          </td>

          <td>
            All sources are accurately documented according to copyright and APA 6th ed.
            guidelines.
          </td>
          <td>
            All sources are accurately documented but few are not in the desired format.
          </td>
          <td>There are many citation mistakes and copyright is often violated</td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="lr2"
                  v-model="caps1rate.lr2"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="lr2"
                  v-model="caps1rate.lr2"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="lr2"
                  v-model="caps1rate.lr2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.lr2 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" colspan="4">
            <h5 class="fw-bold py-1" float-start>TOTAL</h5>
          </td>
          
          <td></td>
          <td>
            <h5 class="fw-bold">
              {{
                (caps1rate.background) / 1+
                (caps1rate.backgrounds) / 1 +
                (caps1rate.obj1) / 1 +
                (caps1rate.obj2) / 1 +
                (caps1rate.obj3) / 1 +
                (caps1rate.s1) / 1 +
                (caps1rate.s2) / 1 +
                (caps1rate.sc) / 1 +
                (caps1rate.df) / 1 +
                (caps1rate.lr1) / 1 +
                (caps1rate.lr2) / 1 
                
              }}
            </h5>
          </td>
        </tr>
      </tbody>
    </table>



































    <h5 class="design">
      CAPSTONE 3 EVALUATION RUBRIC FOR ORAL PRESENTATION
      <hr />
    </h5>


    <table
      class="table tableBorder text-center align-middle table-striped table-bordered border-primary"
    >
      <thead>
        <tr>
          <th scope="col">Standards</th>
          <th scope="col">4</th>
          <th scope="col">3</th>
          <th scope="col">2</th>
          <th scope="col">1</th>
       
          <th scope="col-3" class="col-2">Rate</th>
          <th scope="col">Score</th>
        </tr>
      </thead>
      <tbody>
     


        <tr>
          <td scope="row" rowspan="4">
            <h5 class="fw-bold py-1">Oral Defense</h5>
          </td>
          <td>
            Masterfully defends research by providing clear and insightful answers to questions.
          </td>
          <td>
            Competently defends research
            by providing very
            helpful answers
            to questions.
          </td>
          <td>
            Adequately defends
            research; answers
            questions, but often
            with little insight;
          </td>
          <td>
            Does not adequately
 defend research;
 does not answer key questions; frequently
          </td>

          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth1"
                  v-model="caps1rate.meth1"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth1"
                  v-model="caps1rate.meth1"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth1"
                  v-model="caps1rate.meth1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth1"
                  v-model="caps1rate.meth1"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{  caps1rate.meth1}}</h5>
          </td>
        </tr>

        <tr>
          <td>
            Uses presentation resources as
            a guide.
          </td>
          <td>
            occasionally manifest
            need for further
            reflection on minor
            points;
          </td>
          <td>frequently shows a need for deeper reflection on minor points.</td>
          <td>shows a need for deeper reflection on vital points;</td>
        
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth2"
                  v-model="caps1rate.meth2"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth2"
                  v-model="caps1rate.meth2"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth2"
                  v-model="caps1rate.meth2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth2"
                  v-model="caps1rate.meth2"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.meth2 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            Gives detailed explanations and is easily understandable.
          </td>
          <td>Uses presentation resources as a guide, is easily understandable.</td>
          <td>
            Relies too much on presentation and has difficulty speaking freely to the audience.
          </td>
          <td>Reads the material from presentation to make the report.</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth3"
                  v-model="caps1rate.meth3"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth3"
                  v-model="caps1rate.meth3"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth3"
                  v-model="caps1rate.meth3"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="meth3"
                  v-model="caps1rate.meth3"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ caps1rate.meth3 }}</h5>
          </td>
        </tr>

        <tr>
        
          <td>keeps appropriate eye contact with the audience.</td>
          <td>Keeps eye contact with the audience.</td>
          <td>Somewhat comfortable with the topic.</td>
          <td>and is clearly not comfortable with the topic.</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="ref1"
                  v-model="caps1rate.ref1"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="ref1"
                  v-model="caps1rate.ref1"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="ref1"
                  v-model="caps1rate.ref1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="pointerr form-check-input"
                  type="radio"
                  name="ref1"
                  v-model="caps1rate.ref1"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold"> {{ caps1rate.ref1 }}</h5>
          </td>
        </tr>


        <tr>
          <td scope="row" colspan="5">
            <h5 class="fw-bold py-1" float-start>TOTAL</h5>
          </td>
        
          <td></td>
          <td>
            <h5 class="fw-bold">
              {{
            
                ( caps1rate.meth1) / 1 +
                ( caps1rate.meth2) / 1 +
                ( caps1rate.meth3) / 1 +
                (caps1rate.ref1) / 1 
            
              }}
            </h5>
          </td>
        </tr>
      </tbody>
    </table>























    <br />

    <div class="row">
      <div class="col-9"></div>
      <div class="col">
        <h5 class="d-inline fw-bold" for="total">SCORE&nbsp;&nbsp;&nbsp;</h5>
        <h5 class="d-inline fw-bold">
          :&nbsp;&nbsp;&nbsp;
          {{
            ( caps1rate.background) / 1 +
            ( caps1rate.backgrounds) / 1 +
            (caps1rate.obj1) / 1 +
            ( caps1rate.obj2) / 1 +
            ( caps1rate.obj3) / 1 +
            ( caps1rate.s1) / 1 +
            ( caps1rate.s2) / 1 +
            ( caps1rate.sc) / 1 +
            ( caps1rate.df) / 1 +
            ( caps1rate.lr1) / 1 +
            ( caps1rate.lr2) / 1 +
            ( caps1rate.meth1) / 1 +
            ( caps1rate.meth2) / 1 +
            ( caps1rate.meth3) / 1 +
            ( caps1rate.ref1) / 1
        
          }} / 49 = <span>     {{parseFloat((( ( caps1rate.background) / 1 +
            ( caps1rate.backgrounds) / 1 +
            (caps1rate.obj1) / 1 +
            ( caps1rate.obj2) / 1 +
            ( caps1rate.obj3) / 1 +
            ( caps1rate.s1) / 1 +
            ( caps1rate.s2) / 1 +
            ( caps1rate.sc) / 1 +
            ( caps1rate.df) / 1 +
            ( caps1rate.lr1) / 1 +
            ( caps1rate.lr2) / 1 +
            ( caps1rate.meth1) / 1 +
            ( caps1rate.meth2) / 1 +
            ( caps1rate.meth3) / 1 +
            ( caps1rate.ref1) / 1)/49)*100).toFixed(2)}} %</span>
          
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
              Passed with minor revisions
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
  lr1: "",
  lr2: "",
  meth1: "",
  meth2: "",
  meth3: "",
  ref1: "",
  format: "",
  oralCom: "",
  ppt: "",
  attire: "",
  resp: "",
  total: "",
  xf1: "",
  xf2: "",
});


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
    caps1rate.value.df != null &&
    caps1rate.value.lr1 != null &&
    caps1rate.value.lr2 != null &&
    caps1rate.value.meth1 != null &&
    caps1rate.value.meth2 != null &&
    caps1rate.value.meth3 != null &&
    caps1rate.value.ref1 != null 
 
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
    caps1rate.value.df != null &&
    caps1rate.value.lr1 != null &&
    caps1rate.value.lr2 != null &&
    caps1rate.value.meth1 != null &&
    caps1rate.value.meth2 != null &&
    caps1rate.value.meth3 != null &&
    caps1rate.value.ref1 != null
  
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
  let response = await axios.get("/api/get_rating3/" + capsID);
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
  rateData.append("lr1", caps1rate.value.lr1);
  rateData.append("lr2", caps1rate.value.lr2);
  rateData.append("meth1", caps1rate.value.meth1);
  rateData.append("meth2", caps1rate.value.meth2);
  rateData.append("meth3", caps1rate.value.meth3);
  rateData.append("ref1", caps1rate.value.ref1);
  rateData.append("format", '0');
  rateData.append("oralCom", '0');
  rateData.append("ppt", '0');
  rateData.append("attire", '0');
  rateData.append("resp", '0');
  rateData.append("xf2", '0');

  rateData.append(
    "total",
   ( (( caps1rate.value.background) / 1+
      ( caps1rate.value.backgrounds) / 1 +
      ( caps1rate.value.obj1) / 1 +
      ( caps1rate.value.obj2) / 1 +
      ( caps1rate.value.obj3) / 1 +
      ( caps1rate.value.s1) / 1 +
      ( caps1rate.value.s2) / 1 +
      ( caps1rate.value.sc) / 1 +
      (caps1rate.value.df) / 1 +
      ( caps1rate.value.lr1) / 1 +
      ( caps1rate.value.lr2) / 1 +
      ( caps1rate.value.meth1) / 1 +
      ( caps1rate.value.meth2) / 1 +
      ( caps1rate.value.meth3) / 1 +
      ( caps1rate.value.ref1) / 1)/49)*100
    
  );
  rateData.append("xf1", "APPROVED");

  axios
    .post("/api/add_rating3/" + capsID, rateData)
    .then((response) => {
      toast.fire({
        icon: "success",
        title: "Officially APPROVE Successfully",
      });

      getCaps1Rate();
      getStoreRatingRate3();

      (caps1rate.value.background = ""),
        (caps1rate.value.backgrounds = ""),
        (caps1rate.value.obj1 = ""),
        (caps1rate.value.obj2 = ""),
        (caps1rate.value.obj3 = ""),
        (caps1rate.value.s1 = ""),
        (caps1rate.value.s2 = ""),
        (caps1rate.value.sc = ""),
        (caps1rate.value.df = ""),
        (caps1rate.value.lr1 = ""),
        (caps1rate.value.lr2 = ""),
        (caps1rate.value.meth1 = ""),
        (caps1rate.value.meth2 = ""),
        (caps1rate.value.meth3 = ""),
        (caps1rate.value.ref1 = ""),
        (caps1rate.value.format = ""),
        (caps1rate.value.oralCom = ""),
        (caps1rate.value.ppt = ""),
        (caps1rate.value.attire = ""),
        (caps1rate.value.resp = ""),
        (caps1rate.value.xf2 = ""),
        (total = ""),
        (xf1 = "");
    
    })
 
    .catch(function (error) {
      console.log(error.response.data.errors);

      toast.fire({
        icon: "warning",
        title: "Rate Unsuccessful",
      });
     
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
  rateData.append("lr1", caps1rate.value.lr1);
  rateData.append("lr2", caps1rate.value.lr2);
  rateData.append("meth1", caps1rate.value.meth1);
  rateData.append("meth2", caps1rate.value.meth2);
  rateData.append("meth3", caps1rate.value.meth3);
  rateData.append("ref1", caps1rate.value.ref1);
  rateData.append("format", '0');
  rateData.append("oralCom", '0');
  rateData.append("ppt", '0');
  rateData.append("attire", '0');
  rateData.append("resp", '0');
  rateData.append("xf2", '0');

  rateData.append(
    "total",
    ( (( caps1rate.value.background) / 1+
      ( caps1rate.value.backgrounds) / 1 +
      ( caps1rate.value.obj1) / 1 +
      ( caps1rate.value.obj2) / 1 +
      ( caps1rate.value.obj3) / 1 +
      ( caps1rate.value.s1) / 1 +
      ( caps1rate.value.s2) / 1 +
      ( caps1rate.value.sc) / 1 +
      (caps1rate.value.df) / 1 +
      ( caps1rate.value.lr1) / 1 +
      ( caps1rate.value.lr2) / 1 +
      ( caps1rate.value.meth1) / 1 +
      ( caps1rate.value.meth2) / 1 +
      ( caps1rate.value.meth3) / 1 +
      ( caps1rate.value.ref1) / 1)/49)*100
  );
  rateData.append("xf1", "PARTIAL");

  axios
    .post("/api/add_rating3/" + capsID, rateData)
    .then((response) => {
      toast.fire({
        icon: "success",
        title: "Partial Rate Successfully",
      });

      getCaps1Rate();
      getStoreRatingRate3();

      (caps1rate.value.background = ""),
        (caps1rate.value.backgrounds = ""),
        (caps1rate.value.obj1 = ""),
        (caps1rate.value.obj2 = ""),
        (caps1rate.value.obj3 = ""),
        (caps1rate.value.s1 = ""),
        (caps1rate.value.s2 = ""),
        (caps1rate.value.sc = ""),
        (caps1rate.value.df = ""),
        (caps1rate.value.lr1 = ""),
        (caps1rate.value.lr2 = ""),
        (caps1rate.value.meth1 = ""),
        (caps1rate.value.meth2 = ""),
        (caps1rate.value.meth3 = ""),
        (caps1rate.value.ref1 = ""),
        (caps1rate.value.format = ""),
        (caps1rate.value.oralCom = ""),
        (caps1rate.value.ppt = ""),
        (caps1rate.value.attire = ""),
        (caps1rate.value.resp = ""),
        (caps1rate.value.xf2 = ""),
        (total = ""),
        (xf1 = "");
     
    })
   
    .catch(function (error) {
      console.log(error.response.data.errors);

      toast.fire({
        icon: "warning",
        title: "Rate Unsuccessful",
      });
   
    });
};

const getStoreRatingRate3 = async () => {
  let capsID = window.location.pathname.split("/")[2];
  let response = await axios.get("/api/approved_rate3/" + capsID);
  rate = response.data.totalrate;

  let responsed = await axios.get("/api/approved_rate_status3/" + capsID);
  status = responsed.data.ratestatus;

  const rateData = new FormData();
  rateData.append("rating", rate);
  rateData.append("status", status);

  axios
    .post("/api/post_approved_rate_status3/" + capsID, rateData)
    .then((response) => {
      (rate = ""), (status = "");
 
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
