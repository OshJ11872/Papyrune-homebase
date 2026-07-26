// =======================================================
// DELTARUNE MOD: "PAPYRUNE" DEFINITIVE CORE ENGINE LOGIC
// =======================================================

function scr_validate_startup_code(entered_string) {
    var check_code = string_upper(entered_string);
    
    switch (check_code) {
        
        // --- BASE PUBLIC KEYS ---
        case "THEOCEANISASOUP":
            scr_battle_text("* Obtained Sans's Homemade Soup!");
            global.max_hp += 50;                  
            global.player_hp = global.max_hp;     
            global.defense_tier += 5;             
            global.mercy_multiplier_bonus = 2.5;  
            global.soup_code_activated = true;
            snd_play(snd_item_get);
            break;
            
        case "GREATSPAGHETTI":
            scr_battle_text("* Obtained cold spaghetti.");
            scr_add_item_to_inventory("PapyrusSpaghetti");
            break;

        // --- THE MASTER 3-DIGIT ANOMALY OVERRIDE ---
        case "129":
            scr_battle_text("* Anomaly verified. The summation rig hums to life.");
            scr_battle_text("* The pig of surprises opens up completely!");
            
            // Grant ultimate combined rewards for solving the final leg of the ARG
            global.max_hp += 129;
            global.player_hp = global.max_hp;
            global.attack_power += 29;
            scr_add_item_to_inventory("Shadow_Crystal_Final");
            scr_add_item_to_inventory("Pig_Of_Surprises_Payload");
            
            snd_play(snd_teleport); // Play legendary reality shift sound effect
            break;

        // --- PUZZLE-LOCKED TRANSLATION REWARDS ---
        case "WORLDREVOLVING":
            scr_battle_text("* You are spinning in chaos chaos.");
            global.party_skin_preset = "JEVIL_CLONES";
            scr_equip_weapon_slot("Kris", "DEVILSKNIFE");
            break;
            
        case "TRUSTUSWITHYOURDELTARUNEGAME":
            scr_battle_text("* Voxtek: You have become the underworlds finest buisness man.");
            global.party_skin_preset = "TENNA_UNITS";
            global.vulnerability_curse = true; 
            scr_add_item_to_inventory("Valentino_One_Shot_Gun");
            break;
            
        case "TVTIME":
            scr_battle_text("* Tenna has spoken \"Its time for our tv time\"");
            global.game_font = font_tenna_typography;
            scr_add_item_to_inventory("Tenna_Antenna");
            break;
            
        case "DARKKNIGHT":
            scr_battle_text("* Dark fountains appear around you, and the world feels upside down.");
            global.lead_character_skin = "ROARING_KNIGHT";
            global.controls_inverted = true; 
            break;
            
        case "BIGSHOT":
            scr_battle_text("* You have accepted Spamtons [Deal] and become a [BIGSHOT].");
            scr_add_item_to_inventory("BIG_SHOT_DEAL_ITEM");
            break;

        // --- OJ'S PRIVATE DEVELOPER TESTING CHEATS ---
        case "SNOWOCIDE":
            global.route = "GENOCIDE";
            boss_phase = "ROARING_TITAN";
            global.boss_hp = 199999;
            room_goto(rm_titan_battleground);
            break;
            
        case "2NITE":
            global.papyrus_duplicated = true;
            instance_create(x - 80, y, obj_roaring_knight_clone);
            break;
            
        case "BAD2:00":
            global.sans_duplicated = true;
            instance_create(x - 50, y, obj_sans_boss_clone);
            break;
            
        case "LASANGA4EVER":
            global.immortality_active = true;
            break;
            
        default:
            scr_battle_text("* That is not a valid code... buzz off, punk.");
            snd_play(snd_wrong_input);
            break;
    }
}
