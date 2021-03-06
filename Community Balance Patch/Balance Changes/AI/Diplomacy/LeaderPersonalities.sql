-- CEAI_LeaderPersonalities.sql created by Personalities tab of:
-- https://docs.google.com/spreadsheet/ccc?key=0Ap8Ehya83q19dHlBVGdUV0doVGlVU3dGLWt3LS1YRHc

ALTER TABLE Leaders ADD COLUMN 'Personality' text default NULL;
ALTER TABLE Leader_MinorCivApproachBiases ADD COLUMN 'Personality' text default NULL;

-- Defaults
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'; -- basic default
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE  DoFWillingness >= 6;
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE  Loyalty >= 6;
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE  DiploBalance >= 6;
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE  MinorCivCompetitiveness >= 6;
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE  Boldness >= 7;
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE  WonderCompetitiveness <= 3;

-- Leaders

UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_PACAL';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_SEJONG';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_PACHACUTI';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_ELIZABETH';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_MARIA_I';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_CASIMIR';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_KAMEHAMEHA';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_WILLIAM';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_ISABELLA';
UPDATE Leaders SET Personality='PERSONALITY_COALITION'    WHERE Type = 'LEADER_WASHINGTON';

UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_ASHURBANIPAL';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_HARALD';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_ATTILA';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_ODA_NOBUNAGA';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_GENGHIS_KHAN';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_NAPOLEON';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_GUSTAVUS_ADOLPHUS';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_MONTEZUMA';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_AUGUSTUS';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_ASKIA';
UPDATE Leaders SET Personality='PERSONALITY_CONQUEROR'    WHERE Type = 'LEADER_SHAKA';

UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_HIAWATHA';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'	  WHERE Type = 'LEADER_THEODORA';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_POCATELLO';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_MARIA';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_PEDRO';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_GANDHI';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_AHMAD_ALMANSUR';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_BISMARCK';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_RAMKHAMHAENG';
UPDATE Leaders SET Personality='PERSONALITY_DIPLOMAT'     WHERE Type = 'LEADER_SELASSIE';

UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST'     WHERE Type = 'LEADER_BOUDICCA';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_HARUN_AL_RASHID';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_NEBUCHADNEZZAR';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_DIDO';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_ALEXANDER';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_CATHERINE';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_RAMESSES';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_WU_ZETIAN';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_SULEIMAN';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_DARIUS';
UPDATE Leaders SET Personality='PERSONALITY_EXPANSIONIST' WHERE Type = 'LEADER_GAJAH_MADA';


UPDATE Leaders SET WonderCompetitiveness=6, MinorCivCompetitiveness=7, Boldness=4, WarmongerHate=7, DenounceWillingness=9, DoFWillingness=6, VictoryCompetitiveness=8, DiploBalance=8, Loyalty=7, Neediness=4, Forgiveness=8, Chattiness=4, Meanness=5 WHERE Personality = 'PERSONALITY_COALITION';

UPDATE Leaders SET WonderCompetitiveness=4, MinorCivCompetitiveness=3, Boldness=6, WarmongerHate=3, DenounceWillingness=7, DoFWillingness=2, VictoryCompetitiveness=8, DiploBalance=4, Loyalty=5, Neediness=6, Forgiveness=2, Chattiness=4, Meanness=9 WHERE Personality = 'PERSONALITY_CONQUEROR';

UPDATE Leaders SET WonderCompetitiveness=8, MinorCivCompetitiveness=9, Boldness=2, WarmongerHate=9, DenounceWillingness=3, DoFWillingness=8, VictoryCompetitiveness=8, DiploBalance=6, Loyalty=9, Neediness=8, Forgiveness=6, Chattiness=4, Meanness=3 WHERE Personality = 'PERSONALITY_DIPLOMAT';

UPDATE Leaders SET WonderCompetitiveness=2, MinorCivCompetitiveness=5, Boldness=8, WarmongerHate=5, DenounceWillingness=5, DoFWillingness=4, VictoryCompetitiveness=8, DiploBalance=2, Loyalty=3, Neediness=2, Forgiveness=4, Chattiness=4, Meanness=7 WHERE Personality = 'PERSONALITY_EXPANSIONIST';

