import { Controller } from "stimulus";

export default class extends Controller {
  static classes = ["active"];

  activate(e) {
    if (e.currentTarget.classList.contains(this.activeClass)) {
      return;
    }

    this.element.querySelectorAll("li a").forEach((el) => {
      el.classList.toggle(this.activeClass);
    });
  }
}
