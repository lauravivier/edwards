// require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
import Rails from 'rails-ujs';
Rails.start();

if (document.querySelector(".edit_campaign")) {
  const cards = document.querySelectorAll(".edit_campaign .card");
  cards.forEach(card => {
    const cardId = card.id.split("-")[1];
    const checkbox = document.querySelector(`.edit_campaign #checkbox-${cardId}`);

    card.addEventListener("click", (event) => {
      checkbox.click();
      event.currentTarget.classList.add("card-selected");
      });
   });
}

const editInfluencersForm = document.getElementById('edit-influencers');
if (editInfluencersForm) {
  const checkBoxes = document.querySelectorAll(".form-check-input");
  const form = document.querySelector('form');
  for (const check of checkBoxes) {
    check.addEventListener( 'change', function() {
      Rails.fire(form, 'submit');
    });
  }
}

const influencersToAdd = document.querySelectorAll('.influencer-to-add');
if (influencersToAdd) {
  const input = document.getElementById('added-influencers');
  influencersToAdd.forEach((influencer) => {
    influencer.addEventListener('click', (event) => {
      input.value = input.value + " " + event.currentTarget.id.replace('influencer-', '');
    });
  });
}
