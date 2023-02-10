import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  // static targets = ['dropdownContent'];

  connect() {
    console.log('hello');
  }

  openDropdown(event) {
    console.log('ahhaha: ', event.currentTarget);
    const el = event.currentTarget;
    el.closest('div').querySelector('p').innerHTML = 'hahahah';
  }

  biggerButton(event) {}
}
