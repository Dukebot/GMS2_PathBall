///@param px (relative position x of the bloc)
var px = argument[0];

///@param py (relative position y of the bloc)
var py = argument[1];

///@param blocSprite
var blocSprite = sBlocNormal;
if argument_count > 2 { blocSprite = argument[2]; }

var bloc = putObj(oBloc, px, py);
bloc.sprite_index = blocSprite;
bloc.posX = px;
bloc.posY = py;
path[numBlocsPath] = bloc;
numBlocsPath++;

return bloc;