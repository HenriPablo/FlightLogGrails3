package flightloggrails3

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BunnyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Bunny.list(params), model:[bunnyCount: Bunny.count()]
    }

    def show(Bunny bunny) {
        respond bunny
    }

    def create() {
        respond new Bunny(params)
    }

    @Transactional
    def save(Bunny bunny) {
        if (bunny == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (bunny.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond bunny.errors, view:'create'
            return
        }

        bunny.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'bunny.label', default: 'Bunny'), bunny.id])
                redirect bunny
            }
            '*' { respond bunny, [status: CREATED] }
        }
    }

    def edit(Bunny bunny) {
        respond bunny
    }

    @Transactional
    def update(Bunny bunny) {
        if (bunny == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (bunny.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond bunny.errors, view:'edit'
            return
        }

        bunny.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'bunny.label', default: 'Bunny'), bunny.id])
                redirect bunny
            }
            '*'{ respond bunny, [status: OK] }
        }
    }

    @Transactional
    def delete(Bunny bunny) {

        if (bunny == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        bunny.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'bunny.label', default: 'Bunny'), bunny.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'bunny.label', default: 'Bunny'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
