# encoding: UTF-8
<<-I

  MAXWELL WELLMAN'S CHEATING TOOLS

  Features
  - Prevents most recoverable errors from crashing the game
  - Prevents "asset not found" from crashing the game
      Images will be replaced with a placeholder
      Audio will not play
  - Allows debug movement (hold CTRL to move through obstacles)
  - Press 1 to see hotkeys
  - Allows changing game speed (press 2 to toggle)
      (this may break cutscenes visually)
  - Allows saving and loading anywhere (press 3/4)
  - Allows accessing the switch/variable debug menu (press 5)
I

BEGIN {
	Module.class_eval do

		def patch(method_name, &new_body)
			old_body = instance_method(method_name)
			class_exec do
				define_method method_name do | *args, &block |
					new_body.call_as(self, old_body.bind(self), *args, &block)
				end
			end
		end

	end

	Proc.class_eval do

		def call_as(caller, *args, &block)
			temp_name = "unbound"
			while caller.singleton_class.method_defined?(temp_name)
				temp_name.concat("_")
			end
			caller.define_singleton_method(temp_name, &self)
			unbound = caller.singleton_class.instance_method(temp_name)
			caller.singleton_class.send(:remove_method, temp_name)
			unbound.bind(caller)[*args, &block]
		end

	end

	Bitmap.class_eval do
		patch(:initialize) do | initialize_, *args |
			begin
				initialize_[*args]
			rescue Exception
				filename = args[0]
				bmp      = initialize_[Graphics.width, 32]
				bmp.gradient_fill_rect(
					bmp.text_size(filename),
					Color.new(
						rand(255),
						rand(255),
						rand(255),
					),
					Color.new(
						rand(255),
						rand(255),
						rand(255),
					)
				)
				blt(0, 0, bmp, bmp.rect, 255)
				@missing = true
				draw_text(rect, filename)
			end
		end
	end

	Sprite_Character.class_eval do
		patch(:set_character_bitmap) do | set_character_bitmap_ |
			set_character_bitmap_[]
			if self.bitmap.instance_variable_defined?(:@missing)
				characters = []
				Dir.glob('./Graphics/Characters/*.png') do | filename |
					characters << filename.gsub("./Graphics/Characters/", "")
				end
				@character.instance_variable_set(
					:@character_name,
					@character_name = characters[
						rand(characters.length)
					] || $game_player.character_name
				)
				set_character_bitmap_[]
				self.color      = Color.new(
					rand(255),
					rand(255),
					rand(255),
				)
				self.blend_type = 2
			end
		end

	end

	class CheatToolsPopup
		attr_accessor(:sprite)
		attr_accessor(:current_duration)
		attr_reader(:duration)

		def initialize(text)
			@duration         = text.length * 16 + rand(64)
			@current_duration = @duration
			viewport          = Viewport.new
			viewport.z        = 9999
			@sprite           = Sprite.new(viewport)
			bmp               = Bitmap.new(Graphics.width, 32)
			bmp.gradient_fill_rect(
				bmp.text_size(text),
				Color.new(
					rand(255),
					rand(255),
					rand(255),
				),
				Color.new(
					rand(255),
					rand(255),
					rand(255),
				)
			)
			bmp.draw_text(
				bmp.text_size(text),
				text
			)
			@sprite.bitmap = bmp
		end

	end

	module CheatTools
		class << self
			@@popups    = []
			@@fast_mode = false

			@@hotkeys = {
				help:      1,
				fast_mode: 2,
				save:      3,
				load:      4,
				debug:     5,
			}

			def update
				@@popups.each do | popup |
					popup.current_duration -= 1
					if popup.current_duration <= popup.duration / 2
						popup.sprite.opacity = (
							(
								popup.current_duration.to_f / popup.duration.to_f * 2
							) * 255
						).round
					end
					if popup.current_duration <= 0
						@@popups.each do | p |
							p.sprite.y = [ p.sprite.y - 32, 0 ].max
						end
						popup.sprite.dispose
						@@popups.delete(popup)
					end
				end

				if number_key_pressed_once?(@@hotkeys[:help])
					add_popup(
						@@hotkeys
							.sort_by { | name, number | number }
							.map { | name, number |
								"#{number} - #{name}"
							}
							.join("\n")
					)
				end

				previous_val = @@fast_mode
				if number_key_pressed_once?(@@hotkeys[:fast_mode])
					@@fast_mode = (not @@fast_mode)
					unless previous_val == @@fast_mode
						Graphics.frame_rate = if @@fast_mode
							                      120
							                  else
								                  60
						                      end
						add_popup("Speedup is #{
							if @@fast_mode
								"ON"
							else
								"OFF"
							end
						}!")
					end
				end

				if number_key_pressed_once?(@@hotkeys[:save])
					SceneManager.call(Scene_Save)
					make_sound
				end

				if number_key_pressed_once?(@@hotkeys[:load])
					SceneManager.call(Scene_Load)
					make_sound
				end

				if number_key_pressed_once?(@@hotkeys[:debug])
					SceneManager.call(Scene_Debug)
					make_sound
				end

			end

			def fast_mode?
				@@fast_mode
			end

			GetAsyncKeyState = Win32API.new('user32', 'GetAsyncKeyState', [ 'i' ], 'i')
			@@keys           = {}

			def key_pressed?(key_code)
				state = GetAsyncKeyState.call(key_code)
				(state & 0x8000) != 0
			end

			def number_key_pressed_once?(num)
				key_code = num + 0x30
				state    = GetAsyncKeyState.call(key_code)
				is_down  = (state & 0x8000) != 0

				if is_down and not @@keys[key_code]
					@@keys[key_code] = true
					return true
				elsif @@keys[key_code] and not is_down
					@@keys[key_code] = false
				end

				false
			end

			def add_popup(text)
				return if text.empty?

				text.split("\n").each do | line |
					popup          = CheatToolsPopup.new(line)
					popup.sprite.y = 32 * @@popups.length
					@@popups << popup
					make_sound
				end
			end

			def make_sound
				begin
					audio_files = []
					Dir.glob('./Audio/SE/*.ogg') do | filename |
						audio_files << filename
					end
					Audio.se_play(audio_files[rand(audio_files.length)], 75, rand(100) + 50)
				rescue
					nil
				end
			end
		end

	end

}

