" Vim syntax file
" Language: ash scripts for KolMafia
" Written_by: Mrfred
" Latest_update: 12/16/2013

" If we already have defined a syntax, exit
if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword ashKeyword for foreach while repeat until
syn keyword ashKeyword break continue return exit
syn keyword ashKeyword if else switch case default try finally
syn keyword ashKeyword from to by in

" Data types
syntax keyword ashType void boolean int float string buffer
syntax match ashSpecialType "\$items\?\>"
syntax match ashSpecialType "\$class\>"
syntax match ashSpecialType "\$classes\>"
syntax match ashSpecialType "\$coinmasters\?\>"
syntax match ashSpecialType "\$effects\?\>"
syntax match ashSpecialType "\$elemnts\?\>"
syntax match ashSpecialType "\$familiars\?\>"
syntax match ashSpecialType "\$items\?\>"
syntax match ashSpecialType "\$locations\?\>"
syntax match ashSpecialType "\$monsters\?\>"
syntax match ashSpecialType "\$phylums\?\>"
syntax match ashSpecialType "\$skills\?\>"
syntax match ashSpecialType "\$slots\?\>"
syntax match ashSpecialType "\$stats\?\>"

" booleans
syn keyword ashBoolean true false

" Strings
"inside ""
syn region ashString start=/\v"/ skip=/\v\\./ end=/\v"/
"inside []
syn region ashString start=/\[/ end=/\]/

" Numbers
"integer with - + or nothing in front
syn match ashNumber '\<\d\+'
syn match ashNumber '\<[-+]\d\+'
"floating point number with decimal
syn match ashNumber '\<\d\+\.\d*'
syn match ashNumber '\<[-+]\d\+\.\d*'

" Operators
" math
syn match ashOperator "\v\*"
syn match ashOperator "\v/"
syn match ashOperator "\v\+"
syn match ashOperator "\v-"
syn match ashOperator "\v\%"
syn match ashOperator "\v\*\*"
" bitwise
syn match ashOperator "\v\&"
syn match ashOperator "\v\|"
syn match ashOperator "\v\^"
syn match ashOperator "\v\~"
syn match ashOperator "\v\<\<"
syn match ashOperator "\v\>\>"
syn match ashOperator "\v\&\="
syn match ashOperator "\v\|\="
syn match ashOperator "\v\>\>\>"
" assignment
syn match ashOperator "\v\="
syn match ashOperator "\v\+\="
syn match ashOperator "\v-\="
syn match ashOperator "\v\*\="
syn match ashOperator "\v/\="
syn match ashOperator "\v\%\="
syn match ashOperator "\v\*\*\="
syn match ashOperator "\v\^\="
syn match ashOperator "\v\>\>\="
syn match ashOperator "\v\>\>\>\="
" boolean
syn match ashOperator "\v\&\&"
syn match ashOperator "\v\|\|"
syn match ashOperator "\v\!"
" relational
syn match ashOperator "\v\=\="
syn match ashOperator "\v\!\="
syn match ashOperator "\v\<"
syn match ashOperator "\v\>"
syn match ashOperator "\v\<\="
syn match ashOperator "\v\>\="

" Marking for later editing
syn keyword ashTodo contained TODO FIXME XXX NOTE

" Comments
syn match ashComment "\v#.*$" contains=ashTodo
syn match ashComment "\v//.*$" contains=ashTodo
syn region ashComment start=/\v\/\*/ end=/\v\*\// contains=ashTodo

" Marking for later editing
syn keyword ashTodo contained TODO FIXME XXX NOTE

" Marking {'s
syn region ashDescBlock start="{" end="}" fold transparent

