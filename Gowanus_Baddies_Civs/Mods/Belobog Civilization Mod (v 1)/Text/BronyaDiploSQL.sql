-- ============================================================================================================================================================
-- 
-- Huge thanks to Typhlomence for these templates! :)
--
-- Diplomacy Responses - converted from XML using Artisanix's XML to SQL converter
-- based off of the Diplomacy XML used in the Touhou - Eientei mod by Paul "Huitzil"  Durant.
--
-- This initial comment (and all others) can be deleted when you use this template for your own mod.
--
-- When using this, replace every instance of "LEADER_BRONYA" with your leader's internal type (from the Leaders table).
--
-- LeaderType: The leader that will use this response
-- ResponseType: The type of response your text will be used for
-- Response: The reference to the text entry
-- Bias: How likely this response is to be used
--
-- Only one reference needs to exist for each type of response. The % sign indicates that multiple responses can be picked if they exist. This works
-- in game using a process similar to an SQL LIKE query, meaning that responses do not have to end with sequential numbers, or even a number at all.
-- Anything that fits the specified pattern will be used.
--
-- If you do not wish to have a unique line for a certain response type, simply omit the INSERT statement for that response type. Note that even if you do
-- define a unique line, the game will display the generic entries on occasion. To avoid this, define a very large bias like in this template.
--
-- This version of the diplomacy text uses general entries like "DECLINE" and "HUMAN_RESPONSE BAD" for some of the responses to questions, like the original
-- text does.
-- ============================================================================================================================================================

-- When you first meet this AI player.
-- No generic statement - will appear blank if none is defined
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_FIRST_GREETING', 'TXT_KEY_LEADER_BRONYA_FIRSTGREETING%', 500);

-- When you've defeated this AI player through conquest.
-- No generic statement - will appear blank if none is defined
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DEFEATED', 'TXT_KEY_LEADER_BRONYA_DEFEATED%', 500);

-- Trying to contact or trade with the AI too many times; "REPEAT" appears first, and then "TOO_MUCH" if you continue (regardless of AI feelings)
-- Repeatedly contacting the AI
-- AI has no strong feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_REPEAT', 'TXT_KEY_LEADER_BRONYA_GREETING_REPEAT%', 500);
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_REPEAT', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_REPEAT%', 500);
-- You have contacted them for a fifth time
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_REPEAT_TOO_MUCH', 'TXT_KEY_LEADER_BRONYA_REPEAT_TOO_MUCH%', 500);
-- Repeatedly trying to trade with the AI
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_REPEAT_TRADE', 'TXT_KEY_LEADER_BRONYA_REPEAT_TRADE%', 500);
-- You have tried for a fifth time (?)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_REPEAT_TRADE_TOO_MUCH', 'TXT_KEY_LEADER_BRONYA_REPEAT_TOO_MUCH%', 500);

-- ============================================================================
-- Greetings
-- ============================================================================
-- Generic greetings depending on how the AI feels about you
-- AI likes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_POLITE_HELLO', 'TXT_KEY_LEADER_BRONYA_GREETING_POLITE_HELLO%', 500);
-- AI has no strong feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_NEUTRAL_HELLO', 'TXT_KEY_LEADER_BRONYA_GREETING_NEUTRAL_HELLO%', 500);
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_HELLO', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_HELLO%', 500);

-- Greetings while at war
-- They feel they are about to lose
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_DESTRUCTION_LOOMS', 'TXT_KEY_LEADER_BRONYA_GREETING_DESTRUCTION_LOOMS%', 500);
-- They want you to "surrender" (i.e. make peace with favourable terms to them)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_WILL_ACCEPT_SURRENDER', 'TXT_KEY_LEADER_BRONYA_GREETING_WILL_ACCEPT_SURRENDER%', 500);
-- They want to have peace
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_AT_WAR_WANTS_PEACE', 'TXT_KEY_LEADER_BRONYA_GREETING_AT_WAR_WANTS_PEACE%', 500);
-- All other times
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_AT_WAR_HOSTILE', 'TXT_KEY_LEADER_BRONYA_GREETING_AT_WAR_HOSTILE%', 500);

