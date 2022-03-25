audio_play_sound(SndWining,SdgrSound,NotLoop);
MusicStopAndDestroy();
GMU_Anim_New(self,"xpos",GMU_ANIM.QUINT,GMU_ANIM.OUT,xpos,lvl.cam.xpos()+lvl.cam.width()/2-xpos,100);
GMU_Anim_New(self,"ypos",GMU_ANIM.QUINT,GMU_ANIM.OUT,ypos,lvl.cam.ypos()+lvl.cam.height()/2-ypos,100);
GMU_Anim_New(self,"zpos",GMU_ANIM.QUINT,GMU_ANIM.OUT,zpos,75,30);
Float = true;

