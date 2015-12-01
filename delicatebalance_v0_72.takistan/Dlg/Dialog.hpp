class STR_SUB_9 
{
  	idd=51010;
  	movingEnable=1;
  	duration=900000;
  	fadein=1;
  	name="OPTIONS";
	OnLoad = "OptionsDisplay = _this";
	controlsBackground[] = {"DAP_BF_VO_BG","DAP_BF_VO_BG_TITTLE"};
  	controls[] = {"DAP_BF_VO_BG_TITTLETEXT", "DAP_BF_VO_CLOSE", "DAP_BF_VO_VDLABEL", "DAP_BF_VO_VDVALUE","DAP_BF_VO_VIEWDISTANCESLIDER", "DAP_BF_VO_MARKERSLABEL", "DAP_BF_VO_MARKERSCOMBOBOX"};

class DAP_BF_VO_BG: DAP_OPTIONS_UI_PICTURE
{
	idc = 51011;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.565625 * safezoneW + safezoneX;
	y = 0.204623 * safezoneH + safezoneY;
	w = 0.2625 * safezoneW;
	h = 0.300754 * safezoneH;
	colorText[] = {-1,-1,-1,0.5};
};
class DAP_BF_VO_BG_TITTLE: DAP_OPTIONS_UI_PICTURE
{
	idc = 51012;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.565625 * safezoneW + safezoneX;
	y = 0.204623 * safezoneH + safezoneY;
	w = 0.2625 * safezoneW;
	h = 0.0656393 * safezoneH;
	colorText[] = {0.2,0.2,0.1,0.5};
};
class DAP_BF_VO_BG_TITTLETEXT: DAP_OPTIONS_UI_TEXT
{
	idc = 51013;
	text = "$STR_RIP_DLGSETTINGS";
	x = 0.575 * safezoneW + safezoneX;
	y = 0.214937 * safezoneH + safezoneY;
	w = 0.1975 * safezoneW;
	h = 0.0492295 * safezoneH;
};
class DAP_BF_VO_CLOSE: DAP_OPTIONS_UI_BUTTON
{
	idc = 51014;
	style=0x02;
	text = "$STR_RIP_DLGAPPLY";
	x = 0.58375 * safezoneW + safezoneX;
	y = 0.46 * safezoneH + safezoneY;
	w = 0.218437 * safezoneW;
	h = 0.03 * safezoneH;
	action="CloseDialog 0;";
};
class DAP_BF_VO_VDLABEL: DAP_OPTIONS_UI_TEXT
{
	idc = 51015;
	text = "$STR_RIP_DLGVIEWDISTANCE";
	x = 0.576563 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.142187 * safezoneW;
	h = 0.0328197 * safezoneH;
};
class DAP_BF_VO_VDVALUE: DAP_OPTIONS_UI_TEXT
{
	idc = 51016;
	text = "0";
	x = 0.75000 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.0328197 * safezoneH;
};
class DAP_BF_VO_VIEWDISTANCESLIDER: DAP_OPTIONS_UI_SLIDER
{
	idc = 51018;
	type = 43;
	style = "0x400 + 0x10";
	x = 0.58375 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.218437 * safezoneW;
	h = 0.026412 * safezoneH;
	default = false;
	color[] = {1, 1, 1, 0.5};
	colorActive[] = {1, 1, 1, 1};
	colorDisabled[] = {1, 1, 1, 0.2};
	arrowEmpty = "\ca\ui\data\ui_arrow_left_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_left_active_ca.paa";
	border = "\ca\ui\data\ui_border_frame_ca.paa";
	thumb = "\ca\ui\data\ui_slider_bar_ca.paa";
	colorBackground[] = {-1,-1,-1,0.25};
	colorBackgroundActive[] = {-1,-1,-1,0.25};
};

class DAP_BF_VO_MARKERSLABEL: DAP_OPTIONS_UI_TEXT
{
	idc = 51020;
	text = "$STR_RIP_DLGGRASSLAYER";
	x = 0.576563 * safezoneW + safezoneX;
	y = 0.36 * safezoneH + safezoneY;
	w = 0.152187 * safezoneW;
	h = 0.0328197 * safezoneH;
};

class DAP_BF_VO_MARKERSCOMBOBOX: DAP_OPTIONS_UI_COMBO
{
	idc = 51019;
	x = 0.58375 * safezoneW + safezoneX;
	y = 0.40 * safezoneH + safezoneY;
	w = 0.218437 * safezoneW;
	h = 0.026412 * safezoneH;
	colorBackground[] = {-1,-1,-1,0.5};
	colorBackgroundActive[] = {-1,-1,-1,0.25};
	color[] = {1,1,1,1};
	colorText[] = {1,1,1,0.75};
	colorSelect[] = {1,1,1,1};
	colorSelectBackground[] = {0.05,0.05,0.05,0.75};
};


};
class RscTitles {

