<template>
  <div class="contentOfThePage">
    <div class="row">
      <div class="col row contentOfThePage me-1 ms-3">
        <div class="col-10">
          <input type="file" id="imageLoader" @change="updateCanvasImage" />
        </div>
        <div class="col stats">{{ status }}</div>

        <div class="journey">
          <div class="centerne">
            <canvas id="imageCanvas" ref="imageCanvas"></canvas>
          </div>
        </div>
      </div>
      <!-- v-model="RichTextEditor.content" -->
      <div class="col contentOfThePage ms-1 me-3">
        <h5 class="text-left boldThese">CONVERTED TEXT</h5>
        <div class="form-floating col">
          <textarea
            class="form-control inputColor"
            placeholder="Leave a comment here"
            id="floatingTextarea2"
            style="height: 300px"
            name="texttext"
            v-model="textcontent"
          ></textarea>
          <label class="ps-4" for="floatingTextarea2">Content</label>
          <br />
        </div>
        <button
          type="button"
          class="m-1 btnSize btn btn-primary W-100"
          @click="saveCapstonee1()"
        >
          Add to Documentation
        </button>
      </div>
    </div>
    <h4 class="text-center mt-4">FULL DOCUMENTATION</h4>
    <div class="contentOfThePage my-3">
      <h5 class="text-left boldThese">CONTENT</h5>
      <!-- {{ caps.capstone_ocr }} -->
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
      <button
        type="button"
        class="m-1 btnSize btn btn-primary W-100"
        @click="saveCapstonee1()"
      >
        Save
      </button>
    </div>

    <div class="camera">
      <div class="wrapper">
        <button @click="this.$parent.showCamera = false" class="button-close">x</button>
        <button class="button-snap" @click="toggleCamera()">
          <span v-if="!isCameraOpen">Open Camera</span>
          <span v-else>Close Camera</span>
        </button>
        <div class="video-container">
          <video
            v-show="isCameraOpen"
            class="camera-video"
            ref="camera"
            :width="450"
            :height="337"
            autoplay
            playsinline
          ></video>
          <canvas
            id="photoTaken"
            v-show="isPhotoTaken"
            class="canvas-photo"
            ref="canvas"
            :width="450"
            :height="337"
          ></canvas>
        </div>
        <button
          v-if="!isPhotoTaken && isCameraOpen"
          class="button-snap"
          @click="takePhoto"
        >
          <span>Snap!</span>
        </button>
        <button v-show="isPhotoTaken && isCameraOpen" class="camera-download">
          <a
            id="downloadPhoto"
            download="VueRocksPhoto.jpg"
            class="button"
            role="button"
            @click="downloadImage"
          >
            Download
          </a>
        </button>
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
      caps: {},
    };
  },
  methods: {
    updateCanvasImage(e) {
      this.status = "initialize";
      var self = this;

      // const canvas = document
      //   .getElementById("photoTaken")
      //   .toDataURL("image/jpeg")
      //   .replace("image/jpeg", "image/octet-stream");

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
          // alert(result.data.text);
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
    // getIDfromURL() {
    //   return window.location.pathname.split("/")[2];
    // },
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
          // $("#success").html(response.data.message);
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

    // toConcat() {
    //   return (concatSting = caps.capstone_ocr + textcontent);
    // },
  },

  created() {
    this.getCapstone();
    this.getCapstoneData();
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