" Function Master List
syn keyword ashFunction abort
syn keyword ashFunction add_item_condition
syn keyword ashFunction adv1
syn keyword ashFunction adventure
syn keyword ashFunction appearance_rates
syn keyword ashFunction append
syn keyword ashFunction append_replacement
syn keyword ashFunction append_tail
syn keyword ashFunction attack
syn keyword ashFunction autosell
syn keyword ashFunction autosell_price
syn keyword ashFunction available_amount
syn keyword ashFunction batch_close
syn keyword ashFunction batch_open
syn keyword ashFunction black_market_available
syn keyword ashFunction boolean_modifier
syn keyword ashFunction buffed_hit_stat
syn keyword ashFunction buy
syn keyword ashFunction buy_price
syn keyword ashFunction buy_item
syn keyword ashFunction can_drink
syn keyword ashFunction can_eat
syn keyword ashFunction can_equip
syn keyword ashFunction can_interact
syn keyword ashFunction canadia_available
syn keyword ashFunction cell
syn keyword ashFunction chamber
syn keyword ashFunction change_mcd
syn keyword ashFunction char_at
syn keyword ashFunction chat_clan
syn keyword ashFunction chat_macro
syn keyword ashFunction chat_notify
syn keyword ashFunction chat_private
syn keyword ashFunction class_modifier
syn keyword ashFunction clear
syn keyword ashFunction cli_execute
syn keyword ashFunction closet_amount
syn keyword ashFunction combat_mana_cost_modifier
syn keyword ashFunction combat_rate_modifier
syn keyword ashFunction contains_text
syn keyword ashFunction council
syn keyword ashFunction count
syn keyword ashFunction craft
syn keyword ashFunction creatable_amount
syn keyword ashFunction create
syn keyword ashFunction create_matcher
syn keyword ashFunction current_hit_stat
syn keyword ashFunction current_mcd
syn keyword ashFunction dad_sea_monkee_weakness
syn keyword ashFunction daily_special
syn keyword ashFunction damage_absorption_persent
syn keyword ashFunction damage_reduction
syn keyword ashFunction delete
syn keyword ashFunction disable
syn keyword ashFunction dispensary_available
syn keyword ashFunction display_amount
syn keyword ashFunction drink
syn keyword ashFunction eat
syn keyword ashFunction eatsilent
syn keyword ashFunction effect_modifier
syn keyword ashFunction elemental_resistance
syn keyword ashFunction empty_closet
syn keyword ashFunction enable
syn keyword ashFunction end
syn keyword ashFunction enthrone_familiar
syn keyword ashFunction entity_decode
syn keyword ashFunction entity_encode
syn keyword ashFunction entryway
syn keyword ashFunction equip
syn keyword ashFunction equipped_amount
syn keyword ashFunction equipped_item
syn keyword ashFunction expected_damage
syn keyword ashFunction experience_bonus
syn keyword ashFunction expression_eval
syn keyword ashFunction extract_items
syn keyword ashFunction extract_meat
syn keyword ashFunction familiar_equipment
syn keyword ashFunction familiar_equipped_equipment
syn keyword ashFunction familiar_weight
syn keyword ashFunction file_to_map
syn keyword ashFunction find
syn keyword ashFunction floor
syn keyword ashFunction form_field
syn keyword ashFunction form_fields
syn keyword ashFunction format_date_time
syn keyword ashFunction friars_available
syn keyword ashFunction fullness_limit
syn keyword ashFunction galaktik_cures_discounted
syn keyword ashFunction gameday_to_int
syn keyword ashFunction gameday_to_string
syn keyword ashFunction gametime_to_int
syn keyword ashFunction get_auto_attack
syn keyword ashFunction get_campground
syn keyword ashFunction get_ccs_action
syn keyword ashFunction get_clan_id
syn keyword ashFunction get_clan_name
syn keyword ashFunction get_counters
syn keyword ashFunction get_custom_outfits
syn keyword ashFunction get_dwelling
syn keyword ashFunction get_goals
syn keyword ashFunction get_ingredients
syn keyword ashFunction get_inventory
syn keyword ashFunction get_monsters
syn keyword ashFunction get_moods
syn keyword ashFunction get_outfits
syn keyword ashFunction get_path
syn keyword ashFunction get_path_full
syn keyword ashFunction get_path_variables
syn keyword ashFunction get_player_id
syn keyword ashFunction get_power
syn keyword ashFunction get_property
syn keyword ashFunction get_related
syn keyword ashFunction get_revision
syn keyword ashFunction get_shop
syn keyword ashFunction get_version
syn keyword ashFunction gnomads_available
syn keyword ashFunction goal_exists
syn keyword ashFunction group
syn keyword ashFunction group_count
syn keyword ashFunction group_string
syn keyword ashFunction guardians
syn keyword ashFunction guild_store_available
syn keyword ashFunction have_bartender
syn keyword ashFunction have_chef
syn keyword ashFunction have_display
syn keyword ashFunction have_effect
syn keyword ashFunction have_equipped
syn keyword ashFunction have_familiar
syn keyword ashFunction have_mushroom_plot
syn keyword ashFunction have_outfit
syn keyword ashFunction have_shop
syn keyword ashFunction have_skill
syn keyword ashFunction hedgemaze
syn keyword ashFunction hermit
syn keyword ashFunction hidden_temple_unlocked
syn keyword ashFunction hippy_stone_broken
syn keyword ashFunction hippy_store_available
syn keyword ashFunction historical_age
syn keyword ashFunction historical_price
syn keyword ashFunction image_to_monster
syn keyword ashFunction in_bad_moon
syn keyword ashFunction in_hardcore
syn keyword ashFunction in_moxie_sign
syn keyword ashFunction in_muscle_sign
syn keyword ashFunction in_mysticality_sign
syn keyword ashFunction inaccessible_reason
syn keyword ashFunction index_of
syn keyword ashFunction inebriety_limit
syn keyword ashFunction initiative_modifier
syn keyword ashFunction insert
syn keyword ashFunction is_accessible
syn keyword ashFunction is_coinmaster_item
syn keyword ashFunction is_discardable
syn keyword ashFunction is_displayable
syn keyword ashFunction is_giftable
syn keyword ashFunction is_goal
syn keyword ashFunction is_integer
syn keyword ashFunction is_npc_item
syn keyword ashFunction is_online
syn keyword ashFunction is_tradeable
syn keyword ashFunction is_trendy
syn keyword ashFunction is_wearing_outfit
syn keyword ashFunction item_amount
syn keyword ashFunction item_drop_modifier
syn keyword ashFunction item_drops
syn keyword ashFunction item_drops_array
syn keyword ashFunction item_type
syn keyword ashFunction jump_chance
syn keyword ashFunction knoll_available
syn keyword ashFunction last_index_of
syn keyword ashFunction last_item_message
syn keyword ashFunction last_monster
syn keyword ashFunction last_skill_message
syn keyword ashFunction length
syn keyword ashFunction load_html
syn keyword ashFunction lock_familiar_equipment
syn keyword ashFunction logprint
syn keyword ashFunction make_url
syn keyword ashFunction mall_price
syn keyword ashFunction mana_cost_modifier
syn keyword ashFunction map_to_file
syn keyword ashFunction max
syn keyword ashFunction maximize
syn keyword ashFunction meat_drop
syn keyword ashFunction meat_drop_modifier
syn keyword ashFunction min
syn keyword ashFunction minstrel_instrument
syn keyword ashFunction minstrel_level
syn keyword ashFunction minstrel_quest
syn keyword ashFunction mmg_bet_amount
syn keyword ashFunction mmg_bet_owner
syn keyword ashFunction mmg_bet_owner_id
syn keyword ashFunction mmg_bet_taker
syn keyword ashFunction mmg_bet_taker_id
syn keyword ashFunction mmg_bet_winnings
syn keyword ashFunction mmg_make_bet
syn keyword ashFunction mmg_my_bets
syn keyword ashFunction mmg_offered_bets
syn keyword ashFunction mmg_retract_bet 
syn keyword ashFunction mmg_search
syn keyword ashFunction mmg_take_bet
syn keyword ashFunction mmg_visit
syn keyword ashFunction mmg_wait_event
syn keyword ashFunction modifier_eval
syn keyword ashFunction monster_attack
syn keyword ashFunction monster_defense
syn keyword ashFunction monster_initiative
syn keyword ashFunction monster_element
syn keyword ashFunction monster_eval
syn keyword ashFunction monster_hp
syn keyword ashFunction monster_level_adjustment
syn keyword ashFunction monster_phylum
syn keyword ashFunction moon_light
syn keyword ashFunction moon_phase
syn keyword ashFunction mp_cost
syn keyword ashFunction my_adventures
syn keyword ashFunction my_ascensions
syn keyword ashFunction my_basestat
syn keyword ashFunction my_buffedstat
syn keyword ashFunction my_class
syn keyword ashFunction my_closet_meat
syn keyword ashFunction my_companion
syn keyword ashFunction my_daycount
syn keyword ashFunction my_discomomentum
syn keyword ashFunction my_effective_familiar
syn keyword ashFunction my_effects
syn keyword ashFunction my_enthroned_familiar
syn keyword ashFunction my_familiar
syn keyword ashFunction my_fullness
syn keyword ashFunction my_fury
syn keyword ashFunction my_hash
syn keyword ashFunction my_hp
syn keyword ashFunction my_id
syn keyword ashFunction my_inebriety
syn keyword ashFunction my_level
syn keyword ashFunction my_location
syn keyword ashFunction my_maxhp
syn keyword ashFunction my_maxfury
syn keyword ashFunction my_maxmp
syn keyword ashFunction my_meat
syn keyword ashFunction my_mp
syn keyword ashFunction my_name
syn keyword ashFunction my_path
syn keyword ashFunction my_primestat
syn keyword ashFunction my_sign
syn keyword ashFunction my_spleen_use
syn keyword ashFunction my_storage_meat
syn keyword ashFunction my_turncount
syn keyword ashFunction now_to_string
syn keyword ashFunction npc_price
syn keyword ashFunction numeric_modifier
syn keyword ashFunction outfit
syn keyword ashFunction outfit_pieces
syn keyword ashFunction overdrink
syn keyword ashFunction print
syn keyword ashFunction print_html
syn keyword ashFunction pulls_remaining
syn keyword ashFunction put_closet
syn keyword ashFunction put_display
syn keyword ashFunction put_shop
syn keyword ashFunction put_stash
syn keyword ashFunction pvp_attacks_left
syn keyword ashFunction random
syn keyword ashFunction raw_damage_absorption
syn keyword ashFunction refresh_stash
syn keyword ashFunction refresh_status
syn keyword ashFunction remove_item_condition
syn keyword ashFunction replace
syn keyword ashFunction replace_all
syn keyword ashFunction replace_first
syn keyword ashFunction replace_string
syn keyword ashFunction reset
syn keyword ashFunction restore_hp
syn keyword ashFunction restore_mp
syn keyword ashFunction retrieve_item
syn keyword ashFunction round
syn keyword ashFunction run_combat
syn keyword ashFunction runaway
syn keyword ashFunction sell
syn keyword ashFunction sell_price
syn keyword ashFunction sells_item
syn keyword ashFunction session_logs
syn keyword ashFunction set_auto_attack
syn keyword ashFunction set_length
syn keyword ashFunction set_location
syn keyword ashFunction set_property
syn keyword ashFunction shop_amount
syn keyword ashFunction spleen_limit
syn keyword ashFunction split_string
syn keyword ashFunction square_root
syn keyword ashFunction start
syn keyword ashFunction stash_amount
syn keyword ashFunction stat_bonus_today
syn keyword ashFunction stat_bonus_tomorrow
syn keyword ashFunction stat_modifier
syn keyword ashFunction steal
syn keyword ashFunction stills_available
syn keyword ashFunction storage_amount
syn keyword ashFunction string_modifier
syn keyword ashFunction substring
syn keyword ashFunction take_closet
syn keyword ashFunction take_display
syn keyword ashFunction take_shop
syn keyword ashFunction take_stash
syn keyword ashFunction take_storage
syn keyword ashFunction tavern
syn keyword ashFunction throw_item
syn keyword ashFunction throw_items
syn keyword ashFunction time_to_string
syn keyword ashFunction to_boolean
syn keyword ashFunction to_class
syn keyword ashFunction to_coinmaster
syn keyword ashFunction to_effect
syn keyword ashFunction to_element
syn keyword ashFunction to_familiar
syn keyword ashFunction to_float
syn keyword ashFunction to_int
syn keyword ashFunction to_item
syn keyword ashFunction to_json
syn keyword ashFunction to_location
syn keyword ashFunction to_lower_case
syn keyword ashFunction to_monster
syn keyword ashFunction to_phylum
syn keyword ashFunction to_plural
syn keyword ashFunction to_skill
syn keyword ashFunction to_slot
syn keyword ashFunction to_stat
syn keyword ashFunction to_string
syn keyword ashFunction to_upper_case
syn keyword ashFunction to_url
syn keyword ashFunction today_to_string
syn keyword ashFunction truncate
syn keyword ashFunction turns_per_cast
syn keyword ashFunction turns_played
syn keyword ashFunction url_decode
syn keyword ashFunction url_encode
syn keyword ashFunction use
syn keyword ashFunction use_familiar
syn keyword ashFunction use_skill
syn keyword ashFunction user_confirm
syn keyword ashFunction visit
syn keyword ashFunction visit_url
syn keyword ashFunction wait
syn keyword ashFunction waitq
syn keyword ashFunction weapon_hands
syn keyword ashFunction weapon_type
syn keyword ashFunction weight_adjustment
syn keyword ashFunction white_citadel_available
syn keyword ashFunction who_clan
syn keyword ashFunction will_usually_dodge
syn keyword ashFunction will_usually_miss
syn keyword ashFunction write
syn keyword ashFunction writeln


let b:curent_syntax = "ash"

" The actual highlighting part
hi def link ashKeyword      Keyword
hi def link ashType         Type
hi def link ashSpecialType  Macro
hi def link ashFunction     Function
hi def link ashBoolean      Boolean
hi def link ashTodo         Todo
hi def link ashComment      Comment
hi def link ashString       String
hi def link ashOperator     Operator
hi def link ashNumber       Number

