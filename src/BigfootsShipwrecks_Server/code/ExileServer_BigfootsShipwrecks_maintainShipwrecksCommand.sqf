if (!isServer) exitWith {};

private["_coords", "_countWrecks", "_crateClaimMessageRadius", "_i", "_isPlayerInRange", "_markerId", "_markerPosition", "_message", "_showCrateClaimMessage"];

_countWrecks = _this select 0;
_crateClaimMessageRadius = _this select 1;
_showCrateClaimMessage = _this select 2;

for "_i" from 1 to _countWrecks do
{
	_markerId = _i call ExileServer_BigfootsShipwrecks_getWreckIdForSpawnCountIndexQuery;
	_markerPosition = getMarkerPos _markerId;

	if(!isNil "_markerPosition") then 
	{
		_isPlayerInRange = [_markerPosition, _crateClaimMessageRadius] call ExileClient_util_world_isAlivePlayerInRange;

		if (_isPlayerInRange) then 
		{
			format["Crate found by players at [%1].", _markerPosition] call ExileServer_BigfootsShipwrecks_util_logCommand;

			deleteMarker _markerId;

			if (_showCrateClaimMessage) then 
			{
				_coords = mapGridPosition _markerPosition;
				_message = format ["Players are escaping with the underwater loot crate from coordinates %1. Take it from them!", _coords];

				["Info", "Shipwreck loot found!", _message] call ExileServer_BigfootsShipwrecks_sendClientNotificationCommand;
				["systemChatRequest", [_message]] call ExileServer_system_network_send_broadcast;
			};	
		};
	};
};						