// =======================================================
// DELTARUNE MOD: "PAPYRUNE" DEFINITIVE GAME LOGIC ENGINE
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
            break;
            
        case "GREATSPAGHETTI":
            scr_battle_text("* Obtained cold spaghetti.");
            scr_add_item_to_inventory("PapyrusSpaghetti");
            break;
            
        case "VALUETWENTY3":
            scr_battle_text("* The world begins to feel strange...");
            global.fun_value = 23;
            break;
            
        case "TVNETWORK":
            scr_battle_text("* Tuning into the provider's grid.");
            global.ui_skin = "TV_STATIC";
            break;


        case "129":
            scr_battle_text("* Anomaly verified. The summation rig hums to life.");
            global.max_hp += 129;
            global.player_hp = global.max_hp;
            global.attack_power += 29;
            scr_add_item_to_inventory("Shadow_Crystal_Final");
            break;


        // --- NEW TIMELINE ALTERATION CHEATS ---
        case "EZ":
            scr_battle_text("* Code: EZ verified. Adjusting difficulty safety thresholds...");
            global.baby_mode_active = true;
            global.active_combo_roast = "BABY";
            break;


        case "KITCHENOFHELL":
            scr_battle_text("* WARNING: The Kitchen of Hell is completely operational!");
            global.party_skin_preset = "TENNA_UNITS";
            global.lead_character_skin = "ROARING_KNIGHT";
            global.vulnerability_curse = true;     
            global.rotational_spin_glitch = true;   
            scr_add_item_to_inventory("Valentino_One_Shot_Gun");
            scr_add_item_to_inventory("Tenna_Antenna");
            scr_equip_weapon_slot("Kris", "DEVILSKNIFE");
            global.kitchen_of_hell_active = true;   
            global.one_shot_fragility_curse = false;
            break;


        case "BAD TIME":
            scr_battle_text("* Timeline fracture. The identity logs have been rearranged.");
            global.sans_is_knight = true;
            break;


        case "TOO FAR":
            scr_battle_text("* The skeleton brother has completely lost his patience.");
            global.papyrus_rage_mode = true;
            break;


        case "SWAP":
            scr_battle_text("* You swapped your position and is now the roaring knight!");
            global.player_is_boss_mech = true;
            global.uno_reverse_use_count = 0;
            global.glass_soul_curse = false;
            scr_add_item_to_inventory("Refragmented_Shard");
            scr_add_item_to_inventory("Uno_Reverse_Card");
            boss_phase = "PLAYER_DRIVES_TITAN";
            room_goto(rm_boss_pilot_cockpit);
            break;


        // --- HARDCORE CHALLENGE COMBOS ---
        case "GAMERMODE":
            scr_battle_text("* WARNING: Ultimate No-Hit Chaos Combo Engaged!");
            global.party_skin_preset = "JEVIL_CLONES";
            scr_equip_weapon_slot("Kris", "DEVILSKNIFE");
            global.rotational_spin_glitch = true;   
            global.attack_power += 99;              
            global.magic_power += 99;
            global.one_shot_fragility_curse = true; 
            global.active_combo_roast = "GAMER";
            break;


        case "SOUPCONTRUAL":
            scr_battle_text("* WARNING: Soup Cannon Payload Loaded!");
            global.max_hp += 50;                  
            global.player_hp = global.max_hp;     
            global.attack_power += 99;              
            global.defense_tier = -50; 
            global.soup_code_activated = true;
            global.active_combo_roast = "SOUP";
            scr_add_item_to_inventory("Sans_Homemade_Soup");
            break;


        case "VOIDFEEDS":
            scr_battle_text("* WARNING: Network Feed Blindness Triggered!");
            global.ui_skin = "TV_STATIC";
            global.lead_character_skin = "ROARING_KNIGHT";
            global.controls_inverted = true;
            global.active_combo_roast = "VOID";
            break;


        // --- COMPONENT PUZZLE LOCKS ---
        case "WORLDREVOLVING":
            scr_battle_text("* You are spinning in chaos chaos.");
            global.party_skin_preset = "JEVIL_CLONES";
            scr_equip_weapon_slot("Kris", "DEVILSKNIFE");
            global.rotational_spin_glitch = true;  
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
            global.rotational_spin_glitch = false;
            break;
            
        case "BIGSHOT":
            scr_battle_text("* You have accepted Spamtons [Deal] and become a [BIGSHOT].");
            scr_add_item_to_inventory("BIG_SHOT_DEAL_ITEM");
            break;


        case "NOTHING":
            scr_battle_text("* Code: NOTHING applied. Anomalies neutralized.");
            global.party_skin_preset = "VANILLA";
            global.lead_character_skin = "VANILLA";
            global.vulnerability_curse = false;
            global.one_shot_fragility_curse = false;
            global.controls_inverted = false;
            global.rotational_spin_glitch = false;
            global.sans_is_knight = false;
            global.papyrus_rage_mode = false;
            global.player_is_boss_mech = false;
            global.glass_soul_curse = false;
            global.baby_mode_active = false;
            global.kitchen_of_hell_active = false;
            global.active_combo_roast = "NONE";
            global.game_font = font_standard_deltarune;
            global.ui_skin = "DEFAULT";
            break;


        case "EVERYTHING":
            scr_battle_text("* WARNING: Mass assignment collision anomaly triggered!");
            var placement = show_message_ext("Where do you wish to inject parameters?", "BEGINNING", "MIDDLE", "END");
            if (placement == 1)      { room_goto(rm_beginning_arena); }
            else if (placement == 2) { room_goto(rm_middle_arena); }
            else if (placement == 3) { room_goto(rm_end_arena); }
            
            global.party_skin_preset = "TENNA_UNITS";
            global.lead_character_skin = "ROARING_KNIGHT";
            global.game_font = font_tenna_typography;
            global.vulnerability_curse = true;
            global.controls_inverted = true;
            global.rotational_spin_glitch = true;
            scr_add_item_to_inventory("Valentino_One_Shot_Gun");
            scr_add_item_to_inventory("BIG_SHOT_DEAL_ITEM");
            scr_add_item_to_inventory("Tenna_Antenna");
            global.immortality_active = false; 
            break;


        default:
            scr_battle_text("* That is not a valid code... buzz off, punk.");
            break;
    }
}