-- Situational greetings
-- When they want to have a Research Agreement (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_RESEARCH_AGREEMENT', 'TXT_KEY_LEADER_BRONYA_GREETING_RESEARCH_AGREEMENT%', 500);
-- You broke a promise about not planning to invade the AI
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_BROKEN_MILITARY_PROMISE', 'TXT_KEY_LEADER_BRONYA_GREETING_BROKEN_MILITARY_PROMISE%', 500);
-- You have a Declaration of Friendship with _
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_WORKING_WITH', 'TXT_KEY_LEADER_BRONYA_GREETING_WORKING_WITH%', 500);
-- You are working against a common foe (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_WORKING_AGAINST', 'TXT_KEY_LEADER_BRONYA_GREETING_WORKING_AGAINST%', 500);
-- You are at war against a common foe
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_COOP_WAR', 'TXT_KEY_LEADER_BRONYA_GREETING_COOP_WAR%', 500);
-- The human is at war
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_HUMAN_AT_WAR', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_HUMAN_AT_WAR%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HUMAN_AT_WAR', 'TXT_KEY_LEADER_BRONYA_GREETING_HUMAN_AT_WAR%', 500);
-- The human has an aggressive military posture
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_AGGRESSIVE_MILITARY', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_AGGRESSIVE_MILITARY%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_AGGRESSIVE_MILITARY', 'TXT_KEY_LEADER_BRONYA_GREETING_AGGRESSIVE_MILITARY%', 500);
-- The human is aggressively setting cities
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_AGGRESSIVE_EXPANSION', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_AGGRESSIVE_EXPANSION%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_AGGRESSIVE_EXPANSION', 'TXT_KEY_LEADER_BRONYA_GREETING_AGGRESSIVE_EXPANSION%', 500);
-- The human is aggressively claiming plots
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_AGGRESSIVE_PLOT_BUYING', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_AGGRESSIVE_PLOT_BUYING%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_AGGRESSIVE_PLOT_BUYING', 'TXT_KEY_LEADER_BRONYA_GREETING_AGGRESSIVE_PLOT_BUYING%', 500);
-- AI is praising your strong military
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_FRIENDLY_STRONG_MILITARY', 'TXT_KEY_LEADER_BRONYA_GREETING_FRIENDLY_STRONG_MILITARY%', 500);
-- AI is praising your strong economy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_FRIENDLY_STRONG_ECONOMY', 'TXT_KEY_LEADER_BRONYA_GREETING_FRIENDLY_STRONG_ECONOMY%', 500);
-- AI is mocking you for having fewer cities than them
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_HUMAN_FEW_CITIES', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_HUMAN_FEW_CITIES%', 500);
-- AI is mocking you for having a small military
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_HUMAN_SMALL_ARMY', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_HUMAN_SMALL_ARMY%', 500);
-- AI considers you to be a warmonger
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_HOSTILE_HUMAN_IS_WARMONGER', 'TXT_KEY_LEADER_BRONYA_GREETING_HOSTILE_HUMAN_IS_WARMONGER%', 500);
-- AI has denounced you (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_DENOUNCED_BY_AI', 'TXT_KEY_LEADER_BRONYA_GREETING_DENOUNCED_BY_AI%', 500);
-- You have denounced the AI (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_DENOUNCED_AI', 'TXT_KEY_LEADER_BRONYA_GREETING_DENOUNCED_AI%', 500);
-- You are a friend with an enemy of the AI (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_OUR_DOF_WITH_ENEMY_OF_AI', 'TXT_KEY_LEADER_BRONYA_GREETING_OUR_DOF_WITH_ENEMY_OF_AI%', 500);
-- You are a friend with a friend of the AI (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_OUR_DOF_WITH_FRIEND_OF_AI', 'TXT_KEY_LEADER_BRONYA_GREETING_OUR_DOF_WITH_FRIEND_OF_AI%', 500);
-- You denounced a friend of the AI (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_DENOUNCED_FRIEND_OF_AI', 'TXT_KEY_LEADER_BRONYA_GREETING_DENOUNCED_FRIEND_OF_AI%', 500);
-- You denounced an enemy of the AI (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_GREETING_DENOUNCED_ENEMY_OF_AI', 'TXT_KEY_LEADER_BRONYA_GREETING_DENOUNCED_ENEMY_OF_AI%', 500);

-- ============================================================================
-- Declarations of Friendship and Denouncing
-- ============================================================================
-- AI offers you a Declaration of Friendship
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WORK_WITH_US', 'TXT_KEY_LEADER_BRONYA_DEC_FRIENDSHIP%', 500);
-- AI accepts your Declaration of Friendship
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WORK_WITH_US_YES', 'TXT_KEY_LEADER_BRONYA_WORK_WITH_US_YES%', 500);
-- AI declines your Declaration of Friendship (Not sure when it would be used over "TOO_SOON_FOR_DOF")
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WORK_WITH_US_NO', 'TXT_KEY_LEADER_BRONYA_DECLINE%', 500);
-- AI isn't ready for a Declaration of Friendship yet
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TOO_SOON_FOR_DOF', 'TXT_KEY_LEADER_BRONYA_TOO_SOON_FOR_DOF%', 500);
-- AI, as your friend, wants you to denounce another civilization
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOF_AI_DENOUNCE_REQUEST', 'TXT_KEY_LEADER_BRONYA_DOF_AI_DENOUNCE_REQUEST%', 500);
-- AI, as your friend, wants you to declare war on another civilization (not used in normal DLL according to whoward69)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOF_AI_WAR_REQUEST', 'TXT_KEY_LEADER_BRONYA_DOF_AI_WAR_REQUEST%', 500);
-- AI denounces you because you didn't agree to do the above things
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOF_NOT_HONORED', 'TXT_KEY_LEADER_BRONYA_DOF_NOT_HONORED%', 500);
-- AI is denouncing you when you currently have a Declaration of Friendship (DLL lists this as a backstab)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_AI_DOF_BACKSTAB', 'TXT_KEY_LEADER_BRONYA_DENOUNCING_FRIEND%', 500);
-- AI is denouncing you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WORK_AGAINST_SOMEONE', 'TXT_KEY_LEADER_BRONYA_DENOUNCE%', 500);
-- AI is responding to you denouncing them
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_RESPONSE_TO_BEING_DENOUNCED', 'TXT_KEY_LEADER_BRONYA_RESPONSE_TO_BEING_DENOUNCED%', 500);
-- AI contacting you after you befriend their friend
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DOFED_FRIEND', 'TXT_KEY_LEADER_BRONYA_HUMAN_DOFED_FRIEND%', 500);
-- AI contacting you after you befriend their enemy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DOFED_ENEMY', 'TXT_KEY_LEADER_BRONYA_HUMAN_DOFED_ENEMY%', 500);
-- AI contacting you after you denounce their friend
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DENOUNCED_FRIEND', 'TXT_KEY_LEADER_BRONYA_HUMAN_DENOUNCED_FRIEND%', 500);
-- AI contacting you after you denounce their enemy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DENOUNCED_ENEMY', 'TXT_KEY_LEADER_BRONYA_HUMAN_DENOUNCED_ENEMY%', 500);
-- AI contacting you after they befriend your friend
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DOF_SO_AI_DOF', 'TXT_KEY_LEADER_BRONYA_HUMAN_DOF_SO_AI_DOF%', 500);
-- AI contacting you after they denounce your enemy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DENOUNCE_SO_AI_DENOUNCE', 'TXT_KEY_LEADER_BRONYA_HUMAN_DENOUNCE_SO_AI_DENOUNCE%', 500);
-- AI contacting you after they denounce your friend
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DOF_SO_AI_DENOUNCE', 'TXT_KEY_LEADER_BRONYA_HUMAN_DOF_SO_AI_DENOUNCE%', 500);
-- AI contacting you after they befriend your enemy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DENOUNCE_SO_AI_DOF', 'TXT_KEY_LEADER_BRONYA_HUMAN_DENOUNCE_SO_AI_DOF%', 500);

-- ============================================================================
-- AI warnings
-- ============================================================================
-- AI has noticed your military posture is aggressive
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_AGGRESSIVE_MILITARY_WARNING', 'TXT_KEY_LEADER_BRONYA_HOSTILE_AGGRESSIVE_MILITARY_WARNING%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_AGGRESSIVE_MILITARY_WARNING', 'TXT_KEY_LEADER_BRONYA_AGGRESSIVE_MILITARY_WARNING%', 500);

-- Player tells the AI that they're going to invade, AI dislikes the player
-- Default tag was "TXT_KEY_LEADER_BRONYA_HOSTILE_AGGRESSIVE_MILITARY_WARNING_BAD", changed to avoid SQL issues
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_AGGRESSIVE_MILITARY_WARNING_BAD', 'TXT_KEY_LEADER_BRONYA_HOSTILE_AGGRESSIVE_MILITARY_BAD_RESPONSE%', 500);
-- Player tells the AI that they're just passing through, AI dislikes the player
-- Default tag was "TXT_KEY_LEADER_BRONYA_HOSTILE_AGGRESSIVE_MILITARY_WARNING_GOOD", changed to avoid SQL issues
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_AGGRESSIVE_MILITARY_WARNING_GOOD', 'TXT_KEY_LEADER_BRONYA_HOSTILE_AGGRESSIVE_MILITARY_GOOD_RESPONSE%', 500);
-- Player tells the AI that they're going to invade, AI has no negative feelings towards the player
-- Default tag was "TXT_KEY_LEADER_BRONYA_AGGRESSIVE_MILITARY_WARNING_BAD", changed to avoid SQL issues
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_AGGRESSIVE_MILITARY_WARNING_BAD', 'TXT_KEY_LEADER_BRONYA_AGGRESSIVE_MILITARY_BAD_RESPONSE%', 500);
-- Player tells the AI that they're just passing through, AI has no negative feelings towards the player
-- Default tag was "TXT_KEY_LEADER_BRONYA_AGGRESSIVE_MILITARY_WARNING_GOOD", changed to avoid SQL issues
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_AGGRESSIVE_MILITARY_WARNING_GOOD', 'TXT_KEY_LEADER_BRONYA_AGGRESSIVE_MILITARY_GOOD_RESPONSE%', 500);

-- AI has noticed your aggressive settling
-- AI dislikes you
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_EXPANSION_SERIOUS_WARNING', 'TXT_KEY_LEADER_BRONYA_EXPANSION_SERIOUS_WARNING%', 500);
-- AI has no negative feelings
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_EXPANSION_WARNING', 'TXT_KEY_LEADER_BRONYA_EXPANSION_WARNING%', 500);
-- You said you would not expand any more and then broke your promise
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_EXPANSION_BROKEN_PROMISE', 'TXT_KEY_LEADER_BRONYA_EXPANSION_BROKEN_PROMISE%', 500);

-- Player tells the AI that they won't stop expanding, this was a serious warning (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_SERIOUS_EXPANSION_WARNING_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- Player tells the AI that they will stop expanding, this was a serious warning (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_SERIOUS_EXPANSION_WARNING_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_SERIOUS_EXPANSION_GOOD_RESPONSE%', 500);
-- Player tells the AI that they won't stop expanding
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_EXPANSION_WARNING_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- Player tells the AI that they will stop expanding
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_EXPANSION_WARNING_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_EXPANSION_GOOD_RESPONSE%', 500);

-- AI has noticed your aggressive plot claiming
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PLOT_BUYING_SERIOUS_WARNING', 'TXT_KEY_LEADER_BRONYA_PLOT_BUYING_SERIOUS_WARNING%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PLOT_BUYING_WARNING', 'TXT_KEY_LEADER_BRONYA_PLOT_BUYING_WARNING%', 500);
-- You said you would not claim any more plots and then broke your promise
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PLOT_BUYING_BROKEN_PROMISE', 'TXT_KEY_LEADER_BRONYA_PLOT_BUYING_BROKEN_PROMISE%', 500);

-- Player tells the AI that they won't stop claming plots, this was a serious warning (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_SERIOUS_PLOT_BUYING_WARNING_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- Player tells the AI that they will stop claming plots, this was a serious warning (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_SERIOUS_PLOT_BUYING_WARNING_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_SERIOUS_PLOT_BUYING_GOOD_RESPONSE%', 500);
-- Player tells the AI that they won't stop claming plots
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_PLOT_BUYING_WARNING_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- Player tells the AI that they will stop claming plots
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_PLOT_BUYING_WARNING_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_PLOT_BUYING_GOOD_RESPONSE%', 500);

-- ============================================================================
-- War requests
-- ============================================================================
-- AI wants you to go to war against a third party
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_COOP_WAR_REQUEST', 'TXT_KEY_LEADER_BRONYA_COOP_WAR_REQUEST%', 500);
-- AI contacting you after 10 turns if you select that option
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_COOP_WAR_TIME', 'TXT_KEY_LEADER_BRONYA_COOP_WAR_TIME%', 500);

-- ============================================================================
-- Miscellanious comments
-- ============================================================================
-- AI considers you to be unforgivable
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_NOW_UNFORGIVABLE', 'TXT_KEY_LEADER_BRONYA_NOW_UNFORGIVABLE%', 500);
-- AI considers you to be their enemy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_NOW_ENEMY', 'TXT_KEY_LEADER_BRONYA_NOW_ENEMY%', 500);
-- AI is complimenting you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_COMPLIMENT', 'TXT_KEY_LEADER_BRONYA_COMPLIMENT%', 500);

-- AI is afraid of you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_BOOT_KISSING', 'TXT_KEY_LEADER_BRONYA_BOOT_KISSING%', 500);
-- AI considers you a warmonger
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WARMONGER', 'TXT_KEY_LEADER_BRONYA_WARMONGER%', 500);
-- You and the AI are competing for the same city states
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_MINOR_CIV_COMPETITION', 'TXT_KEY_LEADER_BRONYA_MINOR_CIV_COMPETITION%', 500);
-- AI is pleased with your response to something
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PLEASED', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_PLEASED%', 500);
-- AI is thankful for your response to someting
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_THANKFUL', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_THANKFUL%', 500);
-- AI is disappointed with your response to something
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DISAPPOINTED', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_DISAPPOINTED%', 500);
-- AI says you will regret your response to something
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SO_BE_IT', 'TXT_KEY_LEADER_BRONYA_SO_BE_IT%', 500);
-- You returned a civilian unit to the AI
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_RETURNED_CIVILIAN', 'TXT_KEY_LEADER_BRONYA_RETURNED_CIVILIAN%', 500);
-- You built a citadel which claimed part of the AI's territory
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CULTURE_BOMBED', 'TXT_KEY_LEADER_BRONYA_CULTURE_BOMBED%', 500);

-- ============================================================================
-- Player requests
-- ============================================================================
-- You continue to ask for something that the AI is not interested in
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_REPEAT_NO', 'TXT_KEY_LEADER_BRONYA_REPEAT_NO%', 500);
-- You ask the AI to not settle near you
-- AI agrees
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DONT_SETTLE_YES', 'TXT_KEY_LEADER_BRONYA_DONT_SETTLE_YES%', 500);
-- AI doesn't agree
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DONT_SETTLE_NO', 'TXT_KEY_LEADER_BRONYA_DONT_SETTLE_NO%', 500);
-- You ask the AI to declare war on someone
-- AI agrees
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_COOP_WAR_YES', 'TXT_KEY_LEADER_BRONYA_COOP_WAR_YES%', 500);
-- AI doesn't agree
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_COOP_WAR_NO', 'TXT_KEY_LEADER_BRONYA_DECLINE%', 500);
-- AI agrees, but will wait 10 turns
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_COOP_WAR_SOON', 'TXT_KEY_LEADER_BRONYA_COOP_WAR_SOON%', 500);

-- ============================================================================
-- Insults
-- ============================================================================
-- Generic insult if no others are picked
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_GENERIC', 'TXT_KEY_LEADER_BRONYA_INSULT_GENERIC%', 500);
-- Your military is weaker than the global average
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_MILITARY', 'TXT_KEY_LEADER_BRONYA_INSULT_MILITARY%', 500);
-- AI has nukes and you don't (Uses the classic Civ I line, "Our words are backed with nuclear weapons!", by default)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_NUKE', 'TXT_KEY_LEADER_BRONYA_INSULT_NUKE%', 500);
-- You are being a bully to City States
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_BULLY', 'TXT_KEY_LEADER_BRONYA_INSULT_BULLY%', 500);
-- Your empire is unhappy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_UNHAPPINESS', 'TXT_KEY_LEADER_BRONYA_INSULT_UNHAPPINESS%', 500);
-- AI has more cities than you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_CITIES', 'TXT_KEY_LEADER_BRONYA_INSULT_CITIES%', 500);
-- AI has more population than you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_POPULATION', 'TXT_KEY_LEADER_BRONYA_INSULT_POPULATION%', 500);
-- AI has generated more total culture than you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INSULT_CULTURE', 'TXT_KEY_LEADER_BRONYA_INSULT_CULTURE%', 500);

