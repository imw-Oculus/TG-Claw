/obj/machinery/crafting_bench
	name = "Crafting Bench"
	density = TRUE
	icon = 'icons/obj/chemical.dmi'
	icon_state = "dispenser"
	use_power = 0
	idle_power_usage = 0


//=========== GUI ===========


/obj/copypasta/ui_interact(mob/user, ui_key = "main", datum/tgui/ui = null, force_open = 0, datum/tgui/master_ui = null)
  ui = SStgui.try_update_ui(user, src, ui_key, ui, force_open)
  if(!ui)
    ui = new(user, src, ui_key, "crafting_bench", name, 300, 300, master_ui)
    ui.open()

/obj/copypasta/ui_data(mob/user)
  var/list/data = list()
  data["var"] = 1

  return data

/obj/copypasta/ui_act(action, params)
  if(..())
    return
  switch(action)
    if("copypasta")
      var/newvar = params["var"]
      var = Clamp(newvar, min_val, max_val) // Just a demo of proper input sanitation.
      . = TRUE