-------------------------------------------------------------------------------------NATIONALISTS-------------------------------------------------------------------------------------
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_ASHURBANIPAL'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_CATHERINE'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    7 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    10 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_HARALD'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_NEBUCHADNEZZAR'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    9 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_ATTILA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    9 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_SHAKA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    7 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_ODA_NOBUNAGA'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_WU_ZETIAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_SEJONG'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_GENGHIS_KHAN'         AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
-------------------------------------------------------------------------------------IMPERIALISTS-------------------------------------------------------------------------------------
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    7 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    7 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_PACHACUTI'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ELIZABETH'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    9 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_AUGUSTUS'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_MARIA_I'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_WILLIAM'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    9 WHERE LeaderType = 'LEADER_BISMARCK'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MONTEZUMA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_CASIMIR'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ENRICO_DANDOLO'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ISABELLA'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_WASHINGTON'            AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
------------------------------------------------FEDERALISTS-------------------------------------------------------------
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_KAMEHAMEHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_HIAWATHA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_BOUDICCA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    3 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    5 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_POCATELLO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_GAJAH_MADA'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_PEDRO'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_GANDHI'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    7 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_RAMKHAMHAENG'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SELASSIE'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_AHMAD_ALMANSUR'                AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
---------------------------------------------------------------------HEGEMONY--------------------------------------------------------------
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_THEODORA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ALEXANDER'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_HARUN_AL_RASHID'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_SULEIMAN'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_DIDO'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_DARIUS'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_MARIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_ASKIA'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_RAMESSES'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    4 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    1 WHERE LeaderType = 'LEADER_NAPOLEON'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_WAR';
UPDATE Leader_MajorCivApproachBiases SET Bias =    2 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_HOSTILE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_DECEPTIVE';
UPDATE Leader_MajorCivApproachBiases SET Bias =    8 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_GUARDED';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_AFRAID';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MajorCivApproachBiases SET Bias =    6 WHERE LeaderType = 'LEADER_PACAL'           AND MajorCivApproachType = 'MAJOR_CIV_APPROACH_NEUTRAL';
--------------------------------------------MINOR CIV APPROACHES ---------------------------------------------
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_ASHURBANIPAL';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_HARALD';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_ATTILA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_ODA_NOBUNAGA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_GENGHIS_KHAN';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'    WHERE  LeaderType = 'LEADER_ISABELLA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_GUSTAVUS_ADOLPHUS';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_MONTEZUMA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_AUGUSTUS';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_ASKIA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_CONQUEROR'	WHERE  LeaderType = 'LEADER_SHAKA';

UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_SEJONG';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_PACHACUTI';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_ELIZABETH';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_CASIMIR';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_PEDRO';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_SELASSIE';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_HARUN_AL_RASHID';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_WASHINGTON';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'	WHERE  LeaderType = 'LEADER_NAPOLEON';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'    WHERE  LeaderType = 'LEADER_ALEXANDER';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_COALITION'     WHERE  LeaderType = 'LEADER_ENRICO_DANDOLO';

UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'    WHERE  LeaderType = 'LEADER_PACAL';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_WILLIAM';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_THEODORA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_MARIA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_GANDHI';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_AHMAD_ALMANSUR';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_BISMARCK';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_RAMKHAMHAENG';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_KAMEHAMEHA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_DIPLOMAT'     WHERE  LeaderType = 'LEADER_MARIA_I';

UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_HIAWATHA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_POCATELLO';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_BOUDICCA';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_NEBUCHADNEZZAR';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_DIDO';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_CATHERINE';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_RAMESSES';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_WU_ZETIAN';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_SULEIMAN';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_DARIUS';
UPDATE Leader_MinorCivApproachBiases SET Personality='PERSONALITY_EXPANSIONIST' WHERE  LeaderType = 'LEADER_GAJAH_MADA';


UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_CONQUEROR'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_IGNORE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    2 WHERE Personality = 'PERSONALITY_CONQUEROR'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MinorCivApproachBiases SET Bias =    4 WHERE Personality = 'PERSONALITY_CONQUEROR'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_PROTECTIVE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    8 WHERE Personality = 'PERSONALITY_CONQUEROR'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_CONQUEST';
UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_CONQUEROR'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_BULLY';

UPDATE Leader_MinorCivApproachBiases SET Bias =    4 WHERE Personality = 'PERSONALITY_COALITION'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_IGNORE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    8 WHERE Personality = 'PERSONALITY_COALITION'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_COALITION'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_PROTECTIVE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    2 WHERE Personality = 'PERSONALITY_COALITION'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_CONQUEST';
UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_COALITION'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_BULLY';