-- ============================================================================
-- Trade
-- ============================================================================
-- Player makes a demand of the AI
-- AI accepts
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DEMAND_YES', 'TXT_KEY_LEADER_BRONYA_HUMAN_DEMAND_YES%', 500);
-- AI refuses because you are too weak or not threatening them
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DEMAND_REFUSE_WEAK', 'TXT_KEY_LEADER_BRONYA_HUMAN_DEMAND_REFUSE_WEAK%', 500);
-- AI refuses because they don't like you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DEMAND_REFUSE_HOSTILE', 'TXT_KEY_LEADER_BRONYA_HUMAN_DEMAND_REFUSE_HOSTILE%', 500);
-- AI refuses because you asked for too much
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DEMAND_REFUSE_TOO_MUCH', 'TXT_KEY_LEADER_BRONYA_HUMAN_DEMAND_REFUSE_TOO_MUCH%', 500);
-- AI refuses because you asked for something too soon after a previous demand
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_DEMAND_REFUSE_TOO_SOON', 'TXT_KEY_LEADER_BRONYA_HUMAN_DEMAND_REFUSE_TOO_SOON%', 500);
-- AI is waiting for your trade offer (Apparently the generic TXT_KEY is hardcoded - whoward69)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOT_DOT_DOT', 'TXT_KEY_LEADER_BRONYA_DOT_DOT_DOT%', 500);
-- AI is waiting for your trade offer
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_LETS_HEAR_IT', 'TXT_KEY_LEADER_BRONYA_LETS_HEAR_IT%', 500);
-- AI is making an offer for a peace treaty
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PEACE_OFFER', 'TXT_KEY_LEADER_BRONYA_PEACE_OFFER%', 500);
-- AI is demanding something from you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DEMAND', 'TXT_KEY_LEADER_BRONYA_DEMAND%', 500);
-- AI is requesting an item from you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_REQUEST', 'TXT_KEY_LEADER_BRONYA_REQUEST_ITEM%', 500);
-- AI is offering a trade because they want a luxury from you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_LUXURY_TRADE', 'TXT_KEY_LEADER_BRONYA_LUXURY_TRADE%', 500);
-- AI is asking for a mutual open borders agreement
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_OPEN_BORDERS_EXCHANGE', 'TXT_KEY_LEADER_BRONYA_OPEN_BORDERS_EXCHANGE%', 500);
-- AI wants you to open your borders
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_OPEN_BORDERS_OFFER', 'TXT_KEY_LEADER_BRONYA_OPEN_BORDERS_OFFER%', 500);
-- AI plans to make a Research Agreement
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PLAN_RESEARCH_AGREEMENT', 'TXT_KEY_LEADER_BRONYA_PLAN_RESEARCH_AGREEMENT%', 500);
-- AI wants a Research Agreement
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_RESEARCH_AGREEMENT_OFFER', 'TXT_KEY_LEADER_BRONYA_RESEARCH_AGREEMENT_OFFER%', 500);
-- AI wants to renew an existing deal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_RENEW_DEAL', 'TXT_KEY_LEADER_BRONYA_RENEW_DEAL%', 500);
-- AI will renew a deal if you offer something more
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WANT_MORE_RENEW_DEAL', 'TXT_KEY_LEADER_BRONYA_WANT_MORE_RENEW_DEAL%', 500);
-- AI wants to make a straight embassy exchange
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_EMBASSY_EXCHANGE', 'TXT_KEY_LEADER_BRONYA_EMBASSY_EXCHANGE%', 500);
-- AI wants to make an offer which involves an embassy on one side of the deal (according to Vicevirtuoso)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_EMBASSY_OFFER', 'TXT_KEY_LEADER_BRONYA_EMBASSY_OFFER%', 500);
-- AI accepts a deal that is generous to them
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_ACCEPT_GENEROUS', 'TXT_KEY_LEADER_BRONYA_TRADE_ACCEPT_GENEROUS%', 500);
-- AI accepts a deal that is acceptable to them
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_ACCEPT_ACCEPTABLE', 'TXT_KEY_LEADER_BRONYA_TRADE_ACCEPT_ACCEPTABLE%', 500);
-- You gave in to the AI's demand
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_ACCEPT_AI_DEMAND', 'TXT_KEY_LEADER_BRONYA_TRADE_ACCEPT_AI_DEMAND%', 500);
-- AI accepts your concessions (not used in normal DLL according to whoward69)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_ACCEPT_HUMAN_CONCESSIONS', 'TXT_KEY_LEADER_BRONYA_TRADE_ACCEPT_HUMAN_CONCESSIONS%', 500);
-- AI rejects an unfair deal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_REJECT_UNACCEPTABLE', 'TXT_KEY_LEADER_BRONYA_TRADE_REJECT_UNACCEPTABLE%', 500);
-- AI rejects a grossly unfair deal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_REJECT_INSULTING', 'TXT_KEY_LEADER_BRONYA_TRADE_REJECT_INSULTING%', 500);
-- AI says it will accept your current trade proposal (Used by the game even though it doesn't appear as used in the DLL)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_DEAL_UNCHANGED', 'TXT_KEY_LEADER_BRONYA_TRADE_DEAL_UNCHANGED%', 500);
-- AI changes the trade offer after you propose it (Used by the game even though it doesn't appear as used in the DLL)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_AI_MAKES_OFFER', 'TXT_KEY_LEADER_BRONYA_TRADE_AI_MAKES_OFFER%', 500);
-- AI is not willing to give you what you asked for (Used by the game even though it doesn't appear as used in the DLL)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_NO_DEAL_POSSIBLE', 'TXT_KEY_LEADER_BRONYA_TRADE_NO_DEAL_POSSIBLE%', 500);
-- AI cannot make a fair deal for what you are offering them (Used by the game even though it doesn't appear as used in the DLL)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TRADE_CANT_MATCH_OFFER', 'TXT_KEY_LEADER_BRONYA_TRADE_CANT_MATCH_OFFER%', 500);

