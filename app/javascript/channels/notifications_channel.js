import consumer from "./consumer"

consumer.subscriptions.create("NotificationsChannel", {
  connected() {
    console.log("Connected to the notifications channel!");
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    console.log("Disconnect to the notifications channel!");
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
  }
});
