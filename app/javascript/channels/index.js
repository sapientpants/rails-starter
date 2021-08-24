// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

/* eslint-disable no-undef */
const channels = require.context('.', true, /_channel\.js$/)
/* eslint-enable no-undef */
channels.keys().forEach(channels)
