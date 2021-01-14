import _ from "lodash";
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["form", "submit"];

  initialize() {
    if (this.hasSubmitTarget) this.submitTarget.remove();
  }

  connect() {
    this.perform = _.debounce(this._perform, 500).bind(this);
  }

  _perform() {
    this.formTarget.requestSubmit();
  }
}
