# Cleanthor

This is an example of how to setup a gem with a thor-based executable that handles task namespaces cleanly.

When using the binary, tasks will be listed **without** the gem namespace, in groups according to the next level namespace:


    bundle exec cleanthor -T:
    garden
    ------
    cleanthor garden:work:weed  # weed the garden

    work
    ----
    cleanthor work:shovel  # shovels stuff

When using thor, tasks will be listed all under the main namespace:

    bundle exec thor -T:
    cleanthor
    ---------
    thor cleanthor:garden:work:weed  # weed the garden
    thor cleanthor:work:shovel       # shovels stuff


