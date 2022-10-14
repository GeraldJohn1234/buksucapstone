import { createWebHistory, createRouter } from "vue-router";

import Dashboard from "../components/faculty/dashboard.vue";
import Profile from "../components/faculty/profile.vue";
import CapsList from "../components/faculty/capslist.vue";
import Topic from "../components/faculty/topic.vue";
import Student from "../components/faculty/student.vue";
import Instructor from "../components/faculty/instructor.vue";
import Adviser from "../components/faculty/adviser.vue";
import Panel from "../components/faculty/panel.vue";
import Secretary from "../components/faculty/secretary.vue";
import Admin from "../components/faculty/admin.vue";
import Archiver from "../components/faculty/archiver.vue";
import Project from "../components/faculty/project.vue";

import Create from "../components/faculty/capstoneList/create.vue";
import View from "../components/faculty/capstoneList/view.vue";
import Update from "../components/faculty/capstoneList/update.vue";

import Capstone1 from "../components/faculty/capstonefolder/capstone1.vue";
import Capstone2 from "../components/faculty/capstonefolder/capstone2.vue";
import Capstone3 from "../components/faculty/capstonefolder/capstone3.vue";

import Caps1edit from "../components/faculty/capstonefolder/caps1edit.vue";
import Caps2edit from "../components/faculty/capstonefolder/caps2edit.vue";
import Caps3edit from "../components/faculty/capstonefolder/caps3edit.vue";

import Editcap from "../components/faculty/capstonefolder/editcap.vue";
import Viewcap from "../components/faculty/capstonefolder/viewcap.vue";

import Ocrpages from "../components/faculty/capstonefolder/ocrpages.vue";

import Capsdocs from "../components/faculty/capstonefolder/caps1/capsdocs.vue";

import Actiondone from "../components/faculty/capstonefolder/caps1/actiondone.vue";
import Appform from "../components/faculty/capstonefolder/caps1/appform.vue";
import Minutes from "../components/faculty/capstonefolder/caps1/minutes.vue";
import Mou from "../components/faculty/capstonefolder/caps1/mou.vue";
import Ppt from "../components/faculty/capstonefolder/caps1/ppt.vue";
import Proposalform from "../components/faculty/capstonefolder/caps1/proposalform.vue";
import Recordproposal from "../components/faculty/capstonefolder/caps1/recordproposal.vue";
import Ssacept from "../components/faculty/capstonefolder/caps1/ssacept.vue";
import Ssfile from "../components/faculty/capstonefolder/caps1/ssfile.vue";

import Actiondone2 from "../components/faculty/capstonefolder/caps2/actiondone2.vue";
import Appform2 from "../components/faculty/capstonefolder/caps2/appform2.vue";
import Recordproposal2 from "../components/faculty/capstonefolder/caps2/recordproposal2.vue";
import Minutes2 from "../components/faculty/capstonefolder/caps2/minutes2.vue";
import Ssacept2 from "../components/faculty/capstonefolder/caps2/ssacept2.vue";
import Ssfile2 from "../components/faculty/capstonefolder/caps2/ssfile2.vue";

import Actiondone3 from "../components/faculty/capstonefolder/caps3/actiondone3.vue";
import Capsdocs3 from "../components/faculty/capstonefolder/caps3/capsdocs3.vue";
import Gitlink from "../components/faculty/capstonefolder/caps3/gitlink.vue";
import Minutes3 from "../components/faculty/capstonefolder/caps3/minutes3.vue";
import Ppt3 from "../components/faculty/capstonefolder/caps3/ppt3.vue";
import Recordproposal3 from "../components/faculty/capstonefolder/caps3/recordproposal3.vue";
import Ssacept3 from "../components/faculty/capstonefolder/caps3/ssacept3.vue";
import Ssfile3 from "../components/faculty/capstonefolder/caps3/ssfile3.vue";

import Ocrdocuments from "../components/faculty/capstonefolder/ocrdocuments.vue";
import Rate from "../components/faculty/capstonefolder/rate.vue";
import Rate2 from "../components/faculty/capstonefolder/rate2.vue";
import Rate3 from "../components/faculty/capstonefolder/rate3.vue";

import Createsuggestion from "../components/faculty/topicsuggest/createsuggestion.vue";
import Taketopic from "../components/faculty/topicsuggest/taketopic.vue";


