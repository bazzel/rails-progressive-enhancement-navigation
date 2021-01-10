import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["dialog", "backdrop"];
  static classes = ["visible", "hidden"];

  connect() {
    this.dialogTarget.classList.add(this.hiddenClass);
    this.backdropTarget.classList.add(this.hiddenClass);
  }

  toggle(event, skipCheck = false) {
    if (
      skipCheck ||
      event.keyCode === 27 ||
      event.target === event.currentTarget
    ) {
      this.dialogTarget.classList.toggle(this.hiddenClass);
      this.backdropTarget.classList.toggle(this.hiddenClass);
      this.dialogTarget.classList.toggle(this.visibleClass);
      this.backdropTarget.classList.toggle(this.visibleClass);
    }
  }

  open(event) {
    if (this.dialogTarget.classList.contains(this.hiddenClass)) {
      this.toggle(event, true);
    }
  }

  close(event) {
    if (this.dialogTarget.classList.contains(this.visibleClass)) {
      this.toggle(event, true);
    }
  }
}
