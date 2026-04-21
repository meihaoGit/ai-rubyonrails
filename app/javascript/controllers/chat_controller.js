import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["messages", "input"]

  connect() {
    this.scrollToBottom()
  }

  scrollToBottom() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight
  }

  // Triggered after turbo stream form submission end
  clearInput() {
    this.inputTarget.value = ""
    this.inputTarget.style.height = "auto"
    this.scrollToBottom()
  }

  // Handle Ctrl+Enter or Cmd+Enter to submit
  // Also submit on Enter without Shift
  submitForm(event) {
    if (!event.shiftKey) {
      event.preventDefault()
      this.element.querySelector("form").requestSubmit()
    }
  }

  // Auto-resize the textarea
  resize() {
    this.inputTarget.style.height = "auto"
    this.inputTarget.style.height = `${this.inputTarget.scrollHeight}px`
  }
}