const routes = [
  {
    path: "/createsuggestion",
    name: "Createsuggestion",
    component: Createsuggestion,
  },
  {
    path: "/taketopic",
    name: "Taketopic",
    component: Taketopic,
  },
 


  {
    path: "/dashboard",
    name: "Dashboard",
    component: Dashboard,
  },
  {
    path: "/profile",
    name: "Profile",
    component: Profile,
    props:true,
  },
  {
    path: "/project",
    name: "Project",
    component: Project,
  },
  {
    path: "/capslist",
    name: "CapsList",
    component: CapsList,
  },
  {
    path: "/topic",
    name: "Topic",
    component: Topic,
  },
  {
    path: "/student",
    name: "Student",
    component: Student,
  },
  {
    path: "/instructor",
    name: "Instructor",
    component: Instructor,
  },
  {
    path: "/adviser",
    name: "Adviser",
    component: Adviser,
  },
  {
    path: "/panel",
    name: "Panel",
    component: Panel,
  },
  {
    path: "/secretary",
    name: "Secretary",
    component: Secretary,
  },
  {
    path: "/admin",
    name: "Admin",
    component: Admin,
  },
  {
    path: "/archiver",
    name: "Archiver",
    component: Archiver,
  },
  {
    path: "/create",
    name: "Create",
    component: Create,
  },
  {
    path: "/view/:id",
    name: "View",
    component: View,
    props:true
  },
  {
    path: "/update/:id",
    name: "Update",
    component: Update,
    props:true
  },



  {
    path: "/capstone1/:id",
    name: "Capstone1",
    component: Capstone1,
  },
  {
    path: "/capstone2/:id",
    name: "Capstone2",
    component: Capstone2,
  },
  {
    path: "/capstone3/:id",
    name: "Capstone3",
    component: Capstone3,
  },
  {
    path: "/caps1edit/:id",
    name: "Caps1edit",
    component: Caps1edit,
  },
  {
    path: "/caps2edit/:id",
    name: "Caps2edit",
    component: Caps2edit,
  },
  {
    path: "/caps3edit/:id",
    name: "Caps3edit",
    component: Caps3edit,
  },





  {
    path: "/editcap/:id",
    name: "Editcap",
    component: Editcap,
    props:true
  },
  {
    path: "/viewcap/:id",
    name: "Viewcap",
    component: Viewcap,
    props:true
  },




  {
    path: "/ocrpages/:id",
    name: "Ocrpages",
    component: Ocrpages,
  },

  {
    path: "/ocrdocuments/:id",
    name: "Ocrdocuments",
    component: Ocrdocuments,
  },

  {
    path: "/capsdocs/:id",
    name: "Capsdocs",
    component: Capsdocs,
  },
  {
    path: "/ssfile/:id",
    name: "Ssfile",
    component: Ssfile,
  },
  {
    path: "/ssacept/:id",
    name: "Ssacept",
    component: Ssacept,
  },
  {
    path: "/recordproposal/:id",
    name: "Recordproposal",
    component: Recordproposal,
  },
  {
    path: "/proposalform/:id",
    name: "Proposalform",
    component: Proposalform,
  },
  {
    path: "/ppt/:id",
    name: "Ppt",
    component: Ppt,
  },
  {
    path: "/mou/:id",
    name: "Mou",
    component: Mou,
  },
  {
    path: "/minutes/:id",
    name: "Minutes",
    component: Minutes,
  },
  {
    path: "/appform/:id",
    name: "Appform",
    component: Appform,
  },
  {
    path: "/actiondone/:id",
    name: "Actiondone",
    component: Actiondone,
  },


  {
    path: "/ssfile2/:id",
    name: "Ssfile2",
    component: Ssfile2,
  },
  {
    path: "/ssacept2/:id",
    name: "Ssacept2",
    component: Ssacept2,
  },
  {
    path: "/minutes2/:id",
    name: "Minutes2",
    component: Minutes2,
  },
  {
    path: "/recordproposal2/:id",
    name: "Recordproposal2",
    component: Recordproposal2,
  },
  {
    path: "/appform2/:id",
    name: "Appform2",
    component: Appform2,
  },
  {
    path: "/actiondone2/:id",
    name: "Actiondone2",
    component: Actiondone2,
  },

  {
    path: "/ssfile3/:id",
    name: "Ssfile3",
    component: Ssfile3,
  },
  {
    path: "/ssacept3/:id",
    name: "Ssacept3",
    component: Ssacept3,
  },
  {
    path: "/recordproposal3/:id",
    name: "Recordproposal3",
    component: Recordproposal3,
  },
  {
    path: "/ppt3/:id",
    name: "Ppt3",
    component: Ppt3,
  },
  {
    path: "/minutes3/:id",
    name: "Minutes3",
    component: Minutes3,
  },
  {
    path: "/gitlink/:id",
    name: "Gitlink",
    component: Gitlink,
  },
  {
    path: "/capsdocs3/:id",
    name: "Capsdocs3",
    component: Capsdocs3,
  },
  {
    path: "/actiondone3/:id",
    name: "Actiondone3",
    component: Actiondone3,
  },
  {
    path: "/rate/:id",
    name: "Rate",
    component: Rate,
  },
  {
    path: "/rate2/:id",
    name: "Rate2",
    component: Rate2,
  },
  {
    path: "/rate3/:id",
    name: "Rate3",
    component: Rate3,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});
// const router = createRouter({
//   mode:'history',
//   routes
// })
export default router; 