// --- LOGIC HOOKS FOR TRANS-DIMENSIONAL ITEM SUBROUTINES ---
function scr_use_mod_key_item(item_id) {
    if (item_id == "REFRAGMENTED_SHARD") {
        if (global.player_is_boss_mech == true) {
            global.player_is_boss_mech = false;
            scr_battle_text("* You shattered the link! Awareness returns to the Soul.");
            room_goto(rm_standard_battleground);
        } else {
            global.player_is_boss_mech = true;
            scr_battle_text("* You reconnected the matrix! Mind returns to the Titan.");
            room_goto(rm_boss_pilot_cockpit);
        }
    }
    
    if (item_id == "UNO_REVERSE_CARD") {
        if (global.glass_soul_curse == false) {
            global.uno_reverse_use_count += 1;
            scr_battle_text("* Brandished the UNO REVERSE card! Mappings shifted.");
            
            if (global.uno_reverse_use_count >= 5) {
                global.glass_soul_curse = true;
                global.max_hp = 1;
                global.player_hp = 1;
                global.defense_tier = -999;
                snd_play(snd_glass_shatter);
                scr_battle_text("* The confines of the world broke and now everything feels wrong. your soul feels like glass now.");
            }
        }
    }
}


// --- COMBO VICTORY MONITOR ENGINE HOOK ---
function scr_verify_endgame_victory_state() {
    if (global.brothers_hp <= 0 && boss_phase == "ROARING_TITAN" && global.player_hp > 0) {
        if (global.active_combo_roast == "BABY") {
            room_goto(rm_grilbys_secret_victory);
            scr_sans_dialogue("SANS: wow, kid. you actually beat the roaring titan using the training wheels code?");
            scr_sans_dialogue("SANS: YOU ARE A BABY AND YOU WONT DOUBT THAT.");
            scr_sans_dialogue("SANS: go back to the flower bed.");
            exit;
        }
        else if (global.active_combo_roast == "GAMER") {


Use code with caution.
room_goto(rm_grilbys_secret_victory);
scr_sans_dialogue("SANS: Geez kid. You are something.");
scr_sans_dialogue("SANS: I bet you are a gamer... unemployed,...");
scr_sans_dialogue("SANS: trying your best on a livestream in front of people,");
scr_sans_dialogue("SANS: but you are DEFINETLY A GAMER. LETS GO TO GRILBY'S");
exit;
}
else if (global.active_combo_roast == "SOUP") {
room_goto(rm_grilbys_secret_victory);
scr_sans_dialogue("SANS: wow, kid. you drank all my homemade soup just to turn yourself into a glass cannon?");
scr_sans_dialogue("SANS: i've seen wet cardboard with better structural integrity.");
scr_sans_dialogue("SANS: maybe let the broth simmer a little longer next time.");
exit;
}
else if (global.active_combo_roast == "VOID") {
room_goto(rm_grilbys_secret_victory);
scr_sans_dialogue("SANS: huh. you're walking around dressed like the roaring knight through a screen full of static with your keyboard completely backward?");
scr_sans_dialogue("SANS: honestly, kid, your internal routing is as scrambled as the tv reception.");
scr_sans_dialogue("SANS: take a break.");
exit;
}
}
}


***



