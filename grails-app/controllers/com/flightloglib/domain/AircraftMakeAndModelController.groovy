package com.flightloglib.domain

import org.springframework.dao.DataIntegrityViolationException

class AircraftMakeAndModelController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [aircraftMakeAndModelInstanceList: AircraftMakeAndModel.list(params), aircraftMakeAndModelInstanceTotal: AircraftMakeAndModel.count()]
    }

    def create() {
        [aircraftMakeAndModelInstance: new AircraftMakeAndModel(params)]
    }

    def save() {
        def aircraftMakeAndModelInstance = new AircraftMakeAndModel(params)
        if (!aircraftMakeAndModelInstance.save(flush: true)) {
            render(view: "create", model: [aircraftMakeAndModelInstance: aircraftMakeAndModelInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), aircraftMakeAndModelInstance.id])
        redirect(action: "show", id: aircraftMakeAndModelInstance.id)
    }

    def show() {
        def aircraftMakeAndModelInstance = AircraftMakeAndModel.get(params.id)
        if (!aircraftMakeAndModelInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), params.id])
            redirect(action: "list")
            return
        }

        [aircraftMakeAndModelInstance: aircraftMakeAndModelInstance]
    }

    def edit() {
        def aircraftMakeAndModelInstance = AircraftMakeAndModel.get(params.id)
        if (!aircraftMakeAndModelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), params.id])
            redirect(action: "list")
            return
        }

        [aircraftMakeAndModelInstance: aircraftMakeAndModelInstance]
    }

    def update() {
        def aircraftMakeAndModelInstance = AircraftMakeAndModel.get(params.id)
        if (!aircraftMakeAndModelInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (aircraftMakeAndModelInstance.version > version) {
                aircraftMakeAndModelInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel')] as Object[],
                          "Another user has updated this AircraftMakeAndModel while you were editing")
                render(view: "edit", model: [aircraftMakeAndModelInstance: aircraftMakeAndModelInstance])
                return
            }
        }

        aircraftMakeAndModelInstance.properties = params

        if (!aircraftMakeAndModelInstance.save(flush: true)) {
            render(view: "edit", model: [aircraftMakeAndModelInstance: aircraftMakeAndModelInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), aircraftMakeAndModelInstance.id])
        redirect(action: "show", id: aircraftMakeAndModelInstance.id)
    }

    def delete() {
        def aircraftMakeAndModelInstance = AircraftMakeAndModel.get(params.id)
        if (!aircraftMakeAndModelInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), params.id])
            redirect(action: "list")
            return
        }

        try {
            aircraftMakeAndModelInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'aircraftMakeAndModel.label', default: 'AircraftMakeAndModel'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
