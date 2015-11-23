package com.flightloglib.domain

import org.springframework.dao.DataIntegrityViolationException

class CrewMemberRoleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [crewMemberRoleInstanceList: CrewMemberRole.list(params), crewMemberRoleInstanceTotal: CrewMemberRole.count()]
    }

    def create() {
        [crewMemberRoleInstance: new CrewMemberRole(params)]
    }

    def save() {
        def crewMemberRoleInstance = new CrewMemberRole(params)
        if (!crewMemberRoleInstance.save(flush: true)) {
            render(view: "create", model: [crewMemberRoleInstance: crewMemberRoleInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), crewMemberRoleInstance.id])
        redirect(action: "show", id: crewMemberRoleInstance.id)
    }

    def show() {
        def crewMemberRoleInstance = CrewMemberRole.get(params.id)
        if (!crewMemberRoleInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), params.id])
            redirect(action: "list")
            return
        }

        [crewMemberRoleInstance: crewMemberRoleInstance]
    }

    def edit() {
        def crewMemberRoleInstance = CrewMemberRole.get(params.id)
        if (!crewMemberRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), params.id])
            redirect(action: "list")
            return
        }

        [crewMemberRoleInstance: crewMemberRoleInstance]
    }

    def update() {
        def crewMemberRoleInstance = CrewMemberRole.get(params.id)
        if (!crewMemberRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (crewMemberRoleInstance.version > version) {
                crewMemberRoleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'crewMemberRole.label', default: 'CrewMemberRole')] as Object[],
                          "Another user has updated this CrewMemberRole while you were editing")
                render(view: "edit", model: [crewMemberRoleInstance: crewMemberRoleInstance])
                return
            }
        }

        crewMemberRoleInstance.properties = params

        if (!crewMemberRoleInstance.save(flush: true)) {
            render(view: "edit", model: [crewMemberRoleInstance: crewMemberRoleInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), crewMemberRoleInstance.id])
        redirect(action: "show", id: crewMemberRoleInstance.id)
    }

    def delete() {
        def crewMemberRoleInstance = CrewMemberRole.get(params.id)
        if (!crewMemberRoleInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), params.id])
            redirect(action: "list")
            return
        }

        try {
            crewMemberRoleInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'crewMemberRole.label', default: 'CrewMemberRole'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
