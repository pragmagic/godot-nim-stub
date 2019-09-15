# Copyright 2017 Xored Software, Inc.

import strutils
import godot
import godotapi / [engine, label]

gdobj FPSCounter of Label:
  var lastFPS: float32

  method ready*() =
    self.setProcess(true)

  method process*(delta: float64) =
    let fps = getFramesPerSecond()
    if int(fps * 10) != int(self.lastFPS * 10):
      self.lastFPS = fps
      self.text = "FPS: " & formatFloat(fps, ffDecimal, 1)
