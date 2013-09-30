`#target "aftereffects"`

class Aegif
  
  render: () ->
    if app.project.activeItem
    
      # Storing active item
      outputFile = app.project.renderQueue.items.add app.project.activeItem
      
      # Start render queue
      app.project.renderQueue.render()
    
      # Open Photoshop
      @openInPhotoshop outputFile
    
    else
      alert "You need an active composition."


  openInPhotoshop: (outputFile) ->
    photoshop.open new File outputFile.outputModule(1).file

aegif = new Aegif()

aegif.render()