	class RIP_RESPAWN { 
		idd=64431; 
		movingEnable = true; 
		fadein       =  0; 
		fadeout      =  0; 
		duration     =  10800; 
		name		 = "RIP_RESPAWN_TEXT"; 
		controls[]	 = { "RIP_CAMERA_TEXT","RIP_VEHICLE_CREW_TEXT"}; 
		onLoad	 = "uiNamespace setVariable ['RIP_RESPAWN_TEXT', _this select 0]"; 
		class RIP_CAMERA_TEXT { 
			type 							= 13; 
			idc 							= 64434; 
			style 						= 0x00; 
			x							= safeZoneX; 
			y 							= safeZoneY+safeZoneH/2+0.3; 
			w 							= safeZoneW; 
			h							= safeZoneH; 
			font 							= "Zeppelin33"; 
			size 							= 0.03;
			sizeEx						= 0.03; 
			colorText[] 			= { 0, 0.4, 0.8, 0.8}; 
			colorBackground[]	={ 0,0,0,0.0}; 
			text 							= ""; 		
			class Attributes { 
				font 				= "Zeppelin33"; 
				color 			= "#347C17"; 
				align 			= "center"; 
				valign 			= "middle"; 
				shadow 			= "1"; 
				shadowColor = "#000000"; 
				size 				= "1"; 
			}; 	
		};
		class RIP_VEHICLE_CREW_TEXT { 
			type 							= 13; 
			idc 							= 64435; 
			style 						= 0x00; 
			x = (SafeZoneX + 0.02);
			y = (SafeZoneY + 0.25);
			w = 0.3;
			h = 0.6;
			size = 0.018;
			font 							= "Zeppelin33"; 
			sizeEx						= 0.03; 
			colorText[] 			= { 0, 0.4, 0.8, 0.8}; 
			colorBackground[]	={ 0,0,0,0.0}; 
			text 							= ""; 			
		};
	};
};
class RIP_CUSTOM_WEAPON 
{
  	idd=10001;
  	movingEnable=1;
  	duration=900000;
  	fadein=1;
  	name="OPTIONS";
	OnLoad = "[] execVM 'Dlg\Attachments\War_start.sqf'";
	controlsBackground[] = {"DAP_BF_VO_BG","DAP_BF_VO_BG_TITTLE"};
  	controls[] = {"DAP_BF_VO_BG_TITTLETEXT", "DAP_BF_VO_AIM", "DAP_BF_VO_GL", "DAP_BF_VO_PSO", "DAP_BF_VO_SILENCER", "DAP_BF_VO_REMOVE", "DAP_BF_VO_CLOSE", "DAP_BF_VO_WEAPONPIC"};

class DAP_BF_VO_BG: DAP_OPTIONS_UI_PICTURE
{
	idc = 10002;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.265625 * safezoneW + safezoneX;
	y = 0.204623 * safezoneH + safezoneY;
	w = 0.4625 * safezoneW;
	h = 0.300754 * safezoneH;
	colorText[] = {-1,-1,-1,0.5};
};
class DAP_BF_VO_BG_TITTLE: DAP_OPTIONS_UI_PICTURE
{
	idc = 10003;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.265625 * safezoneW + safezoneX;
	y = 0.204623 * safezoneH + safezoneY;
	w = 0.4625 * safezoneW;
	h = 0.0656393 * safezoneH;
	colorText[] = {0.2,0.2,0.1,0.5};
};
class DAP_BF_VO_BG_TITTLETEXT: DAP_OPTIONS_UI_TEXT
{
	idc = 10004;
	text = "$STR_RIP_DLGMODWEAPONS";
	x = 0.35 * safezoneW + safezoneX;
	y = 0.214937 * safezoneH + safezoneY;
	w = 0.2975 * safezoneW;
	h = 0.0492295 * safezoneH;
};
class DAP_BF_VO_AIM: DAP_OPTIONS_UI_BUTTON
{
	idc = 10005;
	style=0x02;
	text = "$STR_RIP_DLGCOLLIMATOR";
	x = 0.27 * safezoneW + safezoneX;
	y = 0.275 * safezoneH + safezoneY;
	w = 0.18 * safezoneW;
	h = 0.03 * safezoneH;
	action="[] execVM 'Dlg\Attachments\War_add_AIM.sqf'";
};
class DAP_BF_VO_GL: DAP_OPTIONS_UI_BUTTON
{
	idc = 10006;
	style=0x02;
	text = "$STR_RIP_DLGGRENLAUNCER";
	x = 0.27 * safezoneW + safezoneX;
	y = 0.315 * safezoneH + safezoneY;
	w = 0.18 * safezoneW;
	h = 0.03 * safezoneH;
	action="[] execVM 'Dlg\Attachments\War_add_GL.sqf'";
};
class DAP_BF_VO_PSO: DAP_OPTIONS_UI_BUTTON
{
	idc = 10007;
	style=0x02;
	text = "$STR_RIP_DLGOPTICAL";
	x = 0.27 * safezoneW + safezoneX;
	y = 0.355 * safezoneH + safezoneY;
	w = 0.18 * safezoneW;
	h = 0.03 * safezoneH;
	action="[] execVM 'Dlg\Attachments\War_add_PSO.sqf'";
};
class DAP_BF_VO_SILENCER: DAP_OPTIONS_UI_BUTTON
{
	idc = 10011;
	style=0x02;
	text = "$STR_RIP_DLGSILENCER";
	x = 0.27 * safezoneW + safezoneX;
	y = 0.395 * safezoneH + safezoneY;
	w = 0.18 * safezoneW;
	h = 0.03 * safezoneH;
	action="[] execVM 'Dlg\Attachments\War_add_SILENCER.sqf'";
};
class DAP_BF_VO_REMOVE: DAP_OPTIONS_UI_BUTTON
{
	idc = 10008;
	style=0x02;
	text = "$STR_RIP_DLGREMOVEALL";
	x = 0.27 * safezoneW + safezoneX;
	y = 0.435 * safezoneH + safezoneY;
	w = 0.18 * safezoneW;
	h = 0.03 * safezoneH;
	action="[] execVM 'Dlg\Attachments\War_remove_all.sqf'";
};

class DAP_BF_VO_CLOSE: DAP_OPTIONS_UI_BUTTON
{
	idc = 10010;
	style=0x02;
	text = "$STR_RIP_DLGAPPLY";
	x = 0.27 * safezoneW + safezoneX;
	y = 0.47 * safezoneH + safezoneY;
	w = 0.18 * safezoneW;
	h = 0.03 * safezoneH;
	action="CloseDialog 0;[] execVM 'Dlg\Attachments\War_add_NewWeapon.sqf';";
};
class DAP_BF_VO_WEAPONPIC: DAP_OPTIONS_UI_PICTURE
{
	idc = 10009;
	text = "";
	x = 0.45 * safezoneW + safezoneX;
	y = 0.28 * safezoneH + safezoneY;
	w = 0.2625 * safezoneW;
	h = 0.2 * safezoneH;
};
};
class RIPSELECTWEAPON {
	movingEnable = 1;
	idd = 11001;
	onLoad = "[] execVM 'Dlg\SelectWeapon\Dlg_Fill_WeaponList.sqf'";
	controlsBackground[] = {"RIP_SELECT_WEAPON_BG","RIP_SELECT_WEAPON_BG_TITTLE"};
	controls[] = {"RIP_SELECT_WEAPON_BG_TITTLETEXT","RIP_LISTBOX","RIP_ConfirmButton"};
	
