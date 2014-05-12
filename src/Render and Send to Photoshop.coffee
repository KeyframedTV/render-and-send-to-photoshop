`#target "aftereffects"`

class Aegif

  render: () ->
    outputFiles = []

    for i in [1..app.project.renderQueue.numItems]
      if app.project.renderQueue.items[i].status is RQItemStatus.QUEUED

        # Storing item
        outputFiles.push app.project.renderQueue.items[i]

    # Start render queue
    app.project.renderQueue.render()

    # Open Photoshop
    @openInPhotoshop outputFiles

  openInPhotoshop: (outputFiles) ->
    for outputFile in outputFiles
      photoshop.open new File outputFile.outputModule(1).file

aegif = new Aegif()

aegif.render()