-- ============================================================================
-- Player declares war on the AI
-- ============================================================================
-- Generic response
-- AI is similar in strength to the player
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_HOSTILE', 'TXT_KEY_LEADER_BRONYA_ATTACKED_HOSTILE%', 500);
-- AI is weaker than the player
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_WEAK_HOSTILE', 'TXT_KEY_LEADER_BRONYA_ATTACKED_WEAK_HOSTILE%', 500);
-- AI is stronger than the player
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_STRONG_HOSTILE', 'TXT_KEY_LEADER_BRONYA_ATTACKED_STRONG_HOSTILE%', 500);
-- Player declares on an AI that is going for world conquest
-- AI is similar in strength to the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_EXCITED', 'TXT_KEY_LEADER_BRONYA_ATTACKED_EXCITED%', 500);
-- AI is weaker than the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_WEAK_EXCITED', 'TXT_KEY_LEADER_BRONYA_ATTACKED_WEAK_EXCITED%', 500);
-- AI is stronger than the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_STRONG_EXCITED', 'TXT_KEY_LEADER_BRONYA_ATTACKED_STRONG_EXCITED%', 500);
-- AI was friendly towards the player or their ally
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_SAD', 'TXT_KEY_LEADER_BRONYA_ATTACKED_SAD%', 500);
-- Not used in the default DLL, but the DLL source comments state that "This should be related to active deals, e.g. Open Borders, luxuries, etc."
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_BETRAYED', 'TXT_KEY_LEADER_BRONYA_ATTACKED_BETRAYED%', 500);
-- The player said they would not be attacking the AI, but did so anyway
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_MILITARY_PROMISE_BROKEN', 'TXT_KEY_LEADER_BRONYA_ATTACKED_MILITARY_PROMISE_BROKEN%', 500);