		class RIP_SELECT_WEAPON_BG : DAP_OPTIONS_UI_PICTURE {
			idc = 11003;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.289 * safezoneW + safezoneX;
			y = 0.277 * safezoneH + safezoneY;
			w = 0.423 * safezoneW;
			h = 0.45 * safezoneH;
			colorText[] = {-1,-1,-1,0.5};
		};

		class RIP_SELECT_WEAPON_BG_TITTLE: DAP_OPTIONS_UI_PICTURE
		{
			idc = 11004;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.289 * safezoneW + safezoneX;
			y = 0.213 * safezoneH + safezoneY;
			w = 0.423 * safezoneW;
			h = 0.0656393 * safezoneH;
			colorText[] = {0.2,0.2,0.1,0.5};
		};

		class RIP_SELECT_WEAPON_BG_TITTLETEXT: DAP_OPTIONS_UI_TEXT
		{
			idc = 11005;
			text = "$STR_RIP_DLGSELECTWEAPONS";
			x = 0.35 * safezoneW + safezoneX;
			y = 0.213 * safezoneH + safezoneY;
			w = 0.4 * safezoneW;
			h = 0.06 * safezoneH;
		};
	
		class RIP_LISTBOX : RscListBox {
			idc = 11002;
			x = 0.29 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.422 * safezoneW;
			h = 0.35 * safezoneH;
			colorSelectBackground[] = {1, 1, 1, 0.4};
			colorSelectBackground2[] = {1, 1, 1, 0.4};
			onLBSelChanged = "[_this] execVM ""Dlg\SelectWeapon\Dlg_SelectedWeapon.sqf"";";
		};

		class RIP_ConfirmButton : DAP_OPTIONS_UI_BUTTON {
			idc = 11003; 
			style=0x02;
 			x = 0.42 * safezoneW + safezoneX;
			y = 0.65 * safezoneH + safezoneY;
			w = 0.16 * safezoneW;
			h = 0.06 * safezoneH; 
 			text = "$STR_RIP_DLGAPPLY"; 
			action = "[] execVM ""Dlg\SelectWeapon\Dlg_Equip.sqf"";closeDialog 0;";
		};
};