UPDATE Leader_MinorCivApproachBiases SET Bias =    2 WHERE Personality = 'PERSONALITY_DIPLOMAT'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_IGNORE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_DIPLOMAT'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MinorCivApproachBiases SET Bias =    8 WHERE Personality = 'PERSONALITY_DIPLOMAT'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_PROTECTIVE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    4 WHERE Personality = 'PERSONALITY_DIPLOMAT'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_CONQUEST';
UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_DIPLOMAT'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_BULLY';

UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_EXPANSIONIST'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_IGNORE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    2 WHERE Personality = 'PERSONALITY_EXPANSIONIST'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_FRIENDLY';
UPDATE Leader_MinorCivApproachBiases SET Bias =    6 WHERE Personality = 'PERSONALITY_EXPANSIONIST'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_PROTECTIVE';
UPDATE Leader_MinorCivApproachBiases SET Bias =    8 WHERE Personality = 'PERSONALITY_EXPANSIONIST'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_CONQUEST';
UPDATE Leader_MinorCivApproachBiases SET Bias =    4 WHERE Personality = 'PERSONALITY_EXPANSIONIST'         AND MinorCivApproachType = 'MINOR_CIV_APPROACH_BULLY';

-- Start biases
DELETE FROM Civilization_Start_Along_Ocean
WHERE CivilizationType = 'CIVILIZATION_OTTOMAN';

INSERT INTO Civilization_Start_Region_Priority
	(CivilizationType, RegionType)
VALUES
	('CIVILIZATION_OTTOMAN', 'REGION_HILLS'),
	('CIVILIZATION_GREECE', 'REGION_HILLS'),
	('CIVILIZATION_AMERICA', 'REGION_FOREST'),
	('CIVILIZATION_SIAM', 'REGION_JUNGLE'),
	('CIVILIZATION_SIAM', 'REGION_FOREST'),
	('CIVILIZATION_HUNS', 'REGION_PLAINS'),
	('CIVILIZATION_ZULU', 'REGION_PLAINS'),
	('CIVILIZATION_POLAND', 'REGION_GRASS'),
	('CIVILIZATION_FRANCE', 'REGION_GRASS'),
	('CIVILIZATION_GERMANY', 'REGION_GRASS'),
	('CIVILIZATION_CELTS', 'REGION_HILLS'),
	('CIVILIZATION_ROME', 'REGION_GRASS'),
	('CIVILIZATION_SHOSHONE', 'REGION_GRASS'),
	('CIVILIZATION_GERMANY', 'REGION_FOREST'),
	('CIVILIZATION_MAYA', 'REGION_JUNGLE'),
	('CIVILIZATION_PERSIA', 'REGION_HILLS'),
	('CIVILIZATION_ETHIOPIA', 'REGION_HILLS'),
	('CIVILIZATION_EGYPT', 'REGION_DESERT');

INSERT INTO Civilization_Start_Along_River
	(CivilizationType, StartAlongRiver)
VALUES
	('CIVILIZATION_EGYPT', '1'),
	('CIVILIZATION_INDIA', '1'),
	('CIVILIZATION_BABYLON', '1'),
	('CIVILIZATION_CHINA', '1'),
	('CIVILIZATION_ASSYRIA', '1');

INSERT INTO Civilization_Start_Along_Ocean
	(CivilizationType, StartAlongOcean)
VALUES
	('CIVILIZATION_NETHERLANDS', '1');

DELETE FROM Civilization_Start_Region_Avoid
WHERE CivilizationType = 'CIVILIZATION_SIAM';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_INDIA';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_CELTS';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_AUSTRIA';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_FRANCE';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_GERMANY';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_CELTS';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_ROME';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_PERSIA';

DELETE FROM Civilization_Start_Region_Priority
WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA';

DELETE FROM Civilization_Start_Along_Ocean
WHERE CivilizationType = 'CIVILIZATION_KOREA';

DELETE FROM Civilization_Start_Along_Ocean
WHERE CivilizationType = 'CIVILIZATION_JAPAN';

DELETE FROM Civilization_Start_Along_Ocean
WHERE CivilizationType = 'CIVILIZATION_BYZANTIUM';

DELETE FROM Civilization_Start_Along_Ocean
WHERE CivilizationType = 'CIVILIZATION_INDONESIA';
