<template>
  <div class="contentOfThePage">
    <h2 class="text-center fw-bold">{{ capstone.title }}</h2>

    <h4 class="text-center mt-4">FULL DOCUMENTATION</h4>
    <div class="contentOfThePage my-3">
      <h5 class="text-left boldThese">CONTENT</h5>

      <div class="form-floating col">
        <textarea
          class="form-control inputColor"
          placeholder="Leave a comment here"
          id="floatingTextarea2"
          style="height: 500px"
          v-model="caps.capstone_ocr"
        ></textarea>
        <label class="ps-4" for="floatingTextarea2">Content</label>
        <br />
      </div>
    </div>
  </div>
</template>

<script>
import Vue from "vue";
import { ref, defineComponent } from "vue";
import { QuillEditor } from "@vueup/vue-quill";
import "@vueup/vue-quill/dist/vue-quill.snow.css";
import Camera from "simple-vue-camera";

import { useRouter } from "vue-router";
const router = useRouter();

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
      caps: {
        capstone_ocr: "",
      },
      capstone: {
        title: "",
      },
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
          vm.status = "";
        })
        .catch((error) => console.log(error))
        .finally(() => {});
    },

    createCameraElement() {
      const constraints = (window.constraints = {
        audio: false,
        video: true,
      });

      navigator.mediaDevices
        .getUserMedia(constraints)
        .then((stream) => {
          this.$refs.camera.srcObject = stream;
        })
        .catch((error) => {
          alert(error, "May the browser didn't support or there is some errors.");
        });
    },
    stopCameraStream() {
      const tracks = this.$refs.camera.srcObject.getTracks();

      tracks.forEach((track) => {
        track.stop();
      });
      console.log("CameraClosed");
    },
    toggleCamera() {
      if (this.isCameraOpen) {
        this.isCameraOpen = false;
        this.isPhotoTaken = false;
        this.stopCameraStream();
        console.log("closed");
      } else {
        this.isCameraOpen = true;
        this.createCameraElement();
        console.log("open");
      }
    },
    takePhoto() {
      this.isPhotoTaken = !this.isPhotoTaken;

      const context = this.$refs.canvas.getContext("2d");
      const photoFromVideo = this.$refs.camera;

      context.drawImage(photoFromVideo, 0, 0, 450, 337);
    },
    downloadImage() {
      const download = document.getElementById("downloadPhoto");
      const canvas = document
        .getElementById("photoTaken")
        .toDataURL("image/jpeg")
        .replace("image/jpeg", "image/octet-stream");
      download.setAttribute("href", canvas);
    },

    saveCapstonee1() {
      let id = window.location.pathname.split("/")[2];
      axios
        .post("/api/add_capstonee1/" + id, {
          texttext: this.getCapstoneData() + this.textcontent,
        })
        .then((response) => {
          toast.fire({
            icon: "success",
            title: "User Capstone Successfully",
          });
          this.getCapstone();
        });
    },
    getCapstone() {
      let id = window.location.pathname.split("/")[2];
      axios.get("/api/get_capstonee1/" + id).then((response) => {
        this.caps = response.data.capstone11111;
      });
    },
    getCapstoneData() {
      let id = window.location.pathname.split("/")[2];
      axios.get("/api/get_capstonee1/" + id).then((response) => {
        this.caps = response.data.capstone11111;
      });
      return this.caps.capstone_ocr;
    },
    getCapstoneTitle() {
      let id = window.location.pathname.split("/")[2];
      axios.get("/api/get_capstone/" + id).then((response) => {
        this.capstone = response.data.capstones;
      });
      return this.capstone.title;
    },
  },

  created() {
    this.getCapstone();
    this.getCapstoneData();
    this.getCapstoneTitle();
  },
});
</script>

<style>
.centerne {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 100%;
  height: 100%;
}

.stats {
  font-weight: bolder;
  float: right;
  justify-content: end;
}

#imageCanvas {
  width: 100%;
  height: 100%;
}
</style>
