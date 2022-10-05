<template>
  <div class="caps1Content">
    <QuillEditor
      v-model:content="content"
      theme="snow"
      toolbar="#custom-toolbar"
    >
      <template #toolbar>
        <div id="custom-toolbar">
          <select class="ql-size">
            <option value="small"></option>
            <option selected></option>
            <option value="large"></option>
            <option value="huge"></option>
          </select>
          <select class="ql-header">
            <option :value="1"></option>
            <option :value="2"></option>
            <option :value="3"></option>
            <option :value="4"></option>
            <option :value="5"></option>
            <option :value="6"></option>
            <option selected></option>
          </select>

          <button class="ql-bold"></button>
          <button class="ql-italic"></button>
          <button class="ql-underline"></button>
          <button class="ql-strike"></button>
          <button class="ql-script" value="sub"></button>
          <button class="ql-script" value="super"></button>
          <select class="ql-align">
            <option selected></option>
            <option value="center"></option>
            <option value="right"></option>
            <option value="justify"></option>
          </select>
          <button class="ql-list" value="ordered"></button>
          <button class="ql-list" value="bullet"></button>
          <button class="ql-blockquote"></button>
          <button class="ql-code-block"></button>
          <button class="ql-link"></button>
          <button class="ql-image"></button>

          <button id="your-button" @click="setContent()">Save</button>
        </div>
      </template>
    </QuillEditor>
  </div>

  <div class="caps1Side">
    <h1>Hello</h1>
  </div>
</template>

<script>
import { ref, defineComponent } from "vue";
import { QuillEditor } from "@vueup/vue-quill";
import "@vueup/vue-quill/dist/vue-quill.snow.css";

export default defineComponent({
  name: "RichTextEditor",
  components: {
    QuillEditor,
  },
  setup() {
    const content = ref({});

    content.value = {
      // ops: [
      //   { insert: "Lorem ipsum dolor sit amet" },
      //   { attributes: { header: 3 }, insert: "\n" },
      //   { insert: "consectetur adipiscing elit. " },
      //   { attributes: { bold: true }, insert: "Nunc ultrices ligula" },
      //   {
      //     insert:
      //       " eu eros pulvinar, eu consequat nulla consectetur. Cras ut purus felis. Nunc placerat risus a augue sodales, at ultricies diam tristique. Donec venenatis auctor mauris,",
      //   },
      //   { attributes: { italic: true }, insert: " at molestie enim euismo" },
      //   {
      //     insert:
      //       "d ac. Mauris viverra, leo id porttitor maximus, diam magna blandit nibh, ac vehicula nulla diam in eros. Nullam mi risus, blandit a elit quis, aliquam porttitor diam. In mauris nunc, fringilla at auctor in, sodales eu diam. In convallis gravida urna, ut gravida massa euismod quis.\nProin rutrum tortor at augue eleifend finibus. ",
      //   },
      //   {
      //     attributes: { underline: true },
      //     insert: "Quisque non tincidunt dolor.",
      //   },
      //   {
      //     insert:
      //       " Aenean ullamcorper, diam ac vehicula imperdiet, arcu erat sodales sem, vitae lobortis dolor urna dapibus nisi. Nulla lacus urna, vehicula quis rutrum sit amet, ",
      //   },
      //   {
      //     attributes: { link: "http://localhost" },
      //     insert: "porttitor eget ligula",
      //   },
      //   {
      //     insert:
      //       ". Nam eget ante ornare, egestas nulla dapibus, tempus nisi. Sed vel odio augue. Fusce vulputate, risus sit amet venenatis tristique, ex ex pulvinar orci, vitae lobortis massa enim ac ante. Nulla sodales mauris ligula, a tempus felis vulputate ut. Sed scelerisque dolor at leo hendrerit vehicula.\n",
      //   },
      // ],
    };

    return {
      content,
    };
  },
});
</script>
<style>
.caps1Content {
  width: 100%;
  height: 100%;
}
.caps1Side {
  width: 24%;
  height: 100%;
  background: gold;
  float: right;
  display: flex;
}
</style>