-- ============================================================================
-- AI declares war on the player
-- ============================================================================
-- Generic response
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_GENERIC', 'TXT_KEY_LEADER_BRONYA_DOW_GENERIC%', 500);
-- AI is in a land dispute with the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_LAND', 'TXT_KEY_LEADER_BRONYA_DOW_LAND%', 500);
-- AI is going for world conquest
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_WORLD_CONQUEST', 'TXT_KEY_LEADER_BRONYA_DOW_WORLD_CONQUEST%', 500);
-- AI is taking advantage of the player's weakness
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_OPPORTUNITY', 'TXT_KEY_LEADER_BRONYA_DOW_OPPORTUNITY%', 500);
-- AI is desperate and war is their only option
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_DESPERATE', 'TXT_KEY_LEADER_BRONYA_DOW_DESPERATE%', 500);
-- AI appeared friendly to the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_BETRAYAL', 'TXT_KEY_LEADER_BRONYA_DOW_BETRAYAL%', 500);
-- AI appeared friendly to the player, and AI is weaker than the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_WEAK_BETRAYAL', 'TXT_KEY_LEADER_BRONYA_DOW_WEAK_BETRAYAL%', 500);
-- AI regrets having to declare war (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DOW_REGRET', 'TXT_KEY_LEADER_BRONYA_DOW_REGRET%', 500);
-- AI declares war after the player refuses a demand
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WAR_DEMAND_REFUSED', 'TXT_KEY_LEADER_BRONYA_WAR_DEMAND_REFUSED%', 500);

-- ============================================================================
-- Peace offers
-- ============================================================================
-- AI asks what the player will offer for peace
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PEACE_WHAT_WILL_HUMAN_OFFER', 'TXT_KEY_LEADER_BRONYA_PEACE_WHAT_WILL_HUMAN_OFFER%', 500);
-- AI accepts a gracious offer for peace (not used in normal DLL according to whoward69)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_PEACE_MADE_BY_HUMAN_GRACIOUS', 'TXT_KEY_LEADER_BRONYA_PEACE_MADE_BY_HUMAN_GRACIOUS%', 500);
-- AI doesn't want to have peace
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_NO_PEACE', 'TXT_KEY_LEADER_BRONYA_NO_PEACE%', 500);
-- Player asks for peace on the same turn war was declared - no peace!
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_TOO_SOON_NO_PEACE', 'TXT_KEY_LEADER_BRONYA_TOO_SOON_NO_PEACE%', 500);

-- ============================================================================
-- City States
-- ============================================================================
-- You attacked a City State that they are protecting
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_ATTACKED_PROTECTED_CITY_STATE', 'TXT_KEY_LEADER_BRONYA_ATTACKED_PROTECTED_CITY_STATE%', 500);
-- The player destroyed a City State that they had pledged to protect (had to examine the DLL closely to confirm this)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_KILLED_PROTECTED_CITY_STATE', 'TXT_KEY_LEADER_BRONYA_KILLED_PROTECTED_CITY_STATE%', 500);
-- AI attacked a City State that you are protecting
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_WE_ATTACKED_YOUR_MINOR', 'TXT_KEY_LEADER_BRONYA_HOSTILE_WE_ATTACKED_YOUR_MINOR%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_ATTACKED_YOUR_MINOR', 'TXT_KEY_LEADER_BRONYA_WE_ATTACKED_YOUR_MINOR%', 500);

-- Player bullied a City State the AI is protecting
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_BULLIED_PROTECTED_CITY_STATE', 'TXT_KEY_LEADER_BRONYA_BULLIED_PROTECTED_CITY_STATE%', 500);
-- AI bullied a City State the player is protecting
-- AI dislikes you
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_WE_BULLIED_YOUR_MINOR', 'TXT_KEY_LEADER_BRONYA_HOSTILE_WE_BULLIED_YOUR_MINOR%', 500);
-- AI has no negative feelings
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_BULLIED_YOUR_MINOR', 'TXT_KEY_LEADER_BRONYA_WE_BULLIED_YOUR_MINOR%', 500);

-- These things were confusing, so I'll quote directly from the DLL source. Not sure how many of them are actually used, either...
-- AI attacked Human's Minor, Human vows revenge, our response (hostile)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_WE_ATTACKED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_HOSTILE_WE_ATTACKED_MINOR_BAD%', 500);
-- AI attacked Human's Minor, Human forgives us, our response (hostile)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_WE_ATTACKED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HOSTILE_WE_ATTACKED_MINOR_GOOD%', 500);
-- AI attacked Human's Minor, Human vows revenge, our response
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_ATTACKED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_WE_ATTACKED_MINOR_BAD%', 500);
-- AI attacked Human's Minor, Human forgives us, our response
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_ATTACKED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_PLEASED%', 500);
-- AI is upset that human won't stop attacking a Minor
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_ATTACKED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- AI is happy that human says he'll stop attacking a Minor
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_ATTACKED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_ATTACKED_MINOR_GOOD%', 500);
-- AI is upset that human killed a Minor (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_KILLED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- AI is willing to receive gift from human to ease relations after killing a protected Minor (not used in normal DLL according to whoward69)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_KILLED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_KILLED_MINOR_GOOD%', 500);
-- AI bullied Human's Minor, Human vows revenge, our response (hostile)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_WE_BULLIED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_HOSTILE_WE_BULLIED_MINOR_BAD%', 500);
-- AI bullied Human's Minor, Human forgives us, our response (hostile)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HOSTILE_WE_BULLIED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HOSTILE_WE_BULLIED_MINOR_GOOD%', 500);
-- AI bullied Human's Minor, Human vows revenge, our response
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_BULLIED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_WE_BULLIED_MINOR_BAD%', 500);
-- AI bullied Human's Minor, Human forgives us, our response
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_BULLIED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_PLEASED%', 500);
-- AI is upset that human won't stop bullying a Minor
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_BULLIED_MINOR_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_RESPONSE_BAD%', 500);
-- AI is happy that human says he'll stop bullying a Minor
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_BULLIED_MINOR_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_BULLIED_MINOR_GOOD%', 500);

