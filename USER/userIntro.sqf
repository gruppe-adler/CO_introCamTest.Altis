GRAD_introCam_playOnStart = true;
GRAD_introCam_allowForJIP = false;

/*

	SHOT TYPES:
	["CAMERA", duration, pos, target, zoom, showBorders, fade, fadeTime, fadeText, effectCam, effectCamType],
	["MOVE", duration, pos, target, fov (optional), offset (optional), commitTime (optional)],
	["ATTACH", duration, object, target, fov1, offset (optional)],
	["ROTATE", duration, target, height, radius, startingAngle, endAngle, clockwise (optional), rise (optional)]
    ["BLEND",  duration, textType, blendOut (optional), blendIn (optional), extension]

* CAM PARAMETERS:
* Duration <NUMBER>
* Positions <OBJECT / POSITION>
* Target <OBJECT / POSITION>
* Zoom Factor <NUMBER> (default: 1)
* Show Borders <BOOLEAN> (default: true)
* Fade <NOOLEAN> (default: true)
* Fade Time <NUMBER> (default: 1)
* Fade Text <STRING> (default: "")
* Camera Effect <STRING> (default: "internal")
* Camera Effect Type <STRING> (default: "BACK")
*/

GRAD_introCam_shotDefinitions = [
	["CAMERA", 3, camPos_01, camTarget_01, 0.75, true, true, 2],
	["MOVE", 5, camPos_01, camTarget_02],
	["BLEND", 10, ["DYNAMIC", "<t color='#ff0000' size = '.8'>OMG, some Text</t>",-1,-1,6,1,1], 1, 3],
	["MOVE", 7, camPos_02, camTarget_02, nil, nil, 4],
	["MOVE", 30, camPos_03, car_01, 0.01, nil, 20],
	["BLEND", 5, [], 1, 3, 4],
	["ATTACH", 15, car_01, car_01, 0.75, [0, -8, 3]],
	["BLEND", 5, [], 1, 3, 3],
	["ROTATE", 15, ace_player, 25, 20, 90, 270, true],
	["BLEND", 5, [], 0, 3, 4]
]