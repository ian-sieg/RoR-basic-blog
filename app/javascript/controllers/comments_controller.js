import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    initialize() {}
    connect() {}
    toggleForm(e) {
        e.preventDefault()
        e.stopPropagation()
        console.log(e.params.form)
        const formId = e.params.form
        const commentBodyId = e.params.body
        
        const form = document.getElementById(formId)
        form.classList.toggle('d-none')
        form.classList.toggle('mt-3')
        const commentBody = document.getElementById(commentBodyId)
        commentBody.classList.toggle('d-none')
    }
}
