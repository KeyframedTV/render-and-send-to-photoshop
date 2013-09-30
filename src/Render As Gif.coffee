`#target "aftereffects"`

class Aegif
  
  render: () ->
    
    outputFile = app.project.renderQueue.items.add app.project.activeItem
    
    app.project.renderQueue.render()
    
    @openInPhotoshop outputFile

  openInPhotoshop: (outputFile) ->
    photoshop.open new File outputFile.outputModule(1).file

aegif = new Aegif()

aegif.render()



