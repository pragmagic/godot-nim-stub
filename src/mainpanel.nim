# Copyright 2017 Xored Software, Inc.

import godot
import godotapi / [scene_tree, resource_loader, packed_scene, panel,
                   global_constants, input_event_mouse_button]

gdobj MainPanel of Panel:
  method ready*() =
    self.setProcessInput(true)

  method input*(event: InputEvent) =
    if event of InputEventMouseButton:
      let ev = event as InputEventMouseButton
      if ev.buttonIndex == BUTTON_LEFT:
        self.getTree().setInputAsHandled()
        let scene = load("res://scene.tscn") as PackedScene
        self.getTree().root.addChild(scene.instance())
        self.queueFree()
