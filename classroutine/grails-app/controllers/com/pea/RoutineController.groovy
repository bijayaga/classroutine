package com.pea

import classroutine.Section
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class RoutineController {

    def index() {
    }

    def routine(){
        println("------------------------"+params)


        List group = params.list("shift")

        def firstPeriod = params.list("firstPeriod[]")
        def secondPeriod = params.list("secondPeriod[]")
        def thirdPeriod = params.list("thirdPeriod[]")
        def fourthPeriod = params.list("fourthPeriod[]")
        println("-----------------"+group[0])
        def glist = Section.createCriteria().list {
            eq("shift",group[0])
        }
        println("glist========"+glist)

        for(def i=0;i<firstPeriod.size();i++){
            def routine = new Routine()
            routine.year = params.year
            routine.month = params.month
            routine.day = params.day
            routine.week = params.week
            routine.firstPeriodWeight = params.firstPeriodWeight
            routine.secondPeriodWeight = params.secondPeriodWeight
            routine.thirdPeriodWeight = params.thirdPeriodWeight
            routine.fourthPeriodWeight = params.fourthPeriodWeight

            routine.section = (Section)glist[i]
            routine.firstPeriod = firstPeriod[i]
            routine.secondPeriod = secondPeriod[i]
            routine.thirdPeriod = thirdPeriod[i]
            routine.fourthPeriod = fourthPeriod[i]

            routine.save(failOnError: true,flush: true)
            println("saved")

        }
    }

    def search(){}

    def getDetail(){
        def shift = params.shift
        def glist

        println(shift)

        if(shift.toString().length()>0){
            glist = Section.createCriteria().list {
                eq("shift","${params.shift}")
            }
            render(view: "routine", model: [groupList:glist,shift:shift])
        }
        else{
            println("select shift")
        }
    }

}

