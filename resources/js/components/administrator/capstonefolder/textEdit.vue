<template>
  <div class="caps1Content">
    <QuillEditor v-model:content="content" theme="snow" toolbar="#custom-toolbar">
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

    content.value = {};

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
