require('./bootstrap');
import Swal from 'sweetalert2/dist/sweetalert2.js';
import 'sweetalert2/dist/sweetalert2.css'
window.Swal = Swal;
const toast = Swal.mixin({
    toast:true,
    position:'top-end',
    showConfirmButton:false,
    timer: 3000,
    timeProgressBar:true,
});
window.toast = toast;
import {createApp} from 'vue'
import faculty from './components/faculty.vue';
import router from './routers/facultyRouter' 
import { library } from '@fortawesome/fontawesome-svg-core'
/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
/* import specific icons */
import {faAddressCard, faChalkboardTeacher, faDashboard, faDownload, faEye, faEyeSlash, faFile, faHome, faLightbulb, faPersonChalkboard, faRightFromBracket, faUser, faUserGroup, faUserPen, faUsers, faUserSecret, faUsersRectangle} from '@fortawesome/free-solid-svg-icons'
/* add icons to the library font-awesome-icon */
library.add(faUserSecret,faHome,faDownload,faUsers,faDashboard,faUser,faUsers,faChalkboardTeacher,faUserGroup,faPersonChalkboard,faAddressCard,faUserPen,faUsersRectangle,faFile,faLightbulb,faRightFromBracket,faEyeSlash,faEyeSlash,faEye)
createApp(faculty)
    .use(router)
    .component('font-awesome-icon', FontAwesomeIcon)
    .mount('#facu')  