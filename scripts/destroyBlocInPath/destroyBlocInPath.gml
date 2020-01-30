var bloc = path[numBlocsPath-1];
if bloc.objAttached != noone { 
	instance_destroy(bloc.objAttached); 
}
instance_destroy(bloc);
numBlocsPath--;
path[numBlocsPath] = pointer_null;