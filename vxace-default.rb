module Vocab;ShopBuy = 'Buy'.freeze;ShopSell = 'Sell'.freeze;ShopCancel = 'Cancel'.freeze;
Possession = 'Possession'.freeze;ExpTotal = 'Current Exp'.freeze;ExpNext = 'To Next %s'.freeze;
SaveMessage = 'Save to which file?'.freeze;LoadMessage = 'Load which file?'.freeze;
File = 'File'.freeze;PartyName = "%s's Party".freeze;Emerge = '%s emerged!'.freeze;
Preemptive = '%s got the upper hand!'.freeze;Surprise = '%s was surprised!'.freeze;
EscapeStart = '%s has started to escape!'.freeze;EscapeFailure = 'However, it was unable to escape!'.freeze;
Victory = '%s was victorious!'.freeze;Defeat = '%s was defeated.'.freeze;ObtainExp = '%s EXP received!'.freeze;
ObtainGold = '%s\\G found!'.freeze;ObtainItem = '%s found!'.freeze;LevelUp = '%s is now %s %s!'.freeze;
ObtainSkill = '%s learned!'.freeze;UseItem = '%s uses %s!'.freeze;CriticalToEnemy = 'An excellent hit!!'.freeze;
CriticalToActor = 'A painful blow!!'.freeze;ActorDamage = '%s took %s damage!'.freeze;
ActorRecovery = '%s recovered %s %s!'.freeze;ActorGain = '%s gained %s %s!'.freeze;
ActorLoss = '%s lost %s %s!'.freeze;ActorDrain = '%s was drained of %s %s!'.freeze;
ActorNoDamage = '%s took no damage!'.freeze;ActorNoHit = 'Miss! %s took no damage!'.freeze;
EnemyDamage = '%s took %s damage!'.freeze;EnemyRecovery = '%s recovered %s %s!'.freeze;
EnemyGain = '%s gained %s %s!'.freeze;EnemyLoss = '%s lost %s %s!'.freeze;EnemyDrain = 'Drained %s %s from %s!'.freeze;
EnemyNoDamage = '%s took no damage!'.freeze;EnemyNoHit = 'Missed! %s took no damage!'.freeze;
Evasion = '%s evaded the attack!'.freeze;MagicEvasion = '%s nullified the magic!'.freeze;
MagicReflection = '%s reflected the magic!'.freeze;CounterAttack = '%s counterattacked!'.freeze;
Substitute = '%s protected %s!'.freeze;BuffAdd = "%s's %s went up!".freeze;DebuffAdd = "%s's %s went down!".freeze;
BuffRemove = "%s's %s returned to normal.".freeze;ActionFailure = 'There was no effect on %s!'.freeze;
PlayerPosError = "Player's starting position is not set.".freeze;EventOverflow = 'Common event calls exceeded the limit.'.freeze;
def self.basic(basic_id);$data_system.terms.basic[basic_id];end;def self.param(param_id);
$data_system.terms.params[param_id];end;def self.etype(etype_id);$data_system.terms.etypes[etype_id];
end;def self.command(command_id);$data_system.terms.commands[command_id];end;def self.currency_unit;
$data_system.currency_unit;end;def self.level;basic(0);end;def self.level_a;basic(1);end;
def self.hp;basic(2);end;def self.hp_a;basic(3);end;def self.mp;basic(4);end;def self.mp_a;
basic(5);end;def self.tp;basic(6);end;def self.tp_a;basic(7);end;def self.fight;command(0);
end;def self.escape;command(1);end;def self.attack;command(2);end;def self.guard;command(3);
end;def self.item;command(4);end;def self.skill;command(5);end;def self.equip;command(6);
end;def self.status;command(7);end;def self.formation;command(8);end;def self.save;command(9);
end;def self.game_end;command(10);end;def self.weapon;command(12);end;def self.armor;command(13);
end;def self.key_item;command(14);end;def self.equip2;command(15);end;def self.optimize;
command(16);end;def self.clear;command(17);end;def self.new_game;command(18);end;def self.continue;
command(19);end;def self.shutdown;command(20);end;def self.to_title;command(21);end;def self.cancel;
command(22);end;end;module Sound;def self.play_system_sound(n);$data_system.sounds[n].play;
end;def self.play_cursor;play_system_sound(0);end;def self.play_ok;play_system_sound(1);
end;def self.play_cancel;play_system_sound(2);end;def self.play_buzzer;play_system_sound(3);
end;def self.play_equip;play_system_sound(4);end;def self.play_save;play_system_sound(5);
end;def self.play_load;play_system_sound(6);end;def self.play_battle_start;play_system_sound(7);
end;def self.play_escape;play_system_sound(8);end;def self.play_enemy_attack;play_system_sound(9);
end;def self.play_enemy_damage;play_system_sound(10);end;def self.play_enemy_collapse;
play_system_sound(11);end;def self.play_boss_collapse1;play_system_sound(12);end;def self.play_boss_collapse2;
play_system_sound(13);end;def self.play_actor_damage;play_system_sound(14);end;def self.play_actor_collapse;
play_system_sound(15);end;def self.play_recovery;play_system_sound(16);end;def self.play_miss;
play_system_sound(17);end;def self.play_evasion;play_system_sound(18);end;def self.play_magic_evasion;
play_system_sound(19);end;def self.play_reflection;play_system_sound(20);end;def self.play_shop;
play_system_sound(21);end;def self.play_use_item;play_system_sound(22);end;def self.play_use_skill;
play_system_sound(23);end;end;module Cache;def self.animation(filename, hue);load_bitmap('Graphics/Animations/', filename, hue);
end;def self.battleback1(filename);load_bitmap('Graphics/Battlebacks1/', filename);
end;def self.battleback2(filename);load_bitmap('Graphics/Battlebacks2/', filename);
end;def self.battler(filename, hue);load_bitmap('Graphics/Battlers/', filename, hue);
end;def self.character(filename);load_bitmap('Graphics/Characters/', filename);end;def self.face(filename);
load_bitmap('Graphics/Faces/', filename);end;def self.parallax(filename);load_bitmap('Graphics/Parallaxes/', filename);
end;def self.picture(filename);load_bitmap('Graphics/Pictures/', filename);end;def self.system(filename);
load_bitmap('Graphics/System/', filename);end;def self.tileset(filename);load_bitmap('Graphics/Tilesets/', filename);
end;def self.title1(filename);load_bitmap('Graphics/Titles1/', filename);end;def self.title2(filename);
load_bitmap('Graphics/Titles2/', filename);end;def self.load_bitmap(folder_name, filename, hue = 0);
@cache ||= {};if filename.empty?
empty_bitmap;elsif hue.zero?;normal_bitmap(folder_name + filename);
else;hue_changed_bitmap(folder_name + filename, hue);end;end;def self.empty_bitmap;Bitmap.new(32, 32);
end;def self.normal_bitmap(path);@cache[path] = Bitmap.new(path) unless include?(path);
@cache[path];end;def self.hue_changed_bitmap(path, hue);key = [path, hue];unless include?(key)
@cache[key] = normal_bitmap(path).clone;
@cache[key].hue_change(hue);end;@cache[key];end;def self.include?(key);@cache[key] && !@cache[key].disposed?;
end;def self.clear;@cache ||= {};@cache.clear;GC.start;end;end;module DataManager;@last_savefile_index = 0 ;
def self.init;@last_savefile_index = 0;load_database;create_game_objects;setup_battle_test if $BTEST;
end;def self.load_database;if $BTEST
load_battle_test_database;else;load_normal_database;
check_player_location;end;end;def self.load_normal_database;$data_actors = load_data('Data/Actors.rvdata2');
$data_classes = load_data('Data/Classes.rvdata2');$data_skills = load_data('Data/Skills.rvdata2');
$data_items = load_data('Data/Items.rvdata2');$data_weapons = load_data('Data/Weapons.rvdata2');
$data_armors = load_data('Data/Armors.rvdata2');$data_enemies = load_data('Data/Enemies.rvdata2');
$data_troops = load_data('Data/Troops.rvdata2');$data_states = load_data('Data/States.rvdata2');
$data_animations = load_data('Data/Animations.rvdata2');$data_tilesets = load_data('Data/Tilesets.rvdata2');
$data_common_events = load_data('Data/CommonEvents.rvdata2');$data_system = load_data('Data/System.rvdata2');
$data_mapinfos = load_data('Data/MapInfos.rvdata2');end;def self.load_battle_test_database;
$data_actors = load_data('Data/BT_Actors.rvdata2');$data_classes = load_data('Data/BT_Classes.rvdata2');
$data_skills = load_data('Data/BT_Skills.rvdata2');$data_items = load_data('Data/BT_Items.rvdata2');
$data_weapons = load_data('Data/BT_Weapons.rvdata2');$data_armors = load_data('Data/BT_Armors.rvdata2');
$data_enemies = load_data('Data/BT_Enemies.rvdata2');$data_troops = load_data('Data/BT_Troops.rvdata2');
$data_states = load_data('Data/BT_States.rvdata2');$data_animations = load_data('Data/BT_Animations.rvdata2');
$data_tilesets = load_data('Data/BT_Tilesets.rvdata2');$data_common_events = load_data('Data/BT_CommonEvents.rvdata2');
$data_system = load_data('Data/BT_System.rvdata2');end;def self.check_player_location;
return unless $data_system.start_map_id.zero?;msgbox(Vocab::PlayerPosError);exit;end;
def self.create_game_objects;$game_temp = Game_Temp.new;$game_system = Game_System.new;
$game_timer = Game_Timer.new;$game_message = Game_Message.new;$game_switches = Game_Switches.new;
$game_variables = Game_Variables.new;$game_self_switches = Game_SelfSwitches.new;$game_actors = Game_Actors.new;
$game_party = Game_Party.new;$game_troop = Game_Troop.new;$game_map = Game_Map.new;
$game_player = Game_Player.new;end;def self.setup_new_game;create_game_objects;$game_party.setup_starting_members;
$game_map.setup($data_system.start_map_id);$game_player.moveto($data_system.start_x, $data_system.start_y);
$game_player.refresh;Graphics.frame_count = 0;end;def self.setup_battle_test;$game_party.setup_battle_test;
BattleManager.setup($data_system.test_troop_id);BattleManager.play_battle_bgm;end;def self.save_file_exists?;
!Dir.glob('Save*.rvdata2').empty?;end;def self.savefile_max;16;end;def self.make_filename(index);
format('Save%02d.rvdata2', index + 1);end;def self.save_game(index);save_game_without_rescue(index);
rescue StandardError;delete_save_file(index);false;end;def self.load_game(index);load_game_without_rescue(index);
rescue StandardError;false;end;def self.load_header(index);load_header_without_rescue(index);
rescue StandardError;nil;end;def self.save_game_without_rescue(index);File.open(make_filename(index), 'wb') do |file|
$game_system.on_before_save;
Marshal.dump(make_save_header, file);Marshal.dump(make_save_contents, file);@last_savefile_index = index;
end;true;end;def self.load_game_without_rescue(index);File.open(make_filename(index), 'rb') do |file|
Marshal.load(file);
extract_save_contents(Marshal.load(file));reload_map_if_updated;@last_savefile_index = index;
end;true;end;def self.load_header_without_rescue(index);File.open(make_filename(index), 'rb') do |file|
return Marshal.load(file);
end;nil;end;def self.delete_save_file(index);File.delete(make_filename(index));rescue StandardError;
nil;end;def self.make_save_header;header = {};header[:characters] = $game_party.characters_for_savefile;
header[:playtime_s] = $game_system.playtime_s;header;end;def self.make_save_contents;
contents = {};contents[:system] = $game_system;contents[:timer] = $game_timer;contents[:message] = $game_message;
contents[:switches] = $game_switches;contents[:variables] = $game_variables;contents[:self_switches] = $game_self_switches;
contents[:actors] = $game_actors;contents[:party] = $game_party;contents[:troop] = $game_troop;
contents[:map] = $game_map;contents[:player] = $game_player;contents;end;def self.extract_save_contents(contents);
$game_system = contents[:system];$game_timer = contents[:timer];$game_message = contents[:message];
$game_switches = contents[:switches];$game_variables = contents[:variables];$game_self_switches = contents[:self_switches];
$game_actors = contents[:actors];$game_party = contents[:party];$game_troop = contents[:troop];
$game_map = contents[:map];$game_player = contents[:player];end;def self.reload_map_if_updated;
return unless $game_system.version_id != $data_system.version_id;$game_map.setup($game_map.map_id);
$game_player.center($game_player.x, $game_player.y);$game_player.make_encounter_count;
end;def self.savefile_time_stamp(index);File.mtime(make_filename(index));rescue StandardError;
Time.at(0);end;def self.latest_savefile_index;savefile_max.times.max_by { |i| savefile_time_stamp(i) };
end;def self.last_savefile_index;@last_savefile_index;end;end;module SceneManager;@scene = nil ;
@stack = [] ;@background_bitmap = nil ;def self.run;DataManager.init;Audio.setup_midi if use_midi?;
@scene = first_scene_class.new;@scene.main while @scene;end;def self.first_scene_class;
$BTEST ? Scene_Battle : Scene_Title;end;def self.use_midi?;$data_system.opt_use_midi;
end;def self.scene;@scene;end;def self.scene_is?(scene_class);@scene.instance_of?(scene_class);
end;def self.goto(scene_class);@scene = scene_class.new;end;def self.call(scene_class);
@stack.push(@scene);@scene = scene_class.new;end;def self.return;@scene = @stack.pop;
end;def self.clear;@stack.clear;end;def self.exit;@scene = nil;end;def self.snapshot_for_background;
@background_bitmap.dispose if @background_bitmap;@background_bitmap = Graphics.snap_to_bitmap;
@background_bitmap.blur;end;def self.background_bitmap;@background_bitmap;end;end;module BattleManager;
def self.setup(troop_id, can_escape = true, can_lose = false);init_members;$game_troop.setup(troop_id);
@can_escape = can_escape;@can_lose = can_lose;make_escape_ratio;end;def self.init_members;
@phase = :init ;@can_escape = false ;@can_lose = false ;@event_proc = nil ;@preemptive = false ;
@surprise = false ;@actor_index = -1 ;@action_forced = nil ;@map_bgm = nil ;@map_bgs = nil ;
@action_battlers = [] ;end;def self.on_encounter;@preemptive = (rand < rate_preemptive);
@surprise = rand < rate_surprise && !@preemptive;end;def self.rate_preemptive;$game_party.rate_preemptive($game_troop.agi);
end;def self.rate_surprise;$game_party.rate_surprise($game_troop.agi);end;def self.save_bgm_and_bgs;
@map_bgm = RPG::BGM.last;@map_bgs = RPG::BGS.last;end;def self.play_battle_bgm;$game_system.battle_bgm.play;
RPG::BGS.stop;end;def self.play_battle_end_me;$game_system.battle_end_me.play;end;def self.replay_bgm_and_bgs;
@map_bgm.replay unless $BTEST;@map_bgs.replay unless $BTEST;end;def self.make_escape_ratio;
@escape_ratio = 1.5 - 1.0 * $game_troop.agi / $game_party.agi;end;def self.in_turn?;
@phase == :turn;end;def self.turn_end?;@phase == :turn_end;end;def self.aborting?;@phase == :aborting;
end;def self.can_escape?;@can_escape;end;def self.actor;@actor_index >= 0 ? $game_party.members[@actor_index] : nil;
end;def self.clear_actor;@actor_index = -1;end;def self.next_command;loop do;if !actor || !actor.next_command
@actor_index += 1;
return false if @actor_index >= $game_party.members.size;end;break if actor.inputable?;
end;true;end;def self.prior_command;loop do;if !actor || !actor.prior_command
@actor_index -= 1;
return false if @actor_index < 0;end;break if actor.inputable?;end;true;end;def self.event_proc=(proc);
@event_proc = proc;end;def self.method_wait_for_message=(method);@method_wait_for_message = method;
end;def self.wait_for_message;@method_wait_for_message.call if @method_wait_for_message;
end;def self.battle_start;$game_system.battle_count += 1;$game_party.on_battle_start;
$game_troop.on_battle_start;$game_troop.enemy_names.each do |name|
$game_message.add(format(Vocab::Emerge, name));
end;if @preemptive
$game_message.add(format(Vocab::Preemptive, $game_party.name));elsif @surprise;
$game_message.add(format(Vocab::Surprise, $game_party.name));end;wait_for_message;end;
def self.abort;@phase = :aborting;end;def self.judge_win_loss;if @phase
return process_abort if $game_party.members.empty?;
return process_defeat if $game_party.all_dead?;return process_victory if $game_troop.all_dead?;
return process_abort if aborting?;end;false;end;def self.process_victory;play_battle_end_me;
replay_bgm_and_bgs;$game_message.add(format(Vocab::Victory, $game_party.name));display_exp;
gain_gold;gain_drop_items;gain_exp;SceneManager.return;battle_end(0);true;end;def self.process_escape;
$game_message.add(format(Vocab::EscapeStart, $game_party.name));success = @preemptive ? true : (rand < @escape_ratio);
Sound.play_escape;if success
process_abort;else;@escape_ratio += 0.1;$game_message.add("\\.#{Vocab::EscapeFailure}");
$game_party.clear_actions;end;wait_for_message;success;end;def self.process_abort;replay_bgm_and_bgs;
SceneManager.return;battle_end(1);true;end;def self.process_defeat;$game_message.add(format(Vocab::Defeat, $game_party.name));
wait_for_message;if @can_lose
revive_battle_members;replay_bgm_and_bgs;SceneManager.return;
else;SceneManager.goto(Scene_Gameover);end;battle_end(2);true;end;def self.revive_battle_members;
$game_party.battle_members.each do |actor|
actor.hp = 1 if actor.dead?;end;end;def self.battle_end(result);
@phase = nil;@event_proc.call(result) if @event_proc;$game_party.on_battle_end;$game_troop.on_battle_end;
SceneManager.exit if $BTEST;end;def self.input_start;if @phase != :input
@phase = :input;
$game_party.make_actions;$game_troop.make_actions;clear_actor;end;!@surprise && $game_party.inputable?;
end;def self.turn_start;@phase = :turn;clear_actor;$game_troop.increase_turn;make_action_orders;
end;def self.turn_end;@phase = :turn_end;@preemptive = false;@surprise = false;end;def self.display_exp;
return unless $game_troop.exp_total > 0;text = format(Vocab::ObtainExp, $game_troop.exp_total);
$game_message.add("\\.#{text}");end;def self.gain_gold;if $game_troop.gold_total > 0
text = format(Vocab::ObtainGold, $game_troop.gold_total);
$game_message.add("\\.#{text}");$game_party.gain_gold($game_troop.gold_total);end;wait_for_message;
end;def self.gain_drop_items;$game_troop.make_drop_items.each do |item|
$game_party.gain_item(item, 1);
$game_message.add(format(Vocab::ObtainItem, item.name));end;wait_for_message;end;def self.gain_exp;
$game_party.all_members.each do |actor|
actor.gain_exp($game_troop.exp_total);end;wait_for_message;
end;def self.make_action_orders;@action_battlers = [];@action_battlers += $game_party.members unless @surprise;
@action_battlers += $game_troop.members unless @preemptive;@action_battlers.each(&:make_speed);
@action_battlers.sort! { |a, b| b.speed - a.speed };end;def self.force_action(battler);
@action_forced = battler;@action_battlers.delete(battler);end;def self.action_forced?;
@action_forced != nil;end;def self.action_forced_battler;@action_forced;end;def self.clear_action_force;
@action_forced = nil;end;def self.next_subject;loop do;battler = @action_battlers.shift;
return nil unless battler;next unless battler.index && battler.alive?;return battler;
end;end;end;class Game_Temp;attr_reader :common_event_id ;attr_accessor :fade_type ;def initialize;
@common_event_id = 0;@fade_type = 0;end;def reserve_common_event(common_event_id);@common_event_id = common_event_id;
end;def clear_common_event;@common_event_id = 0;end;def common_event_reserved?;@common_event_id > 0;
end;def reserved_common_event;$data_common_events[@common_event_id];end;end;class Game_System;
attr_accessor :save_disabled ;attr_accessor :menu_disabled, :encounter_disabled, :formation_disabled, :battle_count ;
attr_reader :save_count, :version_id ;def initialize;@save_disabled = false;@menu_disabled = false;
@encounter_disabled = false;@formation_disabled = false;@battle_count = 0;@save_count = 0;
@version_id = 0;@window_tone = nil;@battle_bgm = nil;@battle_end_me = nil;@saved_bgm = nil;
end;def japanese?;$data_system.japanese;end;def window_tone;@window_tone || $data_system.window_tone;
end;attr_writer :window_tone;def battle_bgm;@battle_bgm || $data_system.battle_bgm;end;
attr_writer :battle_bgm;def battle_end_me;@battle_end_me || $data_system.battle_end_me;
end;attr_writer :battle_end_me;def on_before_save;@save_count += 1;@version_id = $data_system.version_id;
@frames_on_save = Graphics.frame_count;@bgm_on_save = RPG::BGM.last;@bgs_on_save = RPG::BGS.last;
end;def on_after_load;Graphics.frame_count = @frames_on_save;@bgm_on_save.play;@bgs_on_save.play;
end;def playtime;Graphics.frame_count / Graphics.frame_rate;end;def playtime_s;hour = playtime / 60 / 60;
min = playtime / 60 % 60;sec = playtime % 60;format('%02d:%02d:%02d', hour, min, sec);
end;def save_bgm;@saved_bgm = RPG::BGM.last;end;def replay_bgm;@saved_bgm.replay if @saved_bgm;
end;end;class Game_Timer;def initialize;@count = 0;@working = false;end;def update;return unless @working && @count > 0;
@count -= 1;on_expire if @count.zero?;end;def start(count);@count = count;@working = true;
end;def stop;@working = false;end;def working?;@working;end;def sec;@count / Graphics.frame_rate;
end;def on_expire;BattleManager.abort;end;end;class Game_Message;attr_reader :texts ;attr_reader :choices ;
attr_accessor :face_name, :face_index, :background, :position, :choice_proc, :choice_cancel_type, :num_input_variable_id, :num_input_digits_max, :item_choice_variable_id, :scroll_mode, :scroll_speed, :scroll_no_fast, :visible ;
def initialize;clear;@visible = false;end;def clear;@texts = [];@choices = [];@face_name = '';
@face_index = 0;@background = 0;@position = 2;@choice_cancel_type = 0;@choice_proc = nil;
@num_input_variable_id = 0;@num_input_digits_max = 0;@item_choice_variable_id = 0;@scroll_mode = false;
@scroll_speed = 2;@scroll_no_fast = false;end;def add(text);@texts.push(text);end;def has_text?;
!@texts.empty?;end;def choice?;!@choices.empty?;end;def num_input?;@num_input_variable_id > 0;
end;def item_choice?;@item_choice_variable_id > 0;end;def busy?;has_text? || choice? || num_input? || item_choice?;
end;def new_page;@texts[-1] += "\f" unless @texts.empty?;end;def all_text;@texts.inject('') { |r, text| r + "#{text}\n" };
end;end;class Game_Switches;def initialize;@data = [];end;def [](switch_id);@data[switch_id] || false;
end;def []=(switch_id, value);@data[switch_id] = value;on_change;end;def on_change;$game_map.need_refresh = true;
end;end;class Game_Variables;def initialize;@data = [];end;def [](variable_id);@data[variable_id] || 0;
end;def []=(variable_id, value);@data[variable_id] = value;on_change;end;def on_change;
$game_map.need_refresh = true;end;end;class Game_SelfSwitches;def initialize;@data = {};
end;def [](key);@data[key] == true;end;def []=(key, value);@data[key] = value;on_change;
end;def on_change;$game_map.need_refresh = true;end;end;class Game_Screen;attr_reader :brightness ;
attr_reader :tone, :flash_color, :pictures, :shake, :weather_type, :weather_power ;
def initialize;@pictures = Game_Pictures.new;clear;end;def clear;clear_fade;clear_tone;
clear_flash;clear_shake;clear_weather;clear_pictures;end;def clear_fade;@brightness = 255;
@fadeout_duration = 0;@fadein_duration = 0;end;def clear_tone;@tone = Tone.new;@tone_target = Tone.new;
@tone_duration = 0;end;def clear_flash;@flash_color = Color.new;@flash_duration = 0;end;
def clear_shake;@shake_power = 0;@shake_speed = 0;@shake_duration = 0;@shake_direction = 1;
@shake = 0;end;def clear_weather;@weather_type = :none;@weather_power = 0;@weather_power_target = 0;
@weather_duration = 0;end;def clear_pictures;@pictures.each(&:erase);end;def start_fadeout(duration);
@fadeout_duration = duration;@fadein_duration = 0;end;def start_fadein(duration);@fadein_duration = duration;
@fadeout_duration = 0;end;def start_tone_change(tone, duration);@tone_target = tone.clone;
@tone_duration = duration;@tone = @tone_target.clone if @tone_duration.zero?;end;def start_flash(color, duration);
@flash_color = color.clone;@flash_duration = duration;end;def start_shake(power, speed, duration);
@shake_power = power;@shake_speed = speed;@shake_duration = duration;end;def change_weather(type, power, duration);
@weather_type = type if type != :none || duration.zero?;@weather_power_target = type == :none ? 0.0 : power.to_f;
@weather_duration = duration;@weather_power = @weather_power_target if duration.zero?;
end;def update;update_fadeout;update_fadein;update_tone;update_flash;update_shake;update_weather;
update_pictures;end;def update_fadeout;return unless @fadeout_duration > 0;d = @fadeout_duration;
@brightness = (@brightness * (d - 1)) / d;@fadeout_duration -= 1;end;def update_fadein;
return unless @fadein_duration > 0;d = @fadein_duration;@brightness = (@brightness * (d - 1) + 255) / d;
@fadein_duration -= 1;end;def update_tone;return unless @tone_duration > 0;d = @tone_duration;
@tone.red = (@tone.red * (d - 1) + @tone_target.red) / d;@tone.green = (@tone.green * (d - 1) + @tone_target.green) / d;
@tone.blue = (@tone.blue * (d - 1) + @tone_target.blue) / d;@tone.gray = (@tone.gray * (d - 1) + @tone_target.gray) / d;
@tone_duration -= 1;end;def update_flash;return unless @flash_duration > 0;d = @flash_duration;
@flash_color.alpha = @flash_color.alpha * (d - 1) / d;@flash_duration -= 1;end;def update_shake;
return unless @shake_duration > 0 || @shake != 0;delta = (@shake_power * @shake_speed * @shake_direction) / 10.0;
if @shake_duration <= 1 && @shake * (@shake + delta) < 0
@shake = 0;else;@shake += delta;
end;@shake_direction = -1 if @shake > @shake_power * 2;@shake_direction = 1 if @shake < -@shake_power * 2;
@shake_duration -= 1;end;def update_weather;return unless @weather_duration > 0;d = @weather_duration;
@weather_power = (@weather_power * (d - 1) + @weather_power_target) / d;@weather_duration -= 1;
return unless @weather_duration.zero? && @weather_power_target.zero?;@weather_type = :none;
end;def update_pictures;@pictures.each(&:update);end;def start_flash_for_damage;start_flash(Color.new(255, 0, 0, 128), 8);
end;end;class Game_Picture;attr_reader :number ;attr_reader :name, :origin, :x, :y, :zoom_x, :zoom_y, :opacity, :blend_type, :tone, :angle ;
def initialize(number);@number = number;init_basic;init_target;init_tone;init_rotate;end;
def init_basic;@name = '';@origin = @x = @y = 0;@zoom_x = @zoom_y = 100.0;@opacity = 255.0;
@blend_type = 1;end;def init_target;@target_x = @x;@target_y = @y;@target_zoom_x = @zoom_x;
@target_zoom_y = @zoom_y;@target_opacity = @opacity;@duration = 0;end;def init_tone;@tone = Tone.new;
@tone_target = Tone.new;@tone_duration = 0;end;def init_rotate;@angle = 0;@rotate_speed = 0;
end;def show(name, origin, x, y, zoom_x, zoom_y, opacity, blend_type);@name = name;
@origin = origin;@x = x.to_f;@y = y.to_f;@zoom_x = zoom_x.to_f;@zoom_y = zoom_y.to_f;
@opacity = opacity.to_f;@blend_type = blend_type;init_target;init_tone;init_rotate;end;
def move(origin, x, y, zoom_x, zoom_y, opacity, blend_type, duration);@origin = origin;
@target_x = x.to_f;@target_y = y.to_f;@target_zoom_x = zoom_x.to_f;@target_zoom_y = zoom_y.to_f;
@target_opacity = opacity.to_f;@blend_type = blend_type;@duration = duration;end;def rotate(speed);
@rotate_speed = speed;end;def start_tone_change(tone, duration);@tone_target = tone.clone;
@tone_duration = duration;@tone = @tone_target.clone if @tone_duration.zero?;end;def erase;
@name = '';@origin = 0;end;def update;update_move;update_tone_change;update_rotate;end;def update_move;
return if @duration.zero?;d = @duration;@x = (@x * (d - 1) + @target_x) / d;@y = (@y * (d - 1) + @target_y) / d;
@zoom_x = (@zoom_x * (d - 1) + @target_zoom_x) / d;@zoom_y = (@zoom_y * (d - 1) + @target_zoom_y) / d;
@opacity = (@opacity * (d - 1) + @target_opacity) / d;@duration -= 1;end;def update_tone_change;
return if @tone_duration.zero?;d = @tone_duration;@tone.red = (@tone.red * (d - 1) + @tone_target.red) / d;
@tone.green = (@tone.green * (d - 1) + @tone_target.green) / d;@tone.blue = (@tone.blue * (d - 1) + @tone_target.blue) / d;
@tone.gray = (@tone.gray * (d - 1) + @tone_target.gray) / d;@tone_duration -= 1;end;
def update_rotate;return if @rotate_speed.zero?;@angle += @rotate_speed / 2.0;@angle += 360 while @angle < 0;
@angle %= 360;end;end;class Game_Pictures;def initialize;@data = [];end;def [](number);@data[number] ||= Game_Picture.new(number);
end;def each(&block);@data.compact.each(&block) if block_given?;end;end;class Game_BaseItem;
def initialize;@class = nil;@item_id = 0;end;def is_skill?;@class == RPG::Skill;end;def is_item?;
@class == RPG::Item;end;def is_weapon?;@class == RPG::Weapon;end;def is_armor?;@class == RPG::Armor;
end;def is_nil?;@class.nil?;end;def object;return $data_skills[@item_id] if is_skill?;
return $data_items[@item_id] if is_item?;return $data_weapons[@item_id] if is_weapon?;
return $data_armors[@item_id] if is_armor?;nil;end;def object=(item);@class = item ? item.class : nil;
@item_id = item ? item.id : 0;end;def set_equip(is_weapon, item_id);@class = is_weapon ? RPG::Weapon : RPG::Armor;
@item_id = item_id;end;end;class Game_Action;attr_reader :subject, :forcing, :value;attr_accessor :target_index;
def initialize(subject, forcing = false);@subject = subject;@forcing = forcing;clear;
end;def clear;@item = Game_BaseItem.new;@target_index = -1;@value = 0;end;def friends_unit;
subject.friends_unit;end;def opponents_unit;subject.opponents_unit;end;def set_enemy_action(action);
if action
set_skill(action.skill_id);else;clear;end;end;def set_attack;set_skill(subject.attack_skill_id);
self;end;def set_guard;set_skill(subject.guard_skill_id);self;end;def set_skill(skill_id);
@item.object = $data_skills[skill_id];self;end;def set_item(item_id);@item.object = $data_items[item_id];
self;end;def item;@item.object;end;def attack?;item == $data_skills[subject.attack_skill_id];
end;def decide_random_target;target = if item.for_dead_friend?;friends_unit.random_dead_target;
elsif item.for_friend?;friends_unit.random_target;else;opponents_unit.random_target;
end;if target
@target_index = target.index;else;clear;end;end;def set_confusion;set_attack;
end;def prepare;set_confusion if subject.confusion? && !forcing;end;def valid?;(forcing && item) || subject.usable?(item);
end;def speed;speed = subject.agi + rand(5 + subject.agi / 4);speed += item.speed if item;
speed += subject.atk_speed if attack?;speed;end;def make_targets;if !forcing && subject.confusion?
[confusion_target];
elsif item.for_opponent?;targets_for_opponents;elsif item.for_friend?;targets_for_friends;
else;[];end;end;def confusion_target;case subject.confusion_level;when 1;opponents_unit.random_target;
when 2;if rand(2).zero?
opponents_unit.random_target;else;friends_unit.random_target;
end;else;friends_unit.random_target;end;end;def targets_for_opponents;if item.for_random?
Array.new(item.number_of_targets) { opponents_unit.random_target };
elsif item.for_one?;num = 1 + (attack? ? subject.atk_times_add.to_i : 0);if @target_index < 0
[opponents_unit.random_target] * num;
else;[opponents_unit.smooth_target(@target_index)] * num;end;else;opponents_unit.alive_members;
end;end;def targets_for_friends;if item.for_user?
[subject];elsif item.for_dead_friend?;
if item.for_one?
[friends_unit.smooth_dead_target(@target_index)];else;friends_unit.dead_members;
end;elsif item.for_friend?;if item.for_one?
[friends_unit.smooth_target(@target_index)];
else;friends_unit.alive_members;end;end;end;def evaluate;@value = 0;evaluate_item if valid?;
@value += rand if @value > 0;self;end;def evaluate_item;item_target_candidates.each do |target|
value = evaluate_item_with_target(target);
if item.for_all?
@value += value;elsif value > @value;@value = value;@target_index = target.index;
end;end;end;def item_target_candidates;if item.for_opponent?
opponents_unit.alive_members;
elsif item.for_user?;[subject];elsif item.for_dead_friend?;friends_unit.dead_members;
else;friends_unit.alive_members;end;end;def evaluate_item_with_target(target);target.result.clear;
target.make_damage_value(subject, item);if item.for_opponent?
target.result.hp_damage.to_f / [target.hp, 1].max;
else;recovery = [-target.result.hp_damage, target.mhp - target.hp].min;recovery.to_f / target.mhp;
end;end;end;class Game_ActionResult;attr_accessor(
:used,
:missed,
:evaded,
:critical,
:success,
:hp_damage,
:mp_damage,
:tp_damage,
:hp_drain,
:mp_drain,
:added_states,
:removed_states,
:added_buffs,
:added_debuffs,
:removed_buffs
);
def initialize(battler);@battler = battler;clear;end;def clear;clear_hit_flags;clear_damage_values;
clear_status_effects;end;def clear_hit_flags;@used = false;@missed = false;@evaded = false;
@critical = false;@success = false;end;def clear_damage_values;@hp_damage = 0;@mp_damage = 0;
@tp_damage = 0;@hp_drain = 0;@mp_drain = 0;end;def make_damage(value, item);@critical = false if value.zero?;
@hp_damage = value if item.damage.to_hp?;@mp_damage = value if item.damage.to_mp?;
@mp_damage = [@battler.mp, @mp_damage].min;@hp_drain = @hp_damage if item.damage.drain?;
@mp_drain = @mp_damage if item.damage.drain?;@hp_drain = [@battler.hp, @hp_drain].min;
@success = true if item.damage.to_hp? || @mp_damage != 0;end;def clear_status_effects;
@added_states = [];@removed_states = [];@added_buffs = [];@added_debuffs = [];@removed_buffs = [];
end;def added_state_objects;@added_states.collect { |id| $data_states[id] };end;def removed_state_objects;
@removed_states.collect { |id| $data_states[id] };end;def status_affected?;!(@added_states.empty? && @removed_states.empty? &&
@added_buffs.empty? && @added_debuffs.empty? && @removed_buffs.empty?);
end;def hit?;@used && !@missed && !@evaded;end;def hp_damage_text;if @hp_drain > 0
fmt = @battler.actor? ? Vocab::ActorDrain : Vocab::EnemyDrain;
format(fmt, @battler.name, Vocab.hp, @hp_drain);elsif @hp_damage > 0;fmt = @battler.actor? ? Vocab::ActorDamage : Vocab::EnemyDamage;
format(fmt, @battler.name, @hp_damage);elsif @hp_damage < 0;fmt = @battler.actor? ? Vocab::ActorRecovery : Vocab::EnemyRecovery;
format(fmt, @battler.name, Vocab.hp, -hp_damage);else;fmt = @battler.actor? ? Vocab::ActorNoDamage : Vocab::EnemyNoDamage;
format(fmt, @battler.name);end;end;def mp_damage_text;if @mp_drain > 0
fmt = @battler.actor? ? Vocab::ActorDrain : Vocab::EnemyDrain;
format(fmt, @battler.name, Vocab.mp, @mp_drain);elsif @mp_damage > 0;fmt = @battler.actor? ? Vocab::ActorLoss : Vocab::EnemyLoss;
format(fmt, @battler.name, Vocab.mp, @mp_damage);elsif @mp_damage < 0;fmt = @battler.actor? ? Vocab::ActorRecovery : Vocab::EnemyRecovery;
format(fmt, @battler.name, Vocab.mp, -@mp_damage);else;'';end;end;def tp_damage_text;if @tp_damage > 0
fmt = @battler.actor? ? Vocab::ActorLoss : Vocab::EnemyLoss;
format(fmt, @battler.name, Vocab.tp, @tp_damage);elsif @tp_damage < 0;fmt = @battler.actor? ? Vocab::ActorGain : Vocab::EnemyGain;
format(fmt, @battler.name, Vocab.tp, -@tp_damage);else;'';end;end;end;class Game_BattlerBase;
FEATURE_ELEMENT_RATE = 11 ;FEATURE_DEBUFF_RATE = 12 ;FEATURE_STATE_RATE = 13 ;FEATURE_STATE_RESIST = 14 ;
FEATURE_PARAM = 21 ;FEATURE_XPARAM = 22 ;FEATURE_SPARAM = 23 ;FEATURE_ATK_ELEMENT = 31 ;
FEATURE_ATK_STATE = 32 ;FEATURE_ATK_SPEED = 33 ;FEATURE_ATK_TIMES = 34 ;FEATURE_STYPE_ADD = 41 ;
FEATURE_STYPE_SEAL = 42 ;FEATURE_SKILL_ADD = 43 ;FEATURE_SKILL_SEAL = 44 ;FEATURE_EQUIP_WTYPE = 51 ;
FEATURE_EQUIP_ATYPE = 52 ;FEATURE_EQUIP_FIX = 53 ;FEATURE_EQUIP_SEAL = 54 ;FEATURE_SLOT_TYPE = 55 ;
FEATURE_ACTION_PLUS = 61 ;FEATURE_SPECIAL_FLAG = 62 ;FEATURE_COLLAPSE_TYPE = 63 ;FEATURE_PARTY_ABILITY = 64 ;
FLAG_ID_AUTO_BATTLE = 0 ;FLAG_ID_GUARD = 1 ;FLAG_ID_SUBSTITUTE = 2 ;FLAG_ID_PRESERVE_TP = 3 ;
ICON_BUFF_START = 64 ;ICON_DEBUFF_START = 80 ;attr_reader :hp ;attr_reader :mp, :tp ;
def mhp;param(0);end;def mmp;param(1);end;def atk;param(2);end;def def;param(3);end;def mat;param(4);
end;def mdf;param(5);end;def agi;param(6);end;def luk;param(7);end;def hit;xparam(0);end;def eva;
xparam(1);end;def cri;xparam(2);end;def cev;xparam(3);end;def mev;xparam(4);end;def mrf;xparam(5);
end;def cnt;xparam(6);end;def hrg;xparam(7);end;def mrg;xparam(8);end;def trg;xparam(9);end;def tgr;
sparam(0);end;def grd;sparam(1);end;def rec;sparam(2);end;def pha;sparam(3);end;def mcr;sparam(4);
end;def tcr;sparam(5);end;def pdr;sparam(6);end;def mdr;sparam(7);end;def fdr;sparam(8);end;def exr;
sparam(9);end;def initialize;@hp = @mp = @tp = 0;@hidden = false;clear_param_plus;clear_states;
clear_buffs;end;def clear_param_plus;@param_plus = [0] * 8;end;def clear_states;@states = [];
@state_turns = {};@state_steps = {};end;def erase_state(state_id);@states.delete(state_id);
@state_turns.delete(state_id);@state_steps.delete(state_id);end;def clear_buffs;@buffs = Array.new(8) { 0 };
@buff_turns = {};end;def state?(state_id);@states.include?(state_id);end;def death_state?;
state?(death_state_id);end;def death_state_id;1;end;def states;@states.collect { |id| $data_states[id] };
end;def state_icons;icons = states.collect(&:icon_index);icons.delete(0);icons;end;def buff_icons;
icons = [];@buffs.each_with_index { |lv, i| icons.push(buff_icon_index(lv, i)) };icons.delete(0);
icons;end;def buff_icon_index(buff_level, param_id);if buff_level > 0
ICON_BUFF_START + (buff_level - 1) * 8 + param_id;
elsif buff_level < 0;ICON_DEBUFF_START + (-buff_level - 1) * 8 + param_id;else;0;end;
end;def feature_objects;states;end;def all_features;feature_objects.inject([]) { |r, obj| r + obj.features };
end;def features(code);all_features.select { |ft| ft.code == code };end;def features_with_id(code, id);
all_features.select { |ft| ft.code == code && ft.data_id == id };end;def features_pi(code, id);
features_with_id(code, id).inject(1.0) { |r, ft| r * ft.value };end;def features_sum(code, id);
features_with_id(code, id).inject(0.0) { |r, ft| r + ft.value };end;def features_sum_all(code);
features(code).inject(0.0) { |r, ft| r + ft.value };end;def features_set(code);features(code).inject([]) { |r, ft| r | [ft.data_id] };
end;def param_base(_param_id);0;end;def param_plus(param_id);@param_plus[param_id];end;
def param_min(param_id);return 0 if param_id == 1 ;1;end;def param_max(param_id);return 999_999 if param_id.zero? ;
return 9999 if param_id == 1 ;999;end;def param_rate(param_id);features_pi(FEATURE_PARAM, param_id);
end;def param_buff_rate(param_id);@buffs[param_id] * 0.25 + 1.0;end;def param(param_id);
value = param_base(param_id) + param_plus(param_id);value *= param_rate(param_id) * param_buff_rate(param_id);
[[value, param_max(param_id)].min, param_min(param_id)].max.to_i;end;def xparam(xparam_id);
features_sum(FEATURE_XPARAM, xparam_id);end;def sparam(sparam_id);features_pi(FEATURE_SPARAM, sparam_id);
end;def element_rate(element_id);features_pi(FEATURE_ELEMENT_RATE, element_id);end;def debuff_rate(param_id);
features_pi(FEATURE_DEBUFF_RATE, param_id);end;def state_rate(state_id);features_pi(FEATURE_STATE_RATE, state_id);
end;def state_resist_set;features_set(FEATURE_STATE_RESIST);end;def state_resist?(state_id);
state_resist_set.include?(state_id);end;def atk_elements;features_set(FEATURE_ATK_ELEMENT);
end;def atk_states;features_set(FEATURE_ATK_STATE);end;def atk_states_rate(state_id);
features_sum(FEATURE_ATK_STATE, state_id);end;def atk_speed;features_sum_all(FEATURE_ATK_SPEED);
end;def atk_times_add;[features_sum_all(FEATURE_ATK_TIMES), 0].max;end;def added_skill_types;
features_set(FEATURE_STYPE_ADD);end;def skill_type_sealed?(stype_id);features_set(FEATURE_STYPE_SEAL).include?(stype_id);
end;def added_skills;features_set(FEATURE_SKILL_ADD);end;def skill_sealed?(skill_id);
features_set(FEATURE_SKILL_SEAL).include?(skill_id);end;def equip_wtype_ok?(wtype_id);
features_set(FEATURE_EQUIP_WTYPE).include?(wtype_id);end;def equip_atype_ok?(atype_id);
features_set(FEATURE_EQUIP_ATYPE).include?(atype_id);end;def equip_type_fixed?(etype_id);
features_set(FEATURE_EQUIP_FIX).include?(etype_id);end;def equip_type_sealed?(etype_id);
features_set(FEATURE_EQUIP_SEAL).include?(etype_id);end;def slot_type;features_set(FEATURE_SLOT_TYPE).max || 0;
end;def dual_wield?;slot_type == 1;end;def action_plus_set;features(FEATURE_ACTION_PLUS).collect(&:value);
end;def special_flag(flag_id);features(FEATURE_SPECIAL_FLAG).any? { |ft| ft.data_id == flag_id };
end;def collapse_type;features_set(FEATURE_COLLAPSE_TYPE).max || 0;end;def party_ability(ability_id);
features(FEATURE_PARTY_ABILITY).any? { |ft| ft.data_id == ability_id };end;def auto_battle?;
special_flag(FLAG_ID_AUTO_BATTLE);end;def guard?;special_flag(FLAG_ID_GUARD) && movable?;
end;def substitute?;special_flag(FLAG_ID_SUBSTITUTE) && movable?;end;def preserve_tp?;
special_flag(FLAG_ID_PRESERVE_TP);end;def add_param(param_id, value);@param_plus[param_id] += value;
refresh;end;def hp=(hp);@hp = hp;refresh;end;def mp=(mp);@mp = mp;refresh;end;def change_hp(value, enable_death);
if !enable_death && @hp + value <= 0
self.hp = 1;else;self.hp += value;end;end;def tp=(tp);
@tp = [[tp, max_tp].min, 0].max;end;def max_tp;100;end;def refresh;state_resist_set.each { |state_id| erase_state(state_id) };
@hp = [[@hp, mhp].min, 0].max;@mp = [[@mp, mmp].min, 0].max;@hp.zero? ? add_state(death_state_id) : remove_state(death_state_id);
end;def recover_all;clear_states;@hp = mhp;@mp = mmp;end;def hp_rate;@hp.to_f / mhp;end;def mp_rate;
mmp > 0 ? @mp.to_f / mmp : 0;end;def tp_rate;@tp.to_f / 100;end;def hide;@hidden = true;
end;def appear;@hidden = false;end;def hidden?;@hidden;end;def exist?;!hidden?;end;def dead?;
exist? && death_state?;end;def alive?;exist? && !death_state?;end;def normal?;exist? && restriction.zero?;
end;def inputable?;normal? && !auto_battle?;end;def movable?;exist? && restriction < 4;
end;def confusion?;exist? && restriction >= 1 && restriction <= 3;end;def confusion_level;
confusion? ? restriction : 0;end;def actor?;false;end;def enemy?;false;end;def sort_states;
@states = @states.sort_by { |id| [-$data_states[id].priority, id] };end;def restriction;
states.collect(&:restriction).push(0).max;end;def most_important_state_text;states.each { |state| return state.message3 unless state.message3.empty? };
'';end;def skill_wtype_ok?(_skill);true;end;def skill_mp_cost(skill);(skill.mp_cost * mcr).to_i;
end;def skill_tp_cost(skill);skill.tp_cost;end;def skill_cost_payable?(skill);tp >= skill_tp_cost(skill) && mp >= skill_mp_cost(skill);
end;def pay_skill_cost(skill);self.mp -= skill_mp_cost(skill);self.tp -= skill_tp_cost(skill);
end;def occasion_ok?(item);$game_party.in_battle ? item.battle_ok? : item.menu_ok?;
end;def usable_item_conditions_met?(item);movable? && occasion_ok?(item);end;def skill_conditions_met?(skill);
usable_item_conditions_met?(skill) &&
skill_wtype_ok?(skill) && skill_cost_payable?(skill) &&
!skill_sealed?(skill.id) && !skill_type_sealed?(skill.stype_id);
end;def item_conditions_met?(item);usable_item_conditions_met?(item) && $game_party.has_item?(item);
end;def usable?(item);return skill_conditions_met?(item) if item.is_a?(RPG::Skill);
return item_conditions_met?(item) if item.is_a?(RPG::Item);false;end;def equippable?(item);
return false unless item.is_a?(RPG::EquipItem);return false if equip_type_sealed?(item.etype_id);
return equip_wtype_ok?(item.wtype_id) if item.is_a?(RPG::Weapon);return equip_atype_ok?(item.atype_id) if item.is_a?(RPG::Armor);
false;end;def attack_skill_id;1;end;def guard_skill_id;2;end;def attack_usable?;usable?($data_skills[attack_skill_id]);
end;def guard_usable?;usable?($data_skills[guard_skill_id]);end;end;class Game_Battler < Game_BattlerBase;
EFFECT_RECOVER_HP = 11 ;EFFECT_RECOVER_MP = 12 ;EFFECT_GAIN_TP = 13 ;EFFECT_ADD_STATE = 21 ;
EFFECT_REMOVE_STATE = 22 ;EFFECT_ADD_BUFF = 31 ;EFFECT_ADD_DEBUFF = 32 ;EFFECT_REMOVE_BUFF = 33 ;
EFFECT_REMOVE_DEBUFF = 34 ;EFFECT_SPECIAL = 41 ;EFFECT_GROW = 42 ;EFFECT_LEARN_SKILL = 43 ;
EFFECT_COMMON_EVENT = 44 ;SPECIAL_EFFECT_ESCAPE = 0 ;attr_reader :battler_name ;attr_reader :battler_hue, :action_times, :actions, :speed, :result ;
attr_accessor :last_target_index, :animation_id, :animation_mirror, :sprite_effect_type, :magic_reflection ;
def initialize;@battler_name = '';@battler_hue = 0;@actions = [];@speed = 0;@result = Game_ActionResult.new(self);
@last_target_index = 0;@guarding = false;clear_sprite_effects;super;end;def clear_sprite_effects;
@animation_id = 0;@animation_mirror = false;@sprite_effect_type = nil;end;def clear_actions;
@actions.clear;end;def clear_states;super;@result.clear_status_effects;end;def add_state(state_id);
return unless state_addable?(state_id);add_new_state(state_id) unless state?(state_id);
reset_state_counts(state_id);@result.added_states.push(state_id).uniq!;end;def state_addable?(state_id);
alive? && $data_states[state_id] && !state_resist?(state_id) &&
!state_removed?(state_id) && !state_restrict?(state_id);
end;def state_removed?(state_id);@result.removed_states.include?(state_id);end;def state_restrict?(state_id);
$data_states[state_id].remove_by_restriction && restriction > 0;end;def add_new_state(state_id);
die if state_id == death_state_id;@states.push(state_id);on_restrict if restriction > 0;
sort_states;refresh;end;def on_restrict;clear_actions;states.each do |state|
remove_state(state.id) if state.remove_by_restriction;
end;end;def reset_state_counts(state_id);state = $data_states[state_id];variance = 1 + [state.max_turns - state.min_turns, 0].max;
@state_turns[state_id] = state.min_turns + rand(variance);@state_steps[state_id] = state.steps_to_remove;
end;def remove_state(state_id);return unless state?(state_id);revive if state_id == death_state_id;
erase_state(state_id);refresh;@result.removed_states.push(state_id).uniq!;end;def die;
@hp = 0;clear_states;clear_buffs;end;def revive;@hp = 1 if @hp.zero?;end;def escape;hide if $game_party.in_battle;
clear_actions;clear_states;Sound.play_escape;end;def add_buff(param_id, turns);return unless alive?;
@buffs[param_id] += 1 unless buff_max?(param_id);erase_buff(param_id) if debuff?(param_id);
overwrite_buff_turns(param_id, turns);@result.added_buffs.push(param_id).uniq!;refresh;
end;def add_debuff(param_id, turns);return unless alive?;@buffs[param_id] -= 1 unless debuff_max?(param_id);
erase_buff(param_id) if buff?(param_id);overwrite_buff_turns(param_id, turns);@result.added_debuffs.push(param_id).uniq!;
refresh;end;def remove_buff(param_id);return unless alive?;return if (@buffs[param_id]).zero?;
erase_buff(param_id);@buff_turns.delete(param_id);@result.removed_buffs.push(param_id).uniq!;
refresh;end;def erase_buff(param_id);@buffs[param_id] = 0;@buff_turns[param_id] = 0;end;
def buff?(param_id);@buffs[param_id] > 0;end;def debuff?(param_id);@buffs[param_id] < 0;
end;def buff_max?(param_id);@buffs[param_id] == 2;end;def debuff_max?(param_id);@buffs[param_id] == -2;
end;def overwrite_buff_turns(param_id, turns);@buff_turns[param_id] = turns if @buff_turns[param_id].to_i < turns;
end;def update_state_turns;states.each do |state|
@state_turns[state.id] -= 1 if @state_turns[state.id] > 0;
end;end;def update_buff_turns;@buff_turns.each_key do |param_id|
@buff_turns[param_id] -= 1 if @buff_turns[param_id] > 0;
end;end;def remove_battle_states;states.each do |state|
remove_state(state.id) if state.remove_at_battle_end;
end;end;def remove_all_buffs;@buffs.size.times { |param_id| remove_buff(param_id) };
end;def remove_states_auto(timing);states.each do |state|
if (@state_turns[state.id]).zero? && state.auto_removal_timing == timing
remove_state(state.id);
end;end;end;def remove_buffs_auto;@buffs.size.times do |param_id|
next if (@buffs[param_id]).zero? || @buff_turns[param_id] > 0;
remove_buff(param_id);end;end;def remove_states_by_damage;states.each do |state|
if state.remove_by_damage && rand(100) < state.chance_by_damage
remove_state(state.id);
end;end;end;def make_action_times;action_plus_set.inject(1) { |r, p| rand < p ? r + 1 : r };
end;def make_actions;clear_actions;return unless movable?;@actions = Array.new(make_action_times) { Game_Action.new(self) };
end;def make_speed;@speed = @actions.collect(&:speed).min || 0;end;def current_action;
@actions[0];end;def remove_current_action;@actions.shift;end;def force_action(skill_id, target_index);
clear_actions;action = Game_Action.new(self, true);action.set_skill(skill_id);if target_index == -2
action.target_index = last_target_index;
elsif target_index == -1;action.decide_random_target;else;action.target_index = target_index;
end;@actions.push(action);end;def make_damage_value(user, item);value = item.damage.eval(user, self, $game_variables);
value *= item_element_rate(user, item);value *= pdr if item.physical?;value *= mdr if item.magical?;
value *= rec if item.damage.recover?;value = apply_critical(value) if @result.critical;
value = apply_variance(value, item.damage.variance);value = apply_guard(value);@result.make_damage(value.to_i, item);
end;def item_element_rate(user, item);if item.damage.element_id < 0
user.atk_elements.empty? ? 1.0 : elements_max_rate(user.atk_elements);
else;element_rate(item.damage.element_id);end;end;def elements_max_rate(elements);elements.inject([0.0]) { |r, i| r.push(element_rate(i)) }.max;
end;def apply_critical(damage);damage * 3;end;def apply_variance(damage, variance);amp = [damage.abs * variance / 100, 0].max.to_i;
var = rand(amp + 1) + rand(amp + 1) - amp;damage >= 0 ? damage + var : damage - var;
end;def apply_guard(damage);damage / (damage > 0 && guard? ? 2 * grd : 1);end;def execute_damage(user);
on_damage(@result.hp_damage) if @result.hp_damage > 0;self.hp -= @result.hp_damage;
self.mp -= @result.mp_damage;user.hp += @result.hp_drain;user.mp += @result.mp_drain;
end;def use_item(item);pay_skill_cost(item) if item.is_a?(RPG::Skill);consume_item(item) if item.is_a?(RPG::Item);
item.effects.each { |effect| item_global_effect_apply(effect) };end;def consume_item(item);
$game_party.consume_item(item);end;def item_global_effect_apply(effect);return unless effect.code == EFFECT_COMMON_EVENT;
$game_temp.reserve_common_event(effect.data_id);end;def item_test(user, item);return false if item.for_dead_friend? != dead?;
return true if $game_party.in_battle;return true if item.for_opponent?;return true if item.damage.recover? && item.damage.to_hp? && hp < mhp;
return true if item.damage.recover? && item.damage.to_mp? && mp < mmp;return true if item_has_any_valid_effects?(user, item);
false;end;def item_has_any_valid_effects?(user, item);item.effects.any? { |effect| item_effect_test(user, item, effect) };
end;def item_cnt(user, item);return 0 unless item.physical? ;return 0 unless opposite?(user) ;
cnt ;end;def item_mrf(_user, item);return mrf if item.magical? ;0;end;def item_hit(user, item);
rate = item.success_rate * 0.01 ;rate *= user.hit if item.physical? ;rate ;end;def item_eva(_user, item);
return eva if item.physical? ;return mev if item.magical? ;0;end;def item_cri(user, item);
item.damage.critical ? user.cri * (1 - cev) : 0;end;def attack_apply(attacker);item_apply(attacker, $data_skills[attacker.attack_skill_id]);
end;def item_apply(user, item);@result.clear;@result.used = item_test(user, item);@result.missed = (@result.used && rand >= item_hit(user, item));
@result.evaded = (!@result.missed && rand < item_eva(user, item));return unless @result.hit?;
unless item.damage.none?
@result.critical = (rand < item_cri(user, item));make_damage_value(user, item);
execute_damage(user);end;item.effects.each { |effect| item_effect_apply(user, item, effect) };
item_user_effect(user, item);end;def item_effect_test(_user, _item, effect);case effect.code;
when EFFECT_RECOVER_HP;hp < mhp || effect.value1 < 0 || effect.value2 < 0;when EFFECT_RECOVER_MP;
mp < mmp || effect.value1 < 0 || effect.value2 < 0;when EFFECT_ADD_STATE;!state?(effect.data_id);
when EFFECT_REMOVE_STATE;state?(effect.data_id);when EFFECT_ADD_BUFF;!buff_max?(effect.data_id);
when EFFECT_ADD_DEBUFF;!debuff_max?(effect.data_id);when EFFECT_REMOVE_BUFF;buff?(effect.data_id);
when EFFECT_REMOVE_DEBUFF;debuff?(effect.data_id);when EFFECT_LEARN_SKILL;actor? && !skills.include?($data_skills[effect.data_id]);
else;true;end;end;def item_effect_apply(user, item, effect);method_table = {
EFFECT_RECOVER_HP => :item_effect_recover_hp,
EFFECT_RECOVER_MP => :item_effect_recover_mp,
EFFECT_GAIN_TP => :item_effect_gain_tp,
EFFECT_ADD_STATE => :item_effect_add_state,
EFFECT_REMOVE_STATE => :item_effect_remove_state,
EFFECT_ADD_BUFF => :item_effect_add_buff,
EFFECT_ADD_DEBUFF => :item_effect_add_debuff,
EFFECT_REMOVE_BUFF => :item_effect_remove_buff,
EFFECT_REMOVE_DEBUFF => :item_effect_remove_debuff,
EFFECT_SPECIAL => :item_effect_special,
EFFECT_GROW => :item_effect_grow,
EFFECT_LEARN_SKILL => :item_effect_learn_skill,
EFFECT_COMMON_EVENT => :item_effect_common_event
};
method_name = method_table[effect.code];send(method_name, user, item, effect) if method_name;
end;def item_effect_recover_hp(user, item, effect);value = (mhp * effect.value1 + effect.value2) * rec;
value *= user.pha if item.is_a?(RPG::Item);value = value.to_i;@result.hp_damage -= value;
@result.success = true;self.hp += value;end;def item_effect_recover_mp(user, item, effect);
value = (mmp * effect.value1 + effect.value2) * rec;value *= user.pha if item.is_a?(RPG::Item);
value = value.to_i;@result.mp_damage -= value;@result.success = true if value != 0;
self.mp += value;end;def item_effect_gain_tp(_user, _item, effect);value = effect.value1.to_i;
@result.tp_damage -= value;@result.success = true if value != 0;self.tp += value;end;
def item_effect_add_state(user, item, effect);if effect.data_id.zero?
item_effect_add_state_attack(user, item, effect);
else;item_effect_add_state_normal(user, item, effect);end;end;def item_effect_add_state_attack(user, _item, effect);
user.atk_states.each do |state_id|
chance = effect.value1;chance *= state_rate(state_id);
chance *= user.atk_states_rate(state_id);chance *= luk_effect_rate(user);if rand < chance
add_state(state_id);
@result.success = true;end;end;end;def item_effect_add_state_normal(user, _item, effect);
chance = effect.value1;chance *= state_rate(effect.data_id) if opposite?(user);chance *= luk_effect_rate(user) if opposite?(user);
return unless rand < chance;add_state(effect.data_id);@result.success = true;end;def item_effect_remove_state(_user, _item, effect);
chance = effect.value1;return unless rand < chance;remove_state(effect.data_id);@result.success = true;
end;def item_effect_add_buff(_user, _item, effect);add_buff(effect.data_id, effect.value1);
@result.success = true;end;def item_effect_add_debuff(user, _item, effect);chance = debuff_rate(effect.data_id) * luk_effect_rate(user);
return unless rand < chance;add_debuff(effect.data_id, effect.value1);@result.success = true;
end;def item_effect_remove_buff(_user, _item, effect);remove_buff(effect.data_id) if @buffs[effect.data_id] > 0;
@result.success = true;end;def item_effect_remove_debuff(_user, _item, effect);remove_buff(effect.data_id) if @buffs[effect.data_id] < 0;
@result.success = true;end;def item_effect_special(_user, _item, effect);case effect.data_id;
when SPECIAL_EFFECT_ESCAPE;escape;end;@result.success = true;end;def item_effect_grow(_user, _item, effect);
add_param(effect.data_id, effect.value1.to_i);@result.success = true;end;def item_effect_learn_skill(_user, _item, effect);
learn_skill(effect.data_id) if actor?;@result.success = true;end;def item_effect_common_event(user, item, effect) end;
def item_user_effect(user, item);user.tp += item.tp_gain * user.tcr;end;def luk_effect_rate(user);
[1.0 + (user.luk - luk) * 0.001, 0.0].max;end;def opposite?(battler);actor? != battler.actor? || battler.magic_reflection;
end;def perform_map_damage_effect; end;def init_tp;self.tp = rand * 25;end;def clear_tp;
self.tp = 0;end;def charge_tp_by_damage(damage_rate);self.tp += 50 * damage_rate * tcr;
end;def regenerate_hp;damage = -(mhp * hrg).to_i;perform_map_damage_effect if $game_party.in_battle && damage > 0;
@result.hp_damage = [damage, max_slip_damage].min;self.hp -= @result.hp_damage;end;
def max_slip_damage;$data_system.opt_slip_death ? hp : [hp - 1, 0].max;end;def regenerate_mp;
@result.mp_damage = -(mmp * mrg).to_i;self.mp -= @result.mp_damage;end;def regenerate_tp;
self.tp += 100 * trg;end;def regenerate_all;return unless alive?;regenerate_hp;regenerate_mp;
regenerate_tp;end;def on_battle_start;init_tp unless preserve_tp?;end;def on_action_end;
@result.clear;remove_states_auto(1);remove_buffs_auto;end;def on_turn_end;@result.clear;
regenerate_all;update_state_turns;update_buff_turns;remove_states_auto(2);end;def on_battle_end;
@result.clear;remove_battle_states;remove_all_buffs;clear_actions;clear_tp unless preserve_tp?;
appear;end;def on_damage(value);remove_states_by_damage;charge_tp_by_damage(value.to_f / mhp);
end;end;class Game_Actor < Game_Battler;attr_accessor(
:name,
:nickname
);attr_reader(
:character_name,
:character_index,
:face_name,
:face_index,
:class_id,
:level,
:action_input_index,
:last_skill
);
def initialize(actor_id);super();setup(actor_id);@last_skill = Game_BaseItem.new;end;
def setup(actor_id);@actor_id = actor_id;@name = actor.name;@nickname = actor.nickname;
init_graphics;@class_id = actor.class_id;@level = actor.initial_level;@exp = {};@equips = [];
init_exp;init_skills;init_equips(actor.equips);clear_param_plus;recover_all;end;def actor;
$data_actors[@actor_id];end;def init_graphics;@character_name = actor.character_name;
@character_index = actor.character_index;@face_name = actor.face_name;@face_index = actor.face_index;
end;def exp_for_level(level);self.class.exp_for_level(level);end;def init_exp;@exp[@class_id] = current_level_exp;
end;def current_level_exp;exp_for_level(@level);end;def next_level_exp;exp_for_level(@level + 1);
end;def max_level;actor.max_level;end;def max_level?;@level >= max_level;end;def init_skills;
@skills = [];self.class.learnings.each do |learning|
learn_skill(learning.skill_id) if learning.level <= @level;
end;end;def init_equips(equips);@equips = Array.new(equip_slots.size) { Game_BaseItem.new };
equips.each_with_index do |item_id, i|
etype_id = index_to_etype_id(i);slot_id = empty_slot(etype_id);
@equips[slot_id].set_equip(etype_id.zero?, item_id) if slot_id;end;refresh;end;def index_to_etype_id(index);
index == 1 && dual_wield? ? 0 : index;end;def slot_list(etype_id);result = [];equip_slots.each_with_index { |e, i| result.push(i) if e == etype_id };
result;end;def empty_slot(etype_id);list = slot_list(etype_id);list.find { |i| @equips[i].is_nil? } || list[0];
end;def equip_slots;return [0, 0, 2, 3, 4] if dual_wield?;[0, 1, 2, 3, 4];end;def weapons;
@equips.select(&:is_weapon?).collect(&:object);end;def armors;@equips.select(&:is_armor?).collect(&:object);
end;def equips;@equips.collect(&:object);end;def equip_change_ok?(slot_id);return false if equip_type_fixed?(equip_slots[slot_id]);
return false if equip_type_sealed?(equip_slots[slot_id]);true;end;def change_equip(slot_id, item);
return unless trade_item_with_party(item, equips[slot_id]);return if item && equip_slots[slot_id] != item.etype_id;
@equips[slot_id].object = item;refresh;end;def force_change_equip(slot_id, item);@equips[slot_id].object = item;
release_unequippable_items(false);refresh;end;def trade_item_with_party(new_item, old_item);
return false if new_item && !$game_party.has_item?(new_item);$game_party.gain_item(old_item, 1);
$game_party.lose_item(new_item, 1);true;end;def change_equip_by_id(slot_id, item_id);
if equip_slots[slot_id].zero?
change_equip(slot_id, $data_weapons[item_id]);else;change_equip(slot_id, $data_armors[item_id]);
end;end;def discard_equip(item);slot_id = equips.index(item);@equips[slot_id].object = nil if slot_id;
end;def release_unequippable_items(item_gain = true);loop do;last_equips = equips.dup;
@equips.each_with_index do |item, i|
if !equippable?(item.object) || item.object.etype_id != equip_slots[i]
trade_item_with_party(nil, item.object) if item_gain;
item.object = nil;end;end;return if equips == last_equips;end;end;def clear_equipments;
equip_slots.size.times do |i|
change_equip(i, nil) if equip_change_ok?(i);end;end;def optimize_equipments;
clear_equipments;equip_slots.size.times do |i|
next unless equip_change_ok?(i);items = $game_party.equip_items.select do |item|
item.etype_id == equip_slots[i] &&
equippable?(item) && item.performance >= 0;
end;change_equip(i, items.max_by(&:performance));end;end;def skill_wtype_ok?(skill);wtype_id1 = skill.required_wtype_id1;
wtype_id2 = skill.required_wtype_id2;return true if wtype_id1.zero? && wtype_id2.zero?;
return true if wtype_id1 > 0 && wtype_equipped?(wtype_id1);return true if wtype_id2 > 0 && wtype_equipped?(wtype_id2);
false;end;def wtype_equipped?(wtype_id);weapons.any? { |weapon| weapon.wtype_id == wtype_id };
end;def refresh;release_unequippable_items;super;end;def actor?;true;end;def friends_unit;
$game_party;end;def opponents_unit;$game_troop;end;def id;@actor_id;end;def index;$game_party.members.index(self);
end;def battle_member?;$game_party.battle_members.include?(self);end;def class;$data_classes[@class_id];
end;def skills;(@skills | added_skills).sort.collect { |id| $data_skills[id] };end;def usable_skills;
skills.select { |skill| usable?(skill) };end;def feature_objects;super + [actor] + [self.class] + equips.compact;
end;def atk_elements;set = super;set |= [1] if weapons.compact.empty?;set;end;def param_max(param_id);
return 9999 if param_id.zero?;super;end;def param_base(param_id);self.class.params[param_id, @level];
end;def param_plus(param_id);equips.compact.inject(super) { |r, item| r + item.params[param_id] };
end;def atk_animation_id1;return weapons[0] ? weapons[0].animation_id : 1 unless dual_wield?;
return weapons[0].animation_id if weapons[0];weapons[1] ? 0 : 1;end;def atk_animation_id2;
return weapons[1] ? weapons[1].animation_id : 0 if dual_wield?;0;end;def change_exp(exp, show);
@exp[@class_id] = [exp, 0].max;last_level = @level;last_skills = skills;level_up while !max_level? && self.exp >= next_level_exp;
level_down while self.exp < current_level_exp;display_level_up(skills - last_skills) if show && @level > last_level;
refresh;end;def exp;@exp[@class_id];end;def level_up;@level += 1;self.class.learnings.each do |learning|
learn_skill(learning.skill_id) if learning.level == @level;
end;end;def level_down;@level -= 1;end;def display_level_up(new_skills);$game_message.new_page;
$game_message.add(format(Vocab::LevelUp, @name, Vocab.level, @level));new_skills.each do |skill|
$game_message.add(format(Vocab::ObtainSkill, skill.name));
end;end;def gain_exp(exp);change_exp(self.exp + (exp * final_exp_rate).to_i, true);end;
def final_exp_rate;exr * (battle_member? ? 1 : reserve_members_exp_rate);end;def reserve_members_exp_rate;
$data_system.opt_extra_exp ? 1 : 0;end;def change_level(level, show);level = [[level, max_level].min, 1].max;
change_exp(exp_for_level(level), show);end;def learn_skill(skill_id);return if skill_learn?($data_skills[skill_id]);
@skills.push(skill_id);@skills.sort!;end;def forget_skill(skill_id);@skills.delete(skill_id);
end;def skill_learn?(skill);skill.is_a?(RPG::Skill) && @skills.include?(skill.id);end;
def description;actor.description;end;def change_class(class_id, keep_exp = false);@exp[class_id] = exp if keep_exp;
@class_id = class_id;change_exp(@exp[@class_id] || 0, false);refresh;end;def set_graphic(character_name, character_index, face_name, face_index);
@character_name = character_name;@character_index = character_index;@face_name = face_name;
@face_index = face_index;end;def use_sprite?;false;end;def perform_damage_effect;$game_troop.screen.start_shake(5, 5, 10);
@sprite_effect_type = :blink;Sound.play_actor_damage;end;def perform_collapse_effect;
return unless $game_party.in_battle;@sprite_effect_type = :collapse;Sound.play_actor_collapse;
end;def make_action_list;list = [];list.push(Game_Action.new(self).set_attack.evaluate);
usable_skills.each do |skill|
list.push(Game_Action.new(self).set_skill(skill.id).evaluate);
end;list;end;def make_auto_battle_actions;@actions.size.times do |i|
@actions[i] = make_action_list.max_by(&:value);
end;end;def make_confusion_actions;@actions.size.times do |i|
@actions[i].set_confusion;
end;end;def make_actions;super;if auto_battle?
make_auto_battle_actions;elsif confusion?;
make_confusion_actions;end;end;def on_player_walk;@result.clear;check_floor_effect;return unless $game_player.normal_walk?;
turn_end_on_map;states.each { |state| update_state_steps(state) };show_added_states;
show_removed_states;end;def update_state_steps(state);return unless state.remove_by_walking;
@state_steps[state.id] -= 1 if @state_steps[state.id] > 0;remove_state(state.id) if (@state_steps[state.id]).zero?;
end;def show_added_states;@result.added_state_objects.each do |state|
$game_message.add(name + state.message1) unless state.message1.empty?;
end;end;def show_removed_states;@result.removed_state_objects.each do |state|
$game_message.add(name + state.message4) unless state.message4.empty?;
end;end;def steps_for_turn;20;end;def turn_end_on_map;return unless ($game_party.steps % steps_for_turn).zero?;
on_turn_end;perform_map_damage_effect if @result.hp_damage > 0;end;def check_floor_effect;
execute_floor_damage if $game_player.on_damage_floor?;end;def execute_floor_damage;
damage = (basic_floor_damage * fdr).to_i;self.hp -= [damage, max_floor_damage].min;
perform_map_damage_effect if damage > 0;end;def basic_floor_damage;10;end;def max_floor_damage;
$data_system.opt_floor_death ? hp : [hp - 1, 0].max;end;def perform_map_damage_effect;
$game_map.screen.start_flash_for_damage;end;def clear_actions;super;@action_input_index = 0;
end;def input;@actions[@action_input_index];end;def next_command;return false if @action_input_index >= @actions.size - 1;
@action_input_index += 1;true;end;def prior_command;return false if @action_input_index <= 0;
@action_input_index -= 1;true;end;end;class Game_Enemy < Game_Battler;attr_reader :index ;
attr_reader :enemy_id, :original_name ;attr_accessor :letter, :plural, :screen_x, :screen_y ;
def initialize(index, enemy_id);super();@index = index;@enemy_id = enemy_id;enemy = $data_enemies[@enemy_id];
@original_name = enemy.name;@letter = '';@plural = false;@screen_x = 0;@screen_y = 0;
@battler_name = enemy.battler_name;@battler_hue = enemy.battler_hue;@hp = mhp;@mp = mmp;
end;def enemy?;true;end;def friends_unit;$game_troop;end;def opponents_unit;$game_party;end;
def enemy;$data_enemies[@enemy_id];end;def feature_objects;super + [enemy];end;def name;
@original_name + (@plural ? letter : '');end;def param_base(param_id);enemy.params[param_id];
end;def exp;enemy.exp;end;def gold;enemy.gold;end;def make_drop_items;enemy.drop_items.inject([]) do |r, di|
if di.kind > 0 && rand * di.denominator < drop_item_rate
r.push(item_object(di.kind, di.data_id));
else;r;end;end;end;def drop_item_rate;$game_party.drop_item_double? ? 2 : 1;end;def item_object(kind, data_id);
return $data_items [data_id] if kind == 1;return $data_weapons[data_id] if kind == 2;
return $data_armors [data_id] if kind == 3;nil;end;def use_sprite?;true;end;def screen_z;
100;end;def perform_damage_effect;@sprite_effect_type = :blink;Sound.play_enemy_damage;
end;def perform_collapse_effect;case collapse_type;when 0;@sprite_effect_type = :collapse;
Sound.play_enemy_collapse;when 1;@sprite_effect_type = :boss_collapse;Sound.play_boss_collapse1;
when 2;@sprite_effect_type = :instant_collapse;end;end;def transform(enemy_id);@enemy_id = enemy_id;
if enemy.name != @original_name
@original_name = enemy.name;@letter = '';@plural = false;
end;@battler_name = enemy.battler_name;@battler_hue = enemy.battler_hue;refresh;make_actions unless @actions.empty?;
end;def conditions_met?(action);method_table = {
1 => :conditions_met_turns?,
2 => :conditions_met_hp?,
3 => :conditions_met_mp?,
4 => :conditions_met_state?,
5 => :conditions_met_party_level?,
6 => :conditions_met_switch?
};
method_name = method_table[action.condition_type];if method_name
send(method_name, action.condition_param1, action.condition_param2);
else;true;end;end;def conditions_met_turns?(param1, param2);n = $game_troop.turn_count;
if param2.zero?
n == param1;else;n > 0 && n >= param1 && n % param2 == param1 % param2;
end;end;def conditions_met_hp?(param1, param2);hp_rate >= param1 && hp_rate <= param2;
end;def conditions_met_mp?(param1, param2);mp_rate >= param1 && mp_rate <= param2;end;
def conditions_met_state?(param1, _param2);state?(param1);end;def conditions_met_party_level?(param1, _param2);
$game_party.highest_level >= param1;end;def conditions_met_switch?(param1, _param2);
$game_switches[param1];end;def action_valid?(action);conditions_met?(action) && usable?($data_skills[action.skill_id]);
end;def select_enemy_action(action_list, rating_zero);sum = action_list.inject(0) { |r, a| r + a.rating - rating_zero };
return nil if sum <= 0;value = rand(sum);action_list.each do |action|
return action if value < action.rating - rating_zero;
value -= action.rating - rating_zero;end;end;def make_actions;super;return if @actions.empty?;
action_list = enemy.actions.select { |a| action_valid?(a) };return if action_list.empty?;
rating_max = action_list.collect(&:rating).max;rating_zero = rating_max - 3;action_list.reject! { |a| a.rating <= rating_zero };
@actions.each do |action|
action.set_enemy_action(select_enemy_action(action_list, rating_zero));
end;end;end;class Game_Actors;def initialize;@data = [];end;def [](actor_id);return nil unless $data_actors[actor_id];
@data[actor_id] ||= Game_Actor.new(actor_id);end;end;class Game_Unit;attr_reader :in_battle ;
def initialize;@in_battle = false;end;def members;[];end;def alive_members;members.select(&:alive?);
end;def dead_members;members.select(&:dead?);end;def movable_members;members.select(&:movable?);
end;def clear_actions;members.each(&:clear_actions);end;def agi;return 1 if members.empty?;
members.inject(0) { |r, member| r + member.agi } / members.size;end;def tgr_sum;alive_members.inject(0) { |r, member| r + member.tgr };
end;def random_target;tgr_rand = rand * tgr_sum;alive_members.each do |member|
tgr_rand -= member.tgr;
return member if tgr_rand < 0;end;alive_members[0];end;def random_dead_target;dead_members.empty? ? nil : dead_members[rand(dead_members.size)];
end;def smooth_target(index);member = members[index];member && member.alive? ? member : alive_members[0];
end;def smooth_dead_target(index);member = members[index];member && member.dead? ? member : dead_members[0];
end;def clear_results;members.select { |member| member.result.clear };end;def on_battle_start;
members.each(&:on_battle_start);@in_battle = true;end;def on_battle_end;@in_battle = false;
members.each(&:on_battle_end);end;def make_actions;members.each(&:make_actions);end;def all_dead?;
alive_members.empty?;end;def substitute_battler;members.find(&:substitute?);end;end;class Game_Party < Game_Unit;
ABILITY_ENCOUNTER_HALF = 0 ;ABILITY_ENCOUNTER_NONE = 1 ;ABILITY_CANCEL_SURPRISE = 2 ;
ABILITY_RAISE_PREEMPTIVE = 3 ;ABILITY_GOLD_DOUBLE = 4 ;ABILITY_DROP_ITEM_DOUBLE = 5 ;
attr_reader :gold ;attr_reader :steps, :last_item ;def initialize;super;@gold = 0;@steps = 0;
@last_item = Game_BaseItem.new;@menu_actor_id = 0;@target_actor_id = 0;@actors = [];
init_all_items;end;def init_all_items;@items = {};@weapons = {};@armors = {};end;def exists;
!@actors.empty?;end;def members;in_battle ? battle_members : all_members;end;def all_members;
@actors.collect { |id| $game_actors[id] };end;def battle_members;all_members[0, max_battle_members].select(&:exist?);
end;def max_battle_members;4;end;def leader;battle_members[0];end;def items;@items.keys.sort.collect { |id| $data_items[id] };
end;def weapons;@weapons.keys.sort.collect { |id| $data_weapons[id] };end;def armors;
@armors.keys.sort.collect { |id| $data_armors[id] };end;def equip_items;weapons + armors;
end;def all_items;items + equip_items;end;def item_container(item_class);return @items if item_class == RPG::Item;
return @weapons if item_class == RPG::Weapon;return @armors if item_class == RPG::Armor;
nil;end;def setup_starting_members;@actors = $data_system.party_members.clone;end;def name;
return '' if battle_members.empty?;return leader.name if battle_members.size == 1;
format(Vocab::PartyName, leader.name);end;def setup_battle_test;setup_battle_test_members;
setup_battle_test_items;end;def setup_battle_test_members;$data_system.test_battlers.each do |battler|
actor = $game_actors[battler.actor_id];
actor.change_level(battler.level, false);actor.init_equips(battler.equips);actor.recover_all;
add_actor(actor.id);end;end;def setup_battle_test_items;$data_items.each do |item|
gain_item(item, max_item_number(item)) if item && !item.name.empty?;
end;end;def highest_level;members.collect(&:level).max;end;def add_actor(actor_id);@actors.push(actor_id) unless @actors.include?(actor_id);
$game_player.refresh;$game_map.need_refresh = true;end;def remove_actor(actor_id);@actors.delete(actor_id);
$game_player.refresh;$game_map.need_refresh = true;end;def gain_gold(amount);@gold = [[@gold + amount, 0].max, max_gold].min;
end;def lose_gold(amount);gain_gold(-amount);end;def max_gold;99_999_999;end;def increase_steps;
@steps += 1;end;def item_number(item);container = item_container(item.class);container ? container[item.id] || 0 : 0;
end;def max_item_number(_item);99;end;def item_max?(item);item_number(item) >= max_item_number(item);
end;def has_item?(item, include_equip = false);return true if item_number(item) > 0;
include_equip ? members_equip_include?(item) : false;end;def members_equip_include?(item);
members.any? { |actor| actor.equips.include?(item) };end;def gain_item(item, amount, include_equip = false);
container = item_container(item.class);return unless container;last_number = item_number(item);
new_number = last_number + amount;container[item.id] = [[new_number, 0].max, max_item_number(item)].min;
container.delete(item.id) if (container[item.id]).zero?;if include_equip && new_number < 0
discard_members_equip(item, -new_number);
end;$game_map.need_refresh = true;end;def discard_members_equip(item, amount);n = amount;
members.each do |actor|
while n > 0 && actor.equips.include?(item);actor.discard_equip(item);
n -= 1;end;end;end;def lose_item(item, amount, include_equip = false);gain_item(item, -amount, include_equip);
end;def consume_item(item);lose_item(item, 1) if item.is_a?(RPG::Item) && item.consumable;
end;def usable?(item);members.any? { |actor| actor.usable?(item) };end;def inputable?;
members.any?(&:inputable?);end;def all_dead?;super && ($game_party.in_battle || !members.empty?);
end;def on_player_walk;members.each(&:on_player_walk);end;def menu_actor;$game_actors[@menu_actor_id] || members[0];
end;def menu_actor=(actor);@menu_actor_id = actor.id;end;def menu_actor_next;index = members.index(menu_actor) || -1;
index = (index + 1) % members.size;self.menu_actor = members[index];end;def menu_actor_prev;
index = members.index(menu_actor) || 1;index = (index + members.size - 1) % members.size;
self.menu_actor = members[index];end;def target_actor;$game_actors[@target_actor_id] || members[0];
end;def target_actor=(actor);@target_actor_id = actor.id;end;def swap_order(index1, index2);
@actors[index1], @actors[index2] = @actors[index2], @actors[index1];$game_player.refresh;
end;def characters_for_savefile;battle_members.collect do |actor|
[actor.character_name, actor.character_index];
end;end;def party_ability(ability_id);battle_members.any? { |actor| actor.party_ability(ability_id) };
end;def encounter_half?;party_ability(ABILITY_ENCOUNTER_HALF);end;def encounter_none?;
party_ability(ABILITY_ENCOUNTER_NONE);end;def cancel_surprise?;party_ability(ABILITY_CANCEL_SURPRISE);
end;def raise_preemptive?;party_ability(ABILITY_RAISE_PREEMPTIVE);end;def gold_double?;
party_ability(ABILITY_GOLD_DOUBLE);end;def drop_item_double?;party_ability(ABILITY_DROP_ITEM_DOUBLE);
end;def rate_preemptive(troop_agi);(agi >= troop_agi ? 0.05 : 0.03) * (raise_preemptive? ? 4 : 1);
end;def rate_surprise(troop_agi);if cancel_surprise?
0;else;(agi >= troop_agi ? 0.03 : 0.05);
end;end;end;class Game_Troop < Game_Unit;LETTER_TABLE_HALF = [' A', ' B', ' C', ' D', ' E', ' F', ' G', ' H', ' I', ' J',
' K', ' L', ' M', ' N', ' O', ' P', ' Q', ' R', ' S', ' T',
' U', ' V', ' W', ' X', ' Y', ' Z'].freeze;
LETTER_TABLE_FULL = %w[Ａ Ｂ Ｃ Ｄ Ｅ Ｆ Ｇ Ｈ Ｉ Ｊ Ｋ Ｌ Ｍ Ｎ Ｏ Ｐ Ｑ Ｒ Ｓ Ｔ Ｕ Ｖ Ｗ Ｘ Ｙ Ｚ].freeze;
attr_reader :screen ;attr_reader :interpreter, :event_flags, :turn_count, :name_counts ;
def initialize;super;@screen = Game_Screen.new;@interpreter = Game_Interpreter.new;@event_flags = {};
clear;end;def members;@enemies;end;def clear;@screen.clear;@interpreter.clear;@event_flags.clear;
@enemies = [];@turn_count = 0;@names_count = {};end;def troop;$data_troops[@troop_id];
end;def setup(troop_id);clear;@troop_id = troop_id;@enemies = [];troop.members.each do |member|
next unless $data_enemies[member.enemy_id];
enemy = Game_Enemy.new(@enemies.size, member.enemy_id);enemy.hide if member.hidden;
enemy.screen_x = member.x;enemy.screen_y = member.y;@enemies.push(enemy);end;init_screen_tone;
make_unique_names;end;def init_screen_tone;@screen.start_tone_change($game_map.screen.tone, 0) if $game_map;
end;def make_unique_names;members.each do |enemy|
next unless enemy.alive?;next unless enemy.letter.empty?;
n = @names_count[enemy.original_name] || 0;enemy.letter = letter_table[n % letter_table.size];
@names_count[enemy.original_name] = n + 1;n = @names_count[enemy.original_name] || 0;
enemy.plural = true if n >= 2;end;end;def letter_table;$game_system.japanese? ? LETTER_TABLE_FULL : LETTER_TABLE_HALF;
end;def update;@screen.update;end;def enemy_names;names = [];members.each do |enemy|
next unless enemy.alive?;
next if names.include?(enemy.original_name);names.push(enemy.original_name);end;names;
end;def conditions_met?(page);c = page.condition;if !c.turn_ending && !c.turn_valid && !c.enemy_valid &&
!c.actor_valid && !c.switch_valid;
return false ;end;if @event_flags[page]
return false ;end;if c.turn_ending && !BattleManager.turn_end? 
return false;
end;if c.turn_valid 
n = @turn_count;a = c.turn_a;b = c.turn_b;return false if b.zero? && n != a;
return false if b > 0 && (n < 1 || n < a || n % b != a % b);end;if c.enemy_valid 
enemy = $game_troop.members[c.enemy_index];
return false if enemy.nil?;return false if enemy.hp_rate * 100 > c.enemy_hp;end;if c.actor_valid 
actor = $game_actors[c.actor_id];
return false if actor.nil?;return false if actor.hp_rate * 100 > c.actor_hp;end;if c.switch_valid && !($game_switches[c.switch_id]) 
return false;
end;true ;end;def setup_battle_event;return if @interpreter.running?;return if @interpreter.setup_reserved_common_event;
troop.pages.each do |page|
next unless conditions_met?(page);@interpreter.setup(page.list);
@event_flags[page] = true if page.span <= 1;return;end;end;def increase_turn;troop.pages.each { |page| @event_flags[page] = false if page.span == 1 };
@turn_count += 1;end;def exp_total;dead_members.inject(0) { |r, enemy| r + enemy.exp };
end;def gold_total;dead_members.inject(0) { |r, enemy| r + enemy.gold } * gold_rate;
end;def gold_rate;$game_party.gold_double? ? 2 : 1;end;def make_drop_items;dead_members.inject([]) { |r, enemy| r + enemy.make_drop_items };
end;end;class Game_Map;attr_reader :screen ;attr_reader :interpreter, :events, :display_x, :display_y, :parallax_name, :vehicles, :battleback1_name, :battleback2_name ;
attr_accessor :name_display, :need_refresh ;def initialize;@screen = Game_Screen.new;
@interpreter = Game_Interpreter.new;@map_id = 0;@events = {};@display_x = 0;@display_y = 0;
create_vehicles;@name_display = true;end;def setup(map_id);@map_id = map_id;@map = load_data(format('Data/Map%03d.rvdata2', @map_id));
@tileset_id = @map.tileset_id;@display_x = 0;@display_y = 0;referesh_vehicles;setup_events;
setup_scroll;setup_parallax;setup_battleback;@need_refresh = false;end;def create_vehicles;
@vehicles = [];@vehicles[0] = Game_Vehicle.new(:boat);@vehicles[1] = Game_Vehicle.new(:ship);
@vehicles[2] = Game_Vehicle.new(:airship);end;def referesh_vehicles;@vehicles.each(&:refresh);
end;def vehicle(type);return @vehicles[0] if type == :boat;return @vehicles[1] if type == :ship;
return @vehicles[2] if type == :airship;nil;end;def boat;@vehicles[0];end;def ship;@vehicles[1];
end;def airship;@vehicles[2];end;def setup_events;@events = {};@map.events.each do |i, event|
@events[i] = Game_Event.new(@map_id, event);
end;@common_events = parallel_common_events.collect do |common_event|
Game_CommonEvent.new(common_event.id);
end;refresh_tile_events;end;def parallel_common_events;$data_common_events.select { |event| event && event.parallel? };
end;def setup_scroll;@scroll_direction = 2;@scroll_rest = 0;@scroll_speed = 4;end;def setup_parallax;
@parallax_name = @map.parallax_name;@parallax_loop_x = @map.parallax_loop_x;@parallax_loop_y = @map.parallax_loop_y;
@parallax_sx = @map.parallax_sx;@parallax_sy = @map.parallax_sy;@parallax_x = 0;@parallax_y = 0;
end;def setup_battleback;if @map.specify_battleback
@battleback1_name = @map.battleback1_name;
@battleback2_name = @map.battleback2_name;else;@battleback1_name = nil;@battleback2_name = nil;
end;end;def set_display_pos(x, y);x = [0, [x, width - screen_tile_x].min].max unless loop_horizontal?;
y = [0, [y, height - screen_tile_y].min].max unless loop_vertical?;@display_x = (x + width) % width;
@display_y = (y + height) % height;@parallax_x = x;@parallax_y = y;end;def parallax_ox(bitmap);
if @parallax_loop_x
@parallax_x * 16;else;w1 = [bitmap.width - Graphics.width, 0].max;
w2 = [width * 32 - Graphics.width, 1].max;@parallax_x * 16 * w1 / w2;end;end;def parallax_oy(bitmap);
if @parallax_loop_y
@parallax_y * 16;else;h1 = [bitmap.height - Graphics.height, 0].max;
h2 = [height * 32 - Graphics.height, 1].max;@parallax_y * 16 * h1 / h2;end;end;attr_reader :map_id;
def tileset;$data_tilesets[@tileset_id];end;def display_name;@map.display_name;end;def width;
@map.width;end;def height;@map.height;end;def loop_horizontal?;@map.scroll_type == 2 || @map.scroll_type == 3;
end;def loop_vertical?;@map.scroll_type == 1 || @map.scroll_type == 3;end;def disable_dash?;
@map.disable_dashing;end;def encounter_list;@map.encounter_list;end;def encounter_step;
@map.encounter_step;end;def data;@map.data;end;def overworld?;tileset.mode.zero?;end;def screen_tile_x;
Graphics.width / 32;end;def screen_tile_y;Graphics.height / 32;end;def adjust_x(x);if loop_horizontal? && x < @display_x - (width - screen_tile_x) / 2
x - @display_x + @map.width;
else;x - @display_x;end;end;def adjust_y(y);if loop_vertical? && y < @display_y - (height - screen_tile_y) / 2
y - @display_y + @map.height;
else;y - @display_y;end;end;def round_x(x);loop_horizontal? ? (x + width) % width : x;
end;def round_y(y);loop_vertical? ? (y + height) % height : y;end;def x_with_direction(x, d);
x + (
if d == 6
1
else
d == 4 ? -1 : 0
end);end;def y_with_direction(y, d);y + (
if d == 2
1
else
d == 8 ? -1 : 0
end);
end;def round_x_with_direction(x, d);round_x(x + (
if d == 6
1
else
d == 4 ? -1 : 0
end));
end;def round_y_with_direction(y, d);round_y(y + (
if d == 2
1
else
d == 8 ? -1 : 0
end));
end;def autoplay;@map.bgm.play if @map.autoplay_bgm;@map.bgs.play if @map.autoplay_bgs;
end;def refresh;@events.each_value(&:refresh);@common_events.each(&:refresh);refresh_tile_events;
@need_refresh = false;end;def refresh_tile_events;@tile_events = @events.values.select(&:tile?);
end;def events_xy(x, y);@events.values.select { |event| event.pos?(x, y) };end;def events_xy_nt(x, y);
@events.values.select { |event| event.pos_nt?(x, y) };end;def tile_events_xy(x, y);
@tile_events.select { |event| event.pos_nt?(x, y) };end;def event_id_xy(x, y);list = events_xy(x, y);
list.empty? ? 0 : list[0].id;end;def scroll_down(distance);if loop_vertical?
@display_y += distance;
@display_y %= @map.height;@parallax_y += distance if @parallax_loop_y;else;last_y = @display_y;
@display_y = [@display_y + distance, height - screen_tile_y].min;@parallax_y += @display_y - last_y;
end;end;def scroll_left(distance);if loop_horizontal?
@display_x += @map.width - distance;
@display_x %= @map.width;@parallax_x -= distance if @parallax_loop_x;else;last_x = @display_x;
@display_x = [@display_x - distance, 0].max;@parallax_x += @display_x - last_x;end;
end;def scroll_right(distance);if loop_horizontal?
@display_x += distance;@display_x %= @map.width;
@parallax_x += distance if @parallax_loop_x;else;last_x = @display_x;@display_x = [@display_x + distance, (width - screen_tile_x)].min;
@parallax_x += @display_x - last_x;end;end;def scroll_up(distance);if loop_vertical?
@display_y += @map.height - distance;
@display_y %= @map.height;@parallax_y -= distance if @parallax_loop_y;else;last_y = @display_y;
@display_y = [@display_y - distance, 0].max;@parallax_y += @display_y - last_y;end;
end;def valid?(x, y);x >= 0 && x < width && y >= 0 && y < height;end;def check_passage(x, y, bit);
all_tiles(x, y).each do |tile_id|
flag = tileset.flags[tile_id];next if flag & 0x10 != 0 ;
return true if (flag & bit).zero? ;return false if flag & bit == bit ;end;false ;end;
def tile_id(x, y, z);@map.data[x, y, z] || 0;end;def layered_tiles(x, y);[2, 1, 0].collect { |z| tile_id(x, y, z) };
end;def all_tiles(x, y);tile_events_xy(x, y).collect(&:tile_id) + layered_tiles(x, y);
end;def autotile_type(x, y, z);tile_id(x, y, z) >= 2048 ? (tile_id(x, y, z) - 2048) / 48 : -1;
end;def passable?(x, y, d);check_passage(x, y, (1 << (d / 2 - 1)) & 0x0f);end;def boat_passable?(x, y);
check_passage(x, y, 0x0200);end;def ship_passable?(x, y);check_passage(x, y, 0x0400);
end;def airship_land_ok?(x, y);check_passage(x, y, 0x0800) && check_passage(x, y, 0x0f);
end;def layered_tiles_flag?(x, y, bit);layered_tiles(x, y).any? { |tile_id| tileset.flags[tile_id] & bit != 0 };
end;def ladder?(x, y);valid?(x, y) && layered_tiles_flag?(x, y, 0x20);end;def bush?(x, y);
valid?(x, y) && layered_tiles_flag?(x, y, 0x40);end;def counter?(x, y);valid?(x, y) && layered_tiles_flag?(x, y, 0x80);
end;def damage_floor?(x, y);valid?(x, y) && layered_tiles_flag?(x, y, 0x100);end;def terrain_tag(x, y);
return 0 unless valid?(x, y);layered_tiles(x, y).each do |tile_id|
tag = tileset.flags[tile_id] >> 12;
return tag if tag > 0;end;0;end;def region_id(x, y);valid?(x, y) ? @map.data[x, y, 3] >> 8 : 0;
end;def start_scroll(direction, distance, speed);@scroll_direction = direction;@scroll_rest = distance;
@scroll_speed = speed;end;def scrolling?;@scroll_rest > 0;end;def update(main = false);
refresh if @need_refresh;update_interpreter if main;update_scroll;update_events;update_vehicles;
update_parallax;@screen.update;end;def update_scroll;return unless scrolling?;last_x = @display_x;
last_y = @display_y;do_scroll(@scroll_direction, scroll_distance);if @display_x == last_x && @display_y == last_y
@scroll_rest = 0;
else;@scroll_rest -= scroll_distance;end;end;def scroll_distance;2 ** @scroll_speed / 256.0;
end;def do_scroll(direction, distance);case direction;when 2;scroll_down(distance);when 4;
scroll_left(distance);when 6;scroll_right(distance);when 8;scroll_up(distance);end;end;
def update_events;@events.each_value(&:update);@common_events.each(&:update);end;def update_vehicles;
@vehicles.each(&:update);end;def update_parallax;@parallax_x += @parallax_sx / 64.0 if @parallax_loop_x;
@parallax_y += @parallax_sy / 64.0 if @parallax_loop_y;end;def change_tileset(tileset_id);
@tileset_id = tileset_id;refresh;end;def change_battleback(battleback1_name, battleback2_name);
@battleback1_name = battleback1_name;@battleback2_name = battleback2_name;end;def change_parallax(name, loop_x, loop_y, sx, sy);
@parallax_name = name;@parallax_x = 0 if @parallax_loop_x && !loop_x;@parallax_y = 0 if @parallax_loop_y && !loop_y;
@parallax_loop_x = loop_x;@parallax_loop_y = loop_y;@parallax_sx = sx;@parallax_sy = sy;
end;def update_interpreter;loop do;@interpreter.update;return if @interpreter.running?;
if @interpreter.event_id > 0
unlock_event(@interpreter.event_id);@interpreter.clear;
end;return unless setup_starting_event;end;end;def unlock_event(event_id);@events[event_id].unlock if @events[event_id];
end;def setup_starting_event;refresh if @need_refresh;return true if @interpreter.setup_reserved_common_event;
return true if setup_starting_map_event;return true if setup_autorun_common_event;
false;end;def any_event_starting?;@events.values.any?(&:starting);end;def setup_starting_map_event;
event = @events.values.find(&:starting);event.clear_starting_flag if event;@interpreter.setup(event.list, event.id) if event;
event;end;def setup_autorun_common_event;event = $data_common_events.find do |event|
event && event.autorun? && $game_switches[event.switch_id];
end;@interpreter.setup(event.list) if event;event;end;end;class Game_CommonEvent;def initialize(common_event_id);
@event = $data_common_events[common_event_id];refresh;end;def refresh;if active?
@interpreter ||= Game_Interpreter.new;
else;@interpreter = nil;end;end;def active?;@event.parallel? && $game_switches[@event.switch_id];
end;def update;return unless @interpreter;@interpreter.setup(@event.list) unless @interpreter.running?;
@interpreter.update;end;end;class Game_CharacterBase;attr_reader :id ;attr_reader :x, :y, :real_x, :real_y, :tile_id, :character_name, :character_index, :move_speed, :move_frequency, :walk_anime, :step_anime, :direction_fix, :opacity, :blend_type, :direction, :pattern, :priority_type, :through, :bush_depth ;
attr_accessor :animation_id, :balloon_id, :transparent ;def initialize;init_public_members;
init_private_members;end;def init_public_members;@id = 0;@x = 0;@y = 0;@real_x = 0;@real_y = 0;
@tile_id = 0;@character_name = '';@character_index = 0;@move_speed = 4;@move_frequency = 6;
@walk_anime = true;@step_anime = false;@direction_fix = false;@opacity = 255;@blend_type = 0;
@direction = 2;@pattern = 1;@priority_type = 1;@through = false;@bush_depth = 0;@animation_id = 0;
@balloon_id = 0;@transparent = false;end;def init_private_members;@original_direction = 2 ;
@original_pattern = 1 ;@anime_count = 0 ;@stop_count = 0 ;@jump_count = 0 ;@jump_peak = 0 ;
@locked = false ;@prelock_direction = 0 ;@move_succeed = true ;end;def pos?(x, y);@x == x && @y == y;
end;def pos_nt?(x, y);pos?(x, y) && !@through;end;def normal_priority?;@priority_type == 1;
end;def moving?;@real_x != @x || @real_y != @y;end;def jumping?;@jump_count > 0;end;def jump_height;
(@jump_peak * @jump_peak - (@jump_count - @jump_peak).abs ** 2) / 2;end;def stopping?;
!moving? && !jumping?;end;def real_move_speed;@move_speed + (dash? ? 1 : 0);end;def distance_per_frame;
2 ** real_move_speed / 256.0;end;def dash?;false;end;def debug_through?;false;end;def straighten;
@pattern = 1 if @walk_anime || @step_anime;@anime_count = 0;end;def reverse_dir(d);10 - d;
end;def passable?(x, y, d);x2 = $game_map.round_x_with_direction(x, d);y2 = $game_map.round_y_with_direction(y, d);
return false unless $game_map.valid?(x2, y2);return true if @through || debug_through?;
return false unless map_passable?(x, y, d);return false unless map_passable?(x2, y2, reverse_dir(d));
return false if collide_with_characters?(x2, y2);true;end;def diagonal_passable?(x, y, horz, vert);
x2 = $game_map.round_x_with_direction(x, horz);y2 = $game_map.round_y_with_direction(y, vert);
(passable?(x, y, vert) && passable?(x, y2, horz)) ||
(passable?(x, y, horz) && passable?(x2, y, vert));
end;def map_passable?(x, y, d);$game_map.passable?(x, y, d);end;def collide_with_characters?(x, y);
collide_with_events?(x, y) || collide_with_vehicles?(x, y);end;def collide_with_events?(x, y);
$game_map.events_xy_nt(x, y).any? do |event|
event.normal_priority? || is_a?(Game_Event);
end;end;def collide_with_vehicles?(x, y);$game_map.boat.pos_nt?(x, y) || $game_map.ship.pos_nt?(x, y);
end;def moveto(x, y);@x = x % $game_map.width;@y = y % $game_map.height;@real_x = @x;
@real_y = @y;@prelock_direction = 0;straighten;update_bush_depth;end;def set_direction(d);
@direction = d if !@direction_fix && d != 0;@stop_count = 0;end;def tile?;@tile_id > 0 && @priority_type.zero?;
end;def object_character?;@tile_id > 0 || @character_name[0, 1] == '!';end;def shift_y;
object_character? ? 0 : 4;end;def screen_x;$game_map.adjust_x(@real_x) * 32 + 16;end;
def screen_y;$game_map.adjust_y(@real_y) * 32 + 32 - shift_y - jump_height;end;def screen_z;
@priority_type * 100;end;def update;update_animation;return update_jump if jumping?;return update_move if moving?;
update_stop;end;def update_jump;@jump_count -= 1;@real_x = (@real_x * @jump_count + @x) / (@jump_count + 1.0);
@real_y = (@real_y * @jump_count + @y) / (@jump_count + 1.0);update_bush_depth;return unless @jump_count.zero?;
@real_x = @x = $game_map.round_x(@x);@real_y = @y = $game_map.round_y(@y);end;def update_move;
@real_x = [@real_x - distance_per_frame, @x].max if @x < @real_x;@real_x = [@real_x + distance_per_frame, @x].min if @x > @real_x;
@real_y = [@real_y - distance_per_frame, @y].max if @y < @real_y;@real_y = [@real_y + distance_per_frame, @y].min if @y > @real_y;
update_bush_depth unless moving?;end;def update_stop;@stop_count += 1 unless @locked;
end;def update_animation;update_anime_count;return unless @anime_count > 18 - real_move_speed * 2;
update_anime_pattern;@anime_count = 0;end;def update_anime_count;if moving? && @walk_anime
@anime_count += 1.5;
elsif @step_anime || @pattern != @original_pattern;@anime_count += 1;end;end;def update_anime_pattern;
@pattern = if !@step_anime && @stop_count > 0;@original_pattern;else;(@pattern + 1) % 4;
end;end;def ladder?;$game_map.ladder?(@x, @y);end;def update_bush_depth;if normal_priority? && !object_character? && bush? && !jumping?
@bush_depth = 8 unless moving?;
else;@bush_depth = 0;end;end;def bush?;$game_map.bush?(@x, @y);end;def terrain_tag;$game_map.terrain_tag(@x, @y);
end;def region_id;$game_map.region_id(@x, @y);end;def increase_steps;set_direction(8) if ladder?;
@stop_count = 0;update_bush_depth;end;def set_graphic(character_name, character_index);
@tile_id = 0;@character_name = character_name;@character_index = character_index;@original_pattern = 1;
end;def check_event_trigger_touch_front;x2 = $game_map.round_x_with_direction(@x, @direction);
y2 = $game_map.round_y_with_direction(@y, @direction);check_event_trigger_touch(x2, y2);
end;def check_event_trigger_touch(_x, _y);false;end;def move_straight(d, turn_ok = true);
@move_succeed = passable?(@x, @y, d);if @move_succeed
set_direction(d);@x = $game_map.round_x_with_direction(@x, d);
@y = $game_map.round_y_with_direction(@y, d);@real_x = $game_map.x_with_direction(@x, reverse_dir(d));
@real_y = $game_map.y_with_direction(@y, reverse_dir(d));increase_steps;elsif turn_ok;
set_direction(d);check_event_trigger_touch_front;end;end;def move_diagonal(horz, vert);
@move_succeed = diagonal_passable?(x, y, horz, vert);if @move_succeed
@x = $game_map.round_x_with_direction(@x, horz);
@y = $game_map.round_y_with_direction(@y, vert);@real_x = $game_map.x_with_direction(@x, reverse_dir(horz));
@real_y = $game_map.y_with_direction(@y, reverse_dir(vert));increase_steps;end;set_direction(horz) if @direction == reverse_dir(horz);
set_direction(vert) if @direction == reverse_dir(vert);end;end;class Game_Character < Game_CharacterBase;
ROUTE_END = 0 ;ROUTE_MOVE_DOWN = 1 ;ROUTE_MOVE_LEFT = 2 ;ROUTE_MOVE_RIGHT = 3 ;ROUTE_MOVE_UP = 4 ;
ROUTE_MOVE_LOWER_L = 5 ;ROUTE_MOVE_LOWER_R = 6 ;ROUTE_MOVE_UPPER_L = 7 ;ROUTE_MOVE_UPPER_R = 8 ;
ROUTE_MOVE_RANDOM = 9 ;ROUTE_MOVE_TOWARD = 10 ;ROUTE_MOVE_AWAY = 11 ;ROUTE_MOVE_FORWARD = 12 ;
ROUTE_MOVE_BACKWARD = 13 ;ROUTE_JUMP = 14 ;ROUTE_WAIT = 15 ;ROUTE_TURN_DOWN = 16 ;ROUTE_TURN_LEFT = 17 ;
ROUTE_TURN_RIGHT = 18 ;ROUTE_TURN_UP = 19 ;ROUTE_TURN_90D_R = 20 ;ROUTE_TURN_90D_L = 21 ;
ROUTE_TURN_180D = 22 ;ROUTE_TURN_90D_R_L = 23 ;ROUTE_TURN_RANDOM = 24 ;ROUTE_TURN_TOWARD = 25 ;
ROUTE_TURN_AWAY = 26 ;ROUTE_SWITCH_ON = 27 ;ROUTE_SWITCH_OFF = 28 ;ROUTE_CHANGE_SPEED = 29 ;
ROUTE_CHANGE_FREQ = 30 ;ROUTE_WALK_ANIME_ON = 31 ;ROUTE_WALK_ANIME_OFF = 32 ;ROUTE_STEP_ANIME_ON = 33 ;
ROUTE_STEP_ANIME_OFF = 34 ;ROUTE_DIR_FIX_ON = 35 ;ROUTE_DIR_FIX_OFF = 36 ;ROUTE_THROUGH_ON = 37 ;
ROUTE_THROUGH_OFF = 38 ;ROUTE_TRANSPARENT_ON = 39 ;ROUTE_TRANSPARENT_OFF = 40 ;ROUTE_CHANGE_GRAPHIC = 41 ;
ROUTE_CHANGE_OPACITY = 42 ;ROUTE_CHANGE_BLENDING = 43 ;ROUTE_PLAY_SE = 44 ;ROUTE_SCRIPT = 45 ;
attr_reader :move_route_forcing ;def init_public_members;super;@move_route_forcing = false;
end;def init_private_members;super;@move_route = nil ;@move_route_index = 0 ;@original_move_route = nil ;
@original_move_route_index = 0 ;@wait_count = 0 ;end;def memorize_move_route;@original_move_route = @move_route;
@original_move_route_index = @move_route_index;end;def restore_move_route;@move_route = @original_move_route;
@move_route_index = @original_move_route_index;@original_move_route = nil;end;def force_move_route(move_route);
memorize_move_route unless @original_move_route;@move_route = move_route;@move_route_index = 0;
@move_route_forcing = true;@prelock_direction = 0;@wait_count = 0;end;def update_stop;
super;update_routine_move if @move_route_forcing;end;def update_routine_move;if @wait_count > 0
@wait_count -= 1;
else;@move_succeed = true;command = @move_route.list[@move_route_index];if command
process_move_command(command);
advance_move_route_index;end;end;end;def process_move_command(command);params = command.parameters;
case command.code;when ROUTE_END;process_route_end;when ROUTE_MOVE_DOWN;move_straight(2);
when ROUTE_MOVE_LEFT;move_straight(4);when ROUTE_MOVE_RIGHT;move_straight(6);when ROUTE_MOVE_UP;
move_straight(8);when ROUTE_MOVE_LOWER_L;move_diagonal(4, 2);when ROUTE_MOVE_LOWER_R;
move_diagonal(6, 2);when ROUTE_MOVE_UPPER_L;move_diagonal(4, 8);when ROUTE_MOVE_UPPER_R;
move_diagonal(6, 8);when ROUTE_MOVE_RANDOM;move_random;when ROUTE_MOVE_TOWARD;move_toward_player;
when ROUTE_MOVE_AWAY;move_away_from_player;when ROUTE_MOVE_FORWARD;move_forward;when ROUTE_MOVE_BACKWARD;
move_backward;when ROUTE_JUMP;jump(params[0], params[1]);when ROUTE_WAIT;@wait_count = params[0] - 1;
when ROUTE_TURN_DOWN;set_direction(2);when ROUTE_TURN_LEFT;set_direction(4);when ROUTE_TURN_RIGHT;
set_direction(6);when ROUTE_TURN_UP;set_direction(8);when ROUTE_TURN_90D_R;turn_right_90;
when ROUTE_TURN_90D_L;turn_left_90;when ROUTE_TURN_180D;turn_180;when ROUTE_TURN_90D_R_L;
turn_right_or_left_90;when ROUTE_TURN_RANDOM;turn_random;when ROUTE_TURN_TOWARD;turn_toward_player;
when ROUTE_TURN_AWAY;turn_away_from_player;when ROUTE_SWITCH_ON;$game_switches[params[0]] = true;
when ROUTE_SWITCH_OFF;$game_switches[params[0]] = false;when ROUTE_CHANGE_SPEED;@move_speed = params[0];
when ROUTE_CHANGE_FREQ;@move_frequency = params[0];when ROUTE_WALK_ANIME_ON;@walk_anime = true;
when ROUTE_WALK_ANIME_OFF;@walk_anime = false;when ROUTE_STEP_ANIME_ON;@step_anime = true;
when ROUTE_STEP_ANIME_OFF;@step_anime = false;when ROUTE_DIR_FIX_ON;@direction_fix = true;
when ROUTE_DIR_FIX_OFF;@direction_fix = false;when ROUTE_THROUGH_ON;@through = true;
when ROUTE_THROUGH_OFF;@through = false;when ROUTE_TRANSPARENT_ON;@transparent = true;
when ROUTE_TRANSPARENT_OFF;@transparent = false;when ROUTE_CHANGE_GRAPHIC;set_graphic(params[0], params[1]);
when ROUTE_CHANGE_OPACITY;@opacity = params[0];when ROUTE_CHANGE_BLENDING;@blend_type = params[0];
when ROUTE_PLAY_SE;params[0].play;when ROUTE_SCRIPT;eval(params[0]);end;end;def distance_x_from(x);
result = @x - x;if $game_map.loop_horizontal? && result.abs > $game_map.width / 2
if result < 0
result += $game_map.width;
else;result -= $game_map.width;end;end;result;end;def distance_y_from(y);result = @y - y;
if $game_map.loop_vertical? && result.abs > $game_map.height / 2
if result < 0
result += $game_map.height;
else;result -= $game_map.height;end;end;result;end;def move_random;move_straight(2 + rand(4) * 2, false);
end;def move_toward_character(character);sx = distance_x_from(character.x);sy = distance_y_from(character.y);
if sx.abs > sy.abs
move_straight(sx > 0 ? 4 : 6);move_straight(sy > 0 ? 8 : 2) if !@move_succeed && sy != 0;
elsif sy != 0;move_straight(sy > 0 ? 8 : 2);move_straight(sx > 0 ? 4 : 6) if !@move_succeed && sx != 0;
end;end;def move_away_from_character(character);sx = distance_x_from(character.x);sy = distance_y_from(character.y);
if sx.abs > sy.abs
move_straight(sx > 0 ? 6 : 4);move_straight(sy > 0 ? 2 : 8) if !@move_succeed && sy != 0;
elsif sy != 0;move_straight(sy > 0 ? 2 : 8);move_straight(sx > 0 ? 6 : 4) if !@move_succeed && sx != 0;
end;end;def turn_toward_character(character);sx = distance_x_from(character.x);sy = distance_y_from(character.y);
if sx.abs > sy.abs
set_direction(sx > 0 ? 4 : 6);elsif sy != 0;set_direction(sy > 0 ? 8 : 2);
end;end;def turn_away_from_character(character);sx = distance_x_from(character.x);sy = distance_y_from(character.y);
if sx.abs > sy.abs
set_direction(sx > 0 ? 6 : 4);elsif sy != 0;set_direction(sy > 0 ? 2 : 8);
end;end;def turn_toward_player;turn_toward_character($game_player);end;def turn_away_from_player;
turn_away_from_character($game_player);end;def move_toward_player;move_toward_character($game_player);
end;def move_away_from_player;move_away_from_character($game_player);end;def move_forward;
move_straight(@direction);end;def move_backward;last_direction_fix = @direction_fix;
@direction_fix = true;move_straight(reverse_dir(@direction), false);@direction_fix = last_direction_fix;
end;def jump(x_plus, y_plus);if x_plus.abs > y_plus.abs
set_direction(x_plus < 0 ? 4 : 6) if x_plus != 0;
elsif y_plus != 0;set_direction(y_plus < 0 ? 8 : 2);end;@x += x_plus;@y += y_plus;distance = Math.sqrt(x_plus * x_plus + y_plus * y_plus).round;
@jump_peak = 10 + distance - @move_speed;@jump_count = @jump_peak * 2;@stop_count = 0;
straighten;end;def process_route_end;if @move_route.repeat
@move_route_index = -1;elsif @move_route_forcing;
@move_route_forcing = false;restore_move_route;end;end;def advance_move_route_index;@move_route_index += 1 if @move_succeed || @move_route.skippable;
end;def turn_right_90;case @direction;when 2;set_direction(4);when 4;set_direction(8);when 6;
set_direction(2);when 8;set_direction(6);end;end;def turn_left_90;case @direction;when 2;
set_direction(6);when 4;set_direction(2);when 6;set_direction(8);when 8;set_direction(4);
end;end;def turn_180;set_direction(reverse_dir(@direction));end;def turn_right_or_left_90;
case rand(2);when 0;turn_right_90;when 1;turn_left_90;end;end;def turn_random;set_direction(2 + rand(4) * 2);
end;def swap(character);new_x = character.x;new_y = character.y;character.moveto(x, y);
moveto(new_x, new_y);end;end;class Game_Player < Game_Character;attr_reader :followers ;
def initialize;super;@vehicle_type = :walk ;@vehicle_getting_on = false ;@vehicle_getting_off = false ;
@followers = Game_Followers.new(self);@transparent = $data_system.opt_transparent;
clear_transfer_info;end;def clear_transfer_info;@transferring = false ;@new_map_id = 0 ;
@new_x = 0 ;@new_y = 0 ;@new_direction = 0 ;end;def refresh;@character_name = actor ? actor.character_name : '';
@character_index = actor ? actor.character_index : 0;@followers.refresh;end;def actor;
$game_party.battle_members[0];end;def stopping?;return false if @vehicle_getting_on || @vehicle_getting_off;
super;end;def reserve_transfer(map_id, x, y, d = 2);@transferring = true;@new_map_id = map_id;
@new_x = x;@new_y = y;@new_direction = d;end;def transfer?;@transferring;end;def perform_transfer;
return unless transfer?;set_direction(@new_direction);if @new_map_id != $game_map.map_id
$game_map.setup(@new_map_id);
$game_map.autoplay;end;moveto(@new_x, @new_y);clear_transfer_info;end;def map_passable?(x, y, d);
case @vehicle_type;when :boat;$game_map.boat_passable?(x, y);when :ship;$game_map.ship_passable?(x, y);
when :airship;true;else;super;end;end;def vehicle;$game_map.vehicle(@vehicle_type);end;def in_boat?;
@vehicle_type == :boat;end;def in_ship?;@vehicle_type == :ship;end;def in_airship?;@vehicle_type == :airship;
end;def normal_walk?;@vehicle_type == :walk && !@move_route_forcing;end;def dash?;return false if @move_route_forcing;
return false if $game_map.disable_dash?;return false if vehicle;Input.press?(:A);end;
def debug_through?;$TEST && Input.press?(:CTRL);end;def collide?(x, y);!@through && (pos?(x, y) || followers.collide?(x, y));
end;def center_x;(Graphics.width / 32 - 1) / 2.0;end;def center_y;(Graphics.height / 32 - 1) / 2.0;
end;def center(x, y);$game_map.set_display_pos(x - center_x, y - center_y);end;def moveto(x, y);
super;center(x, y);make_encounter_count;vehicle.refresh if vehicle;@followers.synchronize(x, y, direction);
end;def increase_steps;super;$game_party.increase_steps if normal_walk?;end;def make_encounter_count;
n = $game_map.encounter_step;@encounter_count = rand(n) + rand(n) + 1;end;def make_encounter_troop_id;
encounter_list = [];weight_sum = 0;$game_map.encounter_list.each do |encounter|
next unless encounter_ok?(encounter);
encounter_list.push(encounter);weight_sum += encounter.weight;end;if weight_sum > 0
value = rand(weight_sum);
encounter_list.each do |encounter|
value -= encounter.weight;return encounter.troop_id if value < 0;
end;end;0;end;def encounter_ok?(encounter);return true if encounter.region_set.empty?;
return true if encounter.region_set.include?(region_id);false;end;def encounter;return false if $game_map.interpreter.running?;
return false if $game_system.encounter_disabled;return false if @encounter_count > 0;
make_encounter_count;troop_id = make_encounter_troop_id;return false unless $data_troops[troop_id];
BattleManager.setup(troop_id);BattleManager.on_encounter;true;end;def start_map_event(x, y, triggers, normal);
return if $game_map.interpreter.running?;$game_map.events_xy(x, y).each do |event|
if event.trigger_in?(triggers) && event.normal_priority? == normal
event.start;
end;end;end;def check_event_trigger_here(triggers);start_map_event(@x, @y, triggers, false);
end;def check_event_trigger_there(triggers);x2 = $game_map.round_x_with_direction(@x, @direction);
y2 = $game_map.round_y_with_direction(@y, @direction);start_map_event(x2, y2, triggers, true);
return if $game_map.any_event_starting?;return unless $game_map.counter?(x2, y2);x3 = $game_map.round_x_with_direction(x2, @direction);
y3 = $game_map.round_y_with_direction(y2, @direction);start_map_event(x3, y3, triggers, true);
end;def check_event_trigger_touch(x, y);start_map_event(x, y, [1, 2], true);end;def move_by_input;
return if !movable? || $game_map.interpreter.running?;move_straight(Input.dir4) if Input.dir4 > 0;
end;def movable?;return false if moving?;return false if @move_route_forcing || @followers.gathering?;
return false if @vehicle_getting_on || @vehicle_getting_off;return false if $game_message.busy? || $game_message.visible;
return false if vehicle && !vehicle.movable?;true;end;def update;last_real_x = @real_x;
last_real_y = @real_y;last_moving = moving?;move_by_input;super;update_scroll(last_real_x, last_real_y);
update_vehicle;update_nonmoving(last_moving) unless moving?;@followers.update;end;def update_scroll(last_real_x, last_real_y);
ax1 = $game_map.adjust_x(last_real_x);ay1 = $game_map.adjust_y(last_real_y);ax2 = $game_map.adjust_x(@real_x);
ay2 = $game_map.adjust_y(@real_y);$game_map.scroll_down(ay2 - ay1) if ay2 > ay1 && ay2 > center_y;
$game_map.scroll_left(ax1 - ax2) if ax2 < ax1 && ax2 < center_x;$game_map.scroll_right(ax2 - ax1) if ax2 > ax1 && ax2 > center_x;
$game_map.scroll_up(ay1 - ay2) if ay2 < ay1 && ay2 < center_y;end;def update_vehicle;
return if @followers.gathering?;return unless vehicle;if @vehicle_getting_on
update_vehicle_get_on;
elsif @vehicle_getting_off;update_vehicle_get_off;else;vehicle.sync_with_player;end;end;
def update_vehicle_get_on;return unless !@followers.gathering? && !moving?;@direction = vehicle.direction;
@move_speed = vehicle.speed;@vehicle_getting_on = false;@transparent = true;@through = true if in_airship?;
vehicle.get_on;end;def update_vehicle_get_off;return unless !@followers.gathering? && vehicle.altitude.zero?;
@vehicle_getting_off = false;@vehicle_type = :walk;@transparent = false;end;def update_nonmoving(last_moving);
return if $game_map.interpreter.running?;if last_moving
$game_party.on_player_walk;
return if check_touch_event;end;if movable? && Input.trigger?(:C)
return if get_on_off_vehicle;
return if check_action_event;end;update_encounter if last_moving;end;def update_encounter;
return if $TEST && Input.press?(:CTRL);return if $game_party.encounter_none?;return if in_airship?;
return if @move_route_forcing;@encounter_count -= encounter_progress_value;end;def encounter_progress_value;
value = $game_map.bush?(@x, @y) ? 2 : 1;value *= 0.5 if $game_party.encounter_half?;
value *= 0.5 if in_ship?;value;end;def check_touch_event;return false if in_airship?;
check_event_trigger_here([1, 2]);$game_map.setup_starting_event;end;def check_action_event;
return false if in_airship?;check_event_trigger_here([0]);return true if $game_map.setup_starting_event;
check_event_trigger_there([0, 1, 2]);$game_map.setup_starting_event;end;def get_on_off_vehicle;
if vehicle
get_off_vehicle;else;get_on_vehicle;end;end;def get_on_vehicle;front_x = $game_map.round_x_with_direction(@x, @direction);
front_y = $game_map.round_y_with_direction(@y, @direction);@vehicle_type = :boat if $game_map.boat.pos?(front_x, front_y);
@vehicle_type = :ship if $game_map.ship.pos?(front_x, front_y);@vehicle_type = :airship if $game_map.airship.pos?(@x, @y);
if vehicle
@vehicle_getting_on = true;force_move_forward unless in_airship?;@followers.gather;
end;@vehicle_getting_on;end;def get_off_vehicle;if vehicle.land_ok?(@x, @y, @direction)
set_direction(2) if in_airship?;
@followers.synchronize(@x, @y, @direction);vehicle.get_off;unless in_airship?
force_move_forward;
@transparent = false;end;@vehicle_getting_off = true;@move_speed = 4;@through = false;
make_encounter_count;@followers.gather;end;@vehicle_getting_off;end;def force_move_forward;
@through = true;move_forward;@through = false;end;def on_damage_floor?;$game_map.damage_floor?(@x, @y) && !in_airship?;
end;def move_straight(d, turn_ok = true);@followers.move if passable?(@x, @y, d);super;
end;def move_diagonal(horz, vert);@followers.move if diagonal_passable?(@x, @y, horz, vert);
super;end;end;class Game_Follower < Game_Character;def initialize(member_index, preceding_character);
super();@member_index = member_index;@preceding_character = preceding_character;@transparent = $data_system.opt_transparent;
@through = true;end;def refresh;@character_name = visible? ? actor.character_name : '';
@character_index = visible? ? actor.character_index : 0;end;def actor;$game_party.battle_members[@member_index];
end;def visible?;actor && $game_player.followers.visible;end;def update;@move_speed = $game_player.real_move_speed;
@transparent = $game_player.transparent;@walk_anime = $game_player.walk_anime;@step_anime = $game_player.step_anime;
@direction_fix = $game_player.direction_fix;@opacity = $game_player.opacity;@blend_type = $game_player.blend_type;
super;end;def chase_preceding_character;return if moving?;sx = distance_x_from(@preceding_character.x);
sy = distance_y_from(@preceding_character.y);if sx != 0 && sy != 0
move_diagonal(sx > 0 ? 4 : 6, sy > 0 ? 8 : 2);
elsif sx != 0;move_straight(sx > 0 ? 4 : 6);elsif sy != 0;move_straight(sy > 0 ? 8 : 2);
end;end;def gather?;!moving? && pos?(@preceding_character.x, @preceding_character.y);
end;end;class Game_Followers;attr_accessor :visible ;def initialize(leader);@visible = $data_system.opt_followers;
@gathering = false ;@data = [];@data.push(Game_Follower.new(1, leader));(2...$game_party.max_battle_members).each do |index|
@data.push(Game_Follower.new(index, @data[-1]));
end;end;def [](index);@data[index];end;def each(&block);@data.each(&block) if block_given?;
end;def reverse_each(&block);@data.reverse.each(&block) if block_given?;end;def refresh;
each(&:refresh);end;def update;if gathering?
move unless moving? || moving?;@gathering = false if gather?;
end;each(&:update);end;def move;reverse_each(&:chase_preceding_character);end;def synchronize(x, y, d);
each do |follower|
follower.moveto(x, y);follower.set_direction(d);end;end;def gather;
@gathering = true;end;def gathering?;@gathering;end;def visible_folloers;@data.select(&:visible?);
end;def moving?;visible_folloers.any?(&:moving?);end;def gather?;visible_folloers.all?(&:gather?);
end;def collide?(x, y);visible_folloers.any? { |follower| follower.pos?(x, y) };end;
end;class Game_Vehicle < Game_Character;attr_reader :altitude ;attr_reader :driving ;
def initialize(type);super();@type = type;@altitude = 0;@driving = false;@direction = 4;
@walk_anime = false;@step_anime = false;@walking_bgm = nil;init_move_speed;load_system_settings;
end;def init_move_speed;@move_speed = 4 if @type == :boat;@move_speed = 5 if @type == :ship;
@move_speed = 6 if @type == :airship;end;def system_vehicle;return $data_system.boat if @type == :boat;
return $data_system.ship if @type == :ship;return $data_system.airship if @type == :airship;
nil;end;def load_system_settings;@map_id = system_vehicle.start_map_id;@x = system_vehicle.start_x;
@y = system_vehicle.start_y;@character_name = system_vehicle.character_name;@character_index = system_vehicle.character_index;
end;def refresh;if @driving
@map_id = $game_map.map_id;sync_with_player;elsif @map_id == $game_map.map_id;
moveto(@x, @y);end;@priority_type = if @type == :airship;@driving ? 2 : 0;else;1;end;@walk_anime = @step_anime = @driving;
end;def set_location(map_id, x, y);@map_id = map_id;@x = x;@y = y;refresh;end;def pos?(x, y);
@map_id == $game_map.map_id && super(x, y);end;def transparent;@map_id != $game_map.map_id || super;
end;def get_on;@driving = true;@walk_anime = true;@step_anime = true;@walking_bgm = RPG::BGM.last;
system_vehicle.bgm.play;end;def get_off;@driving = false;@walk_anime = false;@step_anime = false;
@direction = 4;@walking_bgm.play;end;def sync_with_player;@x = $game_player.x;@y = $game_player.y;
@real_x = $game_player.real_x;@real_y = $game_player.real_y;@direction = $game_player.direction;
update_bush_depth;end;def speed;@move_speed;end;def screen_y;super - altitude;end;def movable?;
!moving? && !(@type == :airship && @altitude < max_altitude);end;def update;super;update_airship_altitude if @type == :airship;
end;def update_airship_altitude;if @driving
@altitude += 1 if @altitude < max_altitude && takeoff_ok?;
elsif @altitude > 0;@altitude -= 1;@priority_type = 0 if @altitude.zero?;end;@step_anime = (@altitude == max_altitude);
@priority_type = 2 if @altitude > 0;end;def max_altitude;32;end;def takeoff_ok?;$game_player.followers.gather?;
end;def land_ok?(x, y, d);if @type == :airship
return false unless $game_map.airship_land_ok?(x, y);
return false unless $game_map.events_xy(x, y).empty?;else;x2 = $game_map.round_x_with_direction(x, d);
y2 = $game_map.round_y_with_direction(y, d);return false unless $game_map.valid?(x2, y2);
return false unless $game_map.passable?(x2, y2, reverse_dir(d));return false if collide_with_characters?(x2, y2);
end;true;end;end;class Game_Event < Game_Character;attr_reader :trigger ;attr_reader :list, :starting ;
def initialize(map_id, event);super();@map_id = map_id;@event = event;@id = @event.id;
moveto(@event.x, @event.y);refresh;end;def init_public_members;super;@trigger = 0;@list = nil;
@starting = false;end;def init_private_members;super;@move_type = 0 ;@erased = false ;
@page = nil ;end;def collide_with_characters?(x, y);super || collide_with_player_characters?(x, y);
end;def collide_with_player_characters?(x, y);normal_priority? && $game_player.collide?(x, y);
end;def lock;return if @locked;@prelock_direction = @direction;turn_toward_player;@locked = true;
end;def unlock;return unless @locked;@locked = false;set_direction(@prelock_direction);
end;def update_stop;super;update_self_movement unless @move_route_forcing;end;def update_self_movement;
return unless near_the_screen? && @stop_count > stop_count_threshold;case @move_type;
when 1;move_type_random;when 2;move_type_toward_player;when 3;move_type_custom;end;end;def near_the_screen?(dx = 12, dy = 8);
ax = $game_map.adjust_x(@real_x) - Graphics.width / 2 / 32;ay = $game_map.adjust_y(@real_y) - Graphics.height / 2 / 32;
ax >= -dx && ax <= dx && ay >= -dy && ay <= dy;end;def stop_count_threshold;30 * (5 - @move_frequency);
end;def move_type_random;case rand(6);when 0..1;move_random;when 2..4;move_forward;when 5;
@stop_count = 0;end;end;def move_type_toward_player;if near_the_player?
case rand(6);when 0..3;
move_toward_player;when 4;move_random;when 5;move_forward;end;else;move_random;end;end;def near_the_player?;
sx = distance_x_from($game_player.x).abs;sy = distance_y_from($game_player.y).abs;
sx + sy < 20;end;def move_type_custom;update_routine_move;end;def clear_starting_flag;
@starting = false;end;def empty?;!@list || @list.size <= 1;end;def trigger_in?(triggers);
triggers.include?(@trigger);end;def start;return if empty?;@starting = true;lock if trigger_in?([0, 1, 2]);
end;def erase;@erased = true;refresh;end;def refresh;new_page = @erased ? nil : find_proper_page;
setup_page(new_page) if !new_page || new_page != @page;end;def find_proper_page;@event.pages.reverse.find { |page| conditions_met?(page) };
end;def conditions_met?(page);c = page.condition;if c.switch1_valid && !($game_switches[c.switch1_id])
return false;
end;if c.switch2_valid && !($game_switches[c.switch2_id])
return false;end;if c.variable_valid && ($game_variables[c.variable_id] < c.variable_value)
return false;
end;if c.self_switch_valid
key = [@map_id, @event.id, c.self_switch_ch];return false if $game_self_switches[key] != true;
end;if c.item_valid
item = $data_items[c.item_id];return false unless $game_party.has_item?(item);
end;if c.actor_valid
actor = $game_actors[c.actor_id];return false unless $game_party.members.include?(actor);
end;true;end;def setup_page(new_page);@page = new_page;if @page
setup_page_settings;else;
clear_page_settings;end;update_bush_depth;clear_starting_flag;check_event_trigger_auto;
end;def clear_page_settings;@tile_id = 0;@character_name = '';@character_index = 0;@move_type = 0;
@through = true;@trigger = nil;@list = nil;@interpreter = nil;end;def setup_page_settings;
@tile_id = @page.graphic.tile_id;@character_name = @page.graphic.character_name;@character_index = @page.graphic.character_index;
if @original_direction != @page.graphic.direction
@direction = @page.graphic.direction;
@original_direction = @direction;@prelock_direction = 0;end;if @original_pattern != @page.graphic.pattern
@pattern = @page.graphic.pattern;
@original_pattern = @pattern;end;@move_type = @page.move_type;@move_speed = @page.move_speed;
@move_frequency = @page.move_frequency;@move_route = @page.move_route;@move_route_index = 0;
@move_route_forcing = false;@walk_anime = @page.walk_anime;@step_anime = @page.step_anime;
@direction_fix = @page.direction_fix;@through = @page.through;@priority_type = @page.priority_type;
@trigger = @page.trigger;@list = @page.list;@interpreter = @trigger == 4 ? Game_Interpreter.new : nil;
end;def check_event_trigger_touch(x, y);return if $game_map.interpreter.running?;return unless @trigger == 2 && $game_player.pos?(x, y);
start if !jumping? && normal_priority?;end;def check_event_trigger_auto;start if @trigger == 3;
end;def update;super;check_event_trigger_auto;return unless @interpreter;@interpreter.setup(@list, @event.id) unless @interpreter.running?;
@interpreter.update;end;end;class Game_Interpreter;attr_reader :map_id ;attr_reader :event_id ;
def initialize(depth = 0);@depth = depth;check_overflow;clear;end;def check_overflow;return unless @depth >= 100;
msgbox(Vocab::EventOverflow);exit;end;def clear;@map_id = 0;@event_id = 0;@list = nil ;
@index = 0 ;@branch = {} ;@fiber = nil ;end;def setup(list, event_id = 0);clear;@map_id = $game_map.map_id;
@event_id = event_id;@list = list;create_fiber;end;def create_fiber;@fiber = Fiber.new { run } if @list;
end;def marshal_dump;[@depth, @map_id, @event_id, @list, @index + 1, @branch];end;def marshal_load(obj);
@depth, @map_id, @event_id, @list, @index, @branch = obj;create_fiber;end;def same_map?;
@map_id == $game_map.map_id;end;def setup_reserved_common_event;if $game_temp.common_event_reserved?
setup($game_temp.reserved_common_event.list);
$game_temp.clear_common_event;true;else;false;end;end;def run;wait_for_message;while @list[@index];
execute_command;@index += 1;end;Fiber.yield;@fiber = nil;end;def running?;@fiber != nil;
end;def update;@fiber.resume if @fiber;end;def iterate_actor_id(param, &block);if param.zero?
$game_party.members.each(&block);
else;actor = $game_actors[param];yield actor if actor;end;end;def iterate_actor_var(param1, param2, &block);
if param1.zero?
iterate_actor_id(param2, &block);else;iterate_actor_id($game_variables[param2], &block);
end;end;def iterate_actor_index(param, &block);if param < 0
$game_party.members.each(&block);
else;actor = $game_party.members[param];yield actor if actor;end;end;def iterate_enemy_index(param, &block);
if param < 0
$game_troop.members.each(&block);else;enemy = $game_troop.members[param];
yield enemy if enemy;end;end;def iterate_battler(param1, param2, &block);return unless $game_party.in_battle;
if param1.zero?
iterate_enemy_index(param2, &block);else;iterate_actor_id(param2, &block);
end;end;def screen;$game_party.in_battle ? $game_troop.screen : $game_map.screen;end;
def execute_command;command = @list[@index];@params = command.parameters;@indent = command.indent;
method_name = "command_#{command.code}";send(method_name) if respond_to?(method_name);
end;def command_skip;@index += 1 while @list[@index + 1].indent > @indent;end;def next_event_code;
@list[@index + 1].code;end;def get_character(param);if $game_party.in_battle
nil;elsif param < 0;
$game_player;else;events = same_map? ? $game_map.events : {};events[param > 0 ? param : @event_id];
end;end;def operate_value(operation, operand_type, operand);value = operand_type.zero? ? operand : $game_variables[operand];
operation.zero? ? value : -value;end;def wait(duration);duration.times { Fiber.yield };
end;def wait_for_message;Fiber.yield while $game_message.busy?;end;def command_101;wait_for_message;
$game_message.face_name = @params[0];$game_message.face_index = @params[1];$game_message.background = @params[2];
$game_message.position = @params[3];while next_event_code == 401 ;@index += 1;$game_message.add(@list[@index].parameters[0]);
end;case next_event_code;when 102 ;@index += 1;setup_choices(@list[@index].parameters);
when 103 ;@index += 1;setup_num_input(@list[@index].parameters);when 104 ;@index += 1;
setup_item_choice(@list[@index].parameters);end;wait_for_message;end;def command_102;
wait_for_message;setup_choices(@params);Fiber.yield while $game_message.choice?;end;
def setup_choices(params);params[0].each { |s| $game_message.choices.push(s) };$game_message.choice_cancel_type = params[1];
$game_message.choice_proc = proc { |n| @branch[@indent] = n };end;def command_402;command_skip if @branch[@indent] != @params[0];
end;def command_403;command_skip if @branch[@indent] != 4;end;def command_103;wait_for_message;
setup_num_input(@params);Fiber.yield while $game_message.num_input?;end;def setup_num_input(params);
$game_message.num_input_variable_id = params[0];$game_message.num_input_digits_max = params[1];
end;def command_104;wait_for_message;setup_item_choice(@params);Fiber.yield while $game_message.item_choice?;
end;def setup_item_choice(params);$game_message.item_choice_variable_id = params[0];
end;def command_105;Fiber.yield while $game_message.visible;$game_message.scroll_mode = true;
$game_message.scroll_speed = @params[0];$game_message.scroll_no_fast = @params[1];
while next_event_code == 405;@index += 1;$game_message.add(@list[@index].parameters[0]);
end;wait_for_message;end;def command_108;@comments = [@params[0]];while next_event_code == 408;
@index += 1;@comments.push(@list[@index].parameters[0]);end;end;def command_111;result = false;
case @params[0];when 0 ;result = ($game_switches[@params[1]] == ((@params[2]).zero?));
when 1 ;value1 = $game_variables[@params[1]];value2 = if (@params[2]).zero?;@params[3];
else;$game_variables[@params[3]];end;case @params[4];when 0 ;result = (value1 == value2);
when 1 ;result = (value1 >= value2);when 2 ;result = (value1 <= value2);when 3 ;result = (value1 > value2);
when 4 ;result = (value1 < value2);when 5 ;result = (value1 != value2);end;when 2 ;if @event_id > 0
key = [@map_id, @event_id, @params[1]];
result = ($game_self_switches[key] == ((@params[2]).zero?));end;when 3 ;if $game_timer.working?
result = if (@params[2]).zero?;
($game_timer.sec >= @params[1]);else;($game_timer.sec <= @params[1]);end;end;when 4 ;actor = $game_actors[@params[1]];
if actor
case @params[2];when 0 ;result = $game_party.members.include?(actor);when 1 ;
result = (actor.name == @params[3]);when 2 ;result = (actor.class_id == @params[3]);
when 3 ;result = actor.skill_learn?($data_skills[@params[3]]);when 4 ;result = actor.weapons.include?($data_weapons[@params[3]]);
when 5 ;result = actor.armors.include?($data_armors[@params[3]]);when 6 ;result = actor.state?(@params[3]);
end;end;when 5 ;enemy = $game_troop.members[@params[1]];if enemy
case @params[2];when 0 ;
result = enemy.alive?;when 1 ;result = enemy.state?(@params[3]);end;end;when 6 ;character = get_character(@params[1]);
if character
result = (character.direction == @params[2]);end;when 7 ;case @params[2];
when 0 ;result = ($game_party.gold >= @params[1]);when 1 ;result = ($game_party.gold <= @params[1]);
when 2 ;result = ($game_party.gold < @params[1]);end;when 8 ;result = $game_party.has_item?($data_items[@params[1]]);
when 9 ;result = $game_party.has_item?($data_weapons[@params[1]], @params[2]);when 10 ;
result = $game_party.has_item?($data_armors[@params[1]], @params[2]);when 11 ;result = Input.press?(@params[1]);
when 12 ;result = eval(@params[1]);when 13 ;result = ($game_player.vehicle == $game_map.vehicles[@params[1]]);
end;@branch[@indent] = result;command_skip unless @branch[@indent];end;def command_411;
command_skip if @branch[@indent];end;def command_112; end;def command_413;loop do;@index -= 1;
break if @list[@index].indent == @indent;end;end;def command_113;loop do;@index += 1;return if @index >= @list.size - 1;
return if @list[@index].code == 413 && @list[@index].indent < @indent;end;end;def command_115;
@index = @list.size;end;def command_117;common_event = $data_common_events[@params[0]];
return unless common_event;child = Game_Interpreter.new(@depth + 1);child.setup(common_event.list, same_map? ? @event_id : 0);
child.run;end;def command_118; end;def command_119;label_name = @params[0];@list.size.times do |i|
if @list[i].code == 118 && @list[i].parameters[0] == label_name
@index = i;
return;end;end;end;def command_121;(@params[0]..@params[1]).each do |i|
$game_switches[i] = (@params[2]).zero?;
end;end;def command_122;value = 0;case @params[3] ;when 0 ;value = @params[4];when 1 ;value = $game_variables[@params[4]];
when 2 ;value = @params[4] + rand(@params[5] - @params[4] + 1);when 3 ;value = game_data_operand(@params[4], @params[5], @params[6]);
when 4 ;value = eval(@params[4]);end;(@params[0]..@params[1]).each do |i|
operate_variable(i, @params[2], value);
end;end;def game_data_operand(type, param1, param2);case type;when 0 ;return $game_party.item_number($data_items[param1]);
when 1 ;return $game_party.item_number($data_weapons[param1]);when 2 ;return $game_party.item_number($data_armors[param1]);
when 3 ;actor = $game_actors[param1];if actor
case param2;when 0 ;return actor.level;when 1 ;
return actor.exp;when 2 ;return actor.hp;when 3 ;return actor.mp;when 4..11 ;return actor.param(param2 - 4);
end;end;when 4 ;enemy = $game_troop.members[param1];if enemy
case param2;when 0 ;return enemy.hp;
when 1 ;return enemy.mp;when 2..9 ;return enemy.param(param2 - 2);end;end;when 5 ;character = get_character(param1);
if character
case param2;when 0 ;return character.x;when 1 ;return character.y;when 2 ;
return character.direction;when 3 ;return character.screen_x;when 4 ;return character.screen_y;
end;end;when 6 ;actor = $game_party.members[param1];return actor ? actor.id : 0;when 7 ;
case param1;when 0 ;return $game_map.map_id;when 1 ;return $game_party.members.size;when 2 ;
return $game_party.gold;when 3 ;return $game_party.steps;when 4 ;return Graphics.frame_count / Graphics.frame_rate;
when 5 ;return $game_timer.sec;when 6 ;return $game_system.save_count;when 7 ;return $game_system.battle_count;
end;end;0;end;def operate_variable(variable_id, operation_type, value);case operation_type;
when 0 ;$game_variables[variable_id] = value;when 1 ;$game_variables[variable_id] += value;
when 2 ;$game_variables[variable_id] -= value;when 3 ;$game_variables[variable_id] *= value;
when 4 ;$game_variables[variable_id] /= value;when 5 ;$game_variables[variable_id] %= value;
end;rescue StandardError;$game_variables[variable_id] = 0;end;def command_123;return unless @event_id > 0;
key = [@map_id, @event_id, @params[0]];$game_self_switches[key] = (@params[1]).zero?;
end;def command_124;if (@params[0]).zero? 
$game_timer.start(@params[1] * Graphics.frame_rate);
else;$game_timer.stop;end;end;def command_125;value = operate_value(@params[0], @params[1], @params[2]);
$game_party.gain_gold(value);end;def command_126;value = operate_value(@params[1], @params[2], @params[3]);
$game_party.gain_item($data_items[@params[0]], value);end;def command_127;value = operate_value(@params[1], @params[2], @params[3]);
$game_party.gain_item($data_weapons[@params[0]], value, @params[4]);end;def command_128;
value = operate_value(@params[1], @params[2], @params[3]);$game_party.gain_item($data_armors[@params[0]], value, @params[4]);
end;def command_129;actor = $game_actors[@params[0]];return unless actor;if (@params[1]).zero? 
if @params[2] == 1 
$game_actors[@params[0]].setup(@params[0]);
end;$game_party.add_actor(@params[0]);else;$game_party.remove_actor(@params[0]);end;end;
def command_132;$game_system.battle_bgm = @params[0];end;def command_133;$game_system.battle_end_me = @params[0];
end;def command_134;$game_system.save_disabled = ((@params[0]).zero?);end;def command_135;
$game_system.menu_disabled = ((@params[0]).zero?);end;def command_136;$game_system.encounter_disabled = ((@params[0]).zero?);
$game_player.make_encounter_count;end;def command_137;$game_system.formation_disabled = ((@params[0]).zero?);
end;def command_138;$game_system.window_tone = @params[0];end;def command_201;return if $game_party.in_battle;
Fiber.yield while $game_player.transfer? || $game_message.visible;if (@params[0]).zero? 
map_id = @params[1];
x = @params[2];y = @params[3];else;map_id = $game_variables[@params[1]];x = $game_variables[@params[2]];
y = $game_variables[@params[3]];end;$game_player.reserve_transfer(map_id, x, y, @params[4]);
$game_temp.fade_type = @params[5];Fiber.yield while $game_player.transfer?;end;def command_202;
if (@params[1]).zero? 
map_id = @params[2];x = @params[3];y = @params[4];else;map_id = $game_variables[@params[2]];
x = $game_variables[@params[3]];y = $game_variables[@params[4]];end;vehicle = $game_map.vehicles[@params[0]];
vehicle.set_location(map_id, x, y) if vehicle;end;def command_203;character = get_character(@params[0]);
return unless character;if (@params[1]).zero? 
character.moveto(@params[2], @params[3]);
elsif @params[1] == 1 ;new_x = $game_variables[@params[2]];new_y = $game_variables[@params[3]];
character.moveto(new_x, new_y);else;character2 = get_character(@params[2]);character.swap(character2) if character2;
end;character.set_direction(@params[4]) if @params[4] > 0;end;def command_204;return if $game_party.in_battle;
Fiber.yield while $game_map.scrolling?;$game_map.start_scroll(@params[0], @params[1], @params[2]);
end;def command_205;$game_map.refresh if $game_map.need_refresh;character = get_character(@params[0]);
return unless character;character.force_move_route(@params[1]);Fiber.yield while character.move_route_forcing if @params[1].wait;
end;def command_206;$game_player.get_on_off_vehicle;end;def command_211;$game_player.transparent = ((@params[0]).zero?);
end;def command_212;character = get_character(@params[0]);return unless character;character.animation_id = @params[1];
Fiber.yield while character.animation_id > 0 if @params[2];end;def command_213;character = get_character(@params[0]);
return unless character;character.balloon_id = @params[1];Fiber.yield while character.balloon_id > 0 if @params[2];
end;def command_214;$game_map.events[@event_id].erase if same_map? && @event_id > 0;
end;def command_216;$game_player.followers.visible = ((@params[0]).zero?);$game_player.refresh;
end;def command_217;return if $game_party.in_battle;$game_player.followers.gather;Fiber.yield until $game_player.followers.gather?;
end;def command_221;Fiber.yield while $game_message.visible;screen.start_fadeout(30);
wait(30);end;def command_222;Fiber.yield while $game_message.visible;screen.start_fadein(30);
wait(30);end;def command_223;screen.start_tone_change(@params[0], @params[1]);wait(@params[1]) if @params[2];
end;def command_224;screen.start_flash(@params[0], @params[1]);wait(@params[1]) if @params[2];
end;def command_225;screen.start_shake(@params[0], @params[1], @params[2]);wait(@params[1]) if @params[2];
end;def command_230;wait(@params[0]);end;def command_231;if (@params[3]).zero? 
x = @params[4];
y = @params[5];else;x = $game_variables[@params[4]];y = $game_variables[@params[5]];
end;screen.pictures[@params[0]].show(@params[1], @params[2],
x, y, @params[6], @params[7], @params[8], @params[9]);
end;def command_232;if (@params[3]).zero? 
x = @params[4];y = @params[5];else;x = $game_variables[@params[4]];
y = $game_variables[@params[5]];end;screen.pictures[@params[0]].move(@params[2], x, y, @params[6],
@params[7], @params[8], @params[9], @params[10]);
wait(@params[10]) if @params[11];end;def command_233;screen.pictures[@params[0]].rotate(@params[1]);
end;def command_234;screen.pictures[@params[0]].start_tone_change(@params[1], @params[2]);
wait(@params[2]) if @params[3];end;def command_235;screen.pictures[@params[0]].erase;
end;def command_236;return if $game_party.in_battle;screen.change_weather(@params[0], @params[1], @params[2]);
wait(@params[2]) if @params[3];end;def command_241;@params[0].play;end;def command_242;
RPG::BGM.fade(@params[0] * 1000);end;def command_243;$game_system.save_bgm;end;def command_244;
$game_system.replay_bgm;end;def command_245;@params[0].play;end;def command_246;RPG::BGS.fade(@params[0] * 1000);
end;def command_249;@params[0].play;end;def command_250;@params[0].play;end;def command_251;
RPG::SE.stop;end;def command_261;Fiber.yield while $game_message.visible;Fiber.yield;
name = @params[0];Graphics.play_movie("Movies/#{name}") unless name.empty?;end;def command_281;
$game_map.name_display = ((@params[0]).zero?);end;def command_282;$game_map.change_tileset(@params[0]);
end;def command_283;$game_map.change_battleback(@params[0], @params[1]);end;def command_284;
$game_map.change_parallax(@params[0], @params[1], @params[2],
@params[3], @params[4]);
end;def command_285;if (@params[2]).zero? 
x = @params[3];y = @params[4];else;x = $game_variables[@params[3]];
y = $game_variables[@params[4]];end;value = case @params[1];when 0 ;$game_map.terrain_tag(x, y);
when 1 ;$game_map.event_id_xy(x, y);when 2..4 ;$game_map.tile_id(x, y, @params[1] - 2);
else;$game_map.region_id(x, y);end;$game_variables[@params[0]] = value;end;def command_301;
return if $game_party.in_battle;troop_id = if (@params[0]).zero? ;@params[1];elsif @params[0] == 1 ;
$game_variables[@params[1]];else;$game_player.make_encounter_troop_id;end;if $data_troops[troop_id]
BattleManager.setup(troop_id, @params[2], @params[3]);
BattleManager.event_proc = proc { |n| @branch[@indent] = n };$game_player.make_encounter_count;
SceneManager.call(Scene_Battle);end;Fiber.yield;end;def command_601;command_skip if @branch[@indent] != 0;
end;def command_602;command_skip if @branch[@indent] != 1;end;def command_603;command_skip if @branch[@indent] != 2;
end;def command_302;return if $game_party.in_battle;goods = [@params];while next_event_code == 605;
@index += 1;goods.push(@list[@index].parameters);end;SceneManager.call(Scene_Shop);SceneManager.scene.prepare(goods, @params[4]);
Fiber.yield;end;def command_303;return if $game_party.in_battle;return unless $data_actors[@params[0]];
SceneManager.call(Scene_Name);SceneManager.scene.prepare(@params[0], @params[1]);Fiber.yield;
end;def command_311;value = operate_value(@params[2], @params[3], @params[4]);iterate_actor_var(@params[0], @params[1]) do |actor|
next if actor.dead?;
actor.change_hp(value, @params[5]);actor.perform_collapse_effect if actor.dead?;end;
SceneManager.goto(Scene_Gameover) if $game_party.all_dead?;end;def command_312;value = operate_value(@params[2], @params[3], @params[4]);
iterate_actor_var(@params[0], @params[1]) do |actor|
actor.mp += value;end;end;def command_313;
iterate_actor_var(@params[0], @params[1]) do |actor|
already_dead = actor.dead?;if (@params[2]).zero?
actor.add_state(@params[3]);
else;actor.remove_state(@params[3]);end;actor.perform_collapse_effect if actor.dead? && !already_dead;
end;$game_party.clear_results;end;def command_314;iterate_actor_var(@params[0], @params[1], &:recover_all);
end;def command_315;value = operate_value(@params[2], @params[3], @params[4]);iterate_actor_var(@params[0], @params[1]) do |actor|
actor.change_exp(actor.exp + value, @params[5]);
end;end;def command_316;value = operate_value(@params[2], @params[3], @params[4]);iterate_actor_var(@params[0], @params[1]) do |actor|
actor.change_level(actor.level + value, @params[5]);
end;end;def command_317;value = operate_value(@params[3], @params[4], @params[5]);iterate_actor_var(@params[0], @params[1]) do |actor|
actor.add_param(@params[2], value);
end;end;def command_318;iterate_actor_var(@params[0], @params[1]) do |actor|
if (@params[2]).zero?
actor.learn_skill(@params[3]);
else;actor.forget_skill(@params[3]);end;end;end;def command_319;actor = $game_actors[@params[0]];
actor.change_equip_by_id(@params[1], @params[2]) if actor;end;def command_320;actor = $game_actors[@params[0]];
actor.name = @params[1] if actor;end;def command_321;actor = $game_actors[@params[0]];
actor.change_class(@params[1]) if actor && $data_classes[@params[1]];end;def command_322;
actor = $game_actors[@params[0]];if actor
actor.set_graphic(@params[1], @params[2], @params[3], @params[4]);
end;$game_player.refresh;end;def command_323;vehicle = $game_map.vehicles[@params[0]];
vehicle.set_graphic(@params[1], @params[2]) if vehicle;end;def command_324;actor = $game_actors[@params[0]];
actor.nickname = @params[1] if actor;end;def command_331;value = operate_value(@params[1], @params[2], @params[3]);
iterate_enemy_index(@params[0]) do |enemy|
return if enemy.dead?;enemy.change_hp(value, @params[4]);
enemy.perform_collapse_effect if enemy.dead?;end;end;def command_332;value = operate_value(@params[1], @params[2], @params[3]);
iterate_enemy_index(@params[0]) do |enemy|
enemy.mp += value;end;end;def command_333;
iterate_enemy_index(@params[0]) do |enemy|
already_dead = enemy.dead?;if (@params[1]).zero?
enemy.add_state(@params[2]);
else;enemy.remove_state(@params[2]);end;enemy.perform_collapse_effect if enemy.dead? && !already_dead;
end;end;def command_334;iterate_enemy_index(@params[0], &:recover_all);end;def command_335;
iterate_enemy_index(@params[0]) do |enemy|
enemy.appear;$game_troop.make_unique_names;
end;end;def command_336;iterate_enemy_index(@params[0]) do |enemy|
enemy.transform(@params[1]);
$game_troop.make_unique_names;end;end;def command_337;iterate_enemy_index(@params[0]) do |enemy|
enemy.animation_id = @params[1] if enemy.alive?;
end;end;def command_339;iterate_battler(@params[0], @params[1]) do |battler|
next if battler.death_state?;
battler.force_action(@params[2], @params[3]);BattleManager.force_action(battler);Fiber.yield while BattleManager.action_forced?;
end;end;def command_340;BattleManager.abort;Fiber.yield;end;def command_351;return if $game_party.in_battle;
SceneManager.call(Scene_Menu);Window_MenuCommand.init_command_position;Fiber.yield;
end;def command_352;return if $game_party.in_battle;SceneManager.call(Scene_Save);Fiber.yield;
end;def command_353;SceneManager.goto(Scene_Gameover);Fiber.yield;end;def command_354;
SceneManager.goto(Scene_Title);Fiber.yield;end;def command_355;script = "#{@list[@index].parameters[0]}\n";
while next_event_code == 655;@index += 1;script += "#{@list[@index].parameters[0]}\n";
end;eval(script);end;end;class Sprite_Base < Sprite;@@ani_checker = [];@@ani_spr_checker = [];
@@_reference_count = {};def initialize(viewport = nil);super(viewport);@use_sprite = true ;
@ani_duration = 0 ;end;def dispose;super;dispose_animation;end;def update;super;update_animation;
@@ani_checker.clear;@@ani_spr_checker.clear;end;def animation?;@animation != nil;end;def start_animation(animation, mirror = false);
dispose_animation;@animation = animation;return unless @animation;@ani_mirror = mirror;
set_animation_rate;@ani_duration = @animation.frame_max * @ani_rate + 1;load_animation_bitmap;
make_animation_sprites;set_animation_origin;end;def set_animation_rate;@ani_rate = 4 ;
end;def load_animation_bitmap;animation1_name = @animation.animation1_name;animation1_hue = @animation.animation1_hue;
animation2_name = @animation.animation2_name;animation2_hue = @animation.animation2_hue;
@ani_bitmap1 = Cache.animation(animation1_name, animation1_hue);@ani_bitmap2 = Cache.animation(animation2_name, animation2_hue);
if @@_reference_count.include?(@ani_bitmap1)
@@_reference_count[@ani_bitmap1] += 1;
else;@@_reference_count[@ani_bitmap1] = 1;end;if @@_reference_count.include?(@ani_bitmap2)
@@_reference_count[@ani_bitmap2] += 1;
else;@@_reference_count[@ani_bitmap2] = 1;end;Graphics.frame_reset;end;def make_animation_sprites;
@ani_sprites = [];if @use_sprite && !@@ani_spr_checker.include?(@animation)
16.times do;
sprite = ::Sprite.new(viewport);sprite.visible = false;@ani_sprites.push(sprite);end;
if @animation.position == 3
@@ani_spr_checker.push(@animation);end;end;@ani_duplicated = @@ani_checker.include?(@animation);
return unless !@ani_duplicated && @animation.position == 3;@@ani_checker.push(@animation);
end;def set_animation_origin;if @animation.position == 3
if viewport.nil?
@ani_ox = Graphics.width / 2;
@ani_oy = Graphics.height / 2;else;@ani_ox = viewport.rect.width / 2;@ani_oy = viewport.rect.height / 2;
end;else;@ani_ox = x - ox + width / 2;@ani_oy = y - oy + height / 2;if @animation.position.zero?
@ani_oy -= height / 2;
elsif @animation.position == 2;@ani_oy += height / 2;end;end;end;def dispose_animation;
if @ani_bitmap1
@@_reference_count[@ani_bitmap1] -= 1;if (@@_reference_count[@ani_bitmap1]).zero?
@ani_bitmap1.dispose;
end;end;if @ani_bitmap2
@@_reference_count[@ani_bitmap2] -= 1;if (@@_reference_count[@ani_bitmap2]).zero?
@ani_bitmap2.dispose;
end;end;if @ani_sprites
@ani_sprites.each(&:dispose);@ani_sprites = nil;@animation = nil;
end;@ani_bitmap1 = nil;@ani_bitmap2 = nil;end;def update_animation;return unless animation?;
@ani_duration -= 1;return unless (@ani_duration % @ani_rate).zero?;if @ani_duration > 0
frame_index = @animation.frame_max;
frame_index -= (@ani_duration + @ani_rate - 1) / @ani_rate;animation_set_sprites(@animation.frames[frame_index]);
@animation.timings.each do |timing|
animation_process_timing(timing) if timing.frame == frame_index;
end;else;end_animation;end;end;def end_animation;dispose_animation;end;def animation_set_sprites(frame);
cell_data = frame.cell_data;@ani_sprites.each_with_index do |sprite, i|
next unless sprite;
pattern = cell_data[i, 0];if !pattern || pattern < 0
sprite.visible = false;next;end;
sprite.bitmap = pattern < 100 ? @ani_bitmap1 : @ani_bitmap2;sprite.visible = true;
sprite.src_rect.set(pattern % 5 * 192,
pattern % 100 / 5 * 192, 192, 192);if @ani_mirror
sprite.x = @ani_ox - cell_data[i, 1];
sprite.y = @ani_oy + cell_data[i, 2];sprite.angle = (360 - cell_data[i, 4]);sprite.mirror = ((cell_data[i, 5]).zero?);
else;sprite.x = @ani_ox + cell_data[i, 1];sprite.y = @ani_oy + cell_data[i, 2];sprite.angle = cell_data[i, 4];
sprite.mirror = (cell_data[i, 5] == 1);end;sprite.z = z + 300 + i;sprite.ox = 96;sprite.oy = 96;
sprite.zoom_x = cell_data[i, 3] / 100.0;sprite.zoom_y = cell_data[i, 3] / 100.0;sprite.opacity = cell_data[i, 6] * opacity / 255.0;
sprite.blend_type = cell_data[i, 7];end;end;def animation_process_timing(timing);timing.se.play unless @ani_duplicated;
case timing.flash_scope;when 1;flash(timing.flash_color, timing.flash_duration * @ani_rate);
when 2;if viewport && !@ani_duplicated
viewport.flash(timing.flash_color, timing.flash_duration * @ani_rate);
end;when 3;flash(nil, timing.flash_duration * @ani_rate);end;end;end;class Sprite_Character < Sprite_Base;
attr_accessor :character;def initialize(viewport, character = nil);super(viewport);
@character = character;@balloon_duration = 0;update;end;def dispose;end_animation;end_balloon;
super;end;def update;super;update_bitmap;update_src_rect;update_position;update_other;update_balloon;
setup_new_effect;end;def tileset_bitmap(tile_id);Cache.tileset($game_map.tileset.tileset_names[5 + tile_id / 256]);
end;def update_bitmap;return unless graphic_changed?;@tile_id = @character.tile_id;@character_name = @character.character_name;
@character_index = @character.character_index;if @tile_id > 0
set_tile_bitmap;else;set_character_bitmap;
end;end;def graphic_changed?;@tile_id != @character.tile_id ||
@character_name != @character.character_name ||
@character_index != @character.character_index;
end;def set_tile_bitmap;sx = (@tile_id / 128 % 2 * 8 + @tile_id % 8) * 32;sy = @tile_id % 256 / 8 % 16 * 32;
self.bitmap = tileset_bitmap(@tile_id);src_rect.set(sx, sy, 32, 32);self.ox = 16;self.oy = 32;
end;def set_character_bitmap;self.bitmap = Cache.character(@character_name);sign = @character_name[/^[!$]./];
if sign && sign.include?('$')
@cw = bitmap.width / 3;@ch = bitmap.height / 4;else;@cw = bitmap.width / 12;
@ch = bitmap.height / 8;end;self.ox = @cw / 2;self.oy = @ch;end;def update_src_rect;return unless @tile_id.zero?;
index = @character.character_index;pattern = @character.pattern < 3 ? @character.pattern : 1;
sx = (index % 4 * 3 + pattern) * @cw;sy = (index / 4 * 4 + (@character.direction - 2) / 2) * @ch;
src_rect.set(sx, sy, @cw, @ch);end;def update_position;move_animation(@character.screen_x - x, @character.screen_y - y);
self.x = @character.screen_x;self.y = @character.screen_y;self.z = @character.screen_z;
end;def update_other;self.opacity = @character.opacity;self.blend_type = @character.blend_type;
self.bush_depth = @character.bush_depth;self.visible = !@character.transparent;end;
def setup_new_effect;if !animation? && @character.animation_id > 0
animation = $data_animations[@character.animation_id];
start_animation(animation);end;return unless !@balloon_sprite && @character.balloon_id > 0;
@balloon_id = @character.balloon_id;start_balloon;end;def move_animation(dx, dy);return unless @animation && @animation.position != 3;
@ani_ox += dx;@ani_oy += dy;@ani_sprites.each do |sprite|
sprite.x += dx;sprite.y += dy;
end;end;def end_animation;super;@character.animation_id = 0;end;def start_balloon;dispose_balloon;
@balloon_duration = 8 * balloon_speed + balloon_wait;@balloon_sprite = ::Sprite.new(viewport);
@balloon_sprite.bitmap = Cache.system('Balloon');@balloon_sprite.ox = 16;@balloon_sprite.oy = 32;
update_balloon;end;def dispose_balloon;return unless @balloon_sprite;@balloon_sprite.dispose;
@balloon_sprite = nil;end;def update_balloon;return unless @balloon_duration > 0;@balloon_duration -= 1;
if @balloon_duration > 0
@balloon_sprite.x = x;@balloon_sprite.y = y - height;@balloon_sprite.z = z + 200;
sx = balloon_frame_index * 32;sy = (@balloon_id - 1) * 32;@balloon_sprite.src_rect.set(sx, sy, 32, 32);
else;end_balloon;end;end;def end_balloon;dispose_balloon;@character.balloon_id = 0;end;def balloon_speed;
8;end;def balloon_wait;12;end;def balloon_frame_index;7 - [(@balloon_duration - balloon_wait) / balloon_speed, 0].max;
end;end;class Sprite_Battler < Sprite_Base;attr_accessor :battler;def initialize(viewport, battler = nil);
super(viewport);@battler = battler;@battler_visible = false;@effect_type = nil;@effect_duration = 0;
end;def dispose;bitmap.dispose if bitmap;super;end;def update;super;if @battler
@use_sprite = @battler.use_sprite?;
if @use_sprite
update_bitmap;update_origin;update_position;end;setup_new_effect;setup_new_animation;
update_effect;else;self.bitmap = nil;@effect_type = nil;end;end;def update_bitmap;new_bitmap = Cache.battler(@battler.battler_name, @battler.battler_hue);
return unless bitmap != new_bitmap;self.bitmap = new_bitmap;init_visibility;end;def init_visibility;
@battler_visible = @battler.alive?;self.opacity = 0 unless @battler_visible;end;def update_origin;
return unless bitmap;self.ox = bitmap.width / 2;self.oy = bitmap.height;end;def update_position;
self.x = @battler.screen_x;self.y = @battler.screen_y;self.z = @battler.screen_z;end;
def setup_new_effect;if !@battler_visible && @battler.alive?
start_effect(:appear);
elsif @battler_visible && @battler.hidden?;start_effect(:disappear);end;return unless @battler_visible && @battler.sprite_effect_type;
start_effect(@battler.sprite_effect_type);@battler.sprite_effect_type = nil;end;def start_effect(effect_type);
@effect_type = effect_type;case @effect_type;when :appear;@effect_duration = 16;@battler_visible = true;
when :disappear;@effect_duration = 32;@battler_visible = false;when :whiten;@effect_duration = 16;
@battler_visible = true;when :blink;@effect_duration = 20;@battler_visible = true;when :collapse;
@effect_duration = 48;@battler_visible = false;when :boss_collapse;@effect_duration = bitmap.height;
@battler_visible = false;when :instant_collapse;@effect_duration = 16;@battler_visible = false;
end;revert_to_normal;end;def revert_to_normal;self.blend_type = 0;color.set(0, 0, 0, 0);
self.opacity = 255;self.ox = bitmap.width / 2 if bitmap;src_rect.y = 0;end;def setup_new_animation;
return unless @battler.animation_id > 0;animation = $data_animations[@battler.animation_id];
mirror = @battler.animation_mirror;start_animation(animation, mirror);@battler.animation_id = 0;
end;def effect?;@effect_type != nil;end;def update_effect;return unless @effect_duration > 0;
@effect_duration -= 1;case @effect_type;when :whiten;update_whiten;when :blink;update_blink;
when :appear;update_appear;when :disappear;update_disappear;when :collapse;update_collapse;
when :boss_collapse;update_boss_collapse;when :instant_collapse;update_instant_collapse;
end;@effect_type = nil if @effect_duration.zero?;end;def update_whiten;color.set(255, 255, 255, 0);
color.alpha = 128 - (16 - @effect_duration) * 10;end;def update_blink;self.opacity = @effect_duration % 10 < 5 ? 255 : 0;
end;def update_appear;self.opacity = (16 - @effect_duration) * 16;end;def update_disappear;
self.opacity = 256 - (32 - @effect_duration) * 10;end;def update_collapse;self.blend_type = 1;
color.set(255, 128, 128, 128);self.opacity = 256 - (48 - @effect_duration) * 6;end;
def update_boss_collapse;alpha = @effect_duration * 120 / bitmap.height;self.ox = bitmap.width / 2 + @effect_duration % 2 * 4 - 2;
self.blend_type = 1;color.set(255, 255, 255, 255 - alpha);self.opacity = alpha;src_rect.y -= 1;
Sound.play_boss_collapse2 if @effect_duration % 20 == 19;end;def update_instant_collapse;
self.opacity = 0;end;end;class Sprite_Picture < Sprite;def initialize(viewport, picture);
super(viewport);@picture = picture;update;end;def dispose;bitmap.dispose if bitmap;super;
end;def update;super;update_bitmap;update_origin;update_position;update_zoom;update_other;
end;def update_bitmap;self.bitmap = if @picture.name.empty?;nil;else;Cache.picture(@picture.name);
end;end;def update_origin;if @picture.origin.zero?
self.ox = 0;self.oy = 0;else;self.ox = bitmap.width / 2;
self.oy = bitmap.height / 2;end;end;def update_position;self.x = @picture.x;self.y = @picture.y;
self.z = @picture.number;end;def update_zoom;self.zoom_x = @picture.zoom_x / 100.0;self.zoom_y = @picture.zoom_y / 100.0;
end;def update_other;self.opacity = @picture.opacity;self.blend_type = @picture.blend_type;
self.angle = @picture.angle;tone.set(@picture.tone);end;end;class Sprite_Timer < Sprite;
def initialize(viewport);super(viewport);create_bitmap;update;end;def dispose;bitmap.dispose;
super;end;def create_bitmap;self.bitmap = Bitmap.new(96, 48);bitmap.font.size = 32;bitmap.font.color.set(255, 255, 255);
end;def update;super;update_bitmap;update_position;update_visibility;end;def update_bitmap;
return unless $game_timer.sec != @total_sec;@total_sec = $game_timer.sec;redraw;end;
def redraw;bitmap.clear;bitmap.draw_text(bitmap.rect, timer_text, 1);end;def timer_text;
format('%02d:%02d', @total_sec / 60, @total_sec % 60);end;def update_position;self.x = Graphics.width - bitmap.width;
self.y = 0;self.z = 200;end;def update_visibility;self.visible = $game_timer.working?;
end;end;class Spriteset_Weather;attr_accessor :type ;attr_accessor :ox, :oy ;attr_reader :power ;
def initialize(viewport = nil);@viewport = viewport;init_members;create_rain_bitmap;
create_storm_bitmap;create_snow_bitmap;end;def init_members;@type = :none;@ox = 0;@oy = 0;
@power = 0;@sprites = [];end;def dispose;@sprites.each(&:dispose);@rain_bitmap.dispose;
@storm_bitmap.dispose;@snow_bitmap.dispose;end;def particle_color1;Color.new(255, 255, 255, 192);
end;def particle_color2;Color.new(255, 255, 255, 96);end;def create_rain_bitmap;@rain_bitmap = Bitmap.new(7, 42);
7.times { |i| @rain_bitmap.fill_rect(6 - i, i * 6, 1, 6, particle_color1) };end;def create_storm_bitmap;
@storm_bitmap = Bitmap.new(34, 64);32.times do |i|
@storm_bitmap.fill_rect(33 - i, i * 2, 1, 2, particle_color2);
@storm_bitmap.fill_rect(32 - i, i * 2, 1, 2, particle_color1);@storm_bitmap.fill_rect(31 - i, i * 2, 1, 2, particle_color2);
end;end;def create_snow_bitmap;@snow_bitmap = Bitmap.new(6, 6);@snow_bitmap.fill_rect(0, 1, 6, 4, particle_color2);
@snow_bitmap.fill_rect(1, 0, 4, 6, particle_color2);@snow_bitmap.fill_rect(1, 2, 4, 2, particle_color1);
@snow_bitmap.fill_rect(2, 1, 2, 4, particle_color1);end;def power=(power);@power = power;
(sprite_max - @sprites.size).times { add_sprite };(@sprites.size - sprite_max).times { remove_sprite };
end;def sprite_max;(@power * 10).to_i;end;def add_sprite;sprite = Sprite.new(@viewport);
sprite.opacity = 0;@sprites.push(sprite);end;def remove_sprite;sprite = @sprites.pop;
sprite.dispose if sprite;end;def update;update_screen;@sprites.each { |sprite| update_sprite(sprite) };
end;def update_screen;@viewport.tone.set(-dimness, -dimness, -dimness);end;def dimness;
(@power * 6).to_i;end;def update_sprite(sprite);sprite.ox = @ox;sprite.oy = @oy;case @type;
when :rain;update_sprite_rain(sprite);when :storm;update_sprite_storm(sprite);when :snow;
update_sprite_snow(sprite);end;create_new_particle(sprite) if sprite.opacity < 64;end;
def update_sprite_rain(sprite);sprite.bitmap = @rain_bitmap;sprite.x -= 1;sprite.y += 6;
sprite.opacity -= 12;end;def update_sprite_storm(sprite);sprite.bitmap = @storm_bitmap;
sprite.x -= 3;sprite.y += 6;sprite.opacity -= 12;end;def update_sprite_snow(sprite);sprite.bitmap = @snow_bitmap;
sprite.x -= 1;sprite.y += 3;sprite.opacity -= 12;end;def create_new_particle(sprite);
sprite.x = rand(Graphics.width + 100) - 100 + @ox;sprite.y = rand(Graphics.height + 200) - 200 + @oy;
sprite.opacity = rand(160..255);end;end;class Spriteset_Map;def initialize;create_viewports;
create_tilemap;create_parallax;create_characters;create_shadow;create_weather;create_pictures;
create_timer;update;end;def create_viewports;@viewport1 = Viewport.new;@viewport2 = Viewport.new;
@viewport3 = Viewport.new;@viewport2.z = 50;@viewport3.z = 100;end;def create_tilemap;
@tilemap = Tilemap.new(@viewport1);@tilemap.map_data = $game_map.data;load_tileset;
end;def load_tileset;@tileset = $game_map.tileset;@tileset.tileset_names.each_with_index do |name, i|
@tilemap.bitmaps[i] = Cache.tileset(name);
end;@tilemap.flags = @tileset.flags;end;def create_parallax;@parallax = Plane.new(@viewport1);
@parallax.z = -100;end;def create_characters;@character_sprites = [];$game_map.events.each_value do |event|
@character_sprites.push(Sprite_Character.new(@viewport1, event));
end;$game_map.vehicles.each do |vehicle|
@character_sprites.push(Sprite_Character.new(@viewport1, vehicle));
end;$game_player.followers.reverse_each do |follower|
@character_sprites.push(Sprite_Character.new(@viewport1, follower));
end;@character_sprites.push(Sprite_Character.new(@viewport1, $game_player));@map_id = $game_map.map_id;
end;def create_shadow;@shadow_sprite = Sprite.new(@viewport1);@shadow_sprite.bitmap = Cache.system('Shadow');
@shadow_sprite.ox = @shadow_sprite.bitmap.width / 2;@shadow_sprite.oy = @shadow_sprite.bitmap.height;
@shadow_sprite.z = 180;end;def create_weather;@weather = Spriteset_Weather.new(@viewport2);
end;def create_pictures;@picture_sprites = [];end;def create_timer;@timer_sprite = Sprite_Timer.new(@viewport2);
end;def dispose;dispose_tilemap;dispose_parallax;dispose_characters;dispose_shadow;dispose_weather;
dispose_pictures;dispose_timer;dispose_viewports;end;def dispose_tilemap;@tilemap.dispose;
end;def dispose_parallax;@parallax.bitmap.dispose if @parallax.bitmap;@parallax.dispose;
end;def dispose_characters;@character_sprites.each(&:dispose);end;def dispose_shadow;
@shadow_sprite.dispose;end;def dispose_weather;@weather.dispose;end;def dispose_pictures;
@picture_sprites.compact.each(&:dispose);end;def dispose_timer;@timer_sprite.dispose;
end;def dispose_viewports;@viewport1.dispose;@viewport2.dispose;@viewport3.dispose;end;
def refresh_characters;dispose_characters;create_characters;end;def update;update_tileset;
update_tilemap;update_parallax;update_characters;update_shadow;update_weather;update_pictures;
update_timer;update_viewports;end;def update_tileset;return unless @tileset != $game_map.tileset;
load_tileset;refresh_characters;end;def update_tilemap;@tilemap.map_data = $game_map.data;
@tilemap.ox = $game_map.display_x * 32;@tilemap.oy = $game_map.display_y * 32;@tilemap.update;
end;def update_parallax;if @parallax_name != $game_map.parallax_name
@parallax_name = $game_map.parallax_name;
@parallax.bitmap.dispose if @parallax.bitmap;@parallax.bitmap = Cache.parallax(@parallax_name);
Graphics.frame_reset;end;@parallax.ox = $game_map.parallax_ox(@parallax.bitmap);@parallax.oy = $game_map.parallax_oy(@parallax.bitmap);
end;def update_characters;refresh_characters if @map_id != $game_map.map_id;@character_sprites.each(&:update);
end;def update_shadow;airship = $game_map.airship;@shadow_sprite.x = airship.screen_x;
@shadow_sprite.y = airship.screen_y + airship.altitude;@shadow_sprite.opacity = airship.altitude * 8;
@shadow_sprite.update;end;def update_weather;@weather.type = $game_map.screen.weather_type;
@weather.power = $game_map.screen.weather_power;@weather.ox = $game_map.display_x * 32;
@weather.oy = $game_map.display_y * 32;@weather.update;end;def update_pictures;$game_map.screen.pictures.each do |pic|
@picture_sprites[pic.number] ||= Sprite_Picture.new(@viewport2, pic);
@picture_sprites[pic.number].update;end;end;def update_timer;@timer_sprite.update;end;
def update_viewports;@viewport1.tone.set($game_map.screen.tone);@viewport1.ox = $game_map.screen.shake;
@viewport2.color.set($game_map.screen.flash_color);@viewport3.color.set(0, 0, 0, 255 - $game_map.screen.brightness);
@viewport1.update;@viewport2.update;@viewport3.update;end;end;class Spriteset_Battle;def initialize;
create_viewports;create_battleback1;create_battleback2;create_enemies;create_actors;create_pictures;
create_timer;update;end;def create_viewports;@viewport1 = Viewport.new;@viewport2 = Viewport.new;
@viewport3 = Viewport.new;@viewport2.z = 50;@viewport3.z = 100;end;def create_battleback1;
@back1_sprite = Sprite.new(@viewport1);@back1_sprite.bitmap = battleback1_bitmap;@back1_sprite.z = 0;
center_sprite(@back1_sprite);end;def create_battleback2;@back2_sprite = Sprite.new(@viewport1);
@back2_sprite.bitmap = battleback2_bitmap;@back2_sprite.z = 1;center_sprite(@back2_sprite);
end;def battleback1_bitmap;if battleback1_name
Cache.battleback1(battleback1_name);else;
create_blurry_background_bitmap;end;end;def battleback2_bitmap;if battleback2_name
Cache.battleback2(battleback2_name);
else;Bitmap.new(1, 1);end;end;def create_blurry_background_bitmap;source = SceneManager.background_bitmap;
bitmap = Bitmap.new(640, 480);bitmap.stretch_blt(bitmap.rect, source, source.rect);
bitmap.radial_blur(120, 16);bitmap;end;def battleback1_name;if $BTEST
$data_system.battleback1_name;
elsif $game_map.battleback1_name;$game_map.battleback1_name;elsif $game_map.overworld?;
overworld_battleback1_name;end;end;def battleback2_name;if $BTEST
$data_system.battleback2_name;
elsif $game_map.battleback2_name;$game_map.battleback2_name;elsif $game_map.overworld?;
overworld_battleback2_name;end;end;def overworld_battleback1_name;$game_player.vehicle ? ship_battleback1_name : normal_battleback1_name;
end;def overworld_battleback2_name;$game_player.vehicle ? ship_battleback2_name : normal_battleback2_name;
end;def normal_battleback1_name;terrain_battleback1_name(autotile_type(1)) ||
terrain_battleback1_name(autotile_type(0)) ||
default_battleback1_name;
end;def normal_battleback2_name;terrain_battleback2_name(autotile_type(1)) ||
terrain_battleback2_name(autotile_type(0)) ||
default_battleback2_name;
end;def terrain_battleback1_name(type);case type;when 24, 25 ;'Wasteland';when 26, 27 ;
'DirtField';when 32, 33 ;'Desert';when 34 ;'Lava1';when 35 ;'Lava2';when 40, 41 ;'Snowfield';
when 42 ;'Clouds';when 4, 5 ;'PoisonSwamp';end;end;def terrain_battleback2_name(type);case type;
when 20, 21 ;'Forest1';when 22, 30, 38 ;'Cliff';when 24, 25, 26, 27 ;'Wasteland';when 32, 33 ;
'Desert';when 34, 35 ;'Lava';when 40, 41 ;'Snowfield';when 42 ;'Clouds';when 4, 5 ;'PoisonSwamp';
end;end;def default_battleback1_name;'Grassland';end;def default_battleback2_name;'Grassland';
end;def ship_battleback1_name;'Ship';end;def ship_battleback2_name;'Ship';end;def autotile_type(z);
$game_map.autotile_type($game_player.x, $game_player.y, z);end;def center_sprite(sprite);
sprite.ox = sprite.bitmap.width / 2;sprite.oy = sprite.bitmap.height / 2;sprite.x = Graphics.width / 2;
sprite.y = Graphics.height / 2;end;def create_enemies;@enemy_sprites = $game_troop.members.reverse.collect do |enemy|
Sprite_Battler.new(@viewport1, enemy);
end;end;def create_actors;@actor_sprites = Array.new(4) { Sprite_Battler.new(@viewport1) };
end;def create_pictures;@picture_sprites = [];end;def create_timer;@timer_sprite = Sprite_Timer.new(@viewport2);
end;def dispose;dispose_battleback1;dispose_battleback2;dispose_enemies;dispose_actors;
dispose_pictures;dispose_timer;dispose_viewports;end;def dispose_battleback1;@back1_sprite.bitmap.dispose;
@back1_sprite.dispose;end;def dispose_battleback2;@back2_sprite.bitmap.dispose;@back2_sprite.dispose;
end;def dispose_enemies;@enemy_sprites.each(&:dispose);end;def dispose_actors;@actor_sprites.each(&:dispose);
end;def dispose_pictures;@picture_sprites.compact.each(&:dispose);end;def dispose_timer;
@timer_sprite.dispose;end;def dispose_viewports;@viewport1.dispose;@viewport2.dispose;
@viewport3.dispose;end;def update;update_battleback1;update_battleback2;update_enemies;
update_actors;update_pictures;update_timer;update_viewports;end;def update_battleback1;
@back1_sprite.update;end;def update_battleback2;@back2_sprite.update;end;def update_enemies;
@enemy_sprites.each(&:update);end;def update_actors;@actor_sprites.each_with_index do |sprite, i|
sprite.battler = $game_party.members[i];
sprite.update;end;end;def update_pictures;$game_troop.screen.pictures.each do |pic|
@picture_sprites[pic.number] ||= Sprite_Picture.new(@viewport2, pic);
@picture_sprites[pic.number].update;end;end;def update_timer;@timer_sprite.update;end;
def update_viewports;@viewport1.tone.set($game_troop.screen.tone);@viewport1.ox = $game_troop.screen.shake;
@viewport2.color.set($game_troop.screen.flash_color);@viewport3.color.set(0, 0, 0, 255 - $game_troop.screen.brightness);
@viewport1.update;@viewport2.update;@viewport3.update;end;def battler_sprites;@enemy_sprites + @actor_sprites;
end;def animation?;battler_sprites.any?(&:animation?);end;def effect?;battler_sprites.any?(&:effect?);
end;end;class Window_Base < Window;def initialize(x, y, width, height);super;self.windowskin = Cache.system('Window');
update_padding;update_tone;create_contents;@opening = @closing = false;end;def dispose;
contents.dispose unless disposed?;super;end;def line_height;24;end;def standard_padding;
12;end;def update_padding;self.padding = standard_padding;end;def contents_width;width - standard_padding * 2;
end;def contents_height;height - standard_padding * 2;end;def fitting_height(line_number);
line_number * line_height + standard_padding * 2;end;def update_tone;tone.set($game_system.window_tone);
end;def create_contents;contents.dispose;self.contents = if contents_width > 0 && contents_height > 0;
Bitmap.new(contents_width, contents_height);else;Bitmap.new(1, 1);end;end;def update;super;
update_tone;update_open if @opening;update_close if @closing;end;def update_open;self.openness += 48;
@opening = false if open?;end;def update_close;self.openness -= 48;@closing = false if close?;
end;def open;@opening = true unless open?;@closing = false;self;end;def close;@closing = true unless close?;
@opening = false;self;end;def show;self.visible = true;self;end;def hide;self.visible = false;
self;end;def activate;self.active = true;self;end;def deactivate;self.active = false;self;
end;def text_color(n);windowskin.get_pixel(64 + (n % 8) * 8, 96 + (n / 8) * 8);end;def normal_color;
text_color(0);end;def system_color;text_color(16);end;def crisis_color;text_color(17);end;
def knockout_color;text_color(18);end;def gauge_back_color;text_color(19);end;def hp_gauge_color1;
text_color(20);end;def hp_gauge_color2;text_color(21);end;def mp_gauge_color1;text_color(22);
end;def mp_gauge_color2;text_color(23);end;def mp_cost_color;text_color(23);end;def power_up_color;
text_color(24);end;def power_down_color;text_color(25);end;def tp_gauge_color1;text_color(28);
end;def tp_gauge_color2;text_color(29);end;def tp_cost_color;text_color(29);end;def pending_color;
windowskin.get_pixel(80, 80);end;def translucent_alpha;160;end;def change_color(color, enabled = true);
contents.font.color.set(color);contents.font.color.alpha = translucent_alpha unless enabled;
end;def draw_text(*args);contents.draw_text(*args);end;def text_size(str);contents.text_size(str);
end;def draw_text_ex(x, y, text);reset_font_settings;text = convert_escape_characters(text);
pos = { x: x, y: y, new_x: x, height: calc_line_height(text) };process_character(text.slice!(0, 1), text, pos) until text.empty?;
end;def reset_font_settings;change_color(normal_color);contents.font.size = Font.default_size;
contents.font.bold = Font.default_bold;contents.font.italic = Font.default_italic;
end;def convert_escape_characters(text);result = text.to_s.clone;result.gsub!(/\\/) { "\e" };
result.gsub!(/\e\e/) { '\\' };result.gsub!(/\eV\[(\d+)\]/i) { $game_variables[::Regexp.last_match(1).to_i] };
result.gsub!(/\eV\[(\d+)\]/i) { $game_variables[::Regexp.last_match(1).to_i] };result.gsub!(/\eN\[(\d+)\]/i) { actor_name(::Regexp.last_match(1).to_i) };
result.gsub!(/\eP\[(\d+)\]/i) { party_member_name(::Regexp.last_match(1).to_i) };
result.gsub!(/\eG/i) { Vocab.currency_unit };result;end;def actor_name(n);actor = n >= 1 ? $game_actors[n] : nil;
actor ? actor.name : '';end;def party_member_name(n);actor = n >= 1 ? $game_party.members[n - 1] : nil;
actor ? actor.name : '';end;def process_character(c, text, pos);case c;when "\n" ;process_new_line(text, pos);
when "\f" ;process_new_page(text, pos);when "\e" ;process_escape_character(obtain_escape_code(text), text, pos);
else;process_normal_character(c, pos);end;end;def process_normal_character(c, pos);text_width = text_size(c).width;
draw_text(pos[:x], pos[:y], text_width * 2, pos[:height], c);pos[:x] += text_width;
end;def process_new_line(text, pos);pos[:x] = pos[:new_x];pos[:y] += pos[:height];pos[:height] = calc_line_height(text);
end;def process_new_page(text, pos) end;def obtain_escape_code(text);text.slice!(/^[$.|\^!><{}\\]|^[A-Z]+/i);
end;def obtain_escape_param(text);text.slice!(/^\[\d+\]/)[/\d+/].to_i;rescue StandardError;
0;end;def process_escape_character(code, text, pos);case code.upcase;when 'C';change_color(text_color(obtain_escape_param(text)));
when 'I';process_draw_icon(obtain_escape_param(text), pos);when '{'
make_font_bigger
when '}';
make_font_smaller;end;end;def process_draw_icon(icon_index, pos);draw_icon(icon_index, pos[:x], pos[:y]);
pos[:x] += 24;end;def make_font_bigger;contents.font.size += 8 if contents.font.size <= 64;
end;def make_font_smaller;contents.font.size -= 8 if contents.font.size >= 16;end;def calc_line_height(text, restore_font_size = true);
result = [line_height, contents.font.size].max;last_font_size = contents.font.size;
text.slice(/^.*$/).scan(/\e[{}]/).each do |esc|
make_font_bigger if esc == "\e{"
make_font_smaller if esc == "\e}";
result = [result, contents.font.size].max;end;contents.font.size = last_font_size if restore_font_size;
result;end;def draw_gauge(x, y, width, rate, color1, color2);fill_w = (width * rate).to_i;
gauge_y = y + line_height - 8;contents.fill_rect(x, gauge_y, width, 6, gauge_back_color);
contents.gradient_fill_rect(x, gauge_y, fill_w, 6, color1, color2);end;def draw_icon(icon_index, x, y, enabled = true);
bitmap = Cache.system('Iconset');rect = Rect.new(icon_index % 16 * 24, icon_index / 16 * 24, 24, 24);
contents.blt(x, y, bitmap, rect, enabled ? 255 : translucent_alpha);end;def draw_face(face_name, face_index, x, y, enabled = true);
bitmap = Cache.face(face_name);rect = Rect.new(face_index % 4 * 96, face_index / 4 * 96, 96, 96);
contents.blt(x, y, bitmap, rect, enabled ? 255 : translucent_alpha);bitmap.dispose;
end;def draw_character(character_name, character_index, x, y);return unless character_name;
bitmap = Cache.character(character_name);sign = character_name[/^[!$]./];if sign && sign.include?('$')
cw = bitmap.width / 3;
ch = bitmap.height / 4;else;cw = bitmap.width / 12;ch = bitmap.height / 8;end;n = character_index;
src_rect = Rect.new((n % 4 * 3 + 1) * cw, (n / 4 * 4) * ch, cw, ch);contents.blt(x - cw / 2, y - ch, bitmap, src_rect);
end;def hp_color(actor);return knockout_color if actor.hp.zero?;return crisis_color if actor.hp < actor.mhp / 4;
normal_color;end;def mp_color(actor);return crisis_color if actor.mp < actor.mmp / 4;
normal_color;end;def tp_color(_actor);normal_color;end;def draw_actor_graphic(actor, x, y);
draw_character(actor.character_name, actor.character_index, x, y);end;def draw_actor_face(actor, x, y, enabled = true);
draw_face(actor.face_name, actor.face_index, x, y, enabled);end;def draw_actor_name(actor, x, y, width = 112);
change_color(hp_color(actor));draw_text(x, y, width, line_height, actor.name);end;def draw_actor_class(actor, x, y, width = 112);
change_color(normal_color);draw_text(x, y, width, line_height, actor.class.name);end;
def draw_actor_nickname(actor, x, y, width = 180);change_color(normal_color);draw_text(x, y, width, line_height, actor.nickname);
end;def draw_actor_level(actor, x, y);change_color(system_color);draw_text(x, y, 32, line_height, Vocab.level_a);
change_color(normal_color);draw_text(x + 32, y, 24, line_height, actor.level, 2);end;
def draw_actor_icons(actor, x, y, width = 96);icons = (actor.state_icons + actor.buff_icons)[0, width / 24];
icons.each_with_index { |n, i| draw_icon(n, x + 24 * i, y) };end;def draw_current_and_max_values(x, y, width, current, max, color1, color2);
change_color(color1);xr = x + width;if width < 96
draw_text(xr - 40, y, 42, line_height, current, 2);
else;draw_text(xr - 92, y, 42, line_height, current, 2);change_color(color2);draw_text(xr - 52, y, 12, line_height, '/', 2);
draw_text(xr - 42, y, 42, line_height, max, 2);end;end;def draw_actor_hp(actor, x, y, width = 124);
draw_gauge(x, y, width, actor.hp_rate, hp_gauge_color1, hp_gauge_color2);change_color(system_color);
draw_text(x, y, 30, line_height, Vocab.hp_a);draw_current_and_max_values(x, y, width, actor.hp, actor.mhp,
hp_color(actor), normal_color);
end;def draw_actor_mp(actor, x, y, width = 124);draw_gauge(x, y, width, actor.mp_rate, mp_gauge_color1, mp_gauge_color2);
change_color(system_color);draw_text(x, y, 30, line_height, Vocab.mp_a);draw_current_and_max_values(x, y, width, actor.mp, actor.mmp,
mp_color(actor), normal_color);
end;def draw_actor_tp(actor, x, y, width = 124);draw_gauge(x, y, width, actor.tp_rate, tp_gauge_color1, tp_gauge_color2);
change_color(system_color);draw_text(x, y, 30, line_height, Vocab.tp_a);change_color(tp_color(actor));
draw_text(x + width - 42, y, 42, line_height, actor.tp.to_i, 2);end;def draw_actor_simple_status(actor, x, y);
draw_actor_name(actor, x, y);draw_actor_level(actor, x, y + line_height * 1);draw_actor_icons(actor, x, y + line_height * 2);
draw_actor_class(actor, x + 120, y);draw_actor_hp(actor, x + 120, y + line_height * 1);
draw_actor_mp(actor, x + 120, y + line_height * 2);end;def draw_actor_param(actor, x, y, param_id);
change_color(system_color);draw_text(x, y, 120, line_height, Vocab.param(param_id));
change_color(normal_color);draw_text(x + 120, y, 36, line_height, actor.param(param_id), 2);
end;def draw_item_name(item, x, y, enabled = true, width = 172);return unless item;
draw_icon(item.icon_index, x, y, enabled);change_color(normal_color, enabled);draw_text(x + 24, y, width, line_height, item.name);
end;def draw_currency_value(value, unit, x, y, width);cx = text_size(unit).width;change_color(normal_color);
draw_text(x, y, width - cx - 2, line_height, value, 2);change_color(system_color);
draw_text(x, y, width, line_height, unit, 2);end;def param_change_color(change);return power_up_color if change > 0;
return power_down_color if change < 0;normal_color;end;end;class Window_Selectable < Window_Base;
attr_reader :index ;attr_reader :help_window ;attr_accessor :cursor_fix, :cursor_all ;
def initialize(x, y, width, height);super;@index = -1;@handler = {};@cursor_fix = false;
@cursor_all = false;update_padding;deactivate;end;def col_max;1;end;def spacing;32;end;def item_max;
0;end;def item_width;(width - standard_padding * 2 + spacing) / col_max - spacing;end;
def item_height;line_height;end;def row_max;[(item_max + col_max - 1) / col_max, 1].max;
end;def contents_height;[super - super % item_height, row_max * item_height].max;end;
def update_padding;super;update_padding_bottom;end;def update_padding_bottom;surplus = (height - standard_padding * 2) % item_height;
self.padding_bottom = padding + surplus;end;def height=(height);super;update_padding;
end;def active=(active);super;update_cursor;call_update_help;end;def index=(index);@index = index;
update_cursor;call_update_help;end;def select(index);self.index = index if index;end;def unselect;
self.index = -1;end;def row;index / col_max;end;def top_row;oy / item_height;end;def top_row=(row);
row = 0 if row < 0;row = row_max - 1 if row > row_max - 1;self.oy = row * item_height;
end;def page_row_max;(height - padding - padding_bottom) / item_height;end;def page_item_max;
page_row_max * col_max;end;def horizontal?;page_row_max == 1;end;def bottom_row;top_row + page_row_max - 1;
end;def bottom_row=(row);self.top_row = row - (page_row_max - 1);end;def item_rect(index);
rect = Rect.new;rect.width = item_width;rect.height = item_height;rect.x = index % col_max * (item_width + spacing);
rect.y = index / col_max * item_height;rect;end;def item_rect_for_text(index);rect = item_rect(index);
rect.x += 4;rect.width -= 8;rect;end;def help_window=(help_window);@help_window = help_window;
call_update_help;end;def set_handler(symbol, method);@handler[symbol] = method;end;def handle?(symbol);
@handler.include?(symbol);end;def call_handler(symbol);@handler[symbol].call if handle?(symbol);
end;def cursor_movable?;active && open? && !@cursor_fix && !@cursor_all && item_max > 0;
end;def cursor_down(wrap = false);return unless index < item_max - col_max || (wrap && col_max == 1);
select((index + col_max) % item_max);end;def cursor_up(wrap = false);return unless index >= col_max || (wrap && col_max == 1);
select((index - col_max + item_max) % item_max);end;def cursor_right(wrap = false);
return unless col_max >= 2 && (index < item_max - 1 || (wrap && horizontal?));select((index + 1) % item_max);
end;def cursor_left(wrap = false);return unless col_max >= 2 && (index > 0 || (wrap && horizontal?));
select((index - 1 + item_max) % item_max);end;def cursor_pagedown;return unless top_row + page_row_max < row_max;
self.top_row += page_row_max;select([@index + page_item_max, item_max - 1].min);end;
def cursor_pageup;return unless top_row > 0;self.top_row -= page_row_max;select([@index - page_item_max, 0].max);
end;def update;super;process_cursor_move;process_handling;end;def process_cursor_move;return unless cursor_movable?;
last_index = @index;cursor_down(Input.trigger?(:DOWN)) if Input.repeat?(:DOWN);cursor_up(Input.trigger?(:UP)) if Input.repeat?(:UP);
cursor_right(Input.trigger?(:RIGHT)) if Input.repeat?(:RIGHT);cursor_left(Input.trigger?(:LEFT)) if Input.repeat?(:LEFT);
cursor_pagedown if !handle?(:pagedown) && Input.trigger?(:R);cursor_pageup if !handle?(:pageup) && Input.trigger?(:L);
Sound.play_cursor if @index != last_index;end;def process_handling;return unless open? && active;
return process_ok if ok_enabled? && Input.trigger?(:C);return process_cancel if cancel_enabled? && Input.trigger?(:B);
return process_pagedown if handle?(:pagedown) && Input.trigger?(:R);process_pageup if handle?(:pageup) && Input.trigger?(:L);
end;def ok_enabled?;handle?(:ok);end;def cancel_enabled?;handle?(:cancel);end;def process_ok;
if current_item_enabled?
Sound.play_ok;Input.update;deactivate;call_ok_handler;else;Sound.play_buzzer;
end;end;def call_ok_handler;call_handler(:ok);end;def process_cancel;Sound.play_cancel;
Input.update;deactivate;call_cancel_handler;end;def call_cancel_handler;call_handler(:cancel);
end;def process_pageup;Sound.play_cursor;Input.update;deactivate;call_handler(:pageup);
end;def process_pagedown;Sound.play_cursor;Input.update;deactivate;call_handler(:pagedown);
end;def update_cursor;if @cursor_all
cursor_rect.set(0, 0, contents.width, row_max * item_height);
self.top_row = 0;elsif @index < 0;cursor_rect.empty;else;ensure_cursor_visible;cursor_rect.set(item_rect(@index));
end;end;def ensure_cursor_visible;self.top_row = row if row < top_row;self.bottom_row = row if row > bottom_row;
end;def call_update_help;update_help if active && @help_window;end;def update_help;@help_window.clear;
end;def current_item_enabled?;true;end;def draw_all_items;item_max.times { |i| draw_item(i) };
end;def draw_item(index) end;def clear_item(index);contents.clear_rect(item_rect(index));
end;def redraw_item(index);clear_item(index) if index >= 0;draw_item(index) if index >= 0;
end;def redraw_current_item;redraw_item(@index);end;def refresh;contents.clear;draw_all_items;
end;end;class Window_Command < Window_Selectable;def initialize(x, y);clear_command_list;
make_command_list;super(x, y, window_width, window_height);refresh;select(0);activate;
end;def window_width;160;end;def window_height;fitting_height(visible_line_number);end;
def visible_line_number;item_max;end;def item_max;@list.size;end;def clear_command_list;
@list = [];end;def make_command_list; end;def add_command(name, symbol, enabled = true, ext = nil);
@list.push({ name: name, symbol: symbol, enabled: enabled, ext: ext });end;def command_name(index);
@list[index][:name];end;def command_enabled?(index);@list[index][:enabled];end;def current_data;
index >= 0 ? @list[index] : nil;end;def current_item_enabled?;current_data ? current_data[:enabled] : false;
end;def current_symbol;current_data ? current_data[:symbol] : nil;end;def current_ext;
current_data ? current_data[:ext] : nil;end;def select_symbol(symbol);@list.each_index { |i| select(i) if @list[i][:symbol] == symbol };
end;def select_ext(ext);@list.each_index { |i| select(i) if @list[i][:ext] == ext };
end;def draw_item(index);change_color(normal_color, command_enabled?(index));draw_text(item_rect_for_text(index), command_name(index), alignment);
end;def alignment;0;end;def ok_enabled?;true;end;def call_ok_handler;if handle?(current_symbol)
call_handler(current_symbol);
elsif handle?(:ok);super;else;activate;end;end;def refresh;clear_command_list;make_command_list;
create_contents;super;end;end;class Window_HorzCommand < Window_Command;def visible_line_number;
1;end;def col_max;4;end;def spacing;8;end;def contents_width;(item_width + spacing) * item_max - spacing;
end;def contents_height;item_height;end;def top_col;ox / (item_width + spacing);end;def top_col=(col);
col = 0 if col < 0;col = col_max - 1 if col > col_max - 1;self.ox = col * (item_width + spacing);
end;def bottom_col;top_col + col_max - 1;end;def bottom_col=(col);self.top_col = col - (col_max - 1);
end;def ensure_cursor_visible;self.top_col = index if index < top_col;self.bottom_col = index if index > bottom_col;
end;def item_rect(index);rect = super;rect.x = index * (item_width + spacing);rect.y = 0;
rect;end;def alignment;1;end;def cursor_down(wrap = false) end;def cursor_up(wrap = false) end;
def cursor_pagedown; end;def cursor_pageup; end;end;class Window_Help < Window_Base;
def initialize(line_number = 2);super(0, 0, Graphics.width, fitting_height(line_number));
end;def set_text(text);return unless text != @text;@text = text;refresh;end;def clear;set_text('');
end;def set_item(item);set_text(item ? item.description : '');end;def refresh;contents.clear;
draw_text_ex(4, 0, @text);end;end;class Window_Gold < Window_Base;def initialize;super(0, 0, window_width, fitting_height(1));
refresh;end;def window_width;160;end;def refresh;contents.clear;draw_currency_value(value, currency_unit, 4, 0, contents.width - 8);
end;def value;$game_party.gold;end;def currency_unit;Vocab.currency_unit;end;def open;refresh;
super;end;end;class Window_MenuCommand < Window_Command;def self.init_command_position;
@@last_command_symbol = nil;end;def initialize;super(0, 0);select_last;end;def window_width;
160;end;def visible_line_number;item_max;end;def make_command_list;add_main_commands;add_formation_command;
add_original_commands;add_save_command;add_game_end_command;end;def add_main_commands;
add_command(Vocab.item, :item, main_commands_enabled);add_command(Vocab.skill, :skill, main_commands_enabled);
add_command(Vocab.equip, :equip, main_commands_enabled);add_command(Vocab.status, :status, main_commands_enabled);
end;def add_formation_command;add_command(Vocab.formation, :formation, formation_enabled);
end;def add_original_commands; end;def add_save_command;add_command(Vocab.save, :save, save_enabled);
end;def add_game_end_command;add_command(Vocab.game_end, :game_end);end;def main_commands_enabled;
$game_party.exists;end;def formation_enabled;$game_party.members.size >= 2 && !$game_system.formation_disabled;
end;def save_enabled;!$game_system.save_disabled;end;def process_ok;@@last_command_symbol = current_symbol;
super;end;def select_last;select_symbol(@@last_command_symbol);end;end;class Window_MenuStatus < Window_Selectable;
attr_reader :pending_index ;def initialize(x, y);super(x, y, window_width, window_height);
@pending_index = -1;refresh;end;def window_width;Graphics.width - 160;end;def window_height;
Graphics.height;end;def item_max;$game_party.members.size;end;def item_height;(height - standard_padding * 2) / 4;
end;def draw_item(index);actor = $game_party.members[index];enabled = $game_party.battle_members.include?(actor);
rect = item_rect(index);draw_item_background(index);draw_actor_face(actor, rect.x + 1, rect.y + 1, enabled);
draw_actor_simple_status(actor, rect.x + 108, rect.y + line_height / 2);end;def draw_item_background(index);
return unless index == @pending_index;contents.fill_rect(item_rect(index), pending_color);
end;def process_ok;super;$game_party.menu_actor = $game_party.members[index];end;def select_last;
select($game_party.menu_actor.index || 0);end;def pending_index=(index);last_pending_index = @pending_index;
@pending_index = index;redraw_item(@pending_index);redraw_item(last_pending_index);
end;end;class Window_MenuActor < Window_MenuStatus;def initialize;super(0, 0);self.visible = false;
end;def process_ok;$game_party.target_actor = $game_party.members[index] unless @cursor_all;
call_ok_handler;end;def select_last;select($game_party.target_actor.index || 0);end;def select_for_item(item);
@cursor_fix = item.for_user?;@cursor_all = item.for_all?;if @cursor_fix
select($game_party.menu_actor.index);
elsif @cursor_all;select(0);else;select_last;end;end;end;class Window_ItemCategory < Window_HorzCommand;
attr_reader :item_window;def initialize;super(0, 0);end;def window_width;Graphics.width;
end;def col_max;4;end;def update;super;@item_window.category = current_symbol if @item_window;
end;def make_command_list;add_command(Vocab.item, :item);add_command(Vocab.weapon, :weapon);
add_command(Vocab.armor, :armor);add_command(Vocab.key_item, :key_item);end;def item_window=(item_window);
@item_window = item_window;update;end;end;class Window_ItemList < Window_Selectable;def initialize(x, y, width, height);
super;@category = :none;@data = [];end;def category=(category);return if @category == category;
@category = category;refresh;self.oy = 0;end;def col_max;2;end;def item_max;@data ? @data.size : 1;
end;def item;@data && index >= 0 ? @data[index] : nil;end;def current_item_enabled?;enable?(@data[index]);
end;def include?(item);case @category;when :item;item.is_a?(RPG::Item) && !item.key_item?;
when :weapon;item.is_a?(RPG::Weapon);when :armor;item.is_a?(RPG::Armor);when :key_item;
item.is_a?(RPG::Item) && item.key_item?;else;false;end;end;def enable?(item);$game_party.usable?(item);
end;def make_item_list;@data = $game_party.all_items.select { |item| include?(item) };
@data.push(nil) if include?(nil);end;def select_last;select(@data.index($game_party.last_item.object) || 0);
end;def draw_item(index);item = @data[index];return unless item;rect = item_rect(index);
rect.width -= 4;draw_item_name(item, rect.x, rect.y, enable?(item));draw_item_number(rect, item);
end;def draw_item_number(rect, item);draw_text(rect, format(':%2d', $game_party.item_number(item)), 2);
end;def update_help;@help_window.set_item(item);end;def refresh;make_item_list;create_contents;
draw_all_items;end;end;class Window_SkillCommand < Window_Command;attr_reader :skill_window;
def initialize(x, y);super(x, y);@actor = nil;end;def window_width;160;end;def actor=(actor);
return if @actor == actor;@actor = actor;refresh;select_last;end;def visible_line_number;
4;end;def make_command_list;return unless @actor;@actor.added_skill_types.sort.each do |stype_id|
name = $data_system.skill_types[stype_id];
add_command(name, :skill, true, stype_id);end;end;def update;super;@skill_window.stype_id = current_ext if @skill_window;
end;def skill_window=(skill_window);@skill_window = skill_window;update;end;def select_last;
skill = @actor.last_skill.object;if skill
select_ext(skill.stype_id);else;select(0);end;
end;end;class Window_SkillStatus < Window_Base;def initialize(x, y);super(x, y, window_width, fitting_height(4));
@actor = nil;end;def window_width;Graphics.width - 160;end;def actor=(actor);return if @actor == actor;
@actor = actor;refresh;end;def refresh;contents.clear;return unless @actor;draw_actor_face(@actor, 0, 0);
draw_actor_simple_status(@actor, 108, line_height / 2);end;end;class Window_SkillList < Window_Selectable;
def initialize(x, y, width, height);super;@actor = nil;@stype_id = 0;@data = [];end;def actor=(actor);
return if @actor == actor;@actor = actor;refresh;self.oy = 0;end;def stype_id=(stype_id);
return if @stype_id == stype_id;@stype_id = stype_id;refresh;self.oy = 0;end;def col_max;
2;end;def item_max;@data ? @data.size : 1;end;def item;@data && index >= 0 ? @data[index] : nil;
end;def current_item_enabled?;enable?(@data[index]);end;def include?(item);item && item.stype_id == @stype_id;
end;def enable?(item);@actor && @actor.usable?(item);end;def make_item_list;@data = @actor ? @actor.skills.select { |skill| include?(skill) } : [];
end;def select_last;select(@data.index(@actor.last_skill.object) || 0);end;def draw_item(index);
skill = @data[index];return unless skill;rect = item_rect(index);rect.width -= 4;draw_item_name(skill, rect.x, rect.y, enable?(skill));
draw_skill_cost(rect, skill);end;def draw_skill_cost(rect, skill);if @actor.skill_tp_cost(skill) > 0
change_color(tp_cost_color, enable?(skill));
draw_text(rect, @actor.skill_tp_cost(skill), 2);elsif @actor.skill_mp_cost(skill) > 0;
change_color(mp_cost_color, enable?(skill));draw_text(rect, @actor.skill_mp_cost(skill), 2);
end;end;def update_help;@help_window.set_item(item);end;def refresh;make_item_list;create_contents;
draw_all_items;end;end;class Window_EquipStatus < Window_Base;def initialize(x, y);super(x, y, window_width, window_height);
@actor = nil;@temp_actor = nil;refresh;end;def window_width;208;end;def window_height;fitting_height(visible_line_number);
end;def visible_line_number;7;end;def actor=(actor);return if @actor == actor;@actor = actor;
refresh;end;def refresh;contents.clear;draw_actor_name(@actor, 4, 0) if @actor;6.times { |i| draw_item(0, line_height * (1 + i), 2 + i) };
end;def set_temp_actor(temp_actor);return if @temp_actor == temp_actor;@temp_actor = temp_actor;
refresh;end;def draw_item(x, y, param_id);draw_param_name(x + 4, y, param_id);draw_current_param(x + 94, y, param_id) if @actor;
draw_right_arrow(x + 126, y);draw_new_param(x + 150, y, param_id) if @temp_actor;end;
def draw_param_name(x, y, param_id);change_color(system_color);draw_text(x, y, 80, line_height, Vocab.param(param_id));
end;def draw_current_param(x, y, param_id);change_color(normal_color);draw_text(x, y, 32, line_height, @actor.param(param_id), 2);
end;def draw_right_arrow(x, y);change_color(system_color);draw_text(x, y, 22, line_height, '→', 1);
end;def draw_new_param(x, y, param_id);new_value = @temp_actor.param(param_id);change_color(param_change_color(new_value - @actor.param(param_id)));
draw_text(x, y, 32, line_height, new_value, 2);end;end;class Window_EquipCommand < Window_HorzCommand;
def initialize(x, y, width);@window_width = width;super(x, y);end;attr_reader :window_width;
def col_max;3;end;def make_command_list;add_command(Vocab.equip2, :equip);add_command(Vocab.optimize, :optimize);
add_command(Vocab.clear, :clear);end;end;class Window_EquipSlot < Window_Selectable;
attr_reader :status_window ;attr_reader :item_window ;def initialize(x, y, width);super(x, y, width, window_height);
@actor = nil;refresh;end;def window_height;fitting_height(visible_line_number);end;def visible_line_number;
5;end;def actor=(actor);return if @actor == actor;@actor = actor;refresh;end;def update;
super;@item_window.slot_id = index if @item_window;end;def item_max;@actor ? @actor.equip_slots.size : 0;
end;def item;@actor ? @actor.equips[index] : nil;end;def draw_item(index);return unless @actor;
rect = item_rect_for_text(index);change_color(system_color, enable?(index));draw_text(rect.x, rect.y, 92, line_height, slot_name(index));
draw_item_name(@actor.equips[index], rect.x + 92, rect.y, enable?(index));end;def slot_name(index);
@actor ? Vocab.etype(@actor.equip_slots[index]) : '';end;def enable?(index);@actor ? @actor.equip_change_ok?(index) : false;
end;def current_item_enabled?;enable?(index);end;def status_window=(status_window);@status_window = status_window;
call_update_help;end;def item_window=(item_window);@item_window = item_window;update;
end;def update_help;super;@help_window.set_item(item) if @help_window;@status_window.set_temp_actor(nil) if @status_window;
end;end;class Window_EquipItem < Window_ItemList;attr_reader :status_window ;def initialize(x, y, width, height);
super;@actor = nil;@slot_id = 0;end;def actor=(actor);return if @actor == actor;@actor = actor;
refresh;self.oy = 0;end;def slot_id=(slot_id);return if @slot_id == slot_id;@slot_id = slot_id;
refresh;self.oy = 0;end;def include?(item);return true if item.nil?;return false unless item.is_a?(RPG::EquipItem);
return false if @slot_id < 0;return false if item.etype_id != @actor.equip_slots[@slot_id];
@actor.equippable?(item);end;def enable?(_item);true;end;def select_last; end;def status_window=(status_window);
@status_window = status_window;call_update_help;end;def update_help;super;return unless @actor && @status_window;
temp_actor = Marshal.load(Marshal.dump(@actor));temp_actor.force_change_equip(@slot_id, item);
@status_window.set_temp_actor(temp_actor);end;end;class Window_Status < Window_Selectable;
def initialize(actor);super(0, 0, Graphics.width, Graphics.height);@actor = actor;refresh;
activate;end;def actor=(actor);return if @actor == actor;@actor = actor;refresh;end;def refresh;
contents.clear;draw_block1(line_height * 0);draw_horz_line(line_height * 1);draw_block2(line_height * 2);
draw_horz_line(line_height * 6);draw_block3(line_height * 7);draw_horz_line(line_height * 13);
draw_block4(line_height * 14);end;def draw_block1(y);draw_actor_name(@actor, 4, y);draw_actor_class(@actor, 128, y);
draw_actor_nickname(@actor, 288, y);end;def draw_block2(y);draw_actor_face(@actor, 8, y);
draw_basic_info(136, y);draw_exp_info(304, y);end;def draw_block3(y);draw_parameters(32, y);
draw_equipments(288, y);end;def draw_block4(y);draw_description(4, y);end;def draw_horz_line(y);
line_y = y + line_height / 2 - 1;contents.fill_rect(0, line_y, contents_width, 2, line_color);
end;def line_color;color = normal_color;color.alpha = 48;color;end;def draw_basic_info(x, y);
draw_actor_level(@actor, x, y + line_height * 0);draw_actor_icons(@actor, x, y + line_height * 1);
draw_actor_hp(@actor, x, y + line_height * 2);draw_actor_mp(@actor, x, y + line_height * 3);
end;def draw_parameters(x, y);6.times { |i| draw_actor_param(@actor, x, y + line_height * i, i + 2) };
end;def draw_exp_info(x, y);s1 = @actor.max_level? ? '-------' : @actor.exp;s2 = @actor.max_level? ? '-------' : @actor.next_level_exp - @actor.exp;
s_next = format(Vocab::ExpNext, Vocab.level);change_color(system_color);draw_text(x, y + line_height * 0, 180, line_height, Vocab::ExpTotal);
draw_text(x, y + line_height * 2, 180, line_height, s_next);change_color(normal_color);
draw_text(x, y + line_height * 1, 180, line_height, s1, 2);draw_text(x, y + line_height * 3, 180, line_height, s2, 2);
end;def draw_equipments(x, y);@actor.equips.each_with_index do |item, i|
draw_item_name(item, x, y + line_height * i);
end;end;def draw_description(x, y);draw_text_ex(x, y, @actor.description);end;end;class Window_SaveFile < Window_Base;
attr_reader :selected ;def initialize(height, index);super(0, index * height, Graphics.width, height);
@file_index = index;refresh;@selected = false;end;def refresh;contents.clear;change_color(normal_color);
name = Vocab::File + " #{@file_index + 1}";draw_text(4, 0, 200, line_height, name);
@name_width = text_size(name).width;draw_party_characters(152, 58);draw_playtime(0, contents.height - line_height, contents.width - 4, 2);
end;def draw_party_characters(x, y);header = DataManager.load_header(@file_index);return unless header;
header[:characters].each_with_index do |data, i|
draw_character(data[0], data[1], x + i * 48, y);
end;end;def draw_playtime(x, y, width, _align);header = DataManager.load_header(@file_index);
return unless header;draw_text(x, y, width, line_height, header[:playtime_s], 2);end;
def selected=(selected);@selected = selected;update_cursor;end;def update_cursor;if @selected
cursor_rect.set(0, 0, @name_width + 8, line_height);
else;cursor_rect.empty;end;end;end;class Window_ShopCommand < Window_HorzCommand;def initialize(window_width, purchase_only);
@window_width = window_width;@purchase_only = purchase_only;super(0, 0);end;attr_reader :window_width;
def col_max;3;end;def make_command_list;add_command(Vocab::ShopBuy, :buy);add_command(Vocab::ShopSell, :sell, !@purchase_only);
add_command(Vocab::ShopCancel, :cancel);end;end;class Window_ShopBuy < Window_Selectable;
attr_reader :status_window ;def initialize(x, y, height, shop_goods);super(x, y, window_width, height);
@shop_goods = shop_goods;@money = 0;refresh;select(0);end;def window_width;304;end;def item_max;
@data ? @data.size : 1;end;def item;@data[index];end;def money=(money);@money = money;refresh;
end;def current_item_enabled?;enable?(@data[index]);end;def price(item);@price[item];end;
def enable?(item);item && price(item) <= @money && !$game_party.item_max?(item);end;
def refresh;make_item_list;create_contents;draw_all_items;end;def make_item_list;@data = [];
@price = {};@shop_goods.each do |goods|
case goods[0];when 0;item = $data_items[goods[1]];
when 1;item = $data_weapons[goods[1]];when 2;item = $data_armors[goods[1]];end;if item
@data.push(item);
@price[item] = (goods[2]).zero? ? item.price : goods[3];end;end;end;def draw_item(index);
item = @data[index];rect = item_rect(index);draw_item_name(item, rect.x, rect.y, enable?(item));
rect.width -= 4;draw_text(rect, price(item), 2);end;def status_window=(status_window);
@status_window = status_window;call_update_help;end;def update_help;@help_window.set_item(item) if @help_window;
@status_window.item = item if @status_window;end;end;class Window_ShopSell < Window_ItemList;
def current_item_enabled?;enable?(@data[index]);end;def enable?(item);item && item.price > 0;
end;end;class Window_ShopNumber < Window_Selectable;attr_reader :number ;def initialize(x, y, height);
super(x, y, window_width, height);@item = nil;@max = 1;@price = 0;@number = 1;@currency_unit = Vocab.currency_unit;
end;def window_width;304;end;def set(item, max, price, currency_unit = nil);@item = item;
@max = max;@price = price;@currency_unit = currency_unit if currency_unit;@number = 1;
refresh;end;def currency_unit=(currency_unit);@currency_unit = currency_unit;refresh;
end;def refresh;contents.clear;draw_item_name(@item, 0, item_y);draw_number;draw_total_price;
end;def draw_number;change_color(normal_color);draw_text(cursor_x - 28, item_y, 22, line_height, '×');
draw_text(cursor_x, item_y, cursor_width - 4, line_height, @number, 2);end;def draw_total_price;
width = contents_width - 8;draw_currency_value(@price * @number, @currency_unit, 4, price_y, width);
end;def item_y;contents_height / 2 - line_height * 3 / 2;end;def price_y;contents_height / 2 + line_height / 2;
end;def cursor_width;figures * 10 + 12;end;def cursor_x;contents_width - cursor_width - 4;
end;def figures;2;end;def update;super;return unless active;last_number = @number;update_number;
return unless @number != last_number;Sound.play_cursor;refresh;end;def update_number;
change_number(1) if Input.repeat?(:RIGHT);change_number(-1) if Input.repeat?(:LEFT);
change_number(10) if Input.repeat?(:UP);change_number(-10) if Input.repeat?(:DOWN);
end;def change_number(amount);@number = [[@number + amount, @max].min, 1].max;end;def update_cursor;
cursor_rect.set(cursor_x, item_y, cursor_width, line_height);end;end;class Window_ShopStatus < Window_Base;
def initialize(x, y, width, height);super(x, y, width, height);@item = nil;@page_index = 0;
refresh;end;def refresh;contents.clear;draw_possession(4, 0);draw_equip_info(4, line_height * 2) if @item.is_a?(RPG::EquipItem);
end;def item=(item);@item = item;refresh;end;def draw_possession(x, y);rect = Rect.new(x, y, contents.width - 4 - x, line_height);
change_color(system_color);draw_text(rect, Vocab::Possession);change_color(normal_color);
draw_text(rect, $game_party.item_number(@item), 2);end;def draw_equip_info(x, y);status_members.each_with_index do |actor, i|
draw_actor_equip_info(x, y + line_height * (i * 2.4), actor);
end;end;def status_members;$game_party.members[@page_index * page_size, page_size];end;
def page_size;4;end;def page_max;($game_party.members.size + page_size - 1) / page_size;
end;def draw_actor_equip_info(x, y, actor);enabled = actor.equippable?(@item);change_color(normal_color, enabled);
draw_text(x, y, 112, line_height, actor.name);item1 = current_equipped_item(actor, @item.etype_id);
draw_actor_param_change(x, y, actor, item1) if enabled;draw_item_name(item1, x, y + line_height, enabled);
end;def draw_actor_param_change(x, y, _actor, item1);rect = Rect.new(x, y, contents.width - 4 - x, line_height);
change = @item.params[param_id] - (item1 ? item1.params[param_id] : 0);change_color(param_change_color(change));
draw_text(rect, format('%+d', change), 2);end;def param_id;@item.is_a?(RPG::Weapon) ? 2 : 3;
end;def current_equipped_item(actor, etype_id);list = [];actor.equip_slots.each_with_index do |slot_etype_id, i|
list.push(actor.equips[i]) if slot_etype_id == etype_id;
end;list.min_by { |item| item ? item.params[param_id] : 0 };end;def update;super;update_page;
end;def update_page;return unless visible && Input.trigger?(:A) && page_max > 1;@page_index = (@page_index + 1) % page_max;
refresh;end;end;class Window_NameEdit < Window_Base;attr_reader :name ;attr_reader :index, :max_char ;
def initialize(actor, max_char);x = (Graphics.width - 360) / 2;y = (Graphics.height - (fitting_height(4) + fitting_height(9) + 8)) / 2;
super(x, y, 360, fitting_height(4));@actor = actor;@max_char = max_char;@default_name = @name = actor.name[0, @max_char];
@index = @name.size;deactivate;refresh;end;def restore_default;@name = @default_name;@index = @name.size;
refresh;!@name.empty?;end;def add(ch);return false if @index >= @max_char;@name += ch;
@index += 1;refresh;true;end;def back;return false if @index.zero?;@index -= 1;@name = @name[0, @index];
refresh;true;end;def face_width;96;end;def char_width;text_size($game_system.japanese? ? 'あ' : 'A').width;
end;def left;name_center = (contents_width + face_width) / 2;name_width = (@max_char + 1) * char_width;
[name_center - name_width / 2, contents_width - name_width].min;end;def item_rect(index);
Rect.new(left + index * char_width, 36, char_width, line_height);end;def underline_rect(index);
rect = item_rect(index);rect.x += 1;rect.y += rect.height - 4;rect.width -= 2;rect.height = 2;
rect;end;def underline_color;color = normal_color;color.alpha = 48;color;end;def draw_underline(index);
contents.fill_rect(underline_rect(index), underline_color);end;def draw_char(index);
rect = item_rect(index);rect.x -= 1;rect.width += 4;change_color(normal_color);draw_text(rect, @name[index] || '');
end;def refresh;contents.clear;draw_actor_face(@actor, 0, 0);@max_char.times { |i| draw_underline(i) };
@name.size.times { |i| draw_char(i) };cursor_rect.set(item_rect(@index));end;end;class Window_ChoiceList < Window_Command;
def initialize(message_window);@message_window = message_window;super(0, 0);self.openness = 0;
deactivate;end;def start;update_placement;refresh;select(0);open;activate;end;def update_placement;
self.width = [max_choice_width + 12, 96].max + padding * 2;self.width = [width, Graphics.width].min;
self.height = fitting_height($game_message.choices.size);self.x = Graphics.width - width;
self.y = if @message_window.y >= Graphics.height / 2;@message_window.y - height;else;
@message_window.y + @message_window.height;end;end;def max_choice_width;$game_message.choices.collect { |s| text_size(s).width }.max;
end;def contents_height;item_max * item_height;end;def make_command_list;$game_message.choices.each do |choice|
add_command(choice, :choice);
end;end;def draw_item(index);rect = item_rect_for_text(index);draw_text_ex(rect.x, rect.y, command_name(index));
end;def cancel_enabled?;$game_message.choice_cancel_type > 0;end;def call_ok_handler;
$game_message.choice_proc.call(index);close;end;def call_cancel_handler;$game_message.choice_proc.call($game_message.choice_cancel_type - 1);
close;end;end;class Window_NumberInput < Window_Base;def initialize(message_window);@message_window = message_window;
super(0, 0, 0, 0);@number = 0;@digits_max = 1;@index = 0;self.openness = 0;deactivate;
end;def start;@digits_max = $game_message.num_input_digits_max;@number = $game_variables[$game_message.num_input_variable_id];
@number = [[@number, 0].max, 10 ** @digits_max - 1].min;@index = 0;update_placement;
create_contents;refresh;open;activate;end;def update_placement;self.width = @digits_max * 20 + padding * 2;
self.height = fitting_height(1);self.x = (Graphics.width - width) / 2;self.y = if @message_window.y >= Graphics.height / 2;
@message_window.y - height - 8;else;@message_window.y + @message_window.height + 8;
end;end;def cursor_right(wrap);return unless @index < @digits_max - 1 || wrap;@index = (@index + 1) % @digits_max;
end;def cursor_left(wrap);return unless @index > 0 || wrap;@index = (@index + @digits_max - 1) % @digits_max;
end;def update;super;process_cursor_move;process_digit_change;process_handling;update_cursor;
end;def process_cursor_move;return unless active;last_index = @index;cursor_right(Input.trigger?(:RIGHT)) if Input.repeat?(:RIGHT);
cursor_left(Input.trigger?(:LEFT)) if Input.repeat?(:LEFT);Sound.play_cursor if @index != last_index;
end;def process_digit_change;return unless active;return unless Input.repeat?(:UP) || Input.repeat?(:DOWN);
Sound.play_cursor;place = 10 ** (@digits_max - 1 - @index);n = @number / place % 10;
@number -= n * place;n = (n + 1) % 10 if Input.repeat?(:UP);n = (n + 9) % 10 if Input.repeat?(:DOWN);
@number += n * place;refresh;end;def process_handling;return unless active;return process_ok if Input.trigger?(:C);
process_cancel if Input.trigger?(:B);end;def process_ok;Sound.play_ok;$game_variables[$game_message.num_input_variable_id] = @number;
deactivate;close;end;def process_cancel; end;def item_rect(index);Rect.new(index * 20, 0, 20, line_height);
end;def refresh;contents.clear;change_color(normal_color);s = format('%0*d', @digits_max, @number);
@digits_max.times do |i|
rect = item_rect(i);rect.x += 1;draw_text(rect, s[i, 1], 1);
end;end;def update_cursor;cursor_rect.set(item_rect(@index));end;end;class Window_KeyItem < Window_ItemList;
def initialize(message_window);@message_window = message_window;super(0, 0, Graphics.width, fitting_height(4));
self.openness = 0;deactivate;set_handler(:ok, method(:on_ok));set_handler(:cancel, method(:on_cancel));
end;def start;self.category = :key_item;update_placement;refresh;select(0);open;activate;
end;def update_placement;self.y = if @message_window.y >= Graphics.height / 2;0;else;
Graphics.height - height;end;end;def on_ok;result = item ? item.id : 0;$game_variables[$game_message.item_choice_variable_id] = result;
close;end;def on_cancel;$game_variables[$game_message.item_choice_variable_id] = 0;close;
end;end;class Window_Message < Window_Base;def initialize;super(0, 0, window_width, window_height);
self.z = 200;self.openness = 0;create_all_windows;create_back_bitmap;create_back_sprite;
clear_instance_variables;end;def window_width;Graphics.width;end;def window_height;fitting_height(visible_line_number);
end;def clear_instance_variables;@fiber = nil ;@background = 0 ;@position = 2 ;clear_flags;
end;def clear_flags;@show_fast = false ;@line_show_fast = false ;@pause_skip = false ;
end;def visible_line_number;4;end;def dispose;super;dispose_all_windows;dispose_back_bitmap;
dispose_back_sprite;end;def update;super;update_all_windows;update_back_sprite;update_fiber;
end;def update_fiber;if @fiber
@fiber.resume;elsif $game_message.busy? && !$game_message.scroll_mode;
@fiber = Fiber.new { fiber_main };@fiber.resume;else;$game_message.visible = false;end;
end;def create_all_windows;@gold_window = Window_Gold.new;@gold_window.x = Graphics.width - @gold_window.width;
@gold_window.y = 0;@gold_window.openness = 0;@choice_window = Window_ChoiceList.new(self);
@number_window = Window_NumberInput.new(self);@item_window = Window_KeyItem.new(self);
end;def create_back_bitmap;@back_bitmap = Bitmap.new(width, height);rect1 = Rect.new(0, 0, width, 12);
rect2 = Rect.new(0, 12, width, height - 24);rect3 = Rect.new(0, height - 12, width, 12);
@back_bitmap.gradient_fill_rect(rect1, back_color2, back_color1, true);@back_bitmap.fill_rect(rect2, back_color1);
@back_bitmap.gradient_fill_rect(rect3, back_color1, back_color2, true);end;def back_color1;
Color.new(0, 0, 0, 160);end;def back_color2;Color.new(0, 0, 0, 0);end;def create_back_sprite;
@back_sprite = Sprite.new;@back_sprite.bitmap = @back_bitmap;@back_sprite.visible = false;
@back_sprite.z = z - 1;end;def dispose_all_windows;@gold_window.dispose;@choice_window.dispose;
@number_window.dispose;@item_window.dispose;end;def dispose_back_bitmap;@back_bitmap.dispose;
end;def dispose_back_sprite;@back_sprite.dispose;end;def update_all_windows;@gold_window.update;
@choice_window.update;@number_window.update;@item_window.update;end;def update_back_sprite;
@back_sprite.visible = (@background == 1);@back_sprite.y = y;@back_sprite.opacity = openness;
@back_sprite.update;end;def fiber_main;$game_message.visible = true;update_background;
update_placement;loop do;process_all_text if $game_message.has_text?;process_input;$game_message.clear;
@gold_window.close;Fiber.yield;break unless text_continue?;end;close_and_wait;$game_message.visible = false;
@fiber = nil;end;def update_background;@background = $game_message.background;self.opacity = @background.zero? ? 255 : 0;
end;def update_placement;@position = $game_message.position;self.y = @position * (Graphics.height - height) / 2;
@gold_window.y = y > 0 ? 0 : Graphics.height - @gold_window.height;end;def process_all_text;
open_and_wait;text = convert_escape_characters($game_message.all_text);pos = {};new_page(text, pos);
process_character(text.slice!(0, 1), text, pos) until text.empty?;end;def process_input;
if $game_message.choice?
input_choice;elsif $game_message.num_input?;input_number;elsif $game_message.item_choice?;
input_item;else;input_pause unless @pause_skip;end;end;def open_and_wait;open;Fiber.yield until open?;
end;def close_and_wait;close;Fiber.yield until all_close?;end;def all_close?;close? && @choice_window.close? &&
@number_window.close? && @item_window.close?;
end;def text_continue?;$game_message.has_text? && !settings_changed?;end;def settings_changed?;
@background != $game_message.background ||
@position != $game_message.position;end;
def wait(duration);duration.times { Fiber.yield };end;def update_show_fast;@show_fast = true if Input.trigger?(:C);
end;def wait_for_one_character;update_show_fast;Fiber.yield unless @show_fast || @line_show_fast;
end;def new_page(text, pos);contents.clear;draw_face($game_message.face_name, $game_message.face_index, 0, 0);
reset_font_settings;pos[:x] = new_line_x;pos[:y] = 0;pos[:new_x] = new_line_x;pos[:height] = calc_line_height(text);
clear_flags;end;def new_line_x;$game_message.face_name.empty? ? 0 : 112;end;def process_normal_character(c, pos);
super;wait_for_one_character;end;def process_new_line(text, pos);@line_show_fast = false;
super;return unless need_new_page?(text, pos);input_pause;new_page(text, pos);end;def need_new_page?(text, pos);
pos[:y] + pos[:height] > contents.height && !text.empty?;end;def process_new_page(text, pos);
text.slice!(/^\n/);input_pause;new_page(text, pos);end;def process_draw_icon(icon_index, pos);
super;wait_for_one_character;end;def process_escape_character(code, text, pos);case code.upcase;
when '$';@gold_window.open;when '.';wait(15);when '|';wait(60);when '!';input_pause;when '>';
@line_show_fast = true;when '<';@line_show_fast = false;when '^';@pause_skip = true;else;
super;end;end;def input_pause;self.pause = true;wait(10);Fiber.yield until Input.trigger?(:B) || Input.trigger?(:C);
Input.update;self.pause = false;end;def input_choice;@choice_window.start;Fiber.yield while @choice_window.active;
end;def input_number;@number_window.start;Fiber.yield while @number_window.active;end;
def input_item;@item_window.start;Fiber.yield while @item_window.active;end;end;class Window_ScrollText < Window_Base;
def initialize;super(0, 0, Graphics.width, Graphics.height);self.opacity = 0;self.arrows_visible = false;
hide;end;def update;super;return unless $game_message.scroll_mode;update_message if @text;
start_message if !@text && $game_message.has_text?;end;def start_message;@text = $game_message.all_text;
refresh;show;end;def refresh;reset_font_settings;update_all_text_height;create_contents;
draw_text_ex(4, 0, @text);self.oy = @scroll_pos = -height;end;def update_all_text_height;
@all_text_height = 1;convert_escape_characters(@text).each_line do |line|
@all_text_height += calc_line_height(line, false);
end;reset_font_settings;end;def contents_height;@all_text_height || super;end;def update_message;
@scroll_pos += scroll_speed;self.oy = @scroll_pos;terminate_message if @scroll_pos >= contents.height;
end;def scroll_speed;$game_message.scroll_speed * (show_fast? ? 1.0 : 0.5);end;def show_fast?;
!$game_message.scroll_no_fast && (Input.press?(:A) || Input.press?(:C));end;def terminate_message;
@text = nil;$game_message.clear;hide;end;end;class Window_MapName < Window_Base;def initialize;
super(0, 0, window_width, fitting_height(1));self.opacity = 0;self.contents_opacity = 0;
@show_count = 0;refresh;end;def window_width;240;end;def update;super;if @show_count > 0 && $game_map.name_display
update_fadein;
@show_count -= 1;else;update_fadeout;end;end;def update_fadein;self.contents_opacity += 16;
end;def update_fadeout;self.contents_opacity -= 16;end;def open;refresh;@show_count = 150;
self.contents_opacity = 0;self;end;def close;@show_count = 0;self;end;def refresh;contents.clear;
return if $game_map.display_name.empty?;draw_background(contents.rect);draw_text(contents.rect, $game_map.display_name, 1);
end;def draw_background(rect);temp_rect = rect.clone;temp_rect.width /= 2;contents.gradient_fill_rect(temp_rect, back_color2, back_color1);
temp_rect.x = temp_rect.width;contents.gradient_fill_rect(temp_rect, back_color1, back_color2);
end;def back_color1;Color.new(0, 0, 0, 192);end;def back_color2;Color.new(0, 0, 0, 0);
end;end;class Window_BattleLog < Window_Selectable;def initialize;super(0, 0, window_width, window_height);
self.z = 200;self.opacity = 0;@lines = [];@num_wait = 0;create_back_bitmap;create_back_sprite;
refresh;end;def dispose;super;dispose_back_bitmap;dispose_back_sprite;end;def window_width;
Graphics.width;end;def window_height;fitting_height(max_line_number);end;def max_line_number;
6;end;def create_back_bitmap;@back_bitmap = Bitmap.new(width, height);end;def create_back_sprite;
@back_sprite = Sprite.new;@back_sprite.bitmap = @back_bitmap;@back_sprite.y = y;@back_sprite.z = z - 1;
end;def dispose_back_bitmap;@back_bitmap.dispose;end;def dispose_back_sprite;@back_sprite.dispose;
end;def clear;@num_wait = 0;@lines.clear;refresh;end;def line_number;@lines.size;end;def back_one;
@lines.pop;refresh;end;def back_to(line_number);@lines.pop while @lines.size > line_number;
refresh;end;def add_text(text);@lines.push(text);refresh;end;def replace_text(text);@lines.pop;
@lines.push(text);refresh;end;def last_text;@lines[-1];end;def refresh;draw_background;contents.clear;
@lines.size.times { |i| draw_line(i) };end;def draw_background;@back_bitmap.clear;@back_bitmap.fill_rect(back_rect, back_color);
end;def back_rect;Rect.new(0, padding, width, line_number * line_height);end;def back_color;
Color.new(0, 0, 0, back_opacity);end;def back_opacity;64;end;def draw_line(line_number);
rect = item_rect_for_text(line_number);contents.clear_rect(rect);draw_text_ex(rect.x, rect.y, @lines[line_number]);
end;attr_writer :method_wait;attr_writer :method_wait_for_effect;def wait;@num_wait += 1;
@method_wait.call(message_speed) if @method_wait;end;def wait_for_effect;@method_wait_for_effect.call if @method_wait_for_effect;
end;def message_speed;20;end;def wait_and_clear;wait while @num_wait < 2 if line_number > 0;
clear;end;def display_current_state(subject);return if subject.most_important_state_text.empty?;
add_text(subject.name + subject.most_important_state_text);wait;end;def display_use_item(subject, item);
if item.is_a?(RPG::Skill)
add_text(subject.name + item.message1);unless item.message2.empty?
wait;
add_text(item.message2);end;else;add_text(format(Vocab::UseItem, subject.name, item.name));
end;end;def display_counter(target, _item);Sound.play_evasion;add_text(format(Vocab::CounterAttack, target.name));
wait;back_one;end;def display_reflection(target, _item);Sound.play_reflection;add_text(format(Vocab::MagicReflection, target.name));
wait;back_one;end;def display_substitute(substitute, target);add_text(format(Vocab::Substitute, substitute.name, target.name));
wait;back_one;end;def display_action_results(target, item);return unless target.result.used;
last_line_number = line_number;display_critical(target, item);display_damage(target, item);
display_affected_status(target, item);display_failure(target, item);wait if line_number > last_line_number;
back_to(last_line_number);end;def display_failure(target, _item);return unless target.result.hit? && !target.result.success;
add_text(format(Vocab::ActionFailure, target.name));wait;end;def display_critical(target, _item);
return unless target.result.critical;text = target.actor? ? Vocab::CriticalToActor : Vocab::CriticalToEnemy;
add_text(text);wait;end;def display_damage(target, item);if target.result.missed
display_miss(target, item);
elsif target.result.evaded;display_evasion(target, item);else;display_hp_damage(target, item);
display_mp_damage(target, item);display_tp_damage(target, item);end;end;def display_miss(target, item);
if !item || item.physical?
fmt = target.actor? ? Vocab::ActorNoHit : Vocab::EnemyNoHit;
Sound.play_miss;else;fmt = Vocab::ActionFailure;end;add_text(format(fmt, target.name));
wait;end;def display_evasion(target, item);if !item || item.physical?
fmt = Vocab::Evasion;
Sound.play_evasion;else;fmt = Vocab::MagicEvasion;Sound.play_magic_evasion;end;add_text(format(fmt, target.name));
wait;end;def display_hp_damage(target, item);return if target.result.hp_damage.zero? && item && !item.damage.to_hp?;
if target.result.hp_damage > 0 && target.result.hp_drain.zero?
target.perform_damage_effect;
end;Sound.play_recovery if target.result.hp_damage < 0;add_text(target.result.hp_damage_text);
wait;end;def display_mp_damage(target, _item);return if target.dead? || target.result.mp_damage.zero?;
Sound.play_recovery if target.result.mp_damage < 0;add_text(target.result.mp_damage_text);
wait;end;def display_tp_damage(target, _item);return if target.dead? || target.result.tp_damage.zero?;
Sound.play_recovery if target.result.tp_damage < 0;add_text(target.result.tp_damage_text);
wait;end;def display_affected_status(target, _item);return unless target.result.status_affected?;
add_text('') if line_number < max_line_number;display_changed_states(target);display_changed_buffs(target);
back_one if last_text.empty?;end;def display_auto_affected_status(target);return unless target.result.status_affected?;
display_affected_status(target, nil);wait if line_number > 0;end;def display_changed_states(target);
display_added_states(target);display_removed_states(target);end;def display_added_states(target);
target.result.added_state_objects.each do |state|
state_msg = target.actor? ? state.message1 : state.message2;
target.perform_collapse_effect if state.id == target.death_state_id;next if state_msg.empty?;
replace_text(target.name + state_msg);wait;wait_for_effect;end;end;def display_removed_states(target);
target.result.removed_state_objects.each do |state|
next if state.message4.empty?;
replace_text(target.name + state.message4);wait;end;end;def display_changed_buffs(target);
display_buffs(target, target.result.added_buffs, Vocab::BuffAdd);display_buffs(target, target.result.added_debuffs, Vocab::DebuffAdd);
display_buffs(target, target.result.removed_buffs, Vocab::BuffRemove);end;def display_buffs(target, buffs, fmt);
buffs.each do |param_id|
replace_text(format(fmt, target.name, Vocab.param(param_id)));
wait;end;end;end;class Window_PartyCommand < Window_Command;def initialize;super(0, 0);
self.openness = 0;deactivate;end;def window_width;128;end;def visible_line_number;4;end;def make_command_list;
add_command(Vocab.fight, :fight);add_command(Vocab.escape, :escape, BattleManager.can_escape?);
end;def setup;clear_command_list;make_command_list;refresh;select(0);activate;open;end;end;
class Window_ActorCommand < Window_Command;def initialize;super(0, 0);self.openness = 0;
deactivate;@actor = nil;end;def window_width;128;end;def visible_line_number;4;end;def make_command_list;
return unless @actor;add_attack_command;add_skill_commands;add_guard_command;add_item_command;
end;def add_attack_command;add_command(Vocab.attack, :attack, @actor.attack_usable?);
end;def add_skill_commands;@actor.added_skill_types.sort.each do |stype_id|
name = $data_system.skill_types[stype_id];
add_command(name, :skill, true, stype_id);end;end;def add_guard_command;add_command(Vocab.guard, :guard, @actor.guard_usable?);
end;def add_item_command;add_command(Vocab.item, :item);end;def setup(actor);@actor = actor;
clear_command_list;make_command_list;refresh;select(0);activate;open;end;end;class Window_BattleStatus < Window_Selectable;
def initialize;super(0, 0, window_width, window_height);refresh;self.openness = 0;end;
def window_width;Graphics.width - 128;end;def window_height;fitting_height(visible_line_number);
end;def visible_line_number;4;end;def item_max;$game_party.battle_members.size;end;def refresh;
contents.clear;draw_all_items;end;def draw_item(index);actor = $game_party.battle_members[index];
draw_basic_area(basic_area_rect(index), actor);draw_gauge_area(gauge_area_rect(index), actor);
end;def basic_area_rect(index);rect = item_rect_for_text(index);rect.width -= gauge_area_width + 10;
rect;end;def gauge_area_rect(index);rect = item_rect_for_text(index);rect.x += rect.width - gauge_area_width;
rect.width = gauge_area_width;rect;end;def gauge_area_width;220;end;def draw_basic_area(rect, actor);
draw_actor_name(actor, rect.x + 0, rect.y, 100);draw_actor_icons(actor, rect.x + 104, rect.y, rect.width - 104);
end;def draw_gauge_area(rect, actor);if $data_system.opt_display_tp
draw_gauge_area_with_tp(rect, actor);
else;draw_gauge_area_without_tp(rect, actor);end;end;def draw_gauge_area_with_tp(rect, actor);
draw_actor_hp(actor, rect.x + 0, rect.y, 72);draw_actor_mp(actor, rect.x + 82, rect.y, 64);
draw_actor_tp(actor, rect.x + 156, rect.y, 64);end;def draw_gauge_area_without_tp(rect, actor);
draw_actor_hp(actor, rect.x + 0, rect.y, 134);draw_actor_mp(actor, rect.x + 144, rect.y, 76);
end;end;class Window_BattleActor < Window_BattleStatus;def initialize(info_viewport);
super();self.y = info_viewport.rect.y;self.visible = false;self.openness = 255;@info_viewport = info_viewport;
end;def show;if @info_viewport
width_remain = Graphics.width - width;self.x = width_remain;
@info_viewport.rect.width = width_remain;select(0);end;super;end;def hide;@info_viewport.rect.width = Graphics.width if @info_viewport;
super;end;end;class Window_BattleEnemy < Window_Selectable;def initialize(info_viewport);
super(0, info_viewport.rect.y, window_width, fitting_height(4));refresh;self.visible = false;
@info_viewport = info_viewport;end;def window_width;Graphics.width - 128;end;def col_max;
2;end;def item_max;$game_troop.alive_members.size;end;def enemy;$game_troop.alive_members[@index];
end;def draw_item(index);change_color(normal_color);name = $game_troop.alive_members[index].name;
draw_text(item_rect_for_text(index), name);end;def show;if @info_viewport
width_remain = Graphics.width - width;
self.x = width_remain;@info_viewport.rect.width = width_remain;select(0);end;super;end;
def hide;@info_viewport.rect.width = Graphics.width if @info_viewport;super;end;end;class Window_BattleSkill < Window_SkillList;
def initialize(help_window, info_viewport);y = help_window.height;super(0, y, Graphics.width, info_viewport.rect.y - y);
self.visible = false;@help_window = help_window;@info_viewport = info_viewport;end;def show;
select_last;@help_window.show;super;end;def hide;@help_window.hide;super;end;end;class Window_BattleItem < Window_ItemList;
def initialize(help_window, info_viewport);y = help_window.height;super(0, y, Graphics.width, info_viewport.rect.y - y);
self.visible = false;@help_window = help_window;@info_viewport = info_viewport;end;def include?(item);
$game_party.usable?(item);end;def show;select_last;@help_window.show;super;end;def hide;
@help_window.hide;super;end;end;class Window_TitleCommand < Window_Command;def initialize;
super(0, 0);update_placement;select_symbol(:continue) if continue_enabled;self.openness = 0;
open;end;def window_width;160;end;def update_placement;self.x = (Graphics.width - width) / 2;
self.y = (Graphics.height * 1.6 - height) / 2;end;def make_command_list;add_command(Vocab.new_game, :new_game);
add_command(Vocab.continue, :continue, continue_enabled);add_command(Vocab.shutdown, :shutdown);
end;def continue_enabled;DataManager.save_file_exists?;end;end;class Window_GameEnd < Window_Command;
def initialize;super(0, 0);update_placement;self.openness = 0;open;end;def window_width;
160;end;def update_placement;self.x = (Graphics.width - width) / 2;self.y = (Graphics.height - height) / 2;
end;def make_command_list;add_command(Vocab.to_title, :to_title);add_command(Vocab.shutdown, :shutdown);
add_command(Vocab.cancel, :cancel);end;end;class Window_DebugLeft < Window_Selectable;
@@last_top_row = 0 ;@@last_index = 0 ;attr_reader :right_window ;def initialize(x, y);
super(x, y, window_width, window_height);refresh;self.top_row = @@last_top_row;select(@@last_index);
activate;end;def window_width;164;end;def window_height;Graphics.height;end;def item_max;
@item_max || 0;end;def update;super;return unless @right_window;@right_window.mode = mode;
@right_window.top_id = top_id;end;def mode;index < @switch_max ? :switch : :variable;
end;def top_id;(index - (index < @switch_max ? 0 : @switch_max)) * 10 + 1;end;def refresh;
@switch_max = ($data_system.switches.size - 1 + 9) / 10;@variable_max = ($data_system.variables.size - 1 + 9) / 10;
@item_max = @switch_max + @variable_max;create_contents;draw_all_items;end;def draw_item(index);
if index < @switch_max
n = index * 10;text = format('S [%04d-%04d]', n + 1, n + 10);
else;n = (index - @switch_max) * 10;text = format('V [%04d-%04d]', n + 1, n + 10);end;
draw_text(item_rect_for_text(index), text);end;def process_cancel;super;@@last_top_row = top_row;
@@last_index = index;end;def right_window=(right_window);@right_window = right_window;
update;end;end;class Window_DebugRight < Window_Selectable;attr_reader :mode ;attr_reader :top_id ;
def initialize(x, y, width);super(x, y, width, fitting_height(10));@mode = :switch;
@top_id = 1;refresh;end;def item_max;10;end;def refresh;contents.clear;draw_all_items;end;
def draw_item(index);data_id = @top_id + index;id_text = format('%04d:', data_id);id_width = text_size(id_text).width;
if @mode == :switch
name = $data_system.switches[data_id];status = $game_switches[data_id] ? '[ON]' : '[OFF]';
else;name = $data_system.variables[data_id];status = $game_variables[data_id];end;name ||= '';
rect = item_rect_for_text(index);change_color(normal_color);draw_text(rect, id_text);
rect.x += id_width;rect.width -= id_width + 60;draw_text(rect, name);rect.width += 60;
draw_text(rect, status, 2);end;def mode=(mode);return unless @mode != mode;@mode = mode;
refresh;end;def top_id=(id);return unless @top_id != id;@top_id = id;refresh;end;def current_id;
top_id + index;end;def update;super;update_switch_mode if active && mode == :switch;update_variable_mode if active && mode == :variable;
end;def update_switch_mode;return unless Input.trigger?(:C);Sound.play_ok;$game_switches[current_id] = !$game_switches[current_id];
redraw_current_item;end;def update_variable_mode;return unless $game_variables[current_id].is_a?(Numeric);
value = $game_variables[current_id];value += 1 if Input.repeat?(:RIGHT);value -= 1 if Input.repeat?(:LEFT);
value += 10 if Input.repeat?(:R);value -= 10 if Input.repeat?(:L);return unless $game_variables[current_id] != value;
$game_variables[current_id] = value;Sound.play_cursor;redraw_current_item;end;end;class Scene_Base;
def main;start;post_start;update until scene_changing?;pre_terminate;terminate;end;def start;
create_main_viewport;end;def post_start;perform_transition;Input.update;end;def scene_changing?;
SceneManager.scene != self;end;def update;update_basic;end;def update_basic;Graphics.update;
Input.update;update_all_windows;end;def pre_terminate; end;def terminate;Graphics.freeze;
dispose_all_windows;dispose_main_viewport;end;def perform_transition;Graphics.transition(transition_speed);
end;def transition_speed;10;end;def create_main_viewport;@viewport = Viewport.new;@viewport.z = 200;
end;def dispose_main_viewport;@viewport.dispose;end;def update_all_windows;instance_variables.each do |varname|
ivar = instance_variable_get(varname);
ivar.update if ivar.is_a?(Window);end;end;def dispose_all_windows;instance_variables.each do |varname|
ivar = instance_variable_get(varname);
ivar.dispose if ivar.is_a?(Window);end;end;def return_scene;SceneManager.return;end;def fadeout_all(time = 1000);
RPG::BGM.fade(time);RPG::BGS.fade(time);RPG::ME.fade(time);Graphics.fadeout(time * Graphics.frame_rate / 1000);
RPG::BGM.stop;RPG::BGS.stop;RPG::ME.stop;end;def check_gameover;SceneManager.goto(Scene_Gameover) if $game_party.all_dead?;
end;end;class Scene_Title < Scene_Base;def start;super;SceneManager.clear;Graphics.freeze;
create_background;create_foreground;create_command_window;play_title_music;end;def transition_speed;
20;end;def terminate;super;SceneManager.snapshot_for_background;dispose_background;dispose_foreground;
end;def create_background;@sprite1 = Sprite.new;@sprite1.bitmap = Cache.title1($data_system.title1_name);
@sprite2 = Sprite.new;@sprite2.bitmap = Cache.title2($data_system.title2_name);center_sprite(@sprite1);
center_sprite(@sprite2);end;def create_foreground;@foreground_sprite = Sprite.new;@foreground_sprite.bitmap = Bitmap.new(Graphics.width, Graphics.height);
@foreground_sprite.z = 100;draw_game_title if $data_system.opt_draw_title;end;def draw_game_title;
@foreground_sprite.bitmap.font.size = 48;rect = Rect.new(0, 0, Graphics.width, Graphics.height / 2);
@foreground_sprite.bitmap.draw_text(rect, $data_system.game_title, 1);end;def dispose_background;
@sprite1.bitmap.dispose;@sprite1.dispose;@sprite2.bitmap.dispose;@sprite2.dispose;end;
def dispose_foreground;@foreground_sprite.bitmap.dispose;@foreground_sprite.dispose;
end;def center_sprite(sprite);sprite.ox = sprite.bitmap.width / 2;sprite.oy = sprite.bitmap.height / 2;
sprite.x = Graphics.width / 2;sprite.y = Graphics.height / 2;end;def create_command_window;
@command_window = Window_TitleCommand.new;@command_window.set_handler(:new_game, method(:command_new_game));
@command_window.set_handler(:continue, method(:command_continue));@command_window.set_handler(:shutdown, method(:command_shutdown));
end;def close_command_window;@command_window.close;update until @command_window.close?;
end;def command_new_game;DataManager.setup_new_game;close_command_window;fadeout_all;
$game_map.autoplay;SceneManager.goto(Scene_Map);end;def command_continue;close_command_window;
SceneManager.call(Scene_Load);end;def command_shutdown;close_command_window;fadeout_all;
SceneManager.exit;end;def play_title_music;$data_system.title_bgm.play;RPG::BGS.stop;
RPG::ME.stop;end;end;class Scene_Map < Scene_Base;def start;super;SceneManager.clear;$game_player.straighten;
$game_map.refresh;$game_message.visible = false;create_spriteset;create_all_windows;
@menu_calling = false;end;def perform_transition;if Graphics.brightness.zero?
Graphics.transition(0);
fadein(fadein_speed);else;super;end;end;def transition_speed;15;end;def pre_terminate;super;
pre_battle_scene if SceneManager.scene_is?(Scene_Battle);pre_title_scene if SceneManager.scene_is?(Scene_Title);
end;def terminate;super;SceneManager.snapshot_for_background;dispose_spriteset;perform_battle_transition if SceneManager.scene_is?(Scene_Battle);
end;def update;super;$game_map.update(true);$game_player.update;$game_timer.update;@spriteset.update;
update_scene if scene_change_ok?;end;def scene_change_ok?;!$game_message.busy? && !$game_message.visible;
end;def update_scene;check_gameover;update_transfer_player unless scene_changing?;update_encounter unless scene_changing?;
update_call_menu unless scene_changing?;update_call_debug unless scene_changing?;end;
def update_for_fade;update_basic;$game_map.update(false);@spriteset.update;end;def fade_loop(duration);
duration.times do |i|
yield 255 * (i + 1) / duration;update_for_fade;end;end;def fadein(duration);
fade_loop(duration) { |v| Graphics.brightness = v };end;def fadeout(duration);fade_loop(duration) { |v| Graphics.brightness = 255 - v };
end;def white_fadein(duration);fade_loop(duration) { |v| @viewport.color.set(255, 255, 255, 255 - v) };
end;def white_fadeout(duration);fade_loop(duration) { |v| @viewport.color.set(255, 255, 255, v) };
end;def create_spriteset;@spriteset = Spriteset_Map.new;end;def dispose_spriteset;@spriteset.dispose;
end;def create_all_windows;create_message_window;create_scroll_text_window;create_location_window;
end;def create_message_window;@message_window = Window_Message.new;end;def create_scroll_text_window;
@scroll_text_window = Window_ScrollText.new;end;def create_location_window;@map_name_window = Window_MapName.new;
end;def update_transfer_player;perform_transfer if $game_player.transfer?;end;def update_encounter;
SceneManager.call(Scene_Battle) if $game_player.encounter;end;def update_call_menu;
if $game_system.menu_disabled || $game_map.interpreter.running?
@menu_calling = false;
else;@menu_calling ||= Input.trigger?(:B);call_menu if @menu_calling && !$game_player.moving?;
end;end;def call_menu;Sound.play_ok;SceneManager.call(Scene_Menu);Window_MenuCommand.init_command_position;
end;def update_call_debug;SceneManager.call(Scene_Debug) if $TEST && Input.press?(:F9);
end;def perform_transfer;pre_transfer;$game_player.perform_transfer;post_transfer;end;
def pre_transfer;@map_name_window.close;case $game_temp.fade_type;when 0;fadeout(fadeout_speed);
when 1;white_fadeout(fadeout_speed);end;end;def post_transfer;case $game_temp.fade_type;
when 0;Graphics.wait(fadein_speed / 2);fadein(fadein_speed);when 1;Graphics.wait(fadein_speed / 2);
white_fadein(fadein_speed);end;@map_name_window.open;end;def pre_battle_scene;Graphics.update;
Graphics.freeze;@spriteset.dispose_characters;BattleManager.save_bgm_and_bgs;BattleManager.play_battle_bgm;
Sound.play_battle_start;end;def pre_title_scene;fadeout(fadeout_speed_to_title);end;def perform_battle_transition;
Graphics.transition(60, 'Graphics/System/BattleStart', 100);Graphics.freeze;end;def fadeout_speed;
30;end;def fadein_speed;30;end;def fadeout_speed_to_title;60;end;end;class Scene_MenuBase < Scene_Base;
def start;super;create_background;@actor = $game_party.menu_actor;end;def terminate;super;
dispose_background;end;def create_background;@background_sprite = Sprite.new;@background_sprite.bitmap = SceneManager.background_bitmap;
@background_sprite.color.set(16, 16, 16, 128);end;def dispose_background;@background_sprite.dispose;
end;def create_help_window;@help_window = Window_Help.new;@help_window.viewport = @viewport;
end;def next_actor;@actor = $game_party.menu_actor_next;on_actor_change;end;def prev_actor;
@actor = $game_party.menu_actor_prev;on_actor_change;end;def on_actor_change; end;end;
class Scene_Menu < Scene_MenuBase;def start;super;create_command_window;create_gold_window;
create_status_window;end;def create_command_window;@command_window = Window_MenuCommand.new;
@command_window.set_handler(:item, method(:command_item));@command_window.set_handler(:skill, method(:command_personal));
@command_window.set_handler(:equip, method(:command_personal));@command_window.set_handler(:status, method(:command_personal));
@command_window.set_handler(:formation, method(:command_formation));@command_window.set_handler(:save, method(:command_save));
@command_window.set_handler(:game_end, method(:command_game_end));@command_window.set_handler(:cancel, method(:return_scene));
end;def create_gold_window;@gold_window = Window_Gold.new;@gold_window.x = 0;@gold_window.y = Graphics.height - @gold_window.height;
end;def create_status_window;@status_window = Window_MenuStatus.new(@command_window.width, 0);
end;def command_item;SceneManager.call(Scene_Item);end;def command_personal;@status_window.select_last;
@status_window.activate;@status_window.set_handler(:ok, method(:on_personal_ok));@status_window.set_handler(:cancel, method(:on_personal_cancel));
end;def command_formation;@status_window.select_last;@status_window.activate;@status_window.set_handler(:ok, method(:on_formation_ok));
@status_window.set_handler(:cancel, method(:on_formation_cancel));end;def command_save;
SceneManager.call(Scene_Save);end;def command_game_end;SceneManager.call(Scene_End);
end;def on_personal_ok;case @command_window.current_symbol;when :skill;SceneManager.call(Scene_Skill);
when :equip;SceneManager.call(Scene_Equip);when :status;SceneManager.call(Scene_Status);
end;end;def on_personal_cancel;@status_window.unselect;@command_window.activate;end;def on_formation_ok;
if @status_window.pending_index >= 0
$game_party.swap_order(@status_window.index,
@status_window.pending_index);
@status_window.pending_index = -1;@status_window.redraw_item(@status_window.index);
else;@status_window.pending_index = @status_window.index;end;@status_window.activate;
end;def on_formation_cancel;if @status_window.pending_index >= 0
@status_window.pending_index = -1;
@status_window.activate;else;@status_window.unselect;@command_window.activate;end;end;
end;class Scene_ItemBase < Scene_MenuBase;def start;super;create_actor_window;end;def create_actor_window;
@actor_window = Window_MenuActor.new;@actor_window.set_handler(:ok, method(:on_actor_ok));
@actor_window.set_handler(:cancel, method(:on_actor_cancel));end;def item;@item_window.item;
end;def user;$game_party.movable_members.max_by(&:pha);end;def cursor_left?;@item_window.index.even?;
end;def show_sub_window(window);width_remain = Graphics.width - window.width;window.x = cursor_left? ? width_remain : 0;
@viewport.rect.x = @viewport.ox = cursor_left? ? 0 : window.width;@viewport.rect.width = width_remain;
window.show.activate;end;def hide_sub_window(window);@viewport.rect.x = @viewport.ox = 0;
@viewport.rect.width = Graphics.width;window.hide.deactivate;activate_item_window;end;
def on_actor_ok;if item_usable?
use_item;else;Sound.play_buzzer;end;end;def on_actor_cancel;
hide_sub_window(@actor_window);end;def determine_item;if item.for_friend?
show_sub_window(@actor_window);
@actor_window.select_for_item(item);else;use_item;activate_item_window;end;end;def activate_item_window;
@item_window.refresh;@item_window.activate;end;def item_target_actors;if !item.for_friend?
[];
elsif item.for_all?;$game_party.members;else;[$game_party.members[@actor_window.index]];
end;end;def item_usable?;user.usable?(item) && item_effects_valid?;end;def item_effects_valid?;
item_target_actors.any? do |target|
target.item_test(user, item);end;end;def use_item_to_actors;
item_target_actors.each do |target|
item.repeats.times { target.item_apply(user, item) };
end;end;def use_item;play_se_for_item;user.use_item(item);use_item_to_actors;check_common_event;
check_gameover;@actor_window.refresh;end;def check_common_event;SceneManager.goto(Scene_Map) if $game_temp.common_event_reserved?;
end;end;class Scene_Item < Scene_ItemBase;def start;super;create_help_window;create_category_window;
create_item_window;end;def create_category_window;@category_window = Window_ItemCategory.new;
@category_window.viewport = @viewport;@category_window.help_window = @help_window;
@category_window.y = @help_window.height;@category_window.set_handler(:ok, method(:on_category_ok));
@category_window.set_handler(:cancel, method(:return_scene));end;def create_item_window;
wy = @category_window.y + @category_window.height;wh = Graphics.height - wy;@item_window = Window_ItemList.new(0, wy, Graphics.width, wh);
@item_window.viewport = @viewport;@item_window.help_window = @help_window;@item_window.set_handler(:ok, method(:on_item_ok));
@item_window.set_handler(:cancel, method(:on_item_cancel));@category_window.item_window = @item_window;
end;def on_category_ok;@item_window.activate;@item_window.select_last;end;def on_item_ok;
$game_party.last_item.object = item;determine_item;end;def on_item_cancel;@item_window.unselect;
@category_window.activate;end;def play_se_for_item;Sound.play_use_item;end;def use_item;
super;@item_window.redraw_current_item;end;end;class Scene_Skill < Scene_ItemBase;def start;
super;create_help_window;create_command_window;create_status_window;create_item_window;
end;def create_command_window;wy = @help_window.height;@command_window = Window_SkillCommand.new(0, wy);
@command_window.viewport = @viewport;@command_window.help_window = @help_window;@command_window.actor = @actor;
@command_window.set_handler(:skill, method(:command_skill));@command_window.set_handler(:cancel, method(:return_scene));
@command_window.set_handler(:pagedown, method(:next_actor));@command_window.set_handler(:pageup, method(:prev_actor));
end;def create_status_window;y = @help_window.height;@status_window = Window_SkillStatus.new(@command_window.width, y);
@status_window.viewport = @viewport;@status_window.actor = @actor;end;def create_item_window;
wx = 0;wy = @status_window.y + @status_window.height;ww = Graphics.width;wh = Graphics.height - wy;
@item_window = Window_SkillList.new(wx, wy, ww, wh);@item_window.actor = @actor;@item_window.viewport = @viewport;
@item_window.help_window = @help_window;@item_window.set_handler(:ok, method(:on_item_ok));
@item_window.set_handler(:cancel, method(:on_item_cancel));@command_window.skill_window = @item_window;
end;def user;@actor;end;def command_skill;@item_window.activate;@item_window.select_last;
end;def on_item_ok;@actor.last_skill.object = item;determine_item;end;def on_item_cancel;
@item_window.unselect;@command_window.activate;end;def play_se_for_item;Sound.play_use_skill;
end;def use_item;super;@status_window.refresh;@item_window.refresh;end;def on_actor_change;
@command_window.actor = @actor;@status_window.actor = @actor;@item_window.actor = @actor;
@command_window.activate;end;end;class Scene_Equip < Scene_MenuBase;def start;super;create_help_window;
create_status_window;create_command_window;create_slot_window;create_item_window;end;
def create_status_window;@status_window = Window_EquipStatus.new(0, @help_window.height);
@status_window.viewport = @viewport;@status_window.actor = @actor;end;def create_command_window;
wx = @status_window.width;wy = @help_window.height;ww = Graphics.width - @status_window.width;
@command_window = Window_EquipCommand.new(wx, wy, ww);@command_window.viewport = @viewport;
@command_window.help_window = @help_window;@command_window.set_handler(:equip, method(:command_equip));
@command_window.set_handler(:optimize, method(:command_optimize));@command_window.set_handler(:clear, method(:command_clear));
@command_window.set_handler(:cancel, method(:return_scene));@command_window.set_handler(:pagedown, method(:next_actor));
@command_window.set_handler(:pageup, method(:prev_actor));end;def create_slot_window;
wx = @status_window.width;wy = @command_window.y + @command_window.height;ww = Graphics.width - @status_window.width;
@slot_window = Window_EquipSlot.new(wx, wy, ww);@slot_window.viewport = @viewport;
@slot_window.help_window = @help_window;@slot_window.status_window = @status_window;
@slot_window.actor = @actor;@slot_window.set_handler(:ok, method(:on_slot_ok));@slot_window.set_handler(:cancel, method(:on_slot_cancel));
end;def create_item_window;wx = 0;wy = @slot_window.y + @slot_window.height;ww = Graphics.width;
wh = Graphics.height - wy;@item_window = Window_EquipItem.new(wx, wy, ww, wh);@item_window.viewport = @viewport;
@item_window.help_window = @help_window;@item_window.status_window = @status_window;
@item_window.actor = @actor;@item_window.set_handler(:ok, method(:on_item_ok));@item_window.set_handler(:cancel, method(:on_item_cancel));
@slot_window.item_window = @item_window;end;def command_equip;@slot_window.activate;
@slot_window.select(0);end;def command_optimize;Sound.play_equip;@actor.optimize_equipments;
@status_window.refresh;@slot_window.refresh;@command_window.activate;end;def command_clear;
Sound.play_equip;@actor.clear_equipments;@status_window.refresh;@slot_window.refresh;
@command_window.activate;end;def on_slot_ok;@item_window.activate;@item_window.select(0);
end;def on_slot_cancel;@slot_window.unselect;@command_window.activate;end;def on_item_ok;
Sound.play_equip;@actor.change_equip(@slot_window.index, @item_window.item);@slot_window.activate;
@slot_window.refresh;@item_window.unselect;@item_window.refresh;end;def on_item_cancel;
@slot_window.activate;@item_window.unselect;end;def on_actor_change;@status_window.actor = @actor;
@slot_window.actor = @actor;@item_window.actor = @actor;@command_window.activate;end;
end;class Scene_Status < Scene_MenuBase;def start;super;@status_window = Window_Status.new(@actor);
@status_window.set_handler(:cancel, method(:return_scene));@status_window.set_handler(:pagedown, method(:next_actor));
@status_window.set_handler(:pageup, method(:prev_actor));end;def on_actor_change;@status_window.actor = @actor;
@status_window.activate;end;end;class Scene_File < Scene_MenuBase;def start;super;create_help_window;
create_savefile_viewport;create_savefile_windows;init_selection;end;def terminate;super;
@savefile_viewport.dispose;@savefile_windows.each(&:dispose);end;def update;super;@savefile_windows.each(&:update);
update_savefile_selection;end;def create_help_window;@help_window = Window_Help.new(1);
@help_window.set_text(help_window_text);end;def help_window_text;'';end;def create_savefile_viewport;
@savefile_viewport = Viewport.new;@savefile_viewport.rect.y = @help_window.height;
@savefile_viewport.rect.height -= @help_window.height;end;def create_savefile_windows;
@savefile_windows = Array.new(item_max) do |i|
Window_SaveFile.new(savefile_height, i);
end;@savefile_windows.each do |window|
window.viewport = @savefile_viewport;end;end;def init_selection;
@index = first_savefile_index;@savefile_windows[@index].selected = true;self.top_index = @index - visible_max / 2;
ensure_cursor_visible;end;def item_max;DataManager.savefile_max;end;def visible_max;4;end;
def savefile_height;@savefile_viewport.rect.height / visible_max;end;def first_savefile_index;
0;end;attr_reader :index;def top_index;@savefile_viewport.oy / savefile_height;end;def top_index=(index);
index = 0 if index.negative?;index = item_max - visible_max if index > item_max - visible_max;
@savefile_viewport.oy = index * savefile_height;end;def bottom_index;top_index + visible_max - 1;
end;def bottom_index=(index);self.top_index = index - (visible_max - 1);end;def update_savefile_selection;
return on_savefile_ok if Input.trigger?(:C);return on_savefile_cancel if Input.trigger?(:B);
update_cursor;end;def on_savefile_ok; end;def on_savefile_cancel;Sound.play_cancel;return_scene;
end;def update_cursor;last_index = @index;cursor_down(Input.trigger?(:DOWN)) if Input.repeat?(:DOWN);
cursor_up(Input.trigger?(:UP)) if Input.repeat?(:UP);cursor_pagedown if Input.trigger?(:R);
cursor_pageup if Input.trigger?(:L);return unless @index != last_index;Sound.play_cursor;
@savefile_windows[last_index].selected = false;@savefile_windows[@index].selected = true;
end;def cursor_down(wrap);@index = (@index + 1) % item_max if @index < item_max - 1 || wrap;
ensure_cursor_visible;end;def cursor_up(wrap);@index = (@index - 1 + item_max) % item_max if @index.positive? || wrap;
ensure_cursor_visible;end;def cursor_pagedown;return unless top_index + visible_max < item_max;
self.top_index += visible_max;@index = [@index + visible_max, item_max - 1].min;end;
def cursor_pageup;return unless top_index.positive?;self.top_index -= visible_max;@index = [@index - visible_max, 0].max;
end;def ensure_cursor_visible;self.top_index = index if index < top_index;self.bottom_index = index if index > bottom_index;
end;end;class Scene_Save < Scene_File;def help_window_text;Vocab::SaveMessage;end;def first_savefile_index;
DataManager.last_savefile_index;end;def on_savefile_ok;super;if DataManager.save_game(@index)
on_save_success;
else;Sound.play_buzzer;end;end;def on_save_success;Sound.play_save;return_scene;end;end;class Scene_Load < Scene_File;
def help_window_text;Vocab::LoadMessage;end;def first_savefile_index;DataManager.latest_savefile_index;
end;def on_savefile_ok;super;if DataManager.load_game(@index)
on_load_success;else;Sound.play_buzzer;
end;end;def on_load_success;Sound.play_load;fadeout_all;$game_system.on_after_load;SceneManager.goto(Scene_Map);
end;end;class Scene_End < Scene_MenuBase;def start;super;create_command_window;end;def pre_terminate;
super;close_command_window;end;def create_background;super;@background_sprite.tone.set(0, 0, 0, 128);
end;def create_command_window;@command_window = Window_GameEnd.new;@command_window.set_handler(:to_title, method(:command_to_title));
@command_window.set_handler(:shutdown, method(:command_shutdown));@command_window.set_handler(:cancel, method(:return_scene));
end;def close_command_window;@command_window.close;update until @command_window.close?;
end;def command_to_title;close_command_window;fadeout_all;SceneManager.goto(Scene_Title);
end;def command_shutdown;close_command_window;fadeout_all;SceneManager.exit;end;end;class Scene_Shop < Scene_MenuBase;
def prepare(goods, purchase_only);@goods = goods;@purchase_only = purchase_only;end;
def start;super;create_help_window;create_gold_window;create_command_window;create_dummy_window;
create_number_window;create_status_window;create_buy_window;create_category_window;create_sell_window;
end;def create_gold_window;@gold_window = Window_Gold.new;@gold_window.viewport = @viewport;
@gold_window.x = Graphics.width - @gold_window.width;@gold_window.y = @help_window.height;
end;def create_command_window;@command_window = Window_ShopCommand.new(@gold_window.x, @purchase_only);
@command_window.viewport = @viewport;@command_window.y = @help_window.height;@command_window.set_handler(:buy, method(:command_buy));
@command_window.set_handler(:sell, method(:command_sell));@command_window.set_handler(:cancel, method(:return_scene));
end;def create_dummy_window;wy = @command_window.y + @command_window.height;wh = Graphics.height - wy;
@dummy_window = Window_Base.new(0, wy, Graphics.width, wh);@dummy_window.viewport = @viewport;
end;def create_number_window;wy = @dummy_window.y;wh = @dummy_window.height;@number_window = Window_ShopNumber.new(0, wy, wh);
@number_window.viewport = @viewport;@number_window.hide;@number_window.set_handler(:ok, method(:on_number_ok));
@number_window.set_handler(:cancel, method(:on_number_cancel));end;def create_status_window;
wx = @number_window.width;wy = @dummy_window.y;ww = Graphics.width - wx;wh = @dummy_window.height;
@status_window = Window_ShopStatus.new(wx, wy, ww, wh);@status_window.viewport = @viewport;
@status_window.hide;end;def create_buy_window;wy = @dummy_window.y;wh = @dummy_window.height;
@buy_window = Window_ShopBuy.new(0, wy, wh, @goods);@buy_window.viewport = @viewport;
@buy_window.help_window = @help_window;@buy_window.status_window = @status_window;
@buy_window.hide;@buy_window.set_handler(:ok, method(:on_buy_ok));@buy_window.set_handler(:cancel, method(:on_buy_cancel));
end;def create_category_window;@category_window = Window_ItemCategory.new;@category_window.viewport = @viewport;
@category_window.help_window = @help_window;@category_window.y = @dummy_window.y;@category_window.hide.deactivate;
@category_window.set_handler(:ok, method(:on_category_ok));@category_window.set_handler(:cancel, method(:on_category_cancel));
end;def create_sell_window;wy = @category_window.y + @category_window.height;wh = Graphics.height - wy;
@sell_window = Window_ShopSell.new(0, wy, Graphics.width, wh);@sell_window.viewport = @viewport;
@sell_window.help_window = @help_window;@sell_window.hide;@sell_window.set_handler(:ok, method(:on_sell_ok));
@sell_window.set_handler(:cancel, method(:on_sell_cancel));@category_window.item_window = @sell_window;
end;def activate_buy_window;@buy_window.money = money;@buy_window.show.activate;@status_window.show;
end;def activate_sell_window;@category_window.show;@sell_window.refresh;@sell_window.show.activate;
@status_window.hide;end;def command_buy;@dummy_window.hide;activate_buy_window;end;def command_sell;
@dummy_window.hide;@category_window.show.activate;@sell_window.show;@sell_window.unselect;
@sell_window.refresh;end;def on_buy_ok;@item = @buy_window.item;@buy_window.hide;@number_window.set(@item, max_buy, buying_price, currency_unit);
@number_window.show.activate;end;def on_buy_cancel;@command_window.activate;@dummy_window.show;
@buy_window.hide;@status_window.hide;@status_window.item = nil;@help_window.clear;end;
def on_category_ok;activate_sell_window;@sell_window.select(0);end;def on_category_cancel;
@command_window.activate;@dummy_window.show;@category_window.hide;@sell_window.hide;
end;def on_sell_ok;@item = @sell_window.item;@status_window.item = @item;@category_window.hide;
@sell_window.hide;@number_window.set(@item, max_sell, selling_price, currency_unit);
@number_window.show.activate;@status_window.show;end;def on_sell_cancel;@sell_window.unselect;
@category_window.activate;@status_window.item = nil;@help_window.clear;end;def on_number_ok;
Sound.play_shop;case @command_window.current_symbol;when :buy;do_buy(@number_window.number);
when :sell;do_sell(@number_window.number);end;end_number_input;@gold_window.refresh;@status_window.refresh;
end;def on_number_cancel;Sound.play_cancel;end_number_input;end;def do_buy(number);$game_party.lose_gold(number * buying_price);
$game_party.gain_item(@item, number);end;def do_sell(number);$game_party.gain_gold(number * selling_price);
$game_party.lose_item(@item, number);end;def end_number_input;@number_window.hide;case @command_window.current_symbol;
when :buy;activate_buy_window;when :sell;activate_sell_window;end;end;def max_buy;max = $game_party.max_item_number(@item) - $game_party.item_number(@item);
buying_price.zero? ? max : [max, money / buying_price].min;end;def max_sell;$game_party.item_number(@item);
end;def money;@gold_window.value;end;def currency_unit;@gold_window.currency_unit;end;def buying_price;
@buy_window.price(@item);end;def selling_price;@item.price / 2;end;end;class Scene_Name < Scene_MenuBase;
def prepare(actor_id, max_char);@actor_id = actor_id;@max_char = max_char;end;def start;
super;@actor = $game_actors[@actor_id];@edit_window = Window_NameEdit.new(@actor, @max_char);
@input_window = Window_NameInput.new(@edit_window);@input_window.set_handler(:ok, method(:on_input_ok));
end;def on_input_ok;@actor.name = @edit_window.name;return_scene;end;end;class Scene_Debug < Scene_MenuBase;
def start;super;create_left_window;create_right_window;create_debug_help_window;end;def create_left_window;
@left_window = Window_DebugLeft.new(0, 0);@left_window.set_handler(:ok, method(:on_left_ok));
@left_window.set_handler(:cancel, method(:return_scene));end;def create_right_window;
wx = @left_window.width;ww = Graphics.width - wx;@right_window = Window_DebugRight.new(wx, 0, ww);
@right_window.set_handler(:cancel, method(:on_right_cancel));@left_window.right_window = @right_window;
end;def create_debug_help_window;wx = @right_window.x;wy = @right_window.height;ww = @right_window.width;
wh = Graphics.height - wy;@debug_help_window = Window_Base.new(wx, wy, ww, wh);end;
def on_left_ok;refresh_help_window;@right_window.activate;@right_window.select(0);end;
def on_right_cancel;@left_window.activate;@right_window.unselect;@debug_help_window.contents.clear;
end;def refresh_help_window;@debug_help_window.draw_text_ex(4, 0, help_text);end;def help_text;
if @left_window.mode == :switch
'C (Enter) : ON / OFF';else;"← (Left)    :  -1\n" \
"→ (Right)   :  +1\n" \
"L (Pageup)   : -10\n" \
'R (Pagedown) : +10';
end;end;end;class Scene_Battle < Scene_Base;def start;super;create_spriteset;create_all_windows;
BattleManager.method_wait_for_message = method(:wait_for_message);end;def post_start;
super;battle_start;end;def pre_terminate;super;Graphics.fadeout(30) if SceneManager.scene_is?(Scene_Map);
Graphics.fadeout(60) if SceneManager.scene_is?(Scene_Title);end;def terminate;super;
dispose_spriteset;@info_viewport.dispose;RPG::ME.stop;end;def update;super;if BattleManager.in_turn?
process_event;
process_action;end;BattleManager.judge_win_loss;end;def update_basic;super;$game_timer.update;
$game_troop.update;@spriteset.update;update_info_viewport;update_message_open;end;def update_for_wait;
update_basic;end;def wait(duration);duration.times { |i| update_for_wait if i < duration / 2 || !show_fast? };
end;def show_fast?;Input.press?(:A) || Input.press?(:C);end;def abs_wait(duration);duration.times { |i| update_for_wait };
end;def abs_wait_short;abs_wait(15);end;def wait_for_message;@message_window.update;update_for_wait while $game_message.visible;
end;def wait_for_animation;update_for_wait;update_for_wait while @spriteset.animation?;
end;def wait_for_effect;update_for_wait;update_for_wait while @spriteset.effect?;end;
def update_info_viewport;move_info_viewport(0) if @party_command_window.active;move_info_viewport(128) if @actor_command_window.active;
move_info_viewport(64) if BattleManager.in_turn?;end;def move_info_viewport(ox);current_ox = @info_viewport.ox;
@info_viewport.ox = [ox, current_ox + 16].min if current_ox < ox;@info_viewport.ox = [ox, current_ox - 16].max if current_ox > ox;
end;def update_message_open;return unless $game_message.busy? && !@status_window.close?;
@message_window.openness = 0;@status_window.close;@party_command_window.close;@actor_command_window.close;
end;def create_spriteset;@spriteset = Spriteset_Battle.new;end;def dispose_spriteset;
@spriteset.dispose;end;def create_all_windows;create_message_window;create_scroll_text_window;
create_log_window;create_status_window;create_info_viewport;create_party_command_window;
create_actor_command_window;create_help_window;create_skill_window;create_item_window;
create_actor_window;create_enemy_window;end;def create_message_window;@message_window = Window_Message.new;
end;def create_scroll_text_window;@scroll_text_window = Window_ScrollText.new;end;def create_log_window;
@log_window = Window_BattleLog.new;@log_window.method_wait = method(:wait);@log_window.method_wait_for_effect = method(:wait_for_effect);
end;def create_status_window;@status_window = Window_BattleStatus.new;@status_window.x = 128;
end;def create_info_viewport;@info_viewport = Viewport.new;@info_viewport.rect.y = Graphics.height - @status_window.height;
@info_viewport.rect.height = @status_window.height;@info_viewport.z = 100;@info_viewport.ox = 64;
@status_window.viewport = @info_viewport;end;def create_party_command_window;@party_command_window = Window_PartyCommand.new;
@party_command_window.viewport = @info_viewport;@party_command_window.set_handler(:fight, method(:command_fight));
@party_command_window.set_handler(:escape, method(:command_escape));@party_command_window.unselect;
end;def create_actor_command_window;@actor_command_window = Window_ActorCommand.new;
@actor_command_window.viewport = @info_viewport;@actor_command_window.set_handler(:attack, method(:command_attack));
@actor_command_window.set_handler(:skill, method(:command_skill));@actor_command_window.set_handler(:guard, method(:command_guard));
@actor_command_window.set_handler(:item, method(:command_item));@actor_command_window.set_handler(:cancel, method(:prior_command));
@actor_command_window.x = Graphics.width;end;def create_help_window;@help_window = Window_Help.new;
@help_window.visible = false;end;def create_skill_window;@skill_window = Window_BattleSkill.new(@help_window, @info_viewport);
@skill_window.set_handler(:ok, method(:on_skill_ok));@skill_window.set_handler(:cancel, method(:on_skill_cancel));
end;def create_item_window;@item_window = Window_BattleItem.new(@help_window, @info_viewport);
@item_window.set_handler(:ok, method(:on_item_ok));@item_window.set_handler(:cancel, method(:on_item_cancel));
end;def create_actor_window;@actor_window = Window_BattleActor.new(@info_viewport);
@actor_window.set_handler(:ok, method(:on_actor_ok));@actor_window.set_handler(:cancel, method(:on_actor_cancel));
end;def create_enemy_window;@enemy_window = Window_BattleEnemy.new(@info_viewport);
@enemy_window.set_handler(:ok, method(:on_enemy_ok));@enemy_window.set_handler(:cancel, method(:on_enemy_cancel));
end;def refresh_status;@status_window.refresh;end;def next_command;if BattleManager.next_command
start_actor_command_selection;
else;turn_start;end;end;def prior_command;if BattleManager.prior_command
start_actor_command_selection;
else;start_party_command_selection;end;end;def start_party_command_selection;return if scene_changing?;
refresh_status;@status_window.unselect;@status_window.open;if BattleManager.input_start
@actor_command_window.close;
@party_command_window.setup;else;@party_command_window.deactivate;turn_start;end;end;def command_fight;
next_command;end;def command_escape;turn_start unless BattleManager.process_escape;end;
def start_actor_command_selection;@status_window.select(BattleManager.actor.index);
@party_command_window.close;@actor_command_window.setup(BattleManager.actor);end;def command_attack;
BattleManager.actor.input.set_attack;select_enemy_selection;end;def command_skill;@skill_window.actor = BattleManager.actor;
@skill_window.stype_id = @actor_command_window.current_ext;@skill_window.refresh;@skill_window.show.activate;
end;def command_guard;BattleManager.actor.input.set_guard;next_command;end;def command_item;
@item_window.refresh;@item_window.show.activate;end;def select_actor_selection;@actor_window.refresh;
@actor_window.show.activate;end;def on_actor_ok;BattleManager.actor.input.target_index = @actor_window.index;
@actor_window.hide;@skill_window.hide;@item_window.hide;next_command;end;def on_actor_cancel;
@actor_window.hide;case @actor_command_window.current_symbol;when :skill;@skill_window.activate;
when :item;@item_window.activate;end;end;def select_enemy_selection;@enemy_window.refresh;
@enemy_window.show.activate;end;def on_enemy_ok;BattleManager.actor.input.target_index = @enemy_window.enemy.index;
@enemy_window.hide;@skill_window.hide;@item_window.hide;next_command;end;def on_enemy_cancel;
@enemy_window.hide;case @actor_command_window.current_symbol;when :attack;@actor_command_window.activate;
when :skill;@skill_window.activate;when :item;@item_window.activate;end;end;def on_skill_ok;
@skill = @skill_window.item;BattleManager.actor.input.set_skill(@skill.id);BattleManager.actor.last_skill.object = @skill;
if !@skill.need_selection?
@skill_window.hide;next_command;elsif @skill.for_opponent?;
select_enemy_selection;else;select_actor_selection;end;end;def on_skill_cancel;@skill_window.hide;
@actor_command_window.activate;end;def on_item_ok;@item = @item_window.item;BattleManager.actor.input.set_item(@item.id);
if !@item.need_selection?
@item_window.hide;next_command;elsif @item.for_opponent?;select_enemy_selection;
else;select_actor_selection;end;$game_party.last_item.object = @item;end;def on_item_cancel;
@item_window.hide;@actor_command_window.activate;end;def battle_start;BattleManager.battle_start;
process_event;start_party_command_selection;end;def turn_start;@party_command_window.close;
@actor_command_window.close;@status_window.unselect;@subject = nil;BattleManager.turn_start;
@log_window.wait;@log_window.clear;end;def turn_end;all_battle_members.each do |battler|
battler.on_turn_end;
refresh_status;@log_window.display_auto_affected_status(battler);@log_window.wait_and_clear;
end;BattleManager.turn_end;process_event;start_party_command_selection;end;def all_battle_members;
$game_party.members + $game_troop.members;end;def process_event;until scene_changing?;
$game_troop.interpreter.update;$game_troop.setup_battle_event;wait_for_message;wait_for_effect if $game_troop.all_dead?;
process_forced_action;BattleManager.judge_win_loss;break unless $game_troop.interpreter.running?;
update_for_wait;end;end;def process_forced_action;return unless BattleManager.action_forced?;
last_subject = @subject;@subject = BattleManager.action_forced_battler;BattleManager.clear_action_force;
process_action;@subject = last_subject;end;def process_action;return if scene_changing?;
if !@subject || !@subject.current_action
@subject = BattleManager.next_subject;end;
return turn_end unless @subject;if @subject.current_action
@subject.current_action.prepare;
if @subject.current_action.valid?
@status_window.open;execute_action;end;@subject.remove_current_action;
end;process_action_end unless @subject.current_action;end;def process_action_end;@subject.on_action_end;
refresh_status;@log_window.display_auto_affected_status(@subject);@log_window.wait_and_clear;
@log_window.display_current_state(@subject);@log_window.wait_and_clear;BattleManager.judge_win_loss;
end;def execute_action;@subject.sprite_effect_type = :whiten;use_item;@log_window.wait_and_clear;
end;def use_item;item = @subject.current_action.item;@log_window.display_use_item(@subject, item);
@subject.use_item(item);refresh_status;targets = @subject.current_action.make_targets.compact;
show_animation(targets, item.animation_id);targets.each { |target| item.repeats.times { invoke_item(target, item) } };
end;def invoke_item(target, item);if rand < target.item_cnt(@subject, item)
invoke_counter_attack(target, item);
elsif rand < target.item_mrf(@subject, item);invoke_magic_reflection(target, item);
else;apply_item_effects(apply_substitute(target, item), item);end;@subject.last_target_index = target.index;
end;def apply_item_effects(target, item);target.item_apply(@subject, item);refresh_status;
@log_window.display_action_results(target, item);end;def invoke_counter_attack(target, item);
@log_window.display_counter(target, item);attack_skill = $data_skills[target.attack_skill_id];
@subject.item_apply(target, attack_skill);refresh_status;@log_window.display_action_results(@subject, attack_skill);
end;def invoke_magic_reflection(target, item);@subject.magic_reflection = true;@log_window.display_reflection(target, item);
apply_item_effects(@subject, item);@subject.magic_reflection = false;end;def apply_substitute(target, item);
if check_substitute(target, item)
substitute = target.friends_unit.substitute_battler;
if substitute && target != substitute
@log_window.display_substitute(substitute, target);
return substitute;end;end;target;end;def check_substitute(target, item);target.hp < target.mhp / 4 && (!item || !item.certain?);
end;def show_animation(targets, animation_id);if animation_id < 0
show_attack_animation(targets);
else;show_normal_animation(targets, animation_id);end;@log_window.wait;wait_for_animation;
end;def show_attack_animation(targets);if @subject.actor?
show_normal_animation(targets, @subject.atk_animation_id1, false);
show_normal_animation(targets, @subject.atk_animation_id2, true);else;Sound.play_enemy_attack;
abs_wait_short;end;end;def show_normal_animation(targets, animation_id, mirror = false);
animation = $data_animations[animation_id];return unless animation;targets.each do |target|
target.animation_id = animation_id;
target.animation_mirror = mirror;abs_wait_short unless animation.to_screen?;end;abs_wait_short if animation.to_screen?;
end;end;class Scene_Gameover < Scene_Base;def start;super;play_gameover_music;fadeout_frozen_graphics;
create_background;end;def terminate;super;dispose_background;end;def update;super;goto_title if Input.trigger?(:C);
end;def perform_transition;Graphics.transition(fadein_speed);end;def play_gameover_music;
RPG::BGM.stop;RPG::BGS.stop;$data_system.gameover_me.play;end;def fadeout_frozen_graphics;
Graphics.transition(fadeout_speed);Graphics.freeze;end;def create_background;@sprite = Sprite.new;
@sprite.bitmap = Cache.system('GameOver');end;def dispose_background;@sprite.bitmap.dispose;
@sprite.dispose;end;def fadeout_speed;60;end;def fadein_speed;120;end;def goto_title;fadeout_all;
SceneManager.goto(Scene_Title);end;end;
