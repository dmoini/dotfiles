// Helper Functions
function sendTouchEvent(element, eventType) {
  const touchObj = new Touch({
    identifier: "Keyboard shortcuts should be supported natively without an extension!",
    target: element,
    clientX: 0,
    clientY: 0,
    radiusX: 2.5,
    radiusY: 2.5,
    rotationAngle: 10,
    force: 0.5,
  });

  const touchEvent = new TouchEvent(eventType, {
    cancelable: true,
    bubbles: true,
    touches: [touchObj],
    targetTouches: [touchObj],
    changedTouches: [touchObj],
    shiftKey: true,
  });

  element.dispatchEvent(touchEvent);
}

function tapElement(element) {
  sendTouchEvent(element, "touchstart");
  sendTouchEvent(element, "touchend");
}

function getRandomWait() {
  return Math.floor(Math.random() * (300 - 150)) + 150;
}

function getRandomLongerWait() {
  return Math.floor(Math.random() * (2000 - 1000)) + 1000;
}

function getSortedRandomWaitTimes(length) {
  return Array.from({ length }, () => getRandomLongerWait()).sort();
}

async function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

function getFutItemList() {
  return document.getElementsByClassName("ut-unassigned-view")[0].getElementsByClassName("listFUTItem");
}

async function swapAllDuplicates(futItemList) {
  const waitTimes = getSortedRandomWaitTimes(futItemList.length);
  for (let i = 0; i < futItemList.length; i++) {
    setTimeout(function () {
      tapElement(futItemList[i]);
      const swapDuplicateButton = document.getElementsByClassName("ut-button-group")[1].getElementsByTagName("button")[5];
      tapElement(swapDuplicateButton);
    }, (i + 1) * waitTimes[i]);
  }
}

async function openUpgradeSbc() {
  const sbcTab = document.getElementsByClassName("ut-tab-bar-item icon-sbc")[0];
  tapElement(sbcTab);
  await sleep(1000);
  const sbcFavouritesTab = document.getElementsByClassName("ea-filter-bar-item-view")[1];
  tapElement(sbcFavouritesTab);
  const upgradeSbc = document.getElementsByClassName("ut-sbc-set-tile-view")[0];
  tapElement(upgradeSbc);
}

async function addSquadSlotElement(squadSlotElement) {
  tapElement(squadSlotElement);
  await sleep(1000);
  const addPlayerButton = document.getElementsByClassName("ut-button-group")[0].getElementsByTagName("button")[2];
  tapElement(addPlayerButton);
  await sleep(500);
  const sortByDropdown = document
    .getElementsByClassName("inline-list-select ut-drop-down-control")[0]
    .getElementsByClassName("inline-container")[0];
  tapElement(sortByDropdown);
  const mostRecentItem = sortByDropdown.getElementsByTagName("li")[4];
  tapElement(mostRecentItem);
  const searchButton = document.getElementsByClassName("btn-standard call-to-action")[0];
  tapElement(searchButton);
  await sleep(2000);
  const plusButton = document
    .getElementsByClassName("listFUTItem has-action")[0]
    .getElementsByClassName("ut-image-button-control btnAction add")[0];
  tapElement(plusButton);
  await sleep(1000);
  const rightButton = document.getElementsByClassName("flat btn-right")[0];
  tapElement(rightButton);
}

async function addAllDuplicatesToBench(count) {
  const workAreaButton = document.getElementsByClassName("ut-squad-tab-button-control left workTab")[0];
  tapElement(workAreaButton);
  const squadSlotList = document
    .getElementsByClassName("ut-squad-slot-dock-view--slot-container")[0]
    .getElementsByClassName("ut-squad-slot-view");
  const waitTimes = getSortedRandomWaitTimes(count);
  await sleep(1000);
  for (let i = 0; i < count; i++) {
    setTimeout(async function () {
      await addSquadSlotElement(squadSlotList[i]);
    }, (i + 1) * waitTimes[i] * 2);
  }
}

async function main() {
  const futItemList = getFutItemList();
  // const futItemListLength = futItemList.length;
  await swapAllDuplicates(futItemList);
  await openUpgradeSbc();
  // await sleep(1000);
  // await addAllDuplicatesToBench(futItemListLength);
}
