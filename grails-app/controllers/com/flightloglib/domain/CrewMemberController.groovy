package com.flightloglib.domain

import org.springframework.dao.DataIntegrityViolationException

class CrewMemberController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [crewMemberInstanceList: CrewMember.list(params), crewMemberInstanceTotal: CrewMember.count()]
    }

    def create() {
        [crewMemberInstance: new CrewMember(params)]
    }

    def save() {
        def crewMemberInstance = new CrewMember(params)
        if (!crewMemberInstance.save(flush: true)) {
            render(view: "create", model: [crewMemberInstance: crewMemberInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), crewMemberInstance.id])
        redirect(action: "show", id: crewMemberInstance.id)
    }

    def show() {
        def crewMemberInstance = CrewMember.get(params.id)
        if (!crewMemberInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), params.id])
            redirect(action: "list")
            return
        }

        [crewMemberInstance: crewMemberInstance]
    }

    def edit() {
        def crewMemberInstance = CrewMember.get(params.id)
        if (!crewMemberInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), params.id])
            redirect(action: "list")
            return
        }

        [crewMemberInstance: crewMemberInstance]
    }

    def update() {
        def crewMemberInstance = CrewMember.get(params.id)
        if (!crewMemberInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (crewMemberInstance.version > version) {
                crewMemberInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'crewMember.label', default: 'CrewMember')] as Object[],
                          "Another user has updated this CrewMember while you were editing")
                render(view: "edit", model: [crewMemberInstance: crewMemberInstance])
                return
            }
        }

        crewMemberInstance.properties = params

        if (!crewMemberInstance.save(flush: true)) {
            render(view: "edit", model: [crewMemberInstance: crewMemberInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), crewMemberInstance.id])
        redirect(action: "show", id: crewMemberInstance.id)
    }

    def delete() {
        def crewMemberInstance = CrewMember.get(params.id)
        if (!crewMemberInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), params.id])
            redirect(action: "list")
            return
        }

        try {
            crewMemberInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'crewMember.label', default: 'CrewMember'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
