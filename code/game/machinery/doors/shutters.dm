/obj/machinery/door/poddoor/shutters
	gender = PLURAL
	name = "shutters"
	desc = "Heavy duty metal shutters that opens mechanically."
	icon = 'icons/obj/doors/shutters.dmi'
	layer = 3.1
	var/shuttersopen = 'sound/f13machines/doorshutter_open.ogg'
	var/shuttersclose = 'sound/f13machines/doorshutter_close.ogg'

/obj/machinery/door/poddoor/shutters/preopen
	icon_state = "open"
	density = 0
	opacity = 0


//shutters look like ass with things on top of them.

/obj/machinery/door/poddoor/shutters/New()
	..()
	layer = 3.1	//to handle /obj/machinery/door/New() resetting the layer.


/obj/machinery/door/poddoor/shutters/open(ignorepower = 0)
	..()
	playsound(src.loc, shuttersopen, 50, 0)
	layer = 3.1


/obj/machinery/door/poddoor/shutters/close(ignorepower = 0)
	..()
	playsound(src.loc, shuttersclose, 50, 0)
	layer = 3.1