-- ============================================================================
-- Espionage, Religion and Archaeology
-- ============================================================================
-- AI caught the player's spy while they were stealing a technology
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CAUGHT_YOUR_SPY', 'TXT_KEY_LEADER_BRONYA_CAUGHT_YOUR_SPY%', 500);
-- AI killed the player's spy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_KILLED_YOUR_SPY', 'TXT_KEY_LEADER_BRONYA_KILLED_YOUR_SPY%', 500);
-- Player killed the AI's spy
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_KILLED_MY_SPY', 'TXT_KEY_LEADER_BRONYA_KILLED_MY_SPY%', 500);
-- Player killed the AI's spy, and clicked the notifiaction icon to confront the AI
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CONFRONT_YOU_KILLED_MY_SPY', 'TXT_KEY_LEADER_BRONYA_CONFRONT_YOU_KILLED_MY_SPY%', 500);
-- AI suspects that the player is spying on them (This does not appear in the DLL source at all, despite existing in the tables of the normal game)
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SUSPECT_YOU_OF_SPYING', 'TXT_KEY_LEADER_BRONYA_RESPONSE_SUSPECT_YOU_OF_SPYING%', 500);
-- Player agrees to stop spying
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_CAUGHT_YOUR_SPY_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_CAUGHT_YOUR_SPY_GOOD%', 500);
-- Player doesn't agree to stop spying
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_CAUGHT_YOUR_SPY_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_CAUGHT_YOUR_SPY_BAD%', 500);
-- AI agrees to stop spying
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_STOP_SPYING_YES', 'TXT_KEY_LEADER_BRONYA_RESPONSE_STOP_SPYING_YES%', 500);
-- AI doesn't agree to stop spying
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_STOP_SPYING_NO', 'TXT_KEY_LEADER_BRONYA_RESPONSE_STOP_SPYING_NO%', 500);
-- Player warns the AI about another civilization
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WARNED_ABOUT_INTRIGUE', 'TXT_KEY_LEADER_BRONYA_RESPONSE_WARNED_ABOUT_INTRIGUE%', 500);
-- AI warns the player that a third civ is plotting against them
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SHARE_INTRIGUE_DECEPTION', 'TXT_KEY_LEADER_BRONYA_RESPONSE_SHARE_INTRIGUE_DECEPTION%', 500);
-- AI warns the player that a third civ is going to attack them, with a known target
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SHARE_INTRIGUE_ARMY_SNEAK_ATTACK_KNOWN_CITY', 'TXT_KEY_LEADER_BRONYA_RESPONSE_SHARE_INTRIGUE_ARMY_SNEAK_ATTACK_KNOWN_CITY%', 500);
-- AI warns the player that a third civ is going to attack them
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SHARE_INTRIGUE_ARMY_SNEAK_ATTACK_UNKNOWN_CITY', 'TXT_KEY_LEADER_BRONYA_RESPONSE_SHARE_INTRIGUE_ARMY_SNEAK_ATTACK_UNKNOWN_CITY%', 500);
-- AI warns the player that a third civ is going to attack them via the sea, with a known target
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SHARE_INTRIGUE_AMPHIBIOUS_SNEAK_ATTACK_KNOWN_CITY', 'TXT_KEY_LEADER_BRONYA_RESPONSE_SHARE_INTRIGUE_AMPHIBIOUS_SNEAK_ATTACK_KNOWN_CITY%', 500);
-- AI warns the player that a third civ is going to attack them via the sea
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SHARE_INTRIGUE_AMPHIBIOUS_SNEAK_ATTACK_UNKNOWN_CITY', 'TXT_KEY_LEADER_BRONYA_RESPONSE_SHARE_INTRIGUE_AMPHIBIOUS_SNEAK_ATTACK_UNKNOWN_CITY%', 500);
-- Player doesn't forgive the AI for spying
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_KILLED_MY_SPY_UNFORGIVEN', 'TXT_KEY_LEADER_BRONYA_RESPONSE_HUMAN_KILLED_MY_SPY_UNFORGIVEN%', 500);
-- Player forgives the AI for spying
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_KILLED_MY_SPY_FORGIVEN', 'TXT_KEY_LEADER_BRONYA_RESPONSE_HUMAN_KILLED_MY_SPY_FORGIVEN%', 500);

