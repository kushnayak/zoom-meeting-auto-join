STR='1° ComputerSci 8:30-9:40 
3° World 9:50-11:00 
5° English 11:10-12:20

2° Spanish 8:30-9:40
4° Chemistry 9:50-11:00
6° Calculus 11:10-12:20
'


COMPSCI='https://pleasantonusd.zoom.us/j/92184765477?pwd=SEpDeHJ5eFFSNE4vSC9qK2hZV0xBQT09'
WORLD='https://pleasantonusd.zoom.us/j/99445019567'
ENG_MON='https://pleasantonusd.zoom.us/j/93650357288?pwd=NmVaY2hoR3BkeHk4bEhpbnRhakhpUT09'
ENG_THU='https://pleasantonusd.zoom.us/j/91352763790?pwd=SkZjVHFhcGVEdU1xZ05TRUR6cmdxdz09'

SPANISH='https://pleasantonusd.zoom.us/j/3213747299?_x_zm_rtaid=aPtascdXSmy8O17Xv9vE_w.1603159825301.67d01f306697c32b77750071878f85b7&_x_zm_rhtaid=998#success'
CHEMISTRY='https://pleasantonusd.zoom.us/j/94744412492?pwd=Ny9hUXhGK3ZxdytmU1dBUkxmd2tFZz09'
CALCULUS='https://pleasantonusd.zoom.us/j/96163915315?pwd=QnZpU2gzbm5TVEdWQUc1cnh3Um8wZz09'

ACCESS=' https://pleasantonusd.zoom.us/j/82637081885?pwd=Z0dQdGZ0cFc0ZTZXRFlXbkFFVTM0UT09'

function class_schedule {
    printf '%s' "$STR"
}

function open_zoom_link {
    open -a zoom.us
    sleep 4
    open -a zoom.us $1
}


function open_compsci {
    open_zoom_link $COMPSCI
}

function open_world {
    open_zoom_link $WORLD
}

function open_english {
    local WEEKDAY=`date +"%a"`
    echo $WEEKDAY
    if [[ $WEEKDAY == 'Mon' ]]; then
        open_zoom_link $ENG_MON
    elif [[ $WEEKDAY == 'Thu' ]]; then
        open_zoom_link $ENG_THU
    fi
    
}


function open_spanish {
    open_zoom_link $SPANISH
}

function open_chemistry {
    open_zoom_link $CHEMISTRY
}

function open_calculus {
    open_zoom_link $CALCULUS
}

function open_access {
    open_zoom_link $ACCESS
}



