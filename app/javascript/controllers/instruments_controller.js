import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'list' ];

  reveal() {
    this.listTarget.classList.toggle('hidden');
  }
}
