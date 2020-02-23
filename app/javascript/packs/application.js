

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")



import "bootstrap";

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