DataManager.singleton_class.class_eval do
	patch(:make_save_contents) do | make_save_contents_ |
		contents           = make_save_contents_[]
		contents[:message] = Game_Message.new
		contents
	end
end

Scene_Base.class_eval do
	patch(:update) do | update_ |
		update_[]

		CheatTools.update
	end
end

Game_Interpreter.class_eval do
	wait = 230
	patch("command_#{wait}".to_sym) do | wait_ |
		if CheatTools.fast_mode?
			next
		end

		wait_[]
	end

	show_text = 101
	patch("command_#{show_text}".to_sym) do | show_text_ |
		unless CheatTools.fast_mode?
			next show_text_[]
		end

		current_index     = @index
		text_data_code    = 401
		wait_code         = 230
		while [
			text_data_code,
			wait_code
		].include?(next_event_code)
			@index += 1
		end
		show_choices_code = 102
		input_number_code = 103
		select_item_code  = 104
		if [
			show_choices_code,
			input_number_code,
			select_item_code
		].include?(next_event_code)
			@index = current_index
			show_text_[]
		end
	end

	scroll_map = 204
	patch("command_#{scroll_map}".to_sym) do | scroll_map_ |
		next if $game_party.in_battle

		if CheatTools.fast_mode?
			direction = @params[0]
			distance  = @params[1]
			next $game_map.start_scroll(direction, distance, 9)
		end

		scroll_map_[]
	end

	show_animation = 212
	patch("command_#{show_animation}".to_sym) do | show_animation_ |
		if CheatTools.fast_mode?
			@params[2] = false
		end

		show_animation_[]
	end

	set_move_route = 205
	patch("command_#{set_move_route}".to_sym) do | set_move_route_ |
		if CheatTools.fast_mode?
			@params[1].list.each do | command |
				wait_code = 15
				if command.code == wait_code
					command.parameters.map! { | _ | 1 }
				end
			end
		end

		set_move_route_[]
	end

	move_picture = 232
	patch("command_#{move_picture}".to_sym) do | move_picture_ |
		if CheatTools.fast_mode?
			@params[11] = false
		end

		move_picture_[]
	end

end

Game_CharacterBase.class_eval do
	patch(:real_move_speed) do | real_move_speed_ |
		if CheatTools.fast_mode?
			next 5 + if dash?
				         2
				     else
					     0
			         end
		end

		real_move_speed_[]
	end
end

Game_Player.class_eval do
	patch(:debug_through?) do | * |
		Input.press?(:CTRL)
	end
end

Graphics.singleton_class.class_eval do
	[
		:wait,
		:fadeout,
		:fadein,
		:transition,
	].each do | method_name |
		patch(method_name) do | wait_, duration, *args |
			wait_[
				(
					if CheatTools.fast_mode?
						1
					else
						duration
					end
				), *args
			]
		end
	end

end

Game_Screen.class_eval do
	[
		:start_fadeout,
		:start_fadein,
	].each do | method_name |
		patch(method_name) do | method_, duration |
			method_[
				(
					if CheatTools.fast_mode?
						1
					else
						duration
					end
				)
			]
		end
	end

	patch(:start_tone_change) do | start_tone_change_, tone, duration |
		start_tone_change_[
			tone,
			(
				if CheatTools.fast_mode?
					1
				else
					duration
				end
			)
		]
	end

	patch(:start_flash) do | start_flash_, color, duration |
		start_flash_[
			color,
			(
				if CheatTools.fast_mode?
					1
				else
					duration
				end
			)
		]
	end

	patch(:start_shake) do | start_shake_, power, speed, duration |
		start_shake_[
			power,
			speed,
			(
				if CheatTools.fast_mode?
					1
				else
					duration
				end
			)
		]
	end

	patch(:change_weather) do | change_weather_, type, power, duration |
		change_weather_[
			type,
			power,
			(
				if CheatTools.fast_mode?
					1
				else
					duration
				end
			)
		]
	end

end

Audio.singleton_class.class_eval do
	[
		:bgm_play,
		:bgs_play,
		:se_play,
		:me_play
	].each do | method_name |
		patch(method_name) do | method, filename, *args |
			filenames = %W[
				./#{filename}.ogg
				./#{filename}.mp3
				./#{filename}.wav
			]
			next if filenames.none? { | name | File.exist?(name) }

			method[filename, *args]
		end
	end
end

Kernel.singleton_class.class_eval do
	patch(:raise) do | raise_, *args, &block |
		nil
	end
end

NilClass.class_eval do
	def method_missing(*)
		nil
	end
end
