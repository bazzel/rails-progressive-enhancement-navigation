import _ from "lodash";
import { Controller } from "stimulus";
import Rails from "@rails/ujs";

export default class extends Controller {
  static targets = ["form", "query", "submit"];

  initialize() {
    if (this.hasSubmitTarget) this.submitTarget.remove();
  }

  connect() {
    this.perform = _.debounce(this._perform, 500).bind(this);
  }

  _perform(event) {
    event.preventDefault();
    Rails.fire(this.formTarget, "submit");
  }
}
