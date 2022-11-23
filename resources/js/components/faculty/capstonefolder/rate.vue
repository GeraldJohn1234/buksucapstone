<template>
  <div class="contentOfThePage p-3">
    <h5 class="design">
      CAPSTONE 1 EVALUATION RUBRIC
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
          <th class="col-2">Score</th>
          <th scope="col">Rating(%)</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td scope="row" rowspan="2">
            <h5 class="fw-bold py-1">Background of the Study</h5>
          </td>
          <td>
            Well formulated background of the study based on facts that are supported with
            5 or more strong sources of evidence specific to the topic.
          </td>
          <td>
            Fairly well formulated background of the study that has some evidence to
            support the topic but the evidence is a mixture of strong and weak sources.
          </td>
          <td>
            @Background of the study is not well constructed and provides a few (less than
            5) sources of weak evidence to support the topic.
          </td>
          <td>
            Lacks proper background of the study. There is no substantive evidence to
            support the topic
          </td>
          <td>5</td>
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
              <div class="mx-2 form-check form-check-inline">
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
            <h5 class="fw-bold">{{ (5 * caps1rate.background) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td>5 research articles are appropriately selected and cited.</td>
          <td>3-4 research articles are appropriately selected and cited.</td>
          <td>1-2 research articles are appropriately selected and cited</td>
          <td>Citations are not related</td>
          <td>5</td>
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
            <h5 class="fw-bold">{{ (5 * caps1rate.backgrounds) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="3">
            <h5 class="fw-bold py-1">Objectives of the Study</h5>
          </td>
          <td>
            The general objective specifies the system being developed, the main
            functionality of the system, and a platform for development
          </td>
          <td>
            The general objective specifies the system being developed, the main
            functionality of the system.
          </td>
          <td>The general objective specifies the system being developed</td>
          <td>
            The general objective does not specify the system being developed, the main
            functionality of the system, and a platform for development
          </td>
          <td>5</td>
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
            <h5 class="fw-bold">{{ (5 * caps1rate.obj1) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td>
            The specific objectives enumerate the steps in planning, designing, developing
            implementing, and evaluating the system.
          </td>
          <td>
            The specific objectives enumerate the steps in designing, developing
            implementing, and evaluating the system.
          </td>
          <td>
            The specific objectives enumerate the steps in developing implementing, and
            evaluating the system.
          </td>
          <td>The specific objectives enumerate the steps in developing the system.</td>
          <td>3</td>
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
            <h5 class="fw-bold">{{ (3 * caps1rate.obj2) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            3 comprehensive objectives stated considering the achievable & measurable
            objective
          </td>
          <td>Stated 3 objective but limited evidence of achievable & measurable</td>
          <td>Stated less than 3 objective & not clearly objective</td>
          <td>
            Stated less than 3 objectives with no evidence of measurable & achievable
            objective
          </td>
          <td>2</td>
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
            <h5 class="fw-bold">{{ (2 * caps1rate.obj3) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="2">
            <h5 class="fw-bold py-1">Significance of the Study</h5>
          </td>
          <td>
            Very clearly stated who will benefit from the study (population, community,
            organization, industry, LGU).
          </td>
          <td>
            Fairly well stated who will benefit from the study (population, community,
            organization, industry, LGU)
          </td>
          <td>
            Not clearly stated who will benefit from the study (population, community,
            organization, industry, LGU)
          </td>
          <td>
            Lacks statement as to who will benefit from the study (population, community,
            organization, industry, LGU)
          </td>
          <td>5</td>
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
            <h5 class="fw-bold">{{ (5 * caps1rate.s1) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            Very clearly stated purpose of the study that connects very well to the
            introduction and the statement of the problem.
          </td>
          <td>
            Fairly well stated purpose of the study that connects well to the introduction
            and the statement of the problem.
          </td>
          <td>
            Purpose of the study is not clearly stated and/or does not connect well with
            the introduction and the statement of the problem.
          </td>
          <td>
            Lacks a purpose of the study statement or does not pertain to the introduction
            and/or the statement of the problem.
          </td>
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
          <td scope="row">
            <h5 class="fw-bold py-1">Scope and Limitation</h5>
          </td>

          <td>
            Include the following: brief statement of the general purpose of the study,
            subject matter and topics, the locale of the study, the period of the study.
            the main functionality of the system, and a platform for development
          </td>
          <td>
            Include the following: brief statement of the general purpose of the study,
            subject matter and topics, the locale of the study, the period of the study.
            the main functionality of the system,
          </td>
          <td>
            Include the following: brief statement of the general purpose of the study,
            subject matter and topics, the locale of the study, and the period of the
            study.
          </td>
          <td>
            Include the following: brief statement of the general purpose of the study,
            subject matter and topics, and the locale of the stud,
          </td>
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
          <td scope="row">
            <h5 class="fw-bold py-1">Definition of terms</h5>
          </td>

          <td>
            List the important key words and defines the technical and operational
            definitions.
          </td>
          <td>Fairly defines the technical and operational definitions.</td>
          <td>Technical and operational terms are not clearly defined.</td>
          <td>Technical and operational terms are not defined.</td>
          <td>5</td>
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
            <h5 class="fw-bold">{{ (5 * caps1rate.df) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="2">
            <h5 class="fw-bold py-1">Literature Review</h5>
          </td>
          <td>Summarize concisely 8-10 literature items (what, when, where, how)</td>
          <td>Summarize 5-7 literature items (what, when, where, how)</td>
          <td>Summarize 3- 5 literature items (what, when, where, how)</td>
          <td>Summarize less than 3- literature items (what, when, where, how)</td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
                  type="radio"
                  name="lr1"
                  v-model="caps1rate.lr1"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="lr1"
                  v-model="caps1rate.lr1"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.lr1) / 4 }}</h5>
          </td>
        </tr>
        <tr>
          <td>
            Demonstrates a strong familiarity with the literature or previous work in the
            field.
          </td>
          <td>
            Study addresses some relevant questions in the field. Knowledge of literature
            or previous work in the field is good.
          </td>
          <td>
            Study addresses questions in the field. Knowledge of the literature or
            previous work in the field is adequate.
          </td>
          <td>
            Study does not adequately address questions in the field. Knowledge of the
            literature or previous work in the field is limited
          </td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
                  type="radio"
                  name="lr2"
                  v-model="caps1rate.lr2"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="lr2"
                  v-model="caps1rate.lr2"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.lr2) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td scope="row" rowspan="3">
            <h5 class="fw-bold py-1">Methodology</h5>
          </td>
          <td>
            Include the following: brief statement of the processes and procedures for
            executing the study, research design/methods, system architecture/conceptual
            design, process model, use case, DFD, and flowchart diagram.
          </td>
          <td>
            Include the following: brief statement of the processes and procedures for
            executing the study, research design/methods, system architecture/conceptual
            design, process model, use case, and DFD.
          </td>
          <td>
            Include the following: brief statement of the processes and procedures for
            executing the study, research design/methods, system architecture/conceptual
            design, process model, and use case.
          </td>
          <td>
            Include the following: brief statement of the processes and procedures for
            executing the study, research design/methods, system architecture/conceptual
            design, and process model.
          </td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
            <h5 class="fw-bold">{{ (5 * caps1rate.meth1) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            Processes and procedures are well stated, manageable, appropriate and
            comprehensive.
          </td>
          <td>
            Processes and procedures seem logical and adequate for executing the studyt.
          </td>
          <td>Processes and procedures for executing the project appear are vague.</td>
          <td>Processes and procedures outlined are unclear.</td>
          <td>3</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
            <h5 class="fw-bold">{{ (3 * caps1rate.meth2) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            Study has every reasonable expectation of being completed with goals that are
            discipline specific and achievable.
          </td>
          <td>Study completion is probable and goals are measurable.</td>
          <td>
            Study completion is attainable, but goals are appropriate by it is unclear how
            they will be measured.
          </td>
          <td>Study completion is unlikely and goals are not unclear.</td>
          <td>2</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
            <h5 class="fw-bold">{{ (2 * caps1rate.meth3) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            <h5 class="fw-bold py-1">References</h5>
          </td>
          <td>Adhere with the APA format requirement.</td>
          <td>Meet the format requirement.</td>
          <td>Lacking of format requirement.</td>
          <td>Not meet the format requirement.</td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
                  class="form-check-input pointerr"
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
            <h5 class="fw-bold">{{ (5 * caps1rate.ref1) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            <h5 class="fw-bold py-1">Formatting</h5>
          </td>
          <td>Adhere with ALL format requirement.</td>
          <td>Meet the format requirement.</td>
          <td>Lacking of format requirement.</td>
          <td>Not meet the format requirement.</td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="format"
                  v-model="caps1rate.format"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="format"
                  v-model="caps1rate.format"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="format"
                  v-model="caps1rate.format"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="format"
                  v-model="caps1rate.format"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.format) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            <h5 class="fw-bold py-1">Oral communication skills</h5>
          </td>
          <td>
            The students clearly and confidently explained in English with a clear audible
            voice.
          </td>
          <td>
            Students were able to explain effectively in English partially with an audible
            voice.
          </td>
          <td>
            Students were able to explain in English partially with an audible voice.
          </td>
          <td>
            Students were unable to explain effectively in English although with an
            audible voice.
          </td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="oralCom"
                  v-model="caps1rate.oralCom"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="oralCom"
                  v-model="caps1rate.oralCom"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="oralCom"
                  v-model="caps1rate.oralCom"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="oralCom"
                  v-model="caps1rate.oralCom"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.oralCom) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            <h5 class="fw-bold py-1">PPt & Video presentation</h5>
          </td>
          <td>
            PPT/video presentation were comprehensive, very clear, readable and properly
            arranged.
          </td>
          <td>
            The PPT/video visual enhance-ment was generally reasonable and conscientious
            effort is very visible.
          </td>
          <td>The PPT/video visual enhancement was visible.</td>
          <td>The PPT/video presentation were poorly done and requires improvement.</td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="ppt"
                  v-model="caps1rate.ppt"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="ppt"
                  v-model="caps1rate.ppt"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="ppt"
                  v-model="caps1rate.ppt"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="ppt"
                  v-model="caps1rate.ppt"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.ppt) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            <h5 class="fw-bold py-1">Attire</h5>
          </td>
          <td>
            The group were all in proper business attire, well-groomed and appears
            professional.
          </td>
          <td>Few of the group members were not in proper business attire.</td>
          <td>Most of the group members were not in proper business attire.</td>
          <td>Group members were not in proper business attire.</td>
          <td>5</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="attire"
                  v-model="caps1rate.attire"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="attire"
                  v-model="caps1rate.attire"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="attire"
                  v-model="caps1rate.attire"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="attire"
                  v-model="caps1rate.attire"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (5 * caps1rate.attire) / 4 }}</h5>
          </td>
        </tr>

        <tr>
          <td>
            <h5 class="fw-bold py-1">Response to Inquiry</h5>
          </td>
          <td>
            Student demonstrates full knowledge by answering questions with explanations
            and elaboration.
          </td>
          <td>
            Student shows adequate knowledge by answering questions with few details or
            elaboration.
          </td>
          <td>
            Student shows little knowledge by answering questions with little to no detail
            or elaboration.
          </td>
          <td>
            Student shows little knowledge by answering questions with no detail or
            elaboration.
          </td>
          <td>10</td>
          <td>
            <div class="">
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="resp"
                  v-model="caps1rate.resp"
                  id="inlineRadio1"
                  value="1"
                />
                <label class="form-check-labellll" for="inlineRadio1">1</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="resp"
                  v-model="caps1rate.resp"
                  id="inlineRadio2"
                  value="2"
                />
                <label class="form-check-labellll" for="inlineRadio2">2</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="resp"
                  v-model="caps1rate.resp"
                  id="inlineRadio3"
                  value="3"
                />
                <label class="form-check-labellll" for="inlineRadio3">3</label>
              </div>
              <div class="mx-2 form-check form-check-inline">
                <input
                  class="form-check-input pointerr"
                  type="radio"
                  name="resp"
                  v-model="caps1rate.resp"
                  id="inlineRadio4"
                  value="4"
                />
                <label class="form-check-labellll" for="inlineRadio4">4</label>
              </div>
            </div>
          </td>
          <td>
            <h5 class="fw-bold">{{ (10 * caps1rate.resp) / 4 }}</h5>
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
                (5 * caps1rate.background) / 4 +
                (5 * caps1rate.backgrounds) / 4 +
                (5 * caps1rate.obj1) / 4 +
                (3 * caps1rate.obj2) / 4 +
                (2 * caps1rate.obj3) / 4 +
                (5 * caps1rate.s1) / 4 +
                (5 * caps1rate.s2) / 4 +
                (10 * caps1rate.sc) / 4 +
                (5 * caps1rate.df) / 4 +
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
                (10 * caps1rate.resp) / 4
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
        <h5 class="d-inline fw-bold" for="total">RATING&nbsp;</h5>
        <h5 class="d-inline fw-bold">
          :&nbsp;&nbsp;&nbsp;
          {{
            (5 * caps1rate.background) / 4 +
            (5 * caps1rate.backgrounds) / 4 +
            (5 * caps1rate.obj1) / 4 +
            (3 * caps1rate.obj2) / 4 +
            (2 * caps1rate.obj3) / 4 +
            (5 * caps1rate.s1) / 4 +
            (5 * caps1rate.s2) / 4 +
            (10 * caps1rate.sc) / 4 +
            (5 * caps1rate.df) / 4 +
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
            (10 * caps1rate.resp) / 4
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

    <!-- <div class="row text-center mt-2 px-2">
      <button
        type="button"
        class="btn btn-success col fw-bold"
        @click="getStoreRatingRate()"
      >
        TRY PREEEEEEEEEE
      </button>
    </div> -->

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
// let ratistat = ref({
//   background: "",
//   backgrounds: "",

// })

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
// v-model="GenCaps.abstract"

const router = useRouter();

const approved = () => {
  if (
    caps1rate.value.background != 0 &&
    caps1rate.value.backgrounds != 0 &&
    caps1rate.value.obj1 != 0 &&
    caps1rate.value.obj2 != 0 &&
    caps1rate.value.obj3 != 0 &&
    caps1rate.value.s1 != 0 &&
    caps1rate.value.s2 != 0 &&
    caps1rate.value.sc != 0 &&
    caps1rate.value.df != 0 &&
    caps1rate.value.lr1 != 0 &&
    caps1rate.value.lr2 != 0 &&
    caps1rate.value.meth1 != 0 &&
    caps1rate.value.meth2 != 0 &&
    caps1rate.value.meth3 != 0 &&
    caps1rate.value.ref1 != 0 &&
    caps1rate.value.format != 0 &&
    caps1rate.value.oralCom != 0 &&
    caps1rate.value.ppt != 0 &&
    caps1rate.value.attire != 0 &&
    caps1rate.value.resp != 0
  ) {
    saveRatinggFinal();
  } else {
    toast.fire({
      icon: "warning",
      title: "Rate Unsuccessful, please fill all field",
    });
  }
};

// const getStoreRating = () => {
//   let capsID = window.location.pathname.split("/")[2];
//   let response = axios.get("/api/approved_rate_status/" + capsID);
//   status.value = response.data.ratestatus;

//   toast.fire({
//     icon: "warning",
//     title: "Rate Unsuccessful, please fill all field" + status.value,
//   });
// };

const temporary = () => {
  // getStoreRating();
  if (
    caps1rate.value.background != 0 &&
    caps1rate.value.backgrounds != 0 &&
    caps1rate.value.obj1 != 0 &&
    caps1rate.value.obj2 != 0 &&
    caps1rate.value.obj3 != 0 &&
    caps1rate.value.s1 != 0 &&
    caps1rate.value.s2 != 0 &&
    caps1rate.value.sc != 0 &&
    caps1rate.value.df != 0 &&
    caps1rate.value.lr1 != 0 &&
    caps1rate.value.lr2 != 0 &&
    caps1rate.value.meth1 != 0 &&
    caps1rate.value.meth2 != 0 &&
    caps1rate.value.meth3 != 0 &&
    caps1rate.value.ref1 != 0 &&
    caps1rate.value.format != 0 &&
    caps1rate.value.oralCom != 0 &&
    caps1rate.value.ppt != 0 &&
    caps1rate.value.attire != 0 &&
    caps1rate.value.resp != 0
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
  // getStoreRating();
});
// const getStoreRating = async () => {
//   let capsID = window.location.pathname.split("/")[2];
//   let response = await axios.get("/api/approved_rate_status/" + capsID);
//   status = response.data.ratestatus;
//   return status;
// };
const getStoreRatingRate = async () => {
  let capsID = window.location.pathname.split("/")[2];
  let response = await axios.get("/api/approved_rate/" + capsID);
  rate = response.data.totalrate;

  let responsed = await axios.get("/api/approved_rate_status/" + capsID);
  status = responsed.data.ratestatus;

  const rateData = new FormData();
  rateData.append("rating", rate);
  rateData.append("status", status);

  axios
    .post("/api/post_approved_rate_status/" + capsID, rateData)
    .then((response) => {
      (rate = ""), (status = "");
      // toast.fire({
      //   icon: "success",
      //   title: "Usser Add Successfully" + status,
      // });
    })
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response.data);

      toast.fire({
        icon: "warning",
        title: "SOMETHING WRONG",
      });
    });
};

// const postStoreRating = () => {
//   let capsID = window.location.pathname.split("/")[2];
//   let stats = getStoreRating();
//   let rates = getStoreRatingRate();

//   const rateData = new FormData();
//   rateData.append("rating", rates);
//   rateData.append("status", stats);

//   axios
//     .post("/api/post_approved_rate_status/" + capsID, rateData)
//     .then((response) => {
//       (rates = ""),
//         (stats = ""),
//         toast.fire({
//           icon: "success",
//           title: "Usser Add Successfully",
//         });
//     })
//     .catch(function (error) {
//       console.log(error.response.data.errors);
//       console.log("ERRRR:: ", error.response.data);

//       toast.fire({
//         icon: "warning",
//         title: "SOMETHING WRONG",
//       });
//     });
// };

const getCaps1Rate = async () => {
  let capsID = window.location.pathname.split("/")[2];
  let response = await axios.get("/api/get_rating/" + capsID);
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
  rateData.append("format", caps1rate.value.format);
  rateData.append("oralCom", caps1rate.value.oralCom);
  rateData.append("ppt", caps1rate.value.ppt);
  rateData.append("attire", caps1rate.value.attire);
  rateData.append("resp", caps1rate.value.resp);
  rateData.append("xf2", caps1rate.value.xf2);

  rateData.append(
    "total",
    (5 * caps1rate.value.background) / 4 +
      (5 * caps1rate.value.backgrounds) / 4 +
      (5 * caps1rate.value.obj1) / 4 +
      (3 * caps1rate.value.obj2) / 4 +
      (2 * caps1rate.value.obj3) / 4 +
      (5 * caps1rate.value.s1) / 4 +
      (5 * caps1rate.value.s2) / 4 +
      (10 * caps1rate.value.sc) / 4 +
      (5 * caps1rate.value.df) / 4 +
      (5 * caps1rate.value.lr1) / 4 +
      (5 * caps1rate.value.lr2) / 4 +
      (5 * caps1rate.value.meth1) / 4 +
      (3 * caps1rate.value.meth2) / 4 +
      (2 * caps1rate.value.meth3) / 4 +
      (5 * caps1rate.value.ref1) / 4 +
      (5 * caps1rate.value.format) / 4 +
      (5 * caps1rate.value.oralCom) / 4 +
      (5 * caps1rate.value.ppt) / 4 +
      (5 * caps1rate.value.attire) / 4 +
      (10 * caps1rate.value.resp) / 4
  );
  rateData.append("xf1", "APPROVED");

  axios
    .post("/api/add_rating/" + capsID, rateData)
    .then((response) => {
      toast.fire({
        icon: "success",
        title: "Officially APPROVE Successfully",
      });

      getCaps1Rate();
      getStoreRatingRate();

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
      // router.push("/create");

      // toast.fire({
      //   icon: "success",
      //   title: "Partial Rate Successfully",
      // });
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response);

      toast.fire({
        icon: "warning",
        title: "Rate Unsuccessful",
      });
      // (error = {}));
      console.log("ERRRR:: ", error.response);
    });
  // console.log("ERRRR:: ", error.response.data);
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
  rateData.append("format", caps1rate.value.format);
  rateData.append("oralCom", caps1rate.value.oralCom);
  rateData.append("ppt", caps1rate.value.ppt);
  rateData.append("attire", caps1rate.value.attire);
  rateData.append("resp", caps1rate.value.resp);
  rateData.append("xf2", caps1rate.value.xf2);

  rateData.append(
    "total",
    (5 * caps1rate.value.background) / 4 +
      (5 * caps1rate.value.backgrounds) / 4 +
      (5 * caps1rate.value.obj1) / 4 +
      (3 * caps1rate.value.obj2) / 4 +
      (2 * caps1rate.value.obj3) / 4 +
      (5 * caps1rate.value.s1) / 4 +
      (5 * caps1rate.value.s2) / 4 +
      (10 * caps1rate.value.sc) / 4 +
      (5 * caps1rate.value.df) / 4 +
      (5 * caps1rate.value.lr1) / 4 +
      (5 * caps1rate.value.lr2) / 4 +
      (5 * caps1rate.value.meth1) / 4 +
      (3 * caps1rate.value.meth2) / 4 +
      (2 * caps1rate.value.meth3) / 4 +
      (5 * caps1rate.value.ref1) / 4 +
      (5 * caps1rate.value.format) / 4 +
      (5 * caps1rate.value.oralCom) / 4 +
      (5 * caps1rate.value.ppt) / 4 +
      (5 * caps1rate.value.attire) / 4 +
      (10 * caps1rate.value.resp) / 4
  );
  rateData.append("xf1", "PARTIAL");

  axios
    .post("/api/add_rating/" + capsID, rateData)
    .then((response) => {
      toast.fire({
        icon: "success",
        title: "Partial Rate Successfully",
      });

      getCaps1Rate();
      getStoreRatingRate();

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
      // router.push("/create");

      // toast.fire({
      //   icon: "success",
      //   title: "Partial Rate Successfully",
      // });
    })
    // .catch((error = {}));
    .catch(function (error) {
      console.log(error.response.data.errors);
      console.log("ERRRR:: ", error.response);

      toast.fire({
        icon: "warning",
        title: "Rate Unsuccessful",
      });
      // (error = {}));
      console.log("ERRRR:: ", error.response);
    });
  // console.log("ERRRR:: ", error.response.data);
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
.sizelab {
  font-size: 1.25rem;
}
.pointerr {
  cursor: pointer;
  padding: 14px;
}
.form-check-labellll {
  margin-top: 8px;
  margin-left: 2px;
}
</style>
