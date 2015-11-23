package com.flightloglib.domain

import org.springframework.dao.DataIntegrityViolationException

class PilotController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [pilotInstanceList: Pilot.list(params), pilotInstanceTotal: Pilot.count()]
    }

    def create() {
        [pilotInstance: new Pilot(params)]
    }

    def save() {
        def pilotInstance = new Pilot(params)
        if (!pilotInstance.save(flush: true)) {
            render(view: "create", model: [pilotInstance: pilotInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'pilot.label', default: 'Pilot'), pilotInstance.id])
        redirect(action: "show", id: pilotInstance.id)
    }

    def show() {
        def pilotInstance = Pilot.get(params.id)
        if (!pilotInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pilot.label', default: 'Pilot'), params.id])
            redirect(action: "list")
            return
        }

        [pilotInstance: pilotInstance]
    }

    def edit() {
        def pilotInstance = Pilot.get(params.id)
        if (!pilotInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pilot.label', default: 'Pilot'), params.id])
            redirect(action: "list")
            return
        }

        [pilotInstance: pilotInstance]
    }

    def update() {
        def pilotInstance = Pilot.get(params.id)
        if (!pilotInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pilot.label', default: 'Pilot'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (pilotInstance.version > version) {
                pilotInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pilot.label', default: 'Pilot')] as Object[],
                          "Another user has updated this Pilot while you were editing")
                render(view: "edit", model: [pilotInstance: pilotInstance])
                return
            }
        }

        pilotInstance.properties = params

        if (!pilotInstance.save(flush: true)) {
            render(view: "edit", model: [pilotInstance: pilotInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pilot.label', default: 'Pilot'), pilotInstance.id])
        redirect(action: "show", id: pilotInstance.id)
    }

    def delete() {
        def pilotInstance = Pilot.get(params.id)
        if (!pilotInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pilot.label', default: 'Pilot'), params.id])
            redirect(action: "list")
            return
        }

        try {
            pilotInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'pilot.label', default: 'Pilot'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'pilot.label', default: 'Pilot'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
