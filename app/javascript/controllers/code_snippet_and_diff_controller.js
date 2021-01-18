import { Controller } from "stimulus";

export default class extends Controller {
  static classes = ["active"];
  static targets = ["pane"];

  activate(e) {
    const pane = e.currentTarget.dataset.controls;

    this.paneTargets.forEach((el) => {
      if (el.dataset.labelledby === pane) {
        el.classList.add(this.activeClass);
      } else {
        el.classList.remove(this.activeClass);
      }
    });
  }
}
