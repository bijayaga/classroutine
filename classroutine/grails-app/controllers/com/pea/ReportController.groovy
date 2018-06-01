package com.pea

import classroutine.Teacher
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class ReportController {

    def index() {

    }

    def getReport(){
        def monthlyReport = params.monthlyReport
        def teacherName = params.teacherReport
        def groupReport = params.groupReport

        if(monthlyReport){
            redirect(action:"monthlyReport")
        }
        else if(teacherName){

            def list = teacherReport(teacherName)
            println("==============="+list)
            render(view:"teacherReport",model: [list:list.getRoutineList(),mTotal:list.getmTotal(),dTotal:list.getdTotal(),teacher:Teacher.findByFullName(teacherName)])

        }
        else if(groupReport){
            redirect(action: "groupReport")
        }
    }

    def searchMonth(){

    }

    def searchTeacher(){



    }

    def searchGroup(){

    }

    def monthlyReport(){

    }

    def teacherReport(teacherName){
        def mTotal = 0
        def dTotal = 0

        def teacher = Teacher.findByFullName(teacherName)
        def list = Routine.createCriteria().list {
            or{
                eq("firstPeriod",teacher.codeName)
                eq("secondPeriod",teacher.codeName)
                eq("thirdPeriod",teacher.codeName)
                eq("fourthPeriod",teacher.codeName)
            }
        }

        println("---------------------------------"+list)

        for(Routine t:list){
            if(t.section.shift.toString().equalsIgnoreCase("Morning")){
                if(t.firstPeriod==teacher.codeName){
                    mTotal+=Double.parseDouble(t.firstPeriodWeight)
                }else if(t.secondPeriod==teacher.codeName){
                    mTotal+=Double.parseDouble(t.secondPeriodWeight)
                }else if(t.thirdPeriod==teacher.codeName){
                    mTotal+=Double.parseDouble(t.thirdPeriodWeight)
                }else if(t.fourthPeriod==teacher.codeName){
                    mTotal+=Double.parseDouble(t.fourthPeriodWeight)
                }
            }else if(t.section.shift.toString().equalsIgnoreCase("Day")){
                if(t.firstPeriod==teacher.codeName){
                    dTotal+=Double.parseDouble(t.firstPeriodWeight)
                }else if(t.secondPeriod==teacher.codeName){
                    dTotal+=Double.parseDouble(t.secondPeriodWeight)
                }else if(t.thirdPeriod==teacher.codeName){
                    dTotal+=Double.parseDouble(t.thirdPeriodWeight)
                }else if(t.fourthPeriod==teacher.codeName){
                    dTotal+=Double.parseDouble(t.fourthPeriodWeight)
                }
            }

        }

        TeacherReport report = new TeacherReport()
        report.setRoutineList(list)
        report.setmTotal(mTotal)
        report.setdTotal(dTotal)
        return report

    }

    def groupReport(){

    }
}

