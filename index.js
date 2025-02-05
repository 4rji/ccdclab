const { app, BrowserWindow } = require('electron');

function createWindow() {
  const win = new BrowserWindow({
    width: 1900,
    height: 1200 
  });
  win.loadURL('http://localhost:600');
}

app.whenReady().then(createWindow);
