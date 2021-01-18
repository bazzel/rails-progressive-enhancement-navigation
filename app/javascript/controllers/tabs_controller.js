import { Controller } from "stimulus";

export default class extends Controller {
  static classes = ["active"];
  static targets = ["tab", "pane"];

  activate(e) {
    e.preventDefault();
    const id = e.currentTarget.id;

    this.tabTargets.forEach((el) => {
      if (id === el.id) {
        el.classList.add(this.activeClass);
      } else {
        el.classList.remove(this.activeClass);
      }
    });

    this.paneTargets.forEach((el) => {
      if (el.getAttribute("aria-labelledby") === id) {
        el.classList.add(this.activeClass);
      } else {
        el.classList.remove(this.activeClass);
      }
    });
  }
}
