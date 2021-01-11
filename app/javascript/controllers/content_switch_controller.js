import { Controller } from "stimulus";

export default class extends Controller {
  static classes = ["active"];

  activate(e) {
    this.element.querySelectorAll("li a").forEach((el) => {
      el.classList.toggle(this.activeClass);
    });
  }
}