-- AI asks the player to stop converting their cities
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_STOP_CONVERSIONS', 'TXT_KEY_LEADER_BRONYA_STOP_CONVERSIONS%', 500);
-- Player agrees to stop converting the AI's cities
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_STOP_CONVERSIONS_GOOD', 'TXT_KEY_LEADER_BRONYA_HUMAN_STOP_CONVERSIONS_GOOD%', 500);
-- Player doesn't agree to stop converting the AI's cities
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_STOP_CONVERSIONS_BAD', 'TXT_KEY_LEADER_BRONYA_HUMAN_STOP_CONVERSIONS_BAD%', 500);
-- AI agrees to stop converting the player's cities
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_STOP_CONVERSIONS_AGREE', 'TXT_KEY_LEADER_BRONYA_RESPONSE_HUMAN_STOP_CONVERSIONS_AGREE%', 500);
-- AI doesn't agree to stop converting the player's cities
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_STOP_CONVERSIONS_DISAGREE', 'TXT_KEY_LEADER_BRONYA_RESPONSE_HUMAN_STOP_CONVERSIONS_DISAGREE%', 500);
-- AI asks the player to stop digging on their land
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_STOP_DIGGING', 'TXT_KEY_LEADER_BRONYA_RESPONSE_STOP_DIGGINGX%', 500);
-- Player agrees to stop digging on the AI's land
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_STOP_DIGGING_GOOD', 'TXT_KEY_LEADER_BRONYA_RESPONSE_HUMAN_STOP_DIGGING_GOOD%', 500);
-- Player doesn't agree to stop digging on the AI's land
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_STOP_DIGGING_BAD', 'TXT_KEY_LEADER_BRONYA_RESPONSE_HUMAN_STOP_DIGGING_BAD%', 500);
-- AI agrees to stop digging on the player's land
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_STOP_DIGGING_AGREE', 'TXT_KEY_LEADER_BRONYA_RESPONSE_STOP_DIGGING_AGREE%', 500);
-- AI doesn't agree to stop digging on the player's land
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_STOP_DIGGING_DISAGREE', 'TXT_KEY_LEADER_BRONYA_RESPONSE_STOP_DIGGING_DISAGREE%', 500);

-- ============================================================================
-- Ideologies
-- ============================================================================
-- Player picked the same ideology as the AI
-- Freedom
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SAME_POLICIES_FREEDOM', 'TXT_KEY_LEADER_BRONYA_SAME_POLICIES_FREEDOM%', 500);
-- Order
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SAME_POLICIES_ORDER', 'TXT_KEY_LEADER_BRONYA_SAME_POLICIES_ORDER%', 500);
-- Autocracy
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SAME_POLICIES_AUTOCRACY', 'TXT_KEY_LEADER_BRONYA_SAME_POLICIES_AUTOCRACY%', 500);

-- AI is getting ideological resistance from the player
-- Freedom
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CIVIL_RESISTANCE_ON_AI_BY_FREEDOM', 'TXT_KEY_LEADER_BRONYA_CIVIL_RESISTANCE_ON_AI_BY_FREEDOM%', 500);
-- Order
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CIVIL_RESISTANCE_ON_AI_BY_ORDER', 'TXT_KEY_LEADER_BRONYA_CIVIL_RESISTANCE_ON_AI_BY_ORDER%', 500);
-- Autocracy
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CIVIL_RESISTANCE_ON_AI_BY_AUTOCRACY', 'TXT_KEY_LEADER_BRONYA_CIVIL_RESISTANCE_ON_AI_BY_AUTOCRACY%', 500);

