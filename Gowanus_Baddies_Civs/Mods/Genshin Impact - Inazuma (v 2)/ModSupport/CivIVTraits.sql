-- Insert SQL Rules Here 
CREATE TABLE IF NOT EXISTS 
    Leader_SharedTraits (
    LeaderType          text    REFERENCES Leaders(Type)        default null,
    TraitOne            text    REFERENCES Policies(Type)       default null,
    TraitTwo            text    REFERENCES Policies(Type)       default null);
     
INSERT OR REPLACE INTO Leader_SharedTraits
            (LeaderType,				TraitOne,				TraitTwo)
VALUES      ('LEADER_MATHALX_RAIDEN_SHOGUN',	'POLICY_SPIRITUAL_X',	'POLICY_CHARISMATIC_X');

UPDATE Leaders 
SET Description = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_LEGACY_X' )
	THEN 'TXT_KEY_LEADER_MATHALX_RAIDEN_SHOGUN_CIV_IV_PON'
	ELSE (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X' )
		THEN 'TXT_KEY_LEADER_MATHALX_RAIDEN_SHOGUN_CIV_IV'
		ELSE 'TXT_KEY_LEADER_MATHALX_RAIDEN_SHOGUN' END)  
	END) 
WHERE Type = 'LEADER_MATHALX_RAIDEN_SHOGUN';


UPDATE Leader_SharedTraits 
SET TraitTwo = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_LEGACY_X' )
	THEN 'POLICY_LEGACY_X'
	ELSE 'POLICY_CHARISMATIC_X' END) 
WHERE LeaderType = 'LEADER_MATHALX_RAIDEN_SHOGUN';

CREATE TRIGGER RaidenShogunPoNCivIVExpansion
AFTER INSERT ON Policies
WHEN NEW.Type = 'POLICY_LEGACY_X'
BEGIN
UPDATE Leaders 
	SET Description = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_LEGACY_X' )
		THEN 'TXT_KEY_LEADER_MATHALX_RAIDEN_SHOGUN_CIV_IV_PON'
		ELSE (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_PHILOSOPHICAL_X' )
			THEN 'TXT_KEY_LEADER_MATHALX_RAIDEN_SHOGUN_CIV_IV'
			ELSE 'TXT_KEY_LEADER_MATHALX_RAIDEN_SHOGUN' END)  
		END) 
	WHERE Type = 'LEADER_MATHALX_RAIDEN_SHOGUN';


	UPDATE Leader_SharedTraits 
	SET TraitOne = (CASE WHEN EXISTS(SELECT Type FROM Policies WHERE Type = 'POLICY_LEGACY_X' )
		THEN 'POLICY_LEGACY_X'
		ELSE 'POLICY_CHARISMATIC_X' END) 
	WHERE LeaderType = 'LEADER_MATHALX_RAIDEN_SHOGUN';
END;
