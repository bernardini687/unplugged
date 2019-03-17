import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'list', 'details' ];

  show(e) {
    e.preventDefault();
    // console.log(e.originalTarget.dataset.index);
    this.detailsTargets.find(instrument => instrument.dataset.index === e.originalTarget.dataset.index).classList.toggle('hidden');
  }

  reveal() {
    // console.log('reveal')
    this.listTarget.classList.toggle('hidden');
  }
}