-- Player is getting ideological resistance from the AI
-- Freedom
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CIVIL_RESISTANCE_ON_HUMAN_BY_FREEDOM', 'TXT_KEY_LEADER_BRONYA_CIVIL_RESISTANCE_ON_HUMAN_BY_FREEDOM%', 500);
-- Order
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CIVIL_RESISTANCE_ON_HUMAN_BY_ORDER', 'TXT_KEY_LEADER_BRONYA_CIVIL_RESISTANCE_ON_HUMAN_BY_ORDER%', 500);
-- Autocracy
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_CIVIL_RESISTANCE_ON_HUMAN_BY_AUTOCRACY', 'TXT_KEY_LEADER_BRONYA_CIVIL_RESISTANCE_ON_HUMAN_BY_AUTOCRACY%', 500);

-- Player switched to the same ideology as the AI
-- Freedom
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SWITCHED_TO_FREEDOM', 'TXT_KEY_LEADER_BRONYA_SWITCHED_TO_FREEDOM%', 500);
-- Order
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SWITCHED_TO_ORDER', 'TXT_KEY_LEADER_BRONYA_SWITCHED_TO_ORDER%', 500);
-- Autocracy
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_SWITCHED_TO_AUTOCRACY', 'TXT_KEY_LEADER_BRONYA_SWITCHED_TO_AUTOCRACY%', 500);

-- ============================================================================
-- World Congress/United Nations
-- ============================================================================
-- AI likes the player's proposal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_LIKE_HUMAN_PROPOSAL', 'TXT_KEY_LEADER_BRONYA_WE_LIKE_HUMAN_PROPOSAL%', 500);
-- AI dislikes the player's proposal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WE_DISLIKE_HUMAN_PROPOSAL', 'TXT_KEY_LEADER_BRONYA_WE_DISLIKE_HUMAN_PROPOSAL%', 500);
-- Player voted for the AI's proposal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_SUPPORTED_OUR_PROPOSAL', 'TXT_KEY_LEADER_BRONYA_HUMAN_SUPPORTED_OUR_PROPOSAL%', 500);
-- Player voted against the AI's proposal
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_FOILED_OUR_PROPOSAL', 'TXT_KEY_LEADER_BRONYA_HUMAN_FOILED_OUR_PROPOSAL%', 500);
-- Player voted for the AI to host
INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_HUMAN_SUPPORTED_OUR_HOSTING', 'TXT_KEY_LEADER_BRONYA_HUMAN_SUPPORTED_OUR_HOSTING%', 500);

-- ============================================================================
-- Cultural Influence
-- ============================================================================
-- Player is influential on the AI (Our people are wearing your blue jeans...)
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INFLUENTIAL_ON_AI', 'TXT_KEY_LEADER_BRONYA_INFLUENTIAL_ON_AI%', 500);
-- AI is influential on the player
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_INFLUENTIAL_ON_HUMAN', 'TXT_KEY_LEADER_BRONYA_INFLUENTIAL_ON_HUMAN%', 500);

-- ============================================================================
-- City State notifications
-- ============================================================================
-- AI has pledged to protect a city state
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DECLARATION_PROTECT_CITY_STATE', 'TXT_KEY_LEADER_BRONYA_DECLARATION_PROTECT_CITY_STATE%', 500);
-- AI is no longer protecting a city state
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_DECLARATION_ABANDON_CITY_STATE', 'TXT_KEY_LEADER_BRONYA_DECLARATION_ABANDON_CITY_STATE%', 500);

-- ============================================================================
-- Ending DoF lines (originally ending Pacts of Cooperation)
-- While they are not used in an unmodded game, "END_WORK_WITH_US" lines are
-- used when the Community Patch is active.
-- ============================================================================
-- AI ends a DoF because the player is a warmonger
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_WITH_US_WARMONGER', 'TXT_KEY_LEADER_BRONYA_END_WORK_WITH_US_WARMONGER_%', 500);
-- AI ends a DoF because the player is vying for the same City States
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_WITH_US_MINORS', 'TXT_KEY_LEADER_BRONYA_END_WORK_WITH_US_MINORS_%', 500);
-- AI ends a DoF as they covet land the player owns
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_WITH_US_LAND', 'TXT_KEY_LEADER_BRONYA_END_WORK_WITH_US_LAND_%', 500);
-- AI ends a DoF as the player built wonders they coveted
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_WITH_US_WONDERS', 'TXT_KEY_LEADER_BRONYA_END_WORK_WITH_US_WONDERS_%', 500);
-- AI ends a DoF as they're worried the player wants to win
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_WITH_US_VICTORY', 'TXT_KEY_LEADER_BRONYA_END_WORK_WITH_US_VICTORY_%', 500);
-- AI does not want to continue an existing DoF
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_WITH_US_DEFAULT', 'TXT_KEY_LEADER_BRONYA_END_WORK_WITH_US_DEFAULT_%', 500);

-- ============================================================================
-- Old Pact of Secrecy lines
-- In the vanilla version of CiV, you could make "Pacts of Secrecy" against
-- other players. This was replaced by denouncements in the later versions, and
-- so these lines are not used anymore.
-- ============================================================================ 
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_END_WORK_AGAINST_SOMEONE_DEFAULT', 'TXT_KEY_LEADER_BRONYA_END_WORK_AGAINST_SOMEONE_DEFAULT_%', 500);
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WORK_AGAINST_SOMEONE_YES', 'TXT_KEY_LEADER_BRONYA_WORK_AGAINST_SOMEONE_YES_%', 500);
--INSERT INTO Diplomacy_Responses (LeaderType, ResponseType, Response, Bias) VALUES ('LEADER_BRONYA', 'RESPONSE_WORK_AGAINST_SOMEONE_NO', 'TXT_KEY_LEADER_BRONYA_DECLINE%', 500);