import { defineStore } from "pinia";

export const useCourseInput = defineStore('courseSet', {
  state: () => ({
    assignmentInfo: {}
  }),
  actions:{
    addAssignment(course, date, amount, description){
      this.assignmentInfo[0] = course
      this.assignmentInfo[1] = date
      this.assignmentInfo[2] = amount
      this.assignmentInfo[3] = description
    },
    clearAssignments(){
      delete this.assignmentInfo[0]
      delete this.assignmentInfo[1]
      delete this.assignmentInfo[2]
      delete this.assignmentInfo[3]
    }
  },
  getters:{
    assignmentInfoKeys: (state) => Object.keys(state.assignmentInfo),
  }
})
