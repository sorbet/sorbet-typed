# typed: strong
module Discordrb
  sig { params(one_id: T.untyped, other: T.untyped).returns(T.untyped) }
  def self.id_compare(one_id, other); end

  sig { params(msg: String).returns(T::Array[String]) }
  def self.split_message(msg); end

  module API
    sig { returns(String) }
    def api_base; end

    sig { returns(String) }
    def self.api_base; end

    sig { params(value: String).returns(T.untyped) }
    def api_base=(value); end

    sig { params(value: String).returns(T.untyped) }
    def self.api_base=(value); end

    sig { returns(String) }
    def cdn_url; end

    sig { returns(String) }
    def self.cdn_url; end

    sig { returns(String) }
    def bot_name; end

    sig { returns(String) }
    def self.bot_name; end

    sig { params(value: String).returns(T.untyped) }
    def bot_name=(value); end

    sig { params(value: String).returns(T.untyped) }
    def self.bot_name=(value); end

    sig { params(value: T::Boolean).returns(T.untyped) }
    def trace=(value); end

    sig { params(value: T::Boolean).returns(T.untyped) }
    def self.trace=(value); end

    sig { returns(T.untyped) }
    def user_agent; end

    sig { returns(T.untyped) }
    def self.user_agent; end

    sig { returns(T.untyped) }
    def reset_mutexes; end

    sig { returns(T.untyped) }
    def self.reset_mutexes; end

    sig { params(time: T.untyped, mutex: T.untyped).returns(T.untyped) }
    def sync_wait(time, mutex); end

    sig { params(time: T.untyped, mutex: T.untyped).returns(T.untyped) }
    def self.sync_wait(time, mutex); end

    sig { params(mutex: T.untyped).returns(T.untyped) }
    def mutex_wait(mutex); end

    sig { params(mutex: T.untyped).returns(T.untyped) }
    def self.mutex_wait(mutex); end

    sig { params(type: Symbol, attributes: T::Array[T.untyped]).returns(T.untyped) }
    def raw_request(type, attributes); end

    sig { params(type: Symbol, attributes: T::Array[T.untyped]).returns(T.untyped) }
    def self.raw_request(type, attributes); end

    sig do
      params(
        key: T.untyped,
        major_parameter: T.untyped,
        type: T.untyped,
        attributes: T.untyped
      ).returns(T.untyped)
    end
    def request(key, major_parameter, type, *attributes); end

    sig do
      params(
        key: T.untyped,
        major_parameter: T.untyped,
        type: T.untyped,
        attributes: T.untyped
      ).returns(T.untyped)
    end
    def self.request(key, major_parameter, type, *attributes); end

    sig { params(headers: T.untyped, mutex: T.untyped, key: T.untyped).returns(T.untyped) }
    def handle_preemptive_rl(headers, mutex, key); end

    sig { params(headers: T.untyped, mutex: T.untyped, key: T.untyped).returns(T.untyped) }
    def self.handle_preemptive_rl(headers, mutex, key); end

    sig { params(reason: String).returns(T.untyped) }
    def trace(reason); end

    sig { params(reason: String).returns(T.untyped) }
    def self.trace(reason); end

    sig { params(server_id: T.untyped, icon_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def icon_url(server_id, icon_id, format = 'webp'); end

    sig { params(server_id: T.untyped, icon_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def self.icon_url(server_id, icon_id, format = 'webp'); end

    sig { params(app_id: T.untyped, icon_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def app_icon_url(app_id, icon_id, format = 'webp'); end

    sig { params(app_id: T.untyped, icon_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def self.app_icon_url(app_id, icon_id, format = 'webp'); end

    sig { params(server_id: T.untyped, style: T.untyped).returns(T.untyped) }
    def widget_url(server_id, style = 'shield'); end

    sig { params(server_id: T.untyped, style: T.untyped).returns(T.untyped) }
    def self.widget_url(server_id, style = 'shield'); end

    sig { params(server_id: T.untyped, splash_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def splash_url(server_id, splash_id, format = 'webp'); end

    sig { params(server_id: T.untyped, splash_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def self.splash_url(server_id, splash_id, format = 'webp'); end

    sig { params(emoji_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def emoji_icon_url(emoji_id, format = 'webp'); end

    sig { params(emoji_id: T.untyped, format: T.untyped).returns(T.untyped) }
    def self.emoji_icon_url(emoji_id, format = 'webp'); end

    sig { params(email: T.untyped, password: T.untyped).returns(T.untyped) }
    def login(email, password); end

    sig { params(email: T.untyped, password: T.untyped).returns(T.untyped) }
    def self.login(email, password); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def logout(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def self.logout(token); end

    sig { params(token: T.untyped, name: T.untyped, redirect_uris: T.untyped).returns(T.untyped) }
    def create_oauth_application(token, name, redirect_uris); end

    sig { params(token: T.untyped, name: T.untyped, redirect_uris: T.untyped).returns(T.untyped) }
    def self.create_oauth_application(token, name, redirect_uris); end

    sig do
      params(
        token: T.untyped,
        name: T.untyped,
        redirect_uris: T.untyped,
        description: T.untyped,
        icon: T.untyped
      ).returns(T.untyped)
    end
    def update_oauth_application(token, name, redirect_uris, description = '', icon = nil); end

    sig do
      params(
        token: T.untyped,
        name: T.untyped,
        redirect_uris: T.untyped,
        description: T.untyped,
        icon: T.untyped
      ).returns(T.untyped)
    end
    def self.update_oauth_application(token, name, redirect_uris, description = '', icon = nil); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def oauth_application(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def self.oauth_application(token); end

    sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
    def acknowledge_message(token, channel_id, message_id); end

    sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
    def self.acknowledge_message(token, channel_id, message_id); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def gateway(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def self.gateway(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def validate_token(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def self.validate_token(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def voice_regions(token); end

    sig { params(token: T.untyped).returns(T.untyped) }
    def self.voice_regions(token); end

    module User
      sig { params(token: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def resolve(token, user_id); end

      sig { params(token: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def self.resolve(token, user_id); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def profile(token); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def self.profile(token); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          nick: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def change_own_nickname(token, server_id, nick, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          nick: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.change_own_nickname(token, server_id, nick, reason = nil); end

      sig do
        params(
          token: T.untyped,
          email: T.untyped,
          password: T.untyped,
          new_username: T.untyped,
          avatar: T.untyped,
          new_password: T.untyped
        ).returns(T.untyped)
      end
      def update_profile(token, email, password, new_username, avatar, new_password = nil); end

      sig do
        params(
          token: T.untyped,
          email: T.untyped,
          password: T.untyped,
          new_username: T.untyped,
          avatar: T.untyped,
          new_password: T.untyped
        ).returns(T.untyped)
      end
      def self.update_profile(token, email, password, new_username, avatar, new_password = nil); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def servers(token); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def self.servers(token); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def leave_server(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.leave_server(token, server_id); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def user_dms(token); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def self.user_dms(token); end

      sig { params(token: T.untyped, recipient_id: T.untyped).returns(T.untyped) }
      def create_pm(token, recipient_id); end

      sig { params(token: T.untyped, recipient_id: T.untyped).returns(T.untyped) }
      def self.create_pm(token, recipient_id); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def connections(token); end

      sig { params(token: T.untyped).returns(T.untyped) }
      def self.connections(token); end

      sig { params(token: T.untyped, status: T.untyped).returns(T.untyped) }
      def change_status_setting(token, status); end

      sig { params(token: T.untyped, status: T.untyped).returns(T.untyped) }
      def self.change_status_setting(token, status); end

      sig { params(discrim: T.untyped).returns(T.untyped) }
      def default_avatar(discrim = 0); end

      sig { params(discrim: T.untyped).returns(T.untyped) }
      def self.default_avatar(discrim = 0); end

      sig { params(user_id: T.untyped, avatar_id: T.untyped, format: T.untyped).returns(T.untyped) }
      def avatar_url(user_id, avatar_id, format = nil); end

      sig { params(user_id: T.untyped, avatar_id: T.untyped, format: T.untyped).returns(T.untyped) }
      def self.avatar_url(user_id, avatar_id, format = nil); end
    end

    module Invite
      sig { params(token: T.untyped, invite_code: T.untyped, counts: T.untyped).returns(T.untyped) }
      def resolve(token, invite_code, counts = true); end

      sig { params(token: T.untyped, invite_code: T.untyped, counts: T.untyped).returns(T.untyped) }
      def self.resolve(token, invite_code, counts = true); end

      sig { params(token: T.untyped, code: T.untyped, reason: T.untyped).returns(T.untyped) }
      def delete(token, code, reason = nil); end

      sig { params(token: T.untyped, code: T.untyped, reason: T.untyped).returns(T.untyped) }
      def self.delete(token, code, reason = nil); end

      sig { params(token: T.untyped, invite_code: T.untyped).returns(T.untyped) }
      def accept(token, invite_code); end

      sig { params(token: T.untyped, invite_code: T.untyped).returns(T.untyped) }
      def self.accept(token, invite_code); end
    end

    module Server
      sig { params(token: T.untyped, name: T.untyped, region: T.untyped).returns(T.untyped) }
      def create(token, name, region = :'eu-central'); end

      sig { params(token: T.untyped, name: T.untyped, region: T.untyped).returns(T.untyped) }
      def self.create(token, name, region = :'eu-central'); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def resolve(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.resolve(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          name: T.untyped,
          region: T.untyped,
          icon: T.untyped,
          afk_channel_id: T.untyped,
          afk_timeout: T.untyped,
          splash: T.untyped,
          default_message_notifications: T.untyped,
          verification_level: T.untyped,
          explicit_content_filter: T.untyped,
          system_channel_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def update(token, server_id, name, region, icon, afk_channel_id, afk_timeout, splash, default_message_notifications, verification_level, explicit_content_filter, system_channel_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          name: T.untyped,
          region: T.untyped,
          icon: T.untyped,
          afk_channel_id: T.untyped,
          afk_timeout: T.untyped,
          splash: T.untyped,
          default_message_notifications: T.untyped,
          verification_level: T.untyped,
          explicit_content_filter: T.untyped,
          system_channel_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.update(token, server_id, name, region, icon, afk_channel_id, afk_timeout, splash, default_message_notifications, verification_level, explicit_content_filter, system_channel_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def transfer_ownership(token, server_id, user_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.transfer_ownership(token, server_id, user_id, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def delete(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.delete(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def channels(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.channels(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          name: T.untyped,
          type: T.untyped,
          topic: T.untyped,
          bitrate: T.untyped,
          user_limit: T.untyped,
          permission_overwrites: T.untyped,
          parent_id: T.untyped,
          nsfw: T.untyped,
          rate_limit_per_user: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def create_channel(token, server_id, name, type, topic, bitrate, user_limit, permission_overwrites, parent_id, nsfw, rate_limit_per_user, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          name: T.untyped,
          type: T.untyped,
          topic: T.untyped,
          bitrate: T.untyped,
          user_limit: T.untyped,
          permission_overwrites: T.untyped,
          parent_id: T.untyped,
          nsfw: T.untyped,
          rate_limit_per_user: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.create_channel(token, server_id, name, type, topic, bitrate, user_limit, permission_overwrites, parent_id, nsfw, rate_limit_per_user, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped, positions: T.untyped).returns(T.untyped) }
      def update_channel_positions(token, server_id, positions); end

      sig { params(token: T.untyped, server_id: T.untyped, positions: T.untyped).returns(T.untyped) }
      def self.update_channel_positions(token, server_id, positions); end

      sig { params(token: T.untyped, server_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def resolve_member(token, server_id, user_id); end

      sig { params(token: T.untyped, server_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def self.resolve_member(token, server_id, user_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          limit: T.untyped,
          after: T.untyped
        ).returns(T.untyped)
      end
      def resolve_members(token, server_id, limit, after = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          limit: T.untyped,
          after: T.untyped
        ).returns(T.untyped)
      end
      def self.resolve_members(token, server_id, limit, after = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          nick: T.untyped,
          roles: T.untyped,
          mute: T.untyped,
          deaf: T.untyped,
          channel_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def update_member(token, server_id, user_id, nick: nil, roles: nil, mute: nil, deaf: nil, channel_id: nil, reason: nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          nick: T.untyped,
          roles: T.untyped,
          mute: T.untyped,
          deaf: T.untyped,
          channel_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.update_member(token, server_id, user_id, nick: nil, roles: nil, mute: nil, deaf: nil, channel_id: nil, reason: nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def remove_member(token, server_id, user_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.remove_member(token, server_id, user_id, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def bans(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.bans(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          message_days: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def ban_user(token, server_id, user_id, message_days, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          message_days: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.ban_user(token, server_id, user_id, message_days, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def unban_user(token, server_id, user_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.unban_user(token, server_id, user_id, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def roles(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.roles(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          name: T.untyped,
          colour: T.untyped,
          hoist: T.untyped,
          mentionable: T.untyped,
          packed_permissions: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def create_role(token, server_id, name, colour, hoist, mentionable, packed_permissions, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          name: T.untyped,
          colour: T.untyped,
          hoist: T.untyped,
          mentionable: T.untyped,
          packed_permissions: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.create_role(token, server_id, name, colour, hoist, mentionable, packed_permissions, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          role_id: T.untyped,
          name: T.untyped,
          colour: T.untyped,
          hoist: T.untyped,
          mentionable: T.untyped,
          packed_permissions: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def update_role(token, server_id, role_id, name, colour, hoist = false, mentionable = false, packed_permissions = 104_324_161, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          role_id: T.untyped,
          name: T.untyped,
          colour: T.untyped,
          hoist: T.untyped,
          mentionable: T.untyped,
          packed_permissions: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.update_role(token, server_id, role_id, name, colour, hoist = false, mentionable = false, packed_permissions = 104_324_161, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped, roles: T.untyped).returns(T.untyped) }
      def update_role_positions(token, server_id, roles); end

      sig { params(token: T.untyped, server_id: T.untyped, roles: T.untyped).returns(T.untyped) }
      def self.update_role_positions(token, server_id, roles); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          role_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def delete_role(token, server_id, role_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          role_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.delete_role(token, server_id, role_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          role_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def add_member_role(token, server_id, user_id, role_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          role_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.add_member_role(token, server_id, user_id, role_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          role_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def remove_member_role(token, server_id, user_id, role_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          role_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.remove_member_role(token, server_id, user_id, role_id, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped, days: T.untyped).returns(T.untyped) }
      def prune_count(token, server_id, days); end

      sig { params(token: T.untyped, server_id: T.untyped, days: T.untyped).returns(T.untyped) }
      def self.prune_count(token, server_id, days); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          days: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def begin_prune(token, server_id, days, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          days: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.begin_prune(token, server_id, days, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def invites(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.invites(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          limit: T.untyped,
          userid: T.untyped,
          actiontype: T.untyped,
          before: T.untyped
        ).returns(T.untyped)
      end
      def audit_logs(token, server_id, limit, userid = nil, actiontype = nil, before = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          limit: T.untyped,
          userid: T.untyped,
          actiontype: T.untyped,
          before: T.untyped
        ).returns(T.untyped)
      end
      def self.audit_logs(token, server_id, limit, userid = nil, actiontype = nil, before = nil); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def integrations(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.integrations(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          type: T.untyped,
          id: T.untyped
        ).returns(T.untyped)
      end
      def create_integration(token, server_id, type, id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          type: T.untyped,
          id: T.untyped
        ).returns(T.untyped)
      end
      def self.create_integration(token, server_id, type, id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          integration_id: T.untyped,
          expire_behavior: T.untyped,
          expire_grace_period: T.untyped,
          enable_emoticons: T.untyped
        ).returns(T.untyped)
      end
      def update_integration(token, server_id, integration_id, expire_behavior, expire_grace_period, enable_emoticons); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          integration_id: T.untyped,
          expire_behavior: T.untyped,
          expire_grace_period: T.untyped,
          enable_emoticons: T.untyped
        ).returns(T.untyped)
      end
      def self.update_integration(token, server_id, integration_id, expire_behavior, expire_grace_period, enable_emoticons); end

      sig { params(token: T.untyped, server_id: T.untyped, integration_id: T.untyped).returns(T.untyped) }
      def delete_integration(token, server_id, integration_id); end

      sig { params(token: T.untyped, server_id: T.untyped, integration_id: T.untyped).returns(T.untyped) }
      def self.delete_integration(token, server_id, integration_id); end

      sig { params(token: T.untyped, server_id: T.untyped, integration_id: T.untyped).returns(T.untyped) }
      def sync_integration(token, server_id, integration_id); end

      sig { params(token: T.untyped, server_id: T.untyped, integration_id: T.untyped).returns(T.untyped) }
      def self.sync_integration(token, server_id, integration_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def embed(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.embed(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          enabled: T.untyped,
          channel_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def modify_embed(token, server_id, enabled, channel_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          enabled: T.untyped,
          channel_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.modify_embed(token, server_id, enabled, channel_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          image: T.untyped,
          name: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def add_emoji(token, server_id, image, name, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          image: T.untyped,
          name: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.add_emoji(token, server_id, image, name, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          emoji_id: T.untyped,
          name: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def edit_emoji(token, server_id, emoji_id, name, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          emoji_id: T.untyped,
          name: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.edit_emoji(token, server_id, emoji_id, name, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          emoji_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def delete_emoji(token, server_id, emoji_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          emoji_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.delete_emoji(token, server_id, emoji_id, reason = nil); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def regions(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.regions(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def webhooks(token, server_id); end

      sig { params(token: T.untyped, server_id: T.untyped).returns(T.untyped) }
      def self.webhooks(token, server_id); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          access_token: T.untyped,
          nick: T.untyped,
          roles: T.untyped,
          mute: T.untyped,
          deaf: T.untyped
        ).returns(T.untyped)
      end
      def add_member(token, server_id, user_id, access_token, nick = nil, roles = [], mute = false, deaf = false); end

      sig do
        params(
          token: T.untyped,
          server_id: T.untyped,
          user_id: T.untyped,
          access_token: T.untyped,
          nick: T.untyped,
          roles: T.untyped,
          mute: T.untyped,
          deaf: T.untyped
        ).returns(T.untyped)
      end
      def self.add_member(token, server_id, user_id, access_token, nick = nil, roles = [], mute = false, deaf = false); end
    end

    module Channel
      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def resolve(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def self.resolve(token, channel_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          name: T.untyped,
          topic: T.untyped,
          position: T.untyped,
          bitrate: T.untyped,
          user_limit: T.untyped,
          nsfw: T.untyped,
          permission_overwrites: T.untyped,
          parent_id: T.untyped,
          rate_limit_per_user: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def update(token, channel_id, name, topic, position, bitrate, user_limit, nsfw, permission_overwrites = nil, parent_id = nil, rate_limit_per_user = nil, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          name: T.untyped,
          topic: T.untyped,
          position: T.untyped,
          bitrate: T.untyped,
          user_limit: T.untyped,
          nsfw: T.untyped,
          permission_overwrites: T.untyped,
          parent_id: T.untyped,
          rate_limit_per_user: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.update(token, channel_id, name, topic, position, bitrate, user_limit, nsfw, permission_overwrites = nil, parent_id = nil, rate_limit_per_user = nil, reason = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped, reason: T.untyped).returns(T.untyped) }
      def delete(token, channel_id, reason = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped, reason: T.untyped).returns(T.untyped) }
      def self.delete(token, channel_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          amount: T.untyped,
          before: T.untyped,
          after: T.untyped,
          around: T.untyped
        ).returns(T.untyped)
      end
      def messages(token, channel_id, amount, before = nil, after = nil, around = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          amount: T.untyped,
          before: T.untyped,
          after: T.untyped,
          around: T.untyped
        ).returns(T.untyped)
      end
      def self.messages(token, channel_id, amount, before = nil, after = nil, around = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def message(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def self.message(token, channel_id, message_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message: T.untyped,
          tts: T.untyped,
          embed: T.untyped,
          nonce: T.untyped
        ).returns(T.untyped)
      end
      def create_message(token, channel_id, message, tts = false, embed = nil, nonce = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message: T.untyped,
          tts: T.untyped,
          embed: T.untyped,
          nonce: T.untyped
        ).returns(T.untyped)
      end
      def self.create_message(token, channel_id, message, tts = false, embed = nil, nonce = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          file: T.untyped,
          caption: T.untyped,
          tts: T.untyped
        ).returns(T.untyped)
      end
      def upload_file(token, channel_id, file, caption: nil, tts: false); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          file: T.untyped,
          caption: T.untyped,
          tts: T.untyped
        ).returns(T.untyped)
      end
      def self.upload_file(token, channel_id, file, caption: nil, tts: false); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          message: T.untyped,
          mentions: T.untyped,
          embed: T.untyped
        ).returns(T.untyped)
      end
      def edit_message(token, channel_id, message_id, message, mentions = [], embed = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          message: T.untyped,
          mentions: T.untyped,
          embed: T.untyped
        ).returns(T.untyped)
      end
      def self.edit_message(token, channel_id, message_id, message, mentions = [], embed = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def delete_message(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def self.delete_message(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, messages: T.untyped).returns(T.untyped) }
      def bulk_delete_messages(token, channel_id, messages = []); end

      sig { params(token: T.untyped, channel_id: T.untyped, messages: T.untyped).returns(T.untyped) }
      def self.bulk_delete_messages(token, channel_id, messages = []); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped
        ).returns(T.untyped)
      end
      def create_reaction(token, channel_id, message_id, emoji); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped
        ).returns(T.untyped)
      end
      def self.create_reaction(token, channel_id, message_id, emoji); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped
        ).returns(T.untyped)
      end
      def delete_own_reaction(token, channel_id, message_id, emoji); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped
        ).returns(T.untyped)
      end
      def self.delete_own_reaction(token, channel_id, message_id, emoji); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped,
          user_id: T.untyped
        ).returns(T.untyped)
      end
      def delete_user_reaction(token, channel_id, message_id, emoji, user_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped,
          user_id: T.untyped
        ).returns(T.untyped)
      end
      def self.delete_user_reaction(token, channel_id, message_id, emoji, user_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped
        ).returns(T.untyped)
      end
      def get_reactions(token, channel_id, message_id, emoji); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          message_id: T.untyped,
          emoji: T.untyped
        ).returns(T.untyped)
      end
      def self.get_reactions(token, channel_id, message_id, emoji); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def delete_all_reactions(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def self.delete_all_reactions(token, channel_id, message_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          overwrite_id: T.untyped,
          allow: T.untyped,
          deny: T.untyped,
          type: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def update_permission(token, channel_id, overwrite_id, allow, deny, type, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          overwrite_id: T.untyped,
          allow: T.untyped,
          deny: T.untyped,
          type: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.update_permission(token, channel_id, overwrite_id, allow, deny, type, reason = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def invites(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def self.invites(token, channel_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          max_age: T.untyped,
          max_uses: T.untyped,
          temporary: T.untyped,
          unique: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def create_invite(token, channel_id, max_age = 0, max_uses = 0, temporary = false, unique = false, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          max_age: T.untyped,
          max_uses: T.untyped,
          temporary: T.untyped,
          unique: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.create_invite(token, channel_id, max_age = 0, max_uses = 0, temporary = false, unique = false, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          overwrite_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def delete_permission(token, channel_id, overwrite_id, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          overwrite_id: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.delete_permission(token, channel_id, overwrite_id, reason = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def start_typing(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def self.start_typing(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def pinned_messages(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def self.pinned_messages(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def pin_message(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def self.pin_message(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def unpin_message(token, channel_id, message_id); end

      sig { params(token: T.untyped, channel_id: T.untyped, message_id: T.untyped).returns(T.untyped) }
      def self.unpin_message(token, channel_id, message_id); end

      sig { params(token: T.untyped, bot_user_id: T.untyped).returns(T.untyped) }
      def create_empty_group(token, bot_user_id); end

      sig { params(token: T.untyped, bot_user_id: T.untyped).returns(T.untyped) }
      def self.create_empty_group(token, bot_user_id); end

      sig { params(token: T.untyped, pm_channel_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def create_group(token, pm_channel_id, user_id); end

      sig { params(token: T.untyped, pm_channel_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def self.create_group(token, pm_channel_id, user_id); end

      sig { params(token: T.untyped, group_channel_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def add_group_user(token, group_channel_id, user_id); end

      sig { params(token: T.untyped, group_channel_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def self.add_group_user(token, group_channel_id, user_id); end

      sig { params(token: T.untyped, group_channel_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def remove_group_user(token, group_channel_id, user_id); end

      sig { params(token: T.untyped, group_channel_id: T.untyped, user_id: T.untyped).returns(T.untyped) }
      def self.remove_group_user(token, group_channel_id, user_id); end

      sig { params(token: T.untyped, group_channel_id: T.untyped).returns(T.untyped) }
      def leave_group(token, group_channel_id); end

      sig { params(token: T.untyped, group_channel_id: T.untyped).returns(T.untyped) }
      def self.leave_group(token, group_channel_id); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          name: T.untyped,
          avatar: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def create_webhook(token, channel_id, name, avatar = nil, reason = nil); end

      sig do
        params(
          token: T.untyped,
          channel_id: T.untyped,
          name: T.untyped,
          avatar: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.create_webhook(token, channel_id, name, avatar = nil, reason = nil); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def webhooks(token, channel_id); end

      sig { params(token: T.untyped, channel_id: T.untyped).returns(T.untyped) }
      def self.webhooks(token, channel_id); end
    end

    module Webhook
      sig { params(token: T.untyped, webhook_id: T.untyped).returns(T.untyped) }
      def webhook(token, webhook_id); end

      sig { params(token: T.untyped, webhook_id: T.untyped).returns(T.untyped) }
      def self.webhook(token, webhook_id); end

      sig { params(webhook_token: T.untyped, webhook_id: T.untyped).returns(T.untyped) }
      def token_webhook(webhook_token, webhook_id); end

      sig { params(webhook_token: T.untyped, webhook_id: T.untyped).returns(T.untyped) }
      def self.token_webhook(webhook_token, webhook_id); end

      sig do
        params(
          token: T.untyped,
          webhook_id: T.untyped,
          data: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def update_webhook(token, webhook_id, data, reason = nil); end

      sig do
        params(
          token: T.untyped,
          webhook_id: T.untyped,
          data: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.update_webhook(token, webhook_id, data, reason = nil); end

      sig do
        params(
          webhook_token: T.untyped,
          webhook_id: T.untyped,
          data: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def token_update_webhook(webhook_token, webhook_id, data, reason = nil); end

      sig do
        params(
          webhook_token: T.untyped,
          webhook_id: T.untyped,
          data: T.untyped,
          reason: T.untyped
        ).returns(T.untyped)
      end
      def self.token_update_webhook(webhook_token, webhook_id, data, reason = nil); end

      sig { params(token: T.untyped, webhook_id: T.untyped, reason: T.untyped).returns(T.untyped) }
      def delete_webhook(token, webhook_id, reason = nil); end

      sig { params(token: T.untyped, webhook_id: T.untyped, reason: T.untyped).returns(T.untyped) }
      def self.delete_webhook(token, webhook_id, reason = nil); end

      sig { params(webhook_token: T.untyped, webhook_id: T.untyped, reason: T.untyped).returns(T.untyped) }
      def token_delete_webhook(webhook_token, webhook_id, reason = nil); end

      sig { params(webhook_token: T.untyped, webhook_id: T.untyped, reason: T.untyped).returns(T.untyped) }
      def self.token_delete_webhook(webhook_token, webhook_id, reason = nil); end
    end
  end

  class Bot
    include EventContainer
    include Cache

    sig { returns(T::Array[Thread]) }
    def event_threads; end

    sig { returns(T::Boolean) }
    def should_parse_self; end

    sig { params(value: T::Boolean).returns(T::Boolean) }
    def should_parse_self=(value); end

    sig { returns(String) }
    def name; end

    sig { params(value: String).returns(String) }
    def name=(value); end

    sig { returns([Integer, Integer]) }
    def shard_key; end

    sig { returns(T::Hash[Symbol, Await]) }
    def awaits; end

    sig { returns(Gateway) }
    def gateway; end

    sig do
      params(
        log_mode: T.untyped,
        token: T.untyped,
        client_id: T.untyped,
        type: T.untyped,
        name: T.untyped,
        fancy_log: T.untyped,
        suppress_ready: T.untyped,
        parse_self: T.untyped,
        shard_id: T.untyped,
        num_shards: T.untyped,
        redact_token: T.untyped,
        ignore_bots: T.untyped,
        compress_mode: T.untyped
      ).returns(Bot)
    end
    def initialize(log_mode: :normal, token: nil, client_id: nil, type: nil, name: '', fancy_log: false, suppress_ready: false, parse_self: false, shard_id: nil, num_shards: nil, redact_token: true, ignore_bots: false, compress_mode: :stream); end

    sig { returns(T::Hash[Integer, User]) }
    def users; end

    sig { returns(T::Hash[Integer, Server]) }
    def servers; end

    sig { params(id: T.untyped).returns(T.untyped) }
    def emoji(id = nil); end

    sig { params(name: String).returns(T.nilable(T.untyped)) }
    def find_emoji(name); end

    sig { returns(Profile) }
    def profile; end

    sig { returns(T.nilable(Application)) }
    def bot_application; end

    sig { returns(String) }
    def token; end

    sig { returns(String) }
    def raw_token; end

    sig { params(background: T::Boolean).returns(T.untyped) }
    def run(background = false); end

    sig { returns(T.untyped) }
    def join; end

    sig { params(no_sync: T::Boolean).returns(T.untyped) }
    def stop(no_sync = false); end

    sig { returns(T::Boolean) }
    def connected?; end

    sig { params(invite: T.any(String, Invite)).returns(T.untyped) }
    def accept_invite(invite); end

    sig { params(server: T.untyped, permission_bits: T.untyped).returns(String) }
    def invite_url(server: nil, permission_bits: nil); end

    sig { returns(T::Hash[Integer, Discordrb::Voice::VoiceBot]) }
    def voices; end

    sig { params(thing: T.any(Channel, Server, Integer)).returns(T.nilable(Voice::VoiceBot)) }
    def voice(thing); end

    sig { params(chan: T.any(Channel, Integer, T.untyped), encrypted: T::Boolean).returns(Voice::VoiceBot) }
    def voice_connect(chan, encrypted = true); end

    sig { params(server: T.any(Server, Integer, T.untyped), destroy_vws: T::Boolean).returns(T.untyped) }
    def voice_destroy(server, destroy_vws = true); end

    sig { params(code: T.any(String, Invite)).returns(T.untyped) }
    def delete_invite(code); end

    sig do
      params(
        channel: T.any(Channel, Integer, T.untyped),
        content: String,
        tts: T::Boolean,
        embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))
      ).returns(Message)
    end
    def send_message(channel, content, tts = false, embed = nil); end

    sig do
      params(
        channel: T.any(Channel, Integer, T.untyped),
        content: String,
        timeout: Float,
        tts: T::Boolean,
        embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))
      ).returns(T.untyped)
    end
    def send_temporary_message(channel, content, timeout, tts = false, embed = nil); end

    sig do
      params(
        channel: T.any(Channel, Integer, T.untyped),
        file: File,
        caption: T.untyped,
        tts: T.untyped
      ).returns(T.untyped)
    end
    def send_file(channel, file, caption: nil, tts: false); end

    sig { params(name: String, region: Symbol).returns(Server) }
    def create_server(name, region = :'eu-central'); end

    sig { params(name: String, redirect_uris: T::Array[String]).returns([String, String]) }
    def create_oauth_application(name, redirect_uris); end

    sig do
      params(
        name: String,
        redirect_uris: T::Array[String],
        description: String,
        icon: T.nilable(String)
      ).returns(T.untyped)
    end
    def update_oauth_application(name, redirect_uris, description = '', icon = nil); end

    sig { params(mention: String, server: T.nilable(Server)).returns(T.any(User, Channel, Role, Emoji)) }
    def parse_mention(mention, server = nil); end

    sig do
      params(
        status: String,
        activity: T.nilable(String),
        url: T.nilable(String),
        since: Integer,
        afk: T::Boolean,
        activity_type: Integer
      ).returns(T.untyped)
    end
    def update_status(status, activity, url, since = 0, afk = false, activity_type = 0); end

    sig { params(name: String).returns(String) }
    def game=(name); end

    sig { params(name: String).returns(String) }
    def listening=(name); end

    sig { params(name: String).returns(String) }
    def watching=(name); end

    sig { params(name: String, url: String).returns(String) }
    def stream(name, url); end

    sig { returns(T.untyped) }
    def online; end

    sig { returns(T.untyped) }
    def idle; end

    sig { returns(T.untyped) }
    def dnd; end

    sig { returns(T.untyped) }
    def invisible; end

    sig { params(new_debug: T.any()).returns(T.untyped) }
    def debug=(new_debug); end

    sig { params(new_mode: T.untyped).returns(T.untyped) }
    def mode=(new_mode); end

    sig { returns(T.untyped) }
    def suppress_ready_debug; end

    sig do
      params(
        key: Symbol,
        type: Class,
        attributes: T::Hash[T.untyped, T.untyped],
        block: T.proc.params(event: Discordrb::Events::Event).void
      ).returns(Await)
    end
    def add_await(key, type, attributes = {}, &block); end

    sig { params(type: Class, attributes: T::Hash[T.untyped, T.untyped]).returns(T.nilable(Discordrb::Events::Event)) }
    def add_await!(type, attributes = {}); end

    sig { params(user: T.any(User, Integer, T.untyped)).returns(T.untyped) }
    def ignore_user(user); end

    sig { params(user: T.any(User, Integer, T.untyped)).returns(T.untyped) }
    def unignore_user(user); end

    sig { params(user: T.any(User, Integer, T.untyped)).returns(T::Boolean) }
    def ignored?(user); end

    sig { params(message: T.untyped).returns(T.untyped) }
    def debug(message); end

    sig { params(e: T.untyped).returns(T.untyped) }
    def log_exception(e); end

    sig { params(type: T.untyped, data: T.untyped).returns(T.untyped) }
    def dispatch(type, data); end

    sig { returns(T.untyped) }
    def raise_heartbeat_event; end

    sig { returns(T.untyped) }
    def prune_empty_groups; end

    sig { returns(T.untyped) }
    def gateway_check; end

    sig { returns(T.untyped) }
    def unavailable_servers_check; end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_presence(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_voice_state(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_voice_server(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def create_channel(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_channel(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def delete_channel(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def add_recipient(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def remove_recipient(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def add_guild_member(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_guild_member(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def delete_guild_member(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def create_guild(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_guild(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def delete_guild(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_guild_role(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def create_guild_role(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def delete_guild_role(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_guild_emoji(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def create_message(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def start_typing(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_message(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def delete_message(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def add_message_reaction(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def remove_message_reaction(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def remove_all_message_reactions(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def add_user_ban(data); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def remove_user_ban(data); end

    sig { params(type: T.untyped, token: T.untyped).returns(T.untyped) }
    def process_token(type, token); end

    sig { params(type: T.untyped, data: T.untyped).returns(T.untyped) }
    def handle_dispatch(type, data); end

    sig { returns(T.untyped) }
    def notify_ready; end

    sig { params(event: T.untyped).returns(T.untyped) }
    def raise_event(event); end

    sig { params(handler: T.untyped, event: T.untyped).returns(T.untyped) }
    def call_event(handler, event); end

    sig { params(event: T.untyped).returns(T.untyped) }
    def handle_awaits(event); end

    sig { returns(T.untyped) }
    def init_cache; end

    sig { returns(T.untyped) }
    def voice_regions; end

    sig { params(id: Integer, server: Server).returns(Channel) }
    def channel(id, server = nil); end

    sig { params(id: Integer).returns(T.nilable(User)) }
    def user(id); end

    sig { params(id: Integer).returns(T.nilable(Server)) }
    def server(id); end

    sig { params(server_or_id: T.any(Server, Integer), user_id: Integer).returns(T.nilable(Member)) }
    def member(server_or_id, user_id); end

    sig { params(id: Integer).returns(Channel) }
    def pm_channel(id); end

    sig { params(data: T::Hash[T.untyped, T.untyped]).returns(User) }
    def ensure_user(data); end

    sig { params(data: T::Hash[T.untyped, T.untyped]).returns(Server) }
    def ensure_server(data); end

    sig { params(data: T::Hash[T.untyped, T.untyped], server: T.nilable(Server)).returns(Channel) }
    def ensure_channel(data, server = nil); end

    sig { params(id: Integer).returns(T.untyped) }
    def request_chunks(id); end

    sig { params(invite: T.any(String, Invite)).returns(String) }
    def resolve_invite_code(invite); end

    sig { params(invite: T.any(String, Invite)).returns(Invite) }
    def invite(invite); end

    sig { params(channel_name: String, server_name: String, type: T.untyped).returns(T::Array[Channel]) }
    def find_channel(channel_name, server_name = nil, type: nil); end

    sig { params(username: T.untyped, discrim: T.untyped).returns(T.untyped) }
    def find_user(username, discrim = nil); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageEvent).void).returns(Discordrb::Events::MessageEventHandler) }
    def message(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReadyEvent).void).returns(Discordrb::Events::ReadyEventHandler) }
    def ready(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::DisconnectEvent).void).returns(Discordrb::Events::DisconnectEventHandler) }
    def disconnected(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::HeartbeatEvent).void).returns(Discordrb::Events::HeartbeatEventHandler) }
    def heartbeat(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::TypingEvent).void).returns(Discordrb::Events::TypingEventHandler) }
    def typing(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageEditEvent).void).returns(Discordrb::Events::MessageEditEventHandler) }
    def message_edit(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageDeleteEvent).void).returns(Discordrb::Events::MessageDeleteEventHandler) }
    def message_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionAddEvent).void).returns(Discordrb::Events::ReactionAddEventHandler) }
    def reaction_add(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionRemoveEvent).void).returns(Discordrb::Events::ReactionRemoveEventHandler) }
    def reaction_remove(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionRemoveAllEvent).void).returns(Discordrb::Events::ReactionRemoveAllEventHandler) }
    def reaction_remove_all(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PresenceEvent).void).returns(Discordrb::Events::PresenceEventHandler) }
    def presence(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PlayingEvent).void).returns(Discordrb::Events::PlayingEventHandler) }
    def playing(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MentionEvent).void).returns(Discordrb::Events::MentionEventHandler) }
    def mention(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelCreateEvent).void).returns(Discordrb::Events::ChannelCreateEventHandler) }
    def channel_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelUpdateEvent).void).returns(Discordrb::Events::ChannelUpdateEventHandler) }
    def channel_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelDeleteEvent).void).returns(Discordrb::Events::ChannelDeleteEventHandler) }
    def channel_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelRecipientAddEvent).void).returns(T.untyped) }
    def channel_recipient_add(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelRecipientRemoveEvent).void).returns(T.untyped) }
    def channel_recipient_remove(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::VoiceStateUpdateEvent).void).returns(Discordrb::Events::VoiceStateUpdateEventHandler) }
    def voice_state_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberAddEvent).void).returns(Discordrb::Events::ServerMemberAddEventHandler) }
    def member_join(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberUpdateEvent).void).returns(Discordrb::Events::ServerMemberUpdateEventHandler) }
    def member_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberDeleteEvent).void).returns(Discordrb::Events::ServerMemberDeleteEventHandler) }
    def member_leave(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UserBanEvent).void).returns(Discordrb::Events::UserBanEventHandler) }
    def user_ban(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UserUnbanEvent).void).returns(Discordrb::Events::UserUnbanEventHandler) }
    def user_unban(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerCreateEvent).void).returns(Discordrb::Events::ServerCreateEventHandler) }
    def server_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerUpdateEvent).void).returns(Discordrb::Events::ServerUpdateEventHandler) }
    def server_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerDeleteEvent).void).returns(Discordrb::Events::ServerDeleteEventHandler) }
    def server_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiChangeEvent).void).returns(Discordrb::Events::ServerEmojiChangeEventHandler) }
    def server_emoji(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiCreateEvent).void).returns(Discordrb::Events::ServerEmojiCreateEventHandler) }
    def server_emoji_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiDeleteEvent).void).returns(Discordrb::Events::ServerEmojiDeleteEventHandler) }
    def server_emoji_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiUpdateEvent).void).returns(Discordrb::Events::ServerEmojiUpdateEventHandler) }
    def server_emoji_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleCreateEvent).void).returns(Discordrb::Events::ServerRoleCreateEventHandler) }
    def server_role_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleDeleteEvent).void).returns(Discordrb::Events::ServerRoleDeleteEventHandler) }
    def server_role_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleUpdateEvent).void).returns(Discordrb::Events::ServerRoleUpdateEventHandler) }
    def server_role_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::WebhookUpdateEvent).void).returns(Discordrb::Events::WebhookUpdateEventHandler) }
    def webhook_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::AwaitEvent).void).returns(Discordrb::Events::AwaitEventHandler) }
    def await(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PrivateMessageEvent).void).returns(Discordrb::Events::PrivateMessageEventHandler) }
    def pm(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::RawEvent).void).returns(Discordrb::Events::RawEventHandler) }
    def raw(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UnknownEvent).void).returns(Discordrb::Events::UnknownEventHandler) }
    def unknown(attributes = {}, &block); end

    sig { params(handler: Discordrb::Events::EventHandler).returns(T.untyped) }
    def remove_handler(handler); end

    sig { returns(T.untyped) }
    def clear!; end

    sig { params(handler: Discordrb::Events::EventHandler).returns(T.untyped) }
    def add_handler(handler); end

    sig { params(container: Module).returns(T.untyped) }
    def include_events(container); end

    sig { params(clazz: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def register_event(clazz, attributes, block); end
  end

  module IDObject
    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end

    sig { params(time: Time).returns(Integer) }
    def self.synthesise(time); end
  end

  module UserAttributes
    sig { returns(String) }
    def username; end

    sig { returns(String) }
    def discriminator; end

    sig { returns(T::Boolean) }
    def bot_account; end

    sig { returns(String) }
    def avatar_id; end

    sig { params(value: String).returns(String) }
    def avatar_id=(value); end

    sig { returns(String) }
    def mention; end

    sig { returns(String) }
    def distinct; end

    sig { params(format: T.nilable(String)).returns(String) }
    def avatar_url(format = nil); end
  end

  class User
    include IDObject
    include UserAttributes

    sig { returns(Symbol) }
    def status; end

    sig { returns(T.nilable(String)) }
    def game; end

    sig { returns(T.nilable(String)) }
    def stream_url; end

    sig { returns(T.nilable(T.any(String, Integer))) }
    def stream_type; end

    sig { params(data: T.untyped, bot: T.untyped).returns(User) }
    def initialize(data, bot); end

    sig { params(content: T.untyped).returns(T.untyped) }
    def pm(content = nil); end

    sig { params(file: File, caption: String).returns(Message) }
    def send_file(file, caption = nil); end

    sig { params(username: T.untyped).returns(T.untyped) }
    def update_username(username); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_presence(data); end

    sig { params(key: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def await(key, attributes = {}, &block); end

    sig { params(attributes: T.untyped).returns(T.untyped) }
    def await!(attributes = {}); end

    sig { params(server: Server).returns(Member) }
    def on(server); end

    sig { returns(T::Boolean) }
    def current_bot?; end

    sig { returns(T::Boolean) }
    def webhook?; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(String) }
    def username; end

    sig { returns(String) }
    def discriminator; end

    sig { returns(T::Boolean) }
    def bot_account; end

    sig { returns(String) }
    def avatar_id; end

    sig { params(value: String).returns(String) }
    def avatar_id=(value); end

    sig { returns(String) }
    def mention; end

    sig { returns(String) }
    def distinct; end

    sig { params(format: T.nilable(String)).returns(String) }
    def avatar_url(format = nil); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Application
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(String) }
    def description; end

    sig { returns(T::Array[String]) }
    def rpc_origins; end

    sig { returns(Integer) }
    def flags; end

    sig { returns(User) }
    def owner; end

    sig { params(data: T.untyped, bot: T.untyped).returns(Application) }
    def initialize(data, bot); end

    sig { returns(T.nilable(String)) }
    def icon_url; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  module MemberAttributes
    sig { returns(Time) }
    def joined_at; end

    sig { returns(T.nilable(String)) }
    def nick; end

    sig { returns(T::Array[Role]) }
    def roles; end

    sig { returns(Server) }
    def server; end
  end

  module PermissionCalculator
    sig { params(action: Symbol, channel: T.nilable(Channel)).returns(T::Boolean) }
    def permission?(action, channel = nil); end

    sig { params(action: Symbol, channel: T.nilable(Channel)).returns(T::Boolean) }
    def defined_permission?(action, channel = nil); end

    sig { params(action: T.untyped, channel: T.untyped).returns(T::Boolean) }
    def defined_role_permission?(action, channel); end

    sig { params(action: T.untyped, channel: T.untyped, id: T.untyped).returns(T.untyped) }
    def permission_overwrite(action, channel, id); end
  end

  class VoiceState
    sig { returns(Integer) }
    def user_id; end

    sig { returns(T::Boolean) }
    def mute; end

    sig { returns(T::Boolean) }
    def deaf; end

    sig { returns(T::Boolean) }
    def self_mute; end

    sig { returns(T::Boolean) }
    def self_deaf; end

    sig { returns(Channel) }
    def voice_channel; end

    sig { params(user_id: T.untyped).returns(VoiceState) }
    def initialize(user_id); end

    sig do
      params(
        channel: T.untyped,
        mute: T.untyped,
        deaf: T.untyped,
        self_mute: T.untyped,
        self_deaf: T.untyped
      ).returns(T.untyped)
    end
    def update(channel, mute, deaf, self_mute, self_deaf); end
  end

  class VoiceRegion
    sig { returns(String) }
    def id; end

    sig { returns(String) }
    def name; end

    sig { returns(String) }
    def sample_hostname; end

    sig { returns(Integer) }
    def sample_port; end

    sig { returns(T::Boolean) }
    def vip; end

    sig { returns(T::Boolean) }
    def optimal; end

    sig { returns(T::Boolean) }
    def deprecated; end

    sig { returns(T::Boolean) }
    def custom; end

    sig { params(data: T.untyped).returns(VoiceRegion) }
    def initialize(data); end
  end

  class Member < User
    include MemberAttributes
    include PermissionCalculator

    sig { returns(T::Boolean) }
    def mute; end

    sig { returns(T::Boolean) }
    def deaf; end

    sig { returns(T::Boolean) }
    def self_mute; end

    sig { returns(T::Boolean) }
    def self_deaf; end

    sig { returns(Channel) }
    def voice_channel; end

    sig { params(data: T.untyped, server: T.untyped, bot: T.untyped).returns(Member) }
    def initialize(data, server, bot); end

    sig { returns(T::Boolean) }
    def owner?; end

    sig { params(role: T.any(Role, Integer, T.untyped)).returns(T::Boolean) }
    def role?(role); end

    sig { params(role: T.untyped).returns(T.untyped) }
    def roles=(role); end

    sig { params(role: T.any(Role, T::Array[Role]), reason: String).returns(T.untyped) }
    def set_roles(role, reason = nil); end

    sig { params(add: T.any(Role, T::Array[Role]), remove: T.any(Role, T::Array[Role]), reason: String).returns(T.untyped) }
    def modify_roles(add, remove, reason = nil); end

    sig { params(role: T.any(Role, T::Array[T.any(Role, T.untyped)], T.untyped), reason: String).returns(T.untyped) }
    def add_role(role, reason = nil); end

    sig { params(role: T.any(Role, T::Array[Role]), reason: String).returns(T.untyped) }
    def remove_role(role, reason = nil); end

    sig { returns(Role) }
    def highest_role; end

    sig { returns(T.nilable(Role)) }
    def hoist_role; end

    sig { returns(T.nilable(Role)) }
    def colour_role; end

    sig { returns(T.nilable(ColourRGB)) }
    def colour; end

    sig { returns(T.untyped) }
    def server_deafen; end

    sig { returns(T.untyped) }
    def server_undeafen; end

    sig { returns(T.untyped) }
    def server_mute; end

    sig { returns(T.untyped) }
    def server_unmute; end

    sig { params(nick: T.untyped).returns(T.untyped) }
    def nick=(nick); end

    sig { params(nick: T.nilable(String), reason: String).returns(T.untyped) }
    def set_nick(nick, reason = nil); end

    sig { returns(String) }
    def display_name; end

    sig { params(role_ids: T.untyped).returns(T.untyped) }
    def update_roles(role_ids); end

    sig { params(nick: T.untyped).returns(T.untyped) }
    def update_nick(nick); end

    sig { returns(T.untyped) }
    def inspect; end

    sig { params(role: T.untyped).returns(T.untyped) }
    def role_id_array(role); end

    sig { params(name: T.untyped).returns(T.untyped) }
    def voice_state_attribute(name); end

    sig { params(action: Symbol, channel: T.nilable(Channel)).returns(T::Boolean) }
    def permission?(action, channel = nil); end

    sig { params(action: Symbol, channel: T.nilable(Channel)).returns(T::Boolean) }
    def defined_permission?(action, channel = nil); end

    sig { params(action: T.untyped, channel: T.untyped).returns(T::Boolean) }
    def defined_role_permission?(action, channel); end

    sig { params(action: T.untyped, channel: T.untyped, id: T.untyped).returns(T.untyped) }
    def permission_overwrite(action, channel, id); end

    sig { returns(Time) }
    def joined_at; end

    sig { returns(T.nilable(String)) }
    def nick; end

    sig { returns(T::Array[Role]) }
    def roles; end

    sig { returns(Server) }
    def server; end

    sig { returns(Symbol) }
    def status; end

    sig { returns(T.nilable(String)) }
    def game; end

    sig { returns(T.nilable(String)) }
    def stream_url; end

    sig { returns(T.nilable(T.any(String, Integer))) }
    def stream_type; end

    sig { params(content: T.untyped).returns(T.untyped) }
    def pm(content = nil); end

    sig { params(file: File, caption: String).returns(Message) }
    def send_file(file, caption = nil); end

    sig { params(username: T.untyped).returns(T.untyped) }
    def update_username(username); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_presence(data); end

    sig { params(key: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def await(key, attributes = {}, &block); end

    sig { params(attributes: T.untyped).returns(T.untyped) }
    def await!(attributes = {}); end

    sig { params(server: Server).returns(Member) }
    def on(server); end

    sig { returns(T::Boolean) }
    def current_bot?; end

    sig { returns(T::Boolean) }
    def webhook?; end

    sig { returns(String) }
    def username; end

    sig { returns(String) }
    def discriminator; end

    sig { returns(T::Boolean) }
    def bot_account; end

    sig { returns(String) }
    def avatar_id; end

    sig { params(value: String).returns(String) }
    def avatar_id=(value); end

    sig { returns(String) }
    def mention; end

    sig { returns(String) }
    def distinct; end

    sig { params(format: T.nilable(String)).returns(String) }
    def avatar_url(format = nil); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Recipient < User
    include MemberAttributes

    sig { returns(Channel) }
    def channel; end

    sig { params(user: T.untyped, channel: T.untyped, bot: T.untyped).returns(Recipient) }
    def initialize(user, channel, bot); end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(Time) }
    def joined_at; end

    sig { returns(T.nilable(String)) }
    def nick; end

    sig { returns(T::Array[Role]) }
    def roles; end

    sig { returns(Server) }
    def server; end

    sig { returns(Symbol) }
    def status; end

    sig { returns(T.nilable(String)) }
    def game; end

    sig { returns(T.nilable(String)) }
    def stream_url; end

    sig { returns(T.nilable(T.any(String, Integer))) }
    def stream_type; end

    sig { params(content: T.untyped).returns(T.untyped) }
    def pm(content = nil); end

    sig { params(file: File, caption: String).returns(Message) }
    def send_file(file, caption = nil); end

    sig { params(username: T.untyped).returns(T.untyped) }
    def update_username(username); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_presence(data); end

    sig { params(key: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def await(key, attributes = {}, &block); end

    sig { params(attributes: T.untyped).returns(T.untyped) }
    def await!(attributes = {}); end

    sig { params(server: Server).returns(Member) }
    def on(server); end

    sig { returns(T::Boolean) }
    def current_bot?; end

    sig { returns(T::Boolean) }
    def webhook?; end

    sig { returns(String) }
    def username; end

    sig { returns(String) }
    def discriminator; end

    sig { returns(T::Boolean) }
    def bot_account; end

    sig { returns(String) }
    def avatar_id; end

    sig { params(value: String).returns(String) }
    def avatar_id=(value); end

    sig { returns(String) }
    def mention; end

    sig { returns(String) }
    def distinct; end

    sig { params(format: T.nilable(String)).returns(String) }
    def avatar_url(format = nil); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Profile < User
    sig { params(data: T.untyped, bot: T.untyped).returns(Profile) }
    def initialize(data, bot); end

    sig { returns(T::Boolean) }
    def current_bot?; end

    sig { params(username: String).returns(T.untyped) }
    def username=(username); end

    sig { params(avatar: T.any(String, T.untyped)).returns(T.untyped) }
    def avatar=(avatar); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_data(new_data); end

    sig { returns(T.untyped) }
    def online; end

    sig { returns(T.untyped) }
    def idle; end

    sig { returns(T.untyped) }
    def dnd; end

    sig { returns(T.untyped) }
    def invisible; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { params(status: T.untyped).returns(T.untyped) }
    def update_profile_status_setting(status); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_profile_data(new_data); end

    sig { returns(Symbol) }
    def status; end

    sig { returns(T.nilable(String)) }
    def game; end

    sig { returns(T.nilable(String)) }
    def stream_url; end

    sig { returns(T.nilable(T.any(String, Integer))) }
    def stream_type; end

    sig { params(content: T.untyped).returns(T.untyped) }
    def pm(content = nil); end

    sig { params(file: File, caption: String).returns(Message) }
    def send_file(file, caption = nil); end

    sig { params(username: T.untyped).returns(T.untyped) }
    def update_username(username); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_presence(data); end

    sig { params(key: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def await(key, attributes = {}, &block); end

    sig { params(attributes: T.untyped).returns(T.untyped) }
    def await!(attributes = {}); end

    sig { params(server: Server).returns(Member) }
    def on(server); end

    sig { returns(T::Boolean) }
    def webhook?; end

    sig { returns(String) }
    def username; end

    sig { returns(String) }
    def discriminator; end

    sig { returns(T::Boolean) }
    def bot_account; end

    sig { returns(String) }
    def avatar_id; end

    sig { params(value: String).returns(String) }
    def avatar_id=(value); end

    sig { returns(String) }
    def mention; end

    sig { returns(String) }
    def distinct; end

    sig { params(format: T.nilable(String)).returns(String) }
    def avatar_url(format = nil); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Role
    include IDObject

    sig { returns(Permissions) }
    def permissions; end

    sig { returns(String) }
    def name; end

    sig { returns(Server) }
    def server; end

    sig { returns(T::Boolean) }
    def hoist; end

    sig { returns(T::Boolean) }
    def managed; end

    sig { returns(T::Boolean) }
    def mentionable; end

    sig { returns(ColourRGB) }
    def colour; end

    sig { returns(Integer) }
    def position; end

    sig { params(data: T.untyped, bot: T.untyped, server: T.untyped).returns(Role) }
    def initialize(data, bot, server = nil); end

    sig { returns(String) }
    def mention; end

    sig { returns(T::Array[Member]) }
    def members; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def update_from(other); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_data(new_data); end

    sig { params(name: String).returns(T.untyped) }
    def name=(name); end

    sig { params(hoist: T::Boolean).returns(T.untyped) }
    def hoist=(hoist); end

    sig { params(mentionable: T::Boolean).returns(T.untyped) }
    def mentionable=(mentionable); end

    sig { params(colour: ColourRGB).returns(T.untyped) }
    def colour=(colour); end

    sig { params(packed: Integer, update_perms: T::Boolean).returns(T.untyped) }
    def packed=(packed, update_perms = true); end

    sig { params(other: T.nilable(T.any(Role, T.untyped))).returns(Integer) }
    def sort_above(other = nil); end

    sig { params(reason: String).returns(T.untyped) }
    def delete(reason = nil); end

    sig { returns(T.untyped) }
    def inspect; end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_role_data(new_data); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end

    class RoleWriter
      sig { params(role: T.untyped, token: T.untyped).returns(RoleWriter) }
      def initialize(role, token); end

      sig { params(bits: Integer).returns(T.untyped) }
      def write(bits); end

      sig { returns(T.untyped) }
      def inspect; end
    end
  end

  class InviteChannel
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(Integer) }
    def type; end

    sig { params(data: T.untyped, bot: T.untyped).returns(InviteChannel) }
    def initialize(data, bot); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class InviteServer
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(T.nilable(String)) }
    def splash_hash; end

    sig { params(data: T.untyped, bot: T.untyped).returns(InviteServer) }
    def initialize(data, bot); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Invite
    sig { returns(InviteChannel) }
    def channel; end

    sig { returns(InviteServer) }
    def server; end

    sig { returns(Integer) }
    def uses; end

    sig { returns(T.nilable(User)) }
    def inviter; end

    sig { returns(T::Boolean) }
    def temporary; end

    sig { returns(T::Boolean) }
    def revoked; end

    sig { returns(String) }
    def code; end

    sig { returns(T.nilable(Integer)) }
    def member_count; end

    sig { returns(T.nilable(Integer)) }
    def online_member_count; end

    sig { returns(T.nilable(Integer)) }
    def max_age; end

    sig { returns(T.nilable(Time)) }
    def created_at; end

    sig { params(data: T.untyped, bot: T.untyped).returns(Invite) }
    def initialize(data, bot); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(reason: String).returns(T.untyped) }
    def delete(reason = nil); end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(T.untyped) }
    def url; end
  end

  class Overwrite
    sig { returns(Integer) }
    def id; end

    sig { params(value: Integer).returns(Integer) }
    def id=(value); end

    sig { returns(Symbol) }
    def type; end

    sig { params(value: Symbol).returns(Symbol) }
    def type=(value); end

    sig { returns(Permissions) }
    def allow; end

    sig { params(value: Permissions).returns(Permissions) }
    def allow=(value); end

    sig { returns(Permissions) }
    def deny; end

    sig { params(value: Permissions).returns(Permissions) }
    def deny=(value); end

    sig do
      params(
        object: T.any(Integer, T.untyped),
        type: T.untyped,
        allow: T.untyped,
        deny: T.untyped
      ).returns(Overwrite)
    end
    def initialize(object = nil, type: nil, allow: 0, deny: 0); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { params(data: T.untyped).returns(Overwrite) }
    def self.from_hash(data); end

    sig { params(other: T.untyped).returns(Overwrite) }
    def self.from_other(other); end

    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def to_hash; end
  end

  class Channel
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(T.nilable(Server)) }
    def server; end

    sig { returns(T.nilable(Integer)) }
    def parent_id; end

    sig { returns(Integer) }
    def type; end

    sig { returns(T.nilable(Integer)) }
    def owner_id; end

    sig { returns(T.nilable(T::Array[Recipient])) }
    def recipients; end

    sig { returns(String) }
    def topic; end

    sig { returns(Integer) }
    def bitrate; end

    sig { returns(Integer) }
    def user_limit; end

    sig { returns(Integer) }
    def position; end

    sig { returns(T::Boolean) }
    def nsfw; end

    sig { returns(Integer) }
    def rate_limit_per_user; end

    sig { returns(T::Boolean) }
    def private?; end

    sig { returns(String) }
    def mention; end

    sig { returns(T.nilable(Recipient)) }
    def recipient; end

    sig { params(data: T.untyped, bot: T.untyped, server: T.untyped).returns(Channel) }
    def initialize(data, bot, server = nil); end

    sig { returns(T::Boolean) }
    def text?; end

    sig { returns(T::Boolean) }
    def pm?; end

    sig { returns(T::Boolean) }
    def voice?; end

    sig { returns(T::Boolean) }
    def group?; end

    sig { returns(T::Boolean) }
    def category?; end

    sig { returns(T.nilable(Channel)) }
    def category; end

    sig { params(channel: T.any(Channel, T.untyped)).returns(T.untyped) }
    def category=(channel); end

    sig { params(other: T.nilable(T.any(Channel, T.untyped)), lock_permissions: T::Boolean).returns(T.untyped) }
    def sort_after(other = nil, lock_permissions = false); end

    sig { params(nsfw: T::Boolean).returns(T.untyped) }
    def nsfw=(nsfw); end

    sig { params(type: T.untyped).returns(T.untyped) }
    def permission_overwrites(type = nil); end

    sig { params(overwrites: T::Array[Overwrite]).returns(T.untyped) }
    def permission_overwrites=(overwrites); end

    sig { params(rate: Integer).returns(T.untyped) }
    def rate_limit_per_user=(rate); end

    sig { returns(T.untyped) }
    def sync_overwrites; end

    sig { returns(T.nilable(T::Boolean)) }
    def synchronized?; end

    sig { returns(T::Array[Channel]) }
    def children; end

    sig { returns(T::Array[Channel]) }
    def text_channels; end

    sig { returns(T::Array[Channel]) }
    def voice_channels; end

    sig { returns(Overwrite) }
    def member_overwrites; end

    sig { returns(Overwrite) }
    def role_overwrites; end

    sig { returns(T::Boolean) }
    def default_channel?; end

    sig { returns(T::Boolean) }
    def slowmode?; end

    sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Message) }
    def send_message(content, tts = false, embed = nil); end

    sig do
      params(
        content: String,
        timeout: Float,
        tts: T::Boolean,
        embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))
      ).returns(T.untyped)
    end
    def send_temporary_message(content, timeout, tts = false, embed = nil); end

    sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed)).returns(Message) }
    def send_embed(message = '', embed = nil); end

    sig { params(content: T::Array[String]).returns(T.untyped) }
    def send_multiple(content); end

    sig { params(content: T.untyped).returns(T.untyped) }
    def split_send(content); end

    sig { params(file: File, caption: T.untyped, tts: T.untyped).returns(T.untyped) }
    def send_file(file, caption: nil, tts: false); end

    sig { params(message: T.any(Message, String, Integer, T.untyped)).returns(T.untyped) }
    def delete_message(message); end

    sig { params(reason: String).returns(T.untyped) }
    def delete(reason = nil); end

    sig { params(name: String).returns(T.untyped) }
    def name=(name); end

    sig { params(topic: String).returns(T.untyped) }
    def topic=(topic); end

    sig { params(bitrate: Integer).returns(T.untyped) }
    def bitrate=(bitrate); end

    sig { params(limit: Integer).returns(T.untyped) }
    def user_limit=(limit); end

    sig { params(position: Integer).returns(T.untyped) }
    def position=(position); end

    sig do
      params(
        thing: T.untyped,
        allow: T.untyped,
        deny: T.untyped,
        reason: T.untyped
      ).returns(T.untyped)
    end
    def define_overwrite(thing, allow = 0, deny = 0, reason: nil); end

    sig { params(target: T.any(Member, User, Role, Profile, Recipient, T.untyped), reason: T.untyped).returns(T.untyped) }
    def delete_overwrite(target, reason = nil); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def update_from(other); end

    sig { returns(T::Array[Member]) }
    def users; end

    sig do
      params(
        amount: Integer,
        before_id: Integer,
        after_id: Integer,
        around_id: Integer
      ).returns(T::Array[Message])
    end
    def history(amount, before_id = nil, after_id = nil, around_id = nil); end

    sig do
      params(
        amount: T.untyped,
        before_id: T.untyped,
        after_id: T.untyped,
        around_id: T.untyped
      ).returns(T.untyped)
    end
    def history_ids(amount, before_id = nil, after_id = nil, around_id = nil); end

    sig { params(message_id: Integer).returns(T.nilable(Message)) }
    def load_message(message_id); end

    sig { returns(T::Array[Message]) }
    def pins; end

    sig { params(amount: Integer, strict: T::Boolean, block: T.untyped).returns(Integer) }
    def prune(amount, strict = false, &block); end

    sig { params(messages: T::Array[T.any(Message, Integer, T.untyped)], strict: T::Boolean).returns(Integer) }
    def delete_messages(messages, strict = false); end

    sig { params(overwrites: T.untyped).returns(T.untyped) }
    def update_overwrites(overwrites); end

    sig { params(key: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def await(key, attributes = {}, &block); end

    sig { params(attributes: T.untyped).returns(T.untyped) }
    def await!(attributes = {}); end

    sig do
      params(
        max_age: Integer,
        max_uses: Integer,
        temporary: T::Boolean,
        unique: T::Boolean,
        reason: String
      ).returns(Invite)
    end
    def make_invite(max_age = 0, max_uses = 0, temporary = false, unique = false, reason = nil); end

    sig { returns(T.untyped) }
    def start_typing; end

    sig { params(user_ids: T::Array[Integer]).returns(Channel) }
    def create_group(user_ids); end

    sig { params(user_ids: T.any(T::Array[T.untyped], T.untyped)).returns(Channel) }
    def add_group_users(user_ids); end

    sig { params(user_ids: T.any(T::Array[T.untyped], T.untyped)).returns(Channel) }
    def remove_group_users(user_ids); end

    sig { returns(T.untyped) }
    def leave_group; end

    sig { returns(T::Array[Webhook]) }
    def webhooks; end

    sig { returns(T::Array[Invite]) }
    def invites; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { params(recipient: Recipient).returns(T.untyped) }
    def add_recipient(recipient); end

    sig { params(recipient: Recipient).returns(T.untyped) }
    def remove_recipient(recipient); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_data(new_data = nil); end

    sig { params(ids: T.untyped, strict: T.untyped).returns(T.untyped) }
    def bulk_delete(ids, strict = false); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_channel_data(new_data); end

    sig { params(overwrites: T.untyped).returns(T.untyped) }
    def process_permission_overwrites(overwrites); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Embed
    sig { returns(Message) }
    def message; end

    sig { returns(String) }
    def url; end

    sig { returns(T.nilable(String)) }
    def title; end

    sig { returns(T.nilable(String)) }
    def description; end

    sig { returns(Symbol) }
    def type; end

    sig { returns(T.nilable(Time)) }
    def timestamp; end

    sig { returns(T.nilable(String)) }
    def color; end

    sig { returns(T.nilable(EmbedFooter)) }
    def footer; end

    sig { returns(T.nilable(EmbedProvider)) }
    def provider; end

    sig { returns(T.nilable(EmbedImage)) }
    def image; end

    sig { returns(T.nilable(EmbedThumbnail)) }
    def thumbnail; end

    sig { returns(T.nilable(EmbedVideo)) }
    def video; end

    sig { returns(T.nilable(EmbedAuthor)) }
    def author; end

    sig { returns(T.nilable(T::Array[EmbedField])) }
    def fields; end

    sig { params(data: T.untyped, message: T.untyped).returns(Embed) }
    def initialize(data, message); end
  end

  class EmbedFooter
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def text; end

    sig { returns(String) }
    def icon_url; end

    sig { returns(String) }
    def proxy_icon_url; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedFooter) }
    def initialize(data, embed); end
  end

  class EmbedImage
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def url; end

    sig { returns(String) }
    def proxy_url; end

    sig { returns(Integer) }
    def width; end

    sig { returns(Integer) }
    def height; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedImage) }
    def initialize(data, embed); end
  end

  class EmbedVideo
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def url; end

    sig { returns(Integer) }
    def width; end

    sig { returns(Integer) }
    def height; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedVideo) }
    def initialize(data, embed); end
  end

  class EmbedThumbnail
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def url; end

    sig { returns(String) }
    def proxy_url; end

    sig { returns(Integer) }
    def width; end

    sig { returns(Integer) }
    def height; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedThumbnail) }
    def initialize(data, embed); end
  end

  class EmbedProvider
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def name; end

    sig { returns(T.nilable(String)) }
    def url; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedProvider) }
    def initialize(data, embed); end
  end

  class EmbedAuthor
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def name; end

    sig { returns(T.nilable(String)) }
    def url; end

    sig { returns(T.nilable(String)) }
    def icon_url; end

    sig { returns(T.nilable(String)) }
    def proxy_icon_url; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedAuthor) }
    def initialize(data, embed); end
  end

  class EmbedField
    sig { returns(Embed) }
    def embed; end

    sig { returns(String) }
    def name; end

    sig { returns(String) }
    def value; end

    sig { returns(T::Boolean) }
    def inline; end

    sig { params(data: T.untyped, embed: T.untyped).returns(EmbedField) }
    def initialize(data, embed); end
  end

  class Attachment
    include IDObject

    sig { returns(Message) }
    def message; end

    sig { returns(String) }
    def url; end

    sig { returns(String) }
    def proxy_url; end

    sig { returns(String) }
    def filename; end

    sig { returns(Integer) }
    def size; end

    sig { returns(T.nilable(Integer)) }
    def width; end

    sig { returns(T.nilable(Integer)) }
    def height; end

    sig { params(data: T.untyped, message: T.untyped, bot: T.untyped).returns(Attachment) }
    def initialize(data, message, bot); end

    sig { returns(T::Boolean) }
    def image?; end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Message
    include IDObject

    sig { returns(String) }
    def content; end

    sig { returns(T.any(Member, User)) }
    def author; end

    sig { returns(Channel) }
    def channel; end

    sig { returns(Time) }
    def timestamp; end

    sig { returns(Time) }
    def edited_timestamp; end

    sig { returns(T::Array[User]) }
    def mentions; end

    sig { returns(T::Array[Role]) }
    def role_mentions; end

    sig { returns(T::Array[Attachment]) }
    def attachments; end

    sig { returns(T::Array[Embed]) }
    def embeds; end

    sig { returns(T::Hash[String, Reaction]) }
    def reactions; end

    sig { returns(T::Boolean) }
    def tts; end

    sig { returns(String) }
    def nonce; end

    sig { returns(T::Boolean) }
    def edited; end

    sig { returns(T::Boolean) }
    def mention_everyone; end

    sig { returns(T::Boolean) }
    def pinned; end

    sig { returns(T.nilable(Integer)) }
    def webhook_id; end

    sig { params(data: T.untyped, bot: T.untyped).returns(Message) }
    def initialize(data, bot); end

    sig { params(content: T.untyped).returns(T.untyped) }
    def reply(content); end

    sig { params(new_content: String, new_embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Message) }
    def edit(new_content, new_embed = nil); end

    sig { returns(T.untyped) }
    def delete; end

    sig { returns(T.untyped) }
    def pin; end

    sig { returns(T.untyped) }
    def unpin; end

    sig { params(key: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def await(key, attributes = {}, &block); end

    sig { params(attributes: T.untyped).returns(T.untyped) }
    def await!(attributes = {}); end

    sig { returns(T::Boolean) }
    def from_bot?; end

    sig { returns(T::Boolean) }
    def webhook?; end

    sig { returns(T::Array[String]) }
    def scan_for_emoji; end

    sig { returns(T::Array[Emoji]) }
    def emoji; end

    sig { returns(T::Boolean) }
    def emoji?; end

    sig { returns(T::Boolean) }
    def reactions?; end

    sig { returns(T::Array[Reaction]) }
    def my_reactions; end

    sig { params(reaction: T.any(String, T.untyped)).returns(T.untyped) }
    def create_reaction(reaction); end

    sig { params(reaction: T.any(String, T.untyped)).returns(T::Array[User]) }
    def reacted_with(reaction); end

    sig { params(user: T.any(User, T.untyped), reaction: T.any(String, T.untyped)).returns(T.untyped) }
    def delete_reaction(user, reaction); end

    sig { params(reaction: T.any(String, T.untyped)).returns(T.untyped) }
    def delete_own_reaction(reaction); end

    sig { returns(T.untyped) }
    def delete_all_reactions; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Reaction
    sig { returns(Integer) }
    def count; end

    sig { returns(T::Boolean) }
    def me; end

    sig { returns(Integer) }
    def id; end

    sig { returns(String) }
    def name; end

    sig { params(data: T.untyped).returns(Reaction) }
    def initialize(data); end

    sig { returns(String) }
    def to_s; end
  end

  class Emoji
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(Server) }
    def server; end

    sig { returns(T::Array[Role]) }
    def roles; end

    sig { returns(T::Boolean) }
    def animated; end

    sig { params(data: T.untyped, bot: T.untyped, server: T.untyped).returns(Emoji) }
    def initialize(data, bot, server); end

    sig { returns(String) }
    def mention; end

    sig { returns(String) }
    def to_reaction; end

    sig { returns(String) }
    def icon_url; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { params(roles: T.untyped).returns(T.untyped) }
    def process_roles(roles); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  module ServerAttributes
    sig { returns(String) }
    def name; end

    sig { returns(String) }
    def icon_id; end

    sig { returns(String) }
    def icon_url; end
  end

  class IntegrationAccount
    sig { returns(String) }
    def name; end

    sig { returns(Integer) }
    def id; end

    sig { params(data: T.untyped).returns(IntegrationAccount) }
    def initialize(data); end
  end

  class Integration
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(Server) }
    def server; end

    sig { returns(User) }
    def user; end

    sig { returns(T.nilable(Role)) }
    def role; end

    sig { returns(T::Boolean) }
    def emoticon; end

    sig { returns(String) }
    def type; end

    sig { returns(T::Boolean) }
    def enabled; end

    sig { returns(T::Boolean) }
    def syncing; end

    sig { returns(IntegrationAccount) }
    def account; end

    sig { returns(Time) }
    def synced_at; end

    sig { returns(Symbol) }
    def expire_behaviour; end

    sig { returns(Integer) }
    def expire_grace_period; end

    sig { params(data: T.untyped, bot: T.untyped, server: T.untyped).returns(Integration) }
    def initialize(data, bot, server); end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class Server
    include IDObject
    include ServerAttributes

    sig { returns(String) }
    def region_id; end

    sig { returns(Member) }
    def owner; end

    sig { returns(T::Array[Channel]) }
    def channels; end

    sig { returns(T::Array[Role]) }
    def roles; end

    sig { returns(T::Hash[Integer, Emoji]) }
    def emoji; end

    sig { returns(T::Boolean) }
    def large; end

    sig { returns(T::Array[Symbol]) }
    def features; end

    sig { returns(Integer) }
    def member_count; end

    sig { returns(Integer) }
    def afk_timeout; end

    sig { returns(T::Hash[Integer, VoiceState]) }
    def voice_states; end

    sig { params(data: T.untyped, bot: T.untyped, exists: T.untyped).returns(Server) }
    def initialize(data, bot, exists = true); end

    sig { params(send_messages: T::Boolean).returns(T.nilable(Channel)) }
    def default_channel(send_messages = false); end

    sig { returns(Role) }
    def everyone_role; end

    sig { params(id: T.any(Integer, String, T.untyped)).returns(T.untyped) }
    def role(id); end

    sig { params(id: Integer, request: T::Boolean).returns(T.untyped) }
    def member(id, request = true); end

    sig { returns(T::Array[Member]) }
    def members; end

    sig { returns(T::Array[Integration]) }
    def integrations; end

    sig do
      params(
        action: T.untyped,
        user: T.untyped,
        limit: T.untyped,
        before: T.untyped
      ).returns(AuditLogs)
    end
    def audit_logs(action: nil, user: nil, limit: 50, before: nil); end

    sig { returns(T.untyped) }
    def cache_embed_data; end

    sig { returns(T::Boolean) }
    def embed_enabled?; end

    sig { returns(T.nilable(Channel)) }
    def embed_channel; end

    sig { params(value: T::Boolean).returns(T.untyped) }
    def embed_enabled=(value); end

    sig { params(value: T::Boolean, reason: T.nilable(String)).returns(T.untyped) }
    def set_embed_enabled(value, reason = nil); end

    sig { params(channel: T.any(Channel, String, Integer, T.untyped)).returns(T.untyped) }
    def embed_channel=(channel); end

    sig { params(channel: T.any(Channel, String, Integer, T.untyped), reason: T.nilable(String)).returns(T.untyped) }
    def set_embed_channel(channel, reason = nil); end

    sig { params(enabled: T::Boolean, channel: T.any(Channel, String, Integer, T.untyped), reason: T.nilable(String)).returns(T.untyped) }
    def modify_embed(enabled, channel, reason = nil); end

    sig { params(include_idle: T.untyped, include_bots: T.untyped).returns(T::Array[Member]) }
    def online_members(include_idle: false, include_bots: true); end

    sig do
      params(
        user: T.any(Integer, User, T.untyped),
        access_token: String,
        nick: T.untyped,
        roles: T.untyped,
        deaf: T.untyped,
        mute: T.untyped
      ).returns(Member)
    end
    def add_member_using_token(user, access_token, nick: nil, roles: [], deaf: false, mute: false); end

    sig { params(days: Integer).returns(Integer) }
    def prune_count(days); end

    sig { params(days: Integer, reason: String).returns(Integer) }
    def begin_prune(days, reason = nil); end

    sig { returns(T::Array[Channel]) }
    def text_channels; end

    sig { returns(T::Array[Channel]) }
    def voice_channels; end

    sig { returns(T::Array[Channel]) }
    def categories; end

    sig { returns(T::Array[Channel]) }
    def orphan_channels; end

    sig { returns(T.nilable(String)) }
    def widget_url; end

    sig { params(style: Symbol).returns(T.nilable(String)) }
    def widget_banner_url(style); end

    sig { returns(String) }
    def splash_id; end

    sig { returns(T.nilable(String)) }
    def splash_url; end

    sig { params(role: T.untyped).returns(T.untyped) }
    def add_role(role); end

    sig { params(role_id: T.untyped).returns(T.untyped) }
    def delete_role(role_id); end

    sig { params(role_positions: T.untyped).returns(T.untyped) }
    def update_role_positions(role_positions); end

    sig { params(member: T.untyped).returns(T.untyped) }
    def add_member(member); end

    sig { params(user_id: T.untyped).returns(T.untyped) }
    def delete_member(user_id); end

    sig { params(user_id: T.untyped).returns(T::Boolean) }
    def member_cached?(user_id); end

    sig { params(member: T.untyped).returns(T.untyped) }
    def cache_member(member); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_voice_state(data); end

    sig do
      params(
        name: String,
        type: T.any(Integer, Symbol),
        topic: T.untyped,
        bitrate: T.untyped,
        user_limit: T.untyped,
        permission_overwrites: T.untyped,
        parent: T.untyped,
        nsfw: T.untyped,
        rate_limit_per_user: T.untyped,
        reason: T.untyped
      ).returns(Channel)
    end
    def create_channel(name, type = 0, topic: nil, bitrate: nil, user_limit: nil, permission_overwrites: nil, parent: nil, nsfw: false, rate_limit_per_user: nil, reason: nil); end

    sig do
      params(
        name: T.untyped,
        colour: T.untyped,
        hoist: T.untyped,
        mentionable: T.untyped,
        permissions: T.untyped,
        reason: T.untyped
      ).returns(Role)
    end
    def create_role(name: 'new role', colour: 0, hoist: false, mentionable: false, permissions: 104_324_161, reason: nil); end

    sig { returns(T::Array[ServerBan]) }
    def bans; end

    sig { params(user: T.any(User, T.untyped), message_days: Integer, reason: T.untyped).returns(T.untyped) }
    def ban(user, message_days = 0, reason: nil); end

    sig { params(user: T.any(User, T.untyped), reason: String).returns(T.untyped) }
    def unban(user, reason = nil); end

    sig { params(user: T.any(User, T.untyped), reason: String).returns(T.untyped) }
    def kick(user, reason = nil); end

    sig { params(user: T.any(User, T.untyped), channel: T.any(Channel, T.untyped)).returns(T.untyped) }
    def move(user, channel); end

    sig { returns(T.untyped) }
    def delete; end

    sig { returns(T.untyped) }
    def leave; end

    sig { params(user: T.any(User, T.untyped)).returns(T.untyped) }
    def owner=(user); end

    sig { params(name: String).returns(T.untyped) }
    def name=(name); end

    sig { returns(T::Array[VoiceRegion]) }
    def available_voice_regions; end

    sig { returns(T.nilable(VoiceRegion)) }
    def region; end

    sig { params(region: String).returns(T.untyped) }
    def region=(region); end

    sig { params(icon: T.any(String, T.untyped)).returns(T.untyped) }
    def icon=(icon); end

    sig { params(afk_channel: T.nilable(Channel)).returns(T.untyped) }
    def afk_channel=(afk_channel); end

    sig { params(system_channel: T.nilable(T.any(Channel, String, Integer, T.untyped))).returns(T.untyped) }
    def system_channel=(system_channel); end

    sig { params(afk_timeout: Integer).returns(T.untyped) }
    def afk_timeout=(afk_timeout); end

    sig { returns(Symbol) }
    def verification_level; end

    sig { params(level: T.any(Integer, Symbol)).returns(T.untyped) }
    def verification_level=(level); end

    sig { returns(Symbol) }
    def default_message_notifications; end

    sig { params(notification_level: T.any(Integer, Symbol)).returns(T.untyped) }
    def default_message_notifications=(notification_level); end

    sig { params(splash_hash: String).returns(T.untyped) }
    def splash=(splash_hash); end

    sig { returns(Symbol) }
    def explicit_content_filter; end

    sig { params(filter_level: T.any(Integer, Symbol)).returns(T.untyped) }
    def explicit_content_filter=(filter_level); end

    sig { returns(T::Boolean) }
    def any_emoji?; end

    sig { returns(T::Array[Webhook]) }
    def webhooks; end

    sig { returns(T::Array[Invite]) }
    def invites; end

    sig { params(members: T.untyped).returns(T.untyped) }
    def process_chunk(members); end

    sig { returns(T.nilable(Channel)) }
    def afk_channel; end

    sig { returns(T.nilable(Channel)) }
    def system_channel; end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_data(new_data = nil); end

    sig { params(channel: T.untyped).returns(T.untyped) }
    def add_channel(channel); end

    sig { params(id: T.untyped).returns(T.untyped) }
    def delete_channel(id); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_emoji_data(new_data); end

    sig { returns(T.untyped) }
    def inspect; end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_server_data(new_data); end

    sig { params(roles: T.untyped).returns(T.untyped) }
    def process_roles(roles); end

    sig { params(emoji: T.untyped).returns(T.untyped) }
    def process_emoji(emoji); end

    sig { params(members: T.untyped).returns(T.untyped) }
    def process_members(members); end

    sig { params(presences: T.untyped).returns(T.untyped) }
    def process_presences(presences); end

    sig { params(channels: T.untyped).returns(T.untyped) }
    def process_channels(channels); end

    sig { params(voice_states: T.untyped).returns(T.untyped) }
    def process_voice_states(voice_states); end

    sig { returns(String) }
    def name; end

    sig { returns(String) }
    def icon_id; end

    sig { returns(String) }
    def icon_url; end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class ServerBan
    sig { returns(T.nilable(String)) }
    def reason; end

    sig { returns(User) }
    def user; end

    sig { returns(Server) }
    def server; end

    sig { params(server: T.untyped, user: T.untyped, reason: T.untyped).returns(ServerBan) }
    def initialize(server, user, reason); end

    sig { params(reason: String).returns(T.untyped) }
    def remove(reason = nil); end
  end

  class Webhook
    include IDObject

    sig { returns(String) }
    def name; end

    sig { returns(Channel) }
    def channel; end

    sig { returns(Server) }
    def server; end

    sig { returns(String) }
    def token; end

    sig { returns(String) }
    def avatar; end

    sig { returns(T.nilable(T.any(Member, User))) }
    def owner; end

    sig { params(data: T.untyped, bot: T.untyped).returns(Webhook) }
    def initialize(data, bot); end

    sig { params(avatar: T.any(String, T.untyped)).returns(T.untyped) }
    def avatar=(avatar); end

    sig { returns(T.untyped) }
    def delete_avatar; end

    sig { params(channel: T.any(Channel, String, Integer, T.untyped)).returns(T.untyped) }
    def channel=(channel); end

    sig { params(name: String).returns(T.untyped) }
    def name=(name); end

    sig { params(data: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def update(data); end

    sig { params(reason: String).returns(T.untyped) }
    def delete(reason = nil); end

    sig { returns(String) }
    def avatar_url; end

    sig { returns(T.untyped) }
    def inspect; end

    sig { returns(T::Boolean) }
    def token?; end

    sig { params(avatar: T.untyped).returns(T.untyped) }
    def avatarise(avatar); end

    sig { params(data: T.untyped).returns(T.untyped) }
    def update_internal(data); end

    sig { params(new_data: T.untyped).returns(T.untyped) }
    def update_webhook(new_data); end

    sig { returns(Integer) }
    def id; end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end

    sig { returns(Time) }
    def creation_time; end
  end

  class AuditLogs
    sig { returns(T::Hash[String, User]) }
    def users; end

    sig { returns(T::Hash[String, Webhook]) }
    def webhooks; end

    sig { returns(T::Array[Entry]) }
    def entries; end

    sig { params(server: T.untyped, bot: T.untyped, data: T.untyped).returns(AuditLogs) }
    def initialize(server, bot, data); end

    sig { returns(Entry) }
    def latest; end

    sig { params(id: T.untyped).returns(T.untyped) }
    def user(id); end

    sig { params(id: T.untyped).returns(T.untyped) }
    def webhook(id); end

    sig { params(users: T.untyped).returns(T.untyped) }
    def process_users(users); end

    sig { params(webhooks: T.untyped).returns(T.untyped) }
    def process_webhooks(webhooks); end

    sig { params(action: T.untyped).returns(T.untyped) }
    def self.target_type_for(action); end

    sig { params(action: T.untyped).returns(T.untyped) }
    def self.action_type_for(action); end

    class Entry
      include IDObject

      sig { returns(Symbol) }
      def action; end

      sig { returns(Symbol) }
      def action_type; end

      sig { returns(Symbol) }
      def target_type; end

      sig { returns(T.nilable(Integer)) }
      def count; end

      sig { returns(T.nilable(Integer)) }
      def days; end

      sig { returns(T.nilable(Integer)) }
      def members_removed; end

      sig { returns(T.nilable(String)) }
      def reason; end

      sig { returns(T.nilable(T.any(T::Hash[String, Change], RoleChange))) }
      def changes; end

      sig do
        params(
          logs: T.untyped,
          server: T.untyped,
          bot: T.untyped,
          data: T.untyped
        ).returns(Entry)
      end
      def initialize(logs, server, bot, data); end

      sig { returns(T.nilable(T.any(Server, Channel, Member, User, Role, Invite, Webhook, Emoji))) }
      def target; end

      sig { returns(T.any(Member, User)) }
      def user; end

      sig { returns(T.nilable(Channel)) }
      def channel; end

      sig { params(id: T.untyped, type: T.untyped).returns(T.untyped) }
      def process_target(id, type); end

      sig { returns(T.untyped) }
      def inspect; end

      sig { params(changes: T.untyped).returns(T.untyped) }
      def process_changes(changes); end

      sig { returns(Integer) }
      def id; end

      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(Time) }
      def creation_time; end
    end

    class Change
      sig { returns(String) }
      def key; end

      sig { returns(T.nilable(T.any(String, Integer, T::Boolean, Permissions, Overwrite))) }
      def old; end

      sig { returns(T.nilable(T.any(String, Integer, T::Boolean, Permissions, Overwrite))) }
      def new; end

      sig do
        params(
          data: T.untyped,
          server: T.untyped,
          bot: T.untyped,
          logs: T.untyped
        ).returns(Change)
      end
      def initialize(data, server, bot, logs); end

      sig { returns(T.nilable(Channel)) }
      def old_widget_channel; end

      sig { returns(T.nilable(Channel)) }
      def new_widget_channel; end

      sig { returns(T.nilable(Channel)) }
      def old_afk_channel; end

      sig { returns(T.nilable(Channel)) }
      def new_afk_channel; end

      sig { returns(T.nilable(T.any(Member, User))) }
      def old_owner; end

      sig { returns(T.nilable(T.any(Member, User))) }
      def new_owner; end
    end

    class RoleChange
      sig { returns(Symbol) }
      def type; end

      sig { params(data: T.untyped, server: T.untyped).returns(RoleChange) }
      def initialize(data, server); end

      sig { returns(Role) }
      def role; end
    end
  end

  class ColourRGB
    sig { returns(Integer) }
    def red; end

    sig { returns(Integer) }
    def green; end

    sig { returns(Integer) }
    def blue; end

    sig { returns(Integer) }
    def combined; end

    sig { params(combined: T.any(Integer, String)).returns(ColourRGB) }
    def initialize(combined); end

    sig { returns(String) }
    def hex; end
  end

  class Await
    sig { returns(Symbol) }
    def key; end

    sig { returns(Class) }
    def type; end

    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def attributes; end

    sig do
      params(
        bot: T.untyped,
        key: T.untyped,
        type: T.untyped,
        attributes: T.untyped,
        block: T.untyped
      ).returns(Await)
    end
    def initialize(bot, key, type, attributes, block = nil); end

    sig { params(event: Discordrb::Events::Event).returns(T::Array[T.untyped]) }
    def match(event); end
  end

  module Cache
    sig { returns(T.untyped) }
    def init_cache; end

    sig { returns(T.untyped) }
    def voice_regions; end

    sig { params(id: Integer, server: Server).returns(Channel) }
    def channel(id, server = nil); end

    sig { params(id: Integer).returns(T.nilable(User)) }
    def user(id); end

    sig { params(id: Integer).returns(T.nilable(Server)) }
    def server(id); end

    sig { params(server_or_id: T.any(Server, Integer), user_id: Integer).returns(T.nilable(Member)) }
    def member(server_or_id, user_id); end

    sig { params(id: Integer).returns(Channel) }
    def pm_channel(id); end

    sig { params(data: T::Hash[T.untyped, T.untyped]).returns(User) }
    def ensure_user(data); end

    sig { params(data: T::Hash[T.untyped, T.untyped]).returns(Server) }
    def ensure_server(data); end

    sig { params(data: T::Hash[T.untyped, T.untyped], server: T.nilable(Server)).returns(Channel) }
    def ensure_channel(data, server = nil); end

    sig { params(id: Integer).returns(T.untyped) }
    def request_chunks(id); end

    sig { params(invite: T.any(String, Invite)).returns(String) }
    def resolve_invite_code(invite); end

    sig { params(invite: T.any(String, Invite)).returns(Invite) }
    def invite(invite); end

    sig { params(channel_name: String, server_name: String, type: T.untyped).returns(T::Array[Channel]) }
    def find_channel(channel_name, server_name = nil, type: nil); end

    sig { params(username: T.untyped, discrim: T.untyped).returns(T.untyped) }
    def find_user(username, discrim = nil); end
  end

  module Light
    class LightProfile
      include IDObject
      include UserAttributes

      sig { params(data: T.untyped, bot: T.untyped).returns(LightProfile) }
      def initialize(data, bot); end

      sig { returns(String) }
      def username; end

      sig { returns(String) }
      def discriminator; end

      sig { returns(T::Boolean) }
      def bot_account; end

      sig { returns(String) }
      def avatar_id; end

      sig { params(value: String).returns(String) }
      def avatar_id=(value); end

      sig { returns(String) }
      def mention; end

      sig { returns(String) }
      def distinct; end

      sig { params(format: T.nilable(String)).returns(String) }
      def avatar_url(format = nil); end

      sig { returns(Integer) }
      def id; end

      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(Time) }
      def creation_time; end
    end

    class UltraLightServer
      include IDObject
      include ServerAttributes

      sig { params(data: T.untyped, bot: T.untyped).returns(UltraLightServer) }
      def initialize(data, bot); end

      sig { returns(String) }
      def name; end

      sig { returns(String) }
      def icon_id; end

      sig { returns(String) }
      def icon_url; end

      sig { returns(Integer) }
      def id; end

      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(Time) }
      def creation_time; end
    end

    class LightServer < UltraLightServer
      sig { returns(T::Boolean) }
      def bot_is_owner; end

      sig { returns(Discordrb::Permissions) }
      def bot_permissions; end

      sig { params(data: T.untyped, bot: T.untyped).returns(LightServer) }
      def initialize(data, bot); end

      sig { returns(String) }
      def name; end

      sig { returns(String) }
      def icon_id; end

      sig { returns(String) }
      def icon_url; end

      sig { returns(Integer) }
      def id; end

      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(Time) }
      def creation_time; end
    end

    class LightBot
      sig { params(token: String).returns(LightBot) }
      def initialize(token); end

      sig { returns(LightProfile) }
      def profile; end

      sig { returns(T::Array[LightServer]) }
      def servers; end

      sig { params(code: String).returns(T.untyped) }
      def join(code); end

      sig { returns(T::Array[Connection]) }
      def connections; end
    end

    class Connection
      sig { returns(Symbol) }
      def type; end

      sig { returns(T::Boolean) }
      def revoked; end

      sig { returns(String) }
      def name; end

      sig { returns(String) }
      def id; end

      sig { returns(T::Array[T.untyped]) }
      def integrations; end

      sig { params(data: T.untyped, bot: T.untyped).returns(Connection) }
      def initialize(data, bot); end
    end

    class Integration
      include IDObject

      sig { returns(UltraLightServer) }
      def server; end

      sig { returns(Connection) }
      def server_connection; end

      sig { returns(Connection) }
      def integrated_connection; end

      sig { params(data: T.untyped, integrated: T.untyped, bot: T.untyped).returns(T.untyped) }
      def initialize(data, integrated, bot); end

      sig { returns(Integer) }
      def id; end

      sig { params(other: T.untyped).returns(T.untyped) }
      def ==(other); end

      sig { returns(Time) }
      def creation_time; end
    end
  end

  module Errors
    sig { params(code: T.untyped).returns(T.untyped) }
    def self.Code(code); end

    sig { params(code: Integer).returns(Class) }
    def self.error_class_for(code); end

    class InvalidAuthenticationError < RuntimeError
      sig { returns(T.untyped) }
      def message; end
    end

    class MessageTooLong < RuntimeError
    end

    class NoPermission < RuntimeError
    end

    class CloudflareError < RuntimeError
    end

    class CodeError < RuntimeError
      sig { returns(Integer) }
      def self.code; end

      sig { params(message: String).returns(CodeError) }
      def initialize(message); end

      sig { returns(Integer) }
      def code; end

      sig { returns(String) }
      def message; end
    end
  end

  class Logger
    sig { params(value: T.untyped).returns(T::Boolean) }
    def fancy=(value); end

    sig { params(value: T.untyped).returns(T.nilable(String)) }
    def token=(value); end

    sig { returns(T.any(T::Array[IO], T::Array[T.untyped])) }
    def streams; end

    sig { params(value: T.any(T::Array[IO], T::Array[T.untyped])).returns(T.any(T::Array[IO], T::Array[T.untyped])) }
    def streams=(value); end

    sig { params(fancy: T::Boolean, streams: T.any(T::Array[IO], T::Array[T.untyped])).returns(T.untyped) }
    def initialize(fancy = false, streams = [STDOUT]); end

    sig { params(value: T::Boolean).returns(T.untyped) }
    def debug=(value); end

    sig { params(value: Symbol).returns(T.untyped) }
    def mode=(value); end

    sig { params(e: Exception).returns(T.untyped) }
    def log_exception(e); end

    sig { params(message: T.untyped, mode: T.untyped).returns(T.untyped) }
    def write(message, mode); end

    sig do
      params(
        stream: T.untyped,
        message: T.untyped,
        mode: T.untyped,
        thread_name: T.untyped,
        timestamp: T.untyped
      ).returns(T.untyped)
    end
    def fancy_write(stream, message, mode, thread_name, timestamp); end

    sig do
      params(
        stream: T.untyped,
        message: T.untyped,
        mode: T.untyped,
        thread_name: T.untyped,
        timestamp: T.untyped
      ).returns(T.untyped)
    end
    def simple_write(stream, message, mode, thread_name, timestamp); end
  end

  module Opcodes
  end

  class Session
    sig { returns(T.untyped) }
    def session_id; end

    sig { returns(T.untyped) }
    def sequence; end

    sig { params(value: T.untyped).returns(T.untyped) }
    def sequence=(value); end

    sig { params(session_id: T.untyped).returns(Session) }
    def initialize(session_id); end

    sig { returns(T.untyped) }
    def suspend; end

    sig { returns(T::Boolean) }
    def suspended?; end

    sig { returns(T.untyped) }
    def resume; end

    sig { returns(T.untyped) }
    def invalidate; end

    sig { returns(T::Boolean) }
    def invalid?; end

    sig { returns(T::Boolean) }
    def should_resume?; end
  end

  class Gateway
    sig { returns(T::Boolean) }
    def check_heartbeat_acks; end

    sig { params(value: T::Boolean).returns(T::Boolean) }
    def check_heartbeat_acks=(value); end

    sig do
      params(
        bot: T.untyped,
        token: T.untyped,
        shard_key: T.untyped,
        compress_mode: T.untyped
      ).returns(Gateway)
    end
    def initialize(bot, token, shard_key = nil, compress_mode = :stream); end

    sig { returns(T.untyped) }
    def run_async; end

    sig { returns(T.untyped) }
    def sync; end

    sig { returns(T::Boolean) }
    def open?; end

    sig { params(no_sync: T.untyped).returns(T.untyped) }
    def stop(no_sync = false); end

    sig { returns(T.untyped) }
    def kill; end

    sig { returns(T.untyped) }
    def notify_ready; end

    sig { params(url: T.nilable(String)).returns(T.untyped) }
    def inject_reconnect(url = nil); end

    sig { params(seq: T.nilable(Integer)).returns(T.untyped) }
    def inject_resume(seq); end

    sig { params(e: Exception).returns(T.untyped) }
    def inject_error(e); end

    sig { returns(T.untyped) }
    def heartbeat; end

    sig { params(sequence: Integer).returns(T.untyped) }
    def send_heartbeat(sequence); end

    sig { returns(T.untyped) }
    def identify; end

    sig do
      params(
        token: String,
        properties: T::Hash[Symbol, String],
        compress: T::Boolean,
        large_threshold: Integer,
        shard_key: T.nilable([Integer, Integer])
      ).returns(T.untyped)
    end
    def send_identify(token, properties, compress, large_threshold, shard_key = nil); end

    sig do
      params(
        status: String,
        since: Integer,
        game: T.nilable(T::Hash[Symbol, Object]),
        afk: T::Boolean
      ).returns(T.untyped)
    end
    def send_status_update(status, since, game, afk); end

    sig do
      params(
        server_id: Integer,
        channel_id: T.nilable(Integer),
        self_mute: T::Boolean,
        self_deaf: T::Boolean
      ).returns(T.untyped)
    end
    def send_voice_state_update(server_id, channel_id, self_mute, self_deaf); end

    sig { returns(T.untyped) }
    def resume; end

    sig { params(attempt_resume: T::Boolean).returns(T.untyped) }
    def reconnect(attempt_resume = true); end

    sig { params(token: String, session_id: String, seq: Integer).returns(T.untyped) }
    def send_resume(token, session_id, seq); end

    sig { params(server_id: Integer, query: String, limit: Integer).returns(T.untyped) }
    def send_request_members(server_id, query, limit); end

    sig { params(op: Integer, packet: Object).returns(T.untyped) }
    def send_packet(op, packet); end

    sig { params(data: String, type: Symbol).returns(T.untyped) }
    def send_raw(data, type = :text); end

    sig { params(interval: T.untyped).returns(T.untyped) }
    def setup_heartbeats(interval); end

    sig { returns(T.untyped) }
    def connect_loop; end

    sig { returns(T.untyped) }
    def wait_for_reconnect; end

    sig { params(uri: T.untyped).returns(T.untyped) }
    def obtain_socket(uri); end

    sig { params(uri: T.untyped).returns(T::Boolean) }
    def secure_uri?(uri); end

    sig { params(uri: T.untyped).returns(T.untyped) }
    def socket_port(uri); end

    sig { returns(T.untyped) }
    def find_gateway; end

    sig { returns(T.untyped) }
    def process_gateway; end

    sig { returns(T.untyped) }
    def connect; end

    sig { returns(T.untyped) }
    def websocket_loop; end

    sig { params(recv_data: T.untyped).returns(T.untyped) }
    def handle_handshake_data(recv_data); end

    sig { returns(T.untyped) }
    def handle_open; end

    sig { params(e: T.untyped).returns(T.untyped) }
    def handle_error(e); end

    sig { params(msg: T.untyped).returns(T.untyped) }
    def handle_message(msg); end

    sig { params(packet: T.untyped).returns(T.untyped) }
    def handle_dispatch(packet); end

    sig { params(packet: T.untyped).returns(T.untyped) }
    def handle_heartbeat(packet); end

    sig { returns(T.untyped) }
    def handle_reconnect; end

    sig { returns(T.untyped) }
    def handle_invalidate_session; end

    sig { params(packet: T.untyped).returns(T.untyped) }
    def handle_hello(packet); end

    sig { params(packet: T.untyped).returns(T.untyped) }
    def handle_heartbeat_ack(packet); end

    sig { params(e: T.untyped).returns(T.untyped) }
    def handle_internal_close(e); end

    sig { params(e: T.untyped).returns(T.untyped) }
    def handle_close(e); end

    sig { params(data: T.untyped, type: T.untyped).returns(T.untyped) }
    def send(data, type = :text); end

    sig { params(no_sync: T.untyped).returns(T.untyped) }
    def close(no_sync = false); end
  end

  module Webhooks
    class Client
      sig { params(url: T.untyped, id: T.untyped, token: T.untyped).returns(Client) }
      def initialize(url: nil, id: nil, token: nil); end

      sig { params(builder: T.nilable(Builder), wait: T::Boolean).returns(T.untyped) }
      def execute(builder = nil, wait = false); end

      sig { params(builder: T.untyped, wait: T.untyped).returns(T.untyped) }
      def post_json(builder, wait); end

      sig { params(builder: T.untyped, wait: T.untyped).returns(T.untyped) }
      def post_multipart(builder, wait); end

      sig { params(id: T.untyped, token: T.untyped).returns(T.untyped) }
      def generate_url(id, token); end
    end

    class Embed
      sig do
        params(
          title: T.untyped,
          description: T.untyped,
          url: T.untyped,
          timestamp: T.untyped,
          colour: T.untyped,
          color: T.untyped,
          footer: T.untyped,
          image: T.untyped,
          thumbnail: T.untyped,
          video: T.untyped,
          provider: T.untyped,
          author: T.untyped,
          fields: T.untyped
        ).returns(T.untyped)
      end
      def initialize(title: nil, description: nil, url: nil, timestamp: nil, colour: nil, color: nil, footer: nil, image: nil, thumbnail: nil, video: nil, provider: nil, author: nil, fields: []); end

      sig { returns(T.nilable(String)) }
      def title; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def title=(value); end

      sig { returns(T.nilable(String)) }
      def description; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def description=(value); end

      sig { returns(T.nilable(String)) }
      def url; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def url=(value); end

      sig { returns(T.nilable(Time)) }
      def timestamp; end

      sig { params(value: T.nilable(Time)).returns(T.nilable(Time)) }
      def timestamp=(value); end

      sig { returns(T.nilable(Integer)) }
      def colour; end

      sig { params(value: T.nilable(T.any(Integer, String, T.untyped))).returns(T.untyped) }
      def colour=(value); end

      sig { returns(T.nilable(T.untyped)) }
      def footer; end

      sig { params(value: T.nilable(T.untyped)).returns(T.nilable(T.untyped)) }
      def footer=(value); end

      sig { returns(T.nilable(T.untyped)) }
      def image; end

      sig { params(value: T.nilable(T.untyped)).returns(T.nilable(T.untyped)) }
      def image=(value); end

      sig { returns(T.nilable(T.untyped)) }
      def thumbnail; end

      sig { params(value: T.nilable(T.untyped)).returns(T.nilable(T.untyped)) }
      def thumbnail=(value); end

      sig { returns(T.nilable(T.untyped)) }
      def author; end

      sig { params(value: T.nilable(T.untyped)).returns(T.nilable(T.untyped)) }
      def author=(value); end

      sig { params(field: T.untyped).returns(T.untyped) }
      def <<(field); end

      sig { params(name: T.untyped, value: T.untyped, inline: T.untyped).returns(T.untyped) }
      def add_field(name: nil, value: nil, inline: nil); end

      sig { returns(T::Array[T.untyped]) }
      def fields; end

      sig { params(value: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
      def fields=(value); end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_hash; end
    end

    class EmbedFooter
      sig { returns(T.nilable(String)) }
      def text; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def text=(value); end

      sig { returns(T.nilable(String)) }
      def icon_url; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def icon_url=(value); end

      sig { params(text: T.untyped, icon_url: T.untyped).returns(T.untyped) }
      def initialize(text: nil, icon_url: nil); end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_hash; end
    end

    class EmbedImage
      sig { returns(T.nilable(String)) }
      def url; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def url=(value); end

      sig { params(url: T.nilable(String)).returns(T.untyped) }
      def initialize(url: nil); end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_hash; end
    end

    class EmbedThumbnail
      sig { returns(T.nilable(String)) }
      def url; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def url=(value); end

      sig { params(url: T.nilable(String)).returns(T.untyped) }
      def initialize(url: nil); end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_hash; end
    end

    class EmbedAuthor
      sig { returns(T.nilable(String)) }
      def name; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def name=(value); end

      sig { returns(T.nilable(String)) }
      def url; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def url=(value); end

      sig { returns(T.nilable(String)) }
      def icon_url; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def icon_url=(value); end

      sig { params(name: T.untyped, url: T.untyped, icon_url: T.untyped).returns(T.untyped) }
      def initialize(name: nil, url: nil, icon_url: nil); end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_hash; end
    end

    class EmbedField
      sig { returns(T.nilable(String)) }
      def name; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def name=(value); end

      sig { returns(T.nilable(String)) }
      def value; end

      sig { params(value: T.nilable(String)).returns(T.nilable(String)) }
      def value=(value); end

      sig { returns(T::Boolean) }
      def inline; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def inline=(value); end

      sig { params(name: T.untyped, value: T.untyped, inline: T.untyped).returns(T.untyped) }
      def initialize(name: nil, value: nil, inline: false); end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_hash; end
    end

    class Builder
      sig do
        params(
          content: T.untyped,
          username: T.untyped,
          avatar_url: T.untyped,
          tts: T.untyped,
          file: T.untyped,
          embeds: T.untyped
        ).returns(Builder)
      end
      def initialize(content: '', username: nil, avatar_url: nil, tts: false, file: nil, embeds: []); end

      sig { returns(String) }
      def content; end

      sig { params(value: String).returns(String) }
      def content=(value); end

      sig { returns(String) }
      def username; end

      sig { params(value: String).returns(String) }
      def username=(value); end

      sig { returns(String) }
      def avatar_url; end

      sig { params(value: String).returns(String) }
      def avatar_url=(value); end

      sig { returns(T::Boolean) }
      def tts; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def tts=(value); end

      sig { params(file: File).returns(T.untyped) }
      def file=(file); end

      sig { params(embed: T.untyped).returns(T.untyped) }
      def <<(embed); end

      sig { params(embed: T.nilable(T.untyped)).returns(T.untyped) }
      def add_embed(embed = nil); end

      sig { returns(T.nilable(File)) }
      def file; end

      sig { returns(T::Array[T.untyped]) }
      def embeds; end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_json_hash; end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def to_multipart_hash; end
    end
  end

  module EventContainer
    include Events

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageEvent).void).returns(Discordrb::Events::MessageEventHandler) }
    def message(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReadyEvent).void).returns(Discordrb::Events::ReadyEventHandler) }
    def ready(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::DisconnectEvent).void).returns(Discordrb::Events::DisconnectEventHandler) }
    def disconnected(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::HeartbeatEvent).void).returns(Discordrb::Events::HeartbeatEventHandler) }
    def heartbeat(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::TypingEvent).void).returns(Discordrb::Events::TypingEventHandler) }
    def typing(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageEditEvent).void).returns(Discordrb::Events::MessageEditEventHandler) }
    def message_edit(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageDeleteEvent).void).returns(Discordrb::Events::MessageDeleteEventHandler) }
    def message_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionAddEvent).void).returns(Discordrb::Events::ReactionAddEventHandler) }
    def reaction_add(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionRemoveEvent).void).returns(Discordrb::Events::ReactionRemoveEventHandler) }
    def reaction_remove(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionRemoveAllEvent).void).returns(Discordrb::Events::ReactionRemoveAllEventHandler) }
    def reaction_remove_all(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PresenceEvent).void).returns(Discordrb::Events::PresenceEventHandler) }
    def presence(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PlayingEvent).void).returns(Discordrb::Events::PlayingEventHandler) }
    def playing(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MentionEvent).void).returns(Discordrb::Events::MentionEventHandler) }
    def mention(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelCreateEvent).void).returns(Discordrb::Events::ChannelCreateEventHandler) }
    def channel_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelUpdateEvent).void).returns(Discordrb::Events::ChannelUpdateEventHandler) }
    def channel_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelDeleteEvent).void).returns(Discordrb::Events::ChannelDeleteEventHandler) }
    def channel_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelRecipientAddEvent).void).returns(T.untyped) }
    def channel_recipient_add(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelRecipientRemoveEvent).void).returns(T.untyped) }
    def channel_recipient_remove(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::VoiceStateUpdateEvent).void).returns(Discordrb::Events::VoiceStateUpdateEventHandler) }
    def voice_state_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberAddEvent).void).returns(Discordrb::Events::ServerMemberAddEventHandler) }
    def member_join(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberUpdateEvent).void).returns(Discordrb::Events::ServerMemberUpdateEventHandler) }
    def member_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberDeleteEvent).void).returns(Discordrb::Events::ServerMemberDeleteEventHandler) }
    def member_leave(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UserBanEvent).void).returns(Discordrb::Events::UserBanEventHandler) }
    def user_ban(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UserUnbanEvent).void).returns(Discordrb::Events::UserUnbanEventHandler) }
    def user_unban(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerCreateEvent).void).returns(Discordrb::Events::ServerCreateEventHandler) }
    def server_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerUpdateEvent).void).returns(Discordrb::Events::ServerUpdateEventHandler) }
    def server_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerDeleteEvent).void).returns(Discordrb::Events::ServerDeleteEventHandler) }
    def server_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiChangeEvent).void).returns(Discordrb::Events::ServerEmojiChangeEventHandler) }
    def server_emoji(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiCreateEvent).void).returns(Discordrb::Events::ServerEmojiCreateEventHandler) }
    def server_emoji_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiDeleteEvent).void).returns(Discordrb::Events::ServerEmojiDeleteEventHandler) }
    def server_emoji_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiUpdateEvent).void).returns(Discordrb::Events::ServerEmojiUpdateEventHandler) }
    def server_emoji_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleCreateEvent).void).returns(Discordrb::Events::ServerRoleCreateEventHandler) }
    def server_role_create(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleDeleteEvent).void).returns(Discordrb::Events::ServerRoleDeleteEventHandler) }
    def server_role_delete(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleUpdateEvent).void).returns(Discordrb::Events::ServerRoleUpdateEventHandler) }
    def server_role_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::WebhookUpdateEvent).void).returns(Discordrb::Events::WebhookUpdateEventHandler) }
    def webhook_update(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::AwaitEvent).void).returns(Discordrb::Events::AwaitEventHandler) }
    def await(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PrivateMessageEvent).void).returns(Discordrb::Events::PrivateMessageEventHandler) }
    def pm(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::RawEvent).void).returns(Discordrb::Events::RawEventHandler) }
    def raw(attributes = {}, &block); end

    sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UnknownEvent).void).returns(Discordrb::Events::UnknownEventHandler) }
    def unknown(attributes = {}, &block); end

    sig { params(handler: Discordrb::Events::EventHandler).returns(T.untyped) }
    def remove_handler(handler); end

    sig { returns(T.untyped) }
    def clear!; end

    sig { params(handler: Discordrb::Events::EventHandler).returns(T.untyped) }
    def add_handler(handler); end

    sig { params(container: Module).returns(T.untyped) }
    def include_events(container); end

    sig { params(event_class: Class).returns(Class) }
    def self.handler_class(event_class); end

    sig { params(handler_class: Class).returns(T.nilable(Class)) }
    def self.event_class(handler_class); end

    sig { params(str: String).returns(Class) }
    def self.class_from_string(str); end

    sig { params(clazz: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
    def register_event(clazz, attributes, block); end
  end

  module Events
    sig { params(attributes: T.nilable(T.any(Object, T::Array[Object], T.untyped)), to_check: Object, block: T.proc.params(a: Object, e: Object).returns(T::Boolean)).returns(T::Boolean) }
    def self.matches_all(attributes, to_check, &block); end

    class RawEvent < Event
      sig { returns(Symbol) }
      def type; end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def data; end

      sig { params(type: T.untyped, data: T.untyped, bot: T.untyped).returns(RawEvent) }
      def initialize(type, data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class RawEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class UnknownEvent < RawEvent
      sig { returns(Symbol) }
      def type; end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def data; end

      sig { params(type: T.untyped, data: T.untyped, bot: T.untyped).returns(RawEvent) }
      def initialize(type, data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class UnknownEventHandler < RawEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class UserBanEvent < Event
      sig { returns(User) }
      def user; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(UserBanEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class UserBanEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class UserUnbanEvent < UserBanEvent
      sig { returns(User) }
      def user; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(UserBanEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class UserUnbanEventHandler < UserBanEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class AwaitEvent < Event
      sig { returns(Await) }
      def await; end

      sig { returns(Event) }
      def event; end

      sig { returns(Symbol) }
      def key; end

      sig { returns(Class) }
      def type; end

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def attributes; end

      sig { params(await: T.untyped, event: T.untyped, bot: T.untyped).returns(AwaitEvent) }
      def initialize(await, event, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class AwaitEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerRoleCreateEvent < Event
      sig { returns(Role) }
      def role; end

      sig { returns(Server) }
      def server; end

      sig { returns(String) }
      def name; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerRoleCreateEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerRoleCreateEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerRoleDeleteEvent < Event
      sig { returns(Integer) }
      def id; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerRoleDeleteEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerRoleDeleteEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerRoleUpdateEvent < ServerRoleCreateEvent
      sig { returns(Role) }
      def role; end

      sig { returns(Server) }
      def server; end

      sig { returns(String) }
      def name; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerRoleCreateEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerRoleUpdateEventHandler < ServerRoleCreateEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerEvent < Event
      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerCreateEvent < ServerEvent
      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerCreateEventHandler < ServerEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerUpdateEvent < ServerEvent
      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerUpdateEventHandler < ServerEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerDeleteEvent < ServerEvent
      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerDeleteEventHandler < ServerEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerEmojiChangeEvent < ServerEvent
      sig { returns(Server) }
      def server; end

      sig { returns(T::Array[Emoji]) }
      def emoji; end

      sig { params(server: T.untyped, data: T.untyped, bot: T.untyped).returns(ServerEmojiChangeEvent) }
      def initialize(server, data, bot); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def process_emoji(data); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerEmojiCDEvent < ServerEvent
      sig { returns(Server) }
      def server; end

      sig { returns(Emoji) }
      def emoji; end

      sig { params(server: T.untyped, emoji: T.untyped, bot: T.untyped).returns(ServerEmojiCDEvent) }
      def initialize(server, emoji, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerEmojiCreateEvent < ServerEmojiCDEvent
      sig { returns(Server) }
      def server; end

      sig { returns(Emoji) }
      def emoji; end

      sig { params(server: T.untyped, emoji: T.untyped, bot: T.untyped).returns(ServerEmojiCDEvent) }
      def initialize(server, emoji, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerEmojiDeleteEvent < ServerEmojiCDEvent
      sig { returns(Server) }
      def server; end

      sig { returns(Emoji) }
      def emoji; end

      sig { params(server: T.untyped, emoji: T.untyped, bot: T.untyped).returns(ServerEmojiCDEvent) }
      def initialize(server, emoji, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerEmojiUpdateEvent < ServerEvent
      sig { returns(Server) }
      def server; end

      sig { returns(T.nilable(Emoji)) }
      def old_emoji; end

      sig { returns(T.nilable(Emoji)) }
      def emoji; end

      sig do
        params(
          server: T.untyped,
          old_emoji: T.untyped,
          emoji: T.untyped,
          bot: T.untyped
        ).returns(ServerEmojiUpdateEvent)
      end
      def initialize(server, old_emoji, emoji, bot); end

      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_server(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerEmojiChangeEventHandler < ServerEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerEmojiCDEventHandler < ServerEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerEmojiCreateEventHandler < ServerEmojiCDEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerEmojiDeleteEventHandler < ServerEmojiCDEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerEmojiUpdateEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class TypingEvent < Event
      include Respondable

      sig { returns(Channel) }
      def channel; end

      sig { returns(T.any(User, Member, Recipient)) }
      def user; end

      sig { returns(Time) }
      def timestamp; end

      sig { params(data: T.untyped, bot: T.untyped).returns(TypingEvent) }
      def initialize(data, bot); end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class TypingEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class Negated
      sig { returns(T.untyped) }
      def object; end

      sig { params(object: T.untyped).returns(Negated) }
      def initialize(object); end
    end

    class Event
      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class EventHandler
      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(_: T.untyped).returns(T::Boolean) }
      def matches?(_); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class TrueEventHandler < EventHandler
      sig { params(_: T.untyped).returns(T::Boolean) }
      def matches?(_); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerMemberEvent < Event
      sig { returns(Member) }
      def user; end

      sig { returns(T::Array[Role]) }
      def roles; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerMemberEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_user(data, _); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_roles(data, _); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerMemberEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerMemberAddEvent < ServerMemberEvent
      sig { returns(Member) }
      def user; end

      sig { returns(T::Array[Role]) }
      def roles; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerMemberEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_user(data, _); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_roles(data, _); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerMemberAddEventHandler < ServerMemberEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerMemberUpdateEvent < ServerMemberEvent
      sig { returns(Member) }
      def user; end

      sig { returns(T::Array[Role]) }
      def roles; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerMemberEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_user(data, _); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_roles(data, _); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerMemberUpdateEventHandler < ServerMemberEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ServerMemberDeleteEvent < ServerMemberEvent
      sig { params(data: T.untyped, bot: T.untyped).returns(T.untyped) }
      def init_user(data, bot); end

      sig { returns(Member) }
      def user; end

      sig { returns(T::Array[Role]) }
      def roles; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ServerMemberEvent) }
      def initialize(data, bot); end

      sig { params(data: T.untyped, _: T.untyped).returns(T.untyped) }
      def init_roles(data, _); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ServerMemberDeleteEventHandler < ServerMemberEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    module Respondable
      sig { returns(Channel) }
      def channel; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end
    end

    class MessageEvent < Event
      include Respondable

      sig { returns(Message) }
      def message; end

      sig { returns(String) }
      def saved_message; end

      sig { returns(File) }
      def file; end

      sig { returns(T.any(Member, User)) }
      def author; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(String) }
      def content; end

      sig { returns(Time) }
      def timestamp; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(message: T.untyped, bot: T.untyped).returns(MessageEvent) }
      def initialize(message, bot); end

      sig { params(file: File, caption: T.untyped).returns(Discordrb::Message) }
      def send_file(file, caption: nil); end

      sig { params(file: File).returns(T.untyped) }
      def attach_file(file); end

      sig { returns(T.untyped) }
      def detach_file; end

      sig { returns(T::Boolean) }
      def from_bot?; end

      sig { returns(T.nilable(Discordrb::Voice::VoiceBot)) }
      def voice; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class MessageEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class MentionEvent < MessageEvent
      sig { returns(Message) }
      def message; end

      sig { returns(String) }
      def saved_message; end

      sig { returns(File) }
      def file; end

      sig { returns(T.any(Member, User)) }
      def author; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(String) }
      def content; end

      sig { returns(Time) }
      def timestamp; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(message: T.untyped, bot: T.untyped).returns(MessageEvent) }
      def initialize(message, bot); end

      sig { params(file: File, caption: T.untyped).returns(Discordrb::Message) }
      def send_file(file, caption: nil); end

      sig { params(file: File).returns(T.untyped) }
      def attach_file(file); end

      sig { returns(T.untyped) }
      def detach_file; end

      sig { returns(T::Boolean) }
      def from_bot?; end

      sig { returns(T.nilable(Discordrb::Voice::VoiceBot)) }
      def voice; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class MentionEventHandler < MessageEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class PrivateMessageEvent < MessageEvent
      sig { returns(Message) }
      def message; end

      sig { returns(String) }
      def saved_message; end

      sig { returns(File) }
      def file; end

      sig { returns(T.any(Member, User)) }
      def author; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(String) }
      def content; end

      sig { returns(Time) }
      def timestamp; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(message: T.untyped, bot: T.untyped).returns(MessageEvent) }
      def initialize(message, bot); end

      sig { params(file: File, caption: T.untyped).returns(Discordrb::Message) }
      def send_file(file, caption: nil); end

      sig { params(file: File).returns(T.untyped) }
      def attach_file(file); end

      sig { returns(T.untyped) }
      def detach_file; end

      sig { returns(T::Boolean) }
      def from_bot?; end

      sig { returns(T.nilable(Discordrb::Voice::VoiceBot)) }
      def voice; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class PrivateMessageEventHandler < MessageEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class MessageIDEvent < Event
      include Respondable

      sig { returns(Integer) }
      def id; end

      sig { params(data: T.untyped, bot: T.untyped).returns(MessageIDEvent) }
      def initialize(data, bot); end

      sig { returns(Channel) }
      def channel; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class MessageIDEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class MessageEditEvent < MessageEvent
      sig { returns(Message) }
      def message; end

      sig { returns(String) }
      def saved_message; end

      sig { returns(File) }
      def file; end

      sig { returns(T.any(Member, User)) }
      def author; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(String) }
      def content; end

      sig { returns(Time) }
      def timestamp; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(message: T.untyped, bot: T.untyped).returns(MessageEvent) }
      def initialize(message, bot); end

      sig { params(file: File, caption: T.untyped).returns(Discordrb::Message) }
      def send_file(file, caption: nil); end

      sig { params(file: File).returns(T.untyped) }
      def attach_file(file); end

      sig { returns(T.untyped) }
      def detach_file; end

      sig { returns(T::Boolean) }
      def from_bot?; end

      sig { returns(T.nilable(Discordrb::Voice::VoiceBot)) }
      def voice; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class MessageEditEventHandler < MessageEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class MessageDeleteEvent < MessageIDEvent
      sig { returns(Integer) }
      def id; end

      sig { params(data: T.untyped, bot: T.untyped).returns(MessageIDEvent) }
      def initialize(data, bot); end

      sig { returns(Channel) }
      def channel; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class MessageDeleteEventHandler < MessageIDEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ChannelCreateEvent < Event
      sig { returns(Channel) }
      def channel; end

      sig { returns(Integer) }
      def type; end

      sig { returns(String) }
      def topic; end

      sig { returns(Integer) }
      def position; end

      sig { returns(String) }
      def name; end

      sig { returns(Integer) }
      def id; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ChannelCreateEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ChannelCreateEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ChannelDeleteEvent < Event
      sig { returns(Integer) }
      def type; end

      sig { returns(String) }
      def topic; end

      sig { returns(Integer) }
      def position; end

      sig { returns(String) }
      def name; end

      sig { returns(Integer) }
      def id; end

      sig { returns(Server) }
      def server; end

      sig { returns(T.nilable(Integer)) }
      def owner_id; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ChannelDeleteEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ChannelDeleteEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ChannelRecipientEvent < Event
      sig { returns(Channel) }
      def channel; end

      sig { returns(Recipient) }
      def recipient; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ChannelRecipientEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ChannelRecipientEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ChannelRecipientAddEvent < ChannelRecipientEvent
      sig { returns(Channel) }
      def channel; end

      sig { returns(Recipient) }
      def recipient; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ChannelRecipientEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ChannelRecipientAddEventHandler < ChannelRecipientEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ChannelRecipientRemoveEvent < ChannelRecipientEvent
      sig { returns(Channel) }
      def channel; end

      sig { returns(Recipient) }
      def recipient; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ChannelRecipientEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ChannelRecipientRemoveEventHandler < ChannelRecipientEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ChannelUpdateEvent < ChannelCreateEvent
      sig { returns(Channel) }
      def channel; end

      sig { returns(Integer) }
      def type; end

      sig { returns(String) }
      def topic; end

      sig { returns(Integer) }
      def position; end

      sig { returns(String) }
      def name; end

      sig { returns(Integer) }
      def id; end

      sig { returns(Server) }
      def server; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ChannelCreateEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ChannelUpdateEventHandler < ChannelCreateEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class LifetimeEvent < Event
      sig { params(bot: T.untyped).returns(LifetimeEvent) }
      def initialize(bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ReadyEvent < LifetimeEvent
      sig { params(bot: T.untyped).returns(LifetimeEvent) }
      def initialize(bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ReadyEventHandler < TrueEventHandler
      sig { params(_: T.untyped).returns(T::Boolean) }
      def matches?(_); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class DisconnectEvent < LifetimeEvent
      sig { params(bot: T.untyped).returns(LifetimeEvent) }
      def initialize(bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class DisconnectEventHandler < TrueEventHandler
      sig { params(_: T.untyped).returns(T::Boolean) }
      def matches?(_); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class HeartbeatEvent < LifetimeEvent
      sig { params(bot: T.untyped).returns(LifetimeEvent) }
      def initialize(bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class HeartbeatEventHandler < TrueEventHandler
      sig { params(_: T.untyped).returns(T::Boolean) }
      def matches?(_); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class PresenceEvent < Event
      sig { returns(Server) }
      def server; end

      sig { returns(User) }
      def user; end

      sig { returns(Symbol) }
      def status; end

      sig { params(data: T.untyped, bot: T.untyped).returns(PresenceEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class PresenceEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class PlayingEvent < Event
      sig { returns(Server) }
      def server; end

      sig { returns(User) }
      def user; end

      sig { returns(String) }
      def game; end

      sig { returns(String) }
      def url; end

      sig { returns(String) }
      def details; end

      sig { returns(Integer) }
      def type; end

      sig { params(data: T.untyped, bot: T.untyped).returns(PlayingEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class PlayingEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class WebhookUpdateEvent < Event
      sig { returns(Server) }
      def server; end

      sig { returns(Channel) }
      def channel; end

      sig { params(data: T.untyped, bot: T.untyped).returns(WebhookUpdateEvent) }
      def initialize(data, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class WebhookUpdateEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ReactionEvent < Event
      include Respondable

      sig { returns(Emoji) }
      def emoji; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ReactionEvent) }
      def initialize(data, bot); end

      sig { returns(T.any(User, Member)) }
      def user; end

      sig { returns(Message) }
      def message; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ReactionEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ReactionAddEvent < ReactionEvent
      sig { returns(Emoji) }
      def emoji; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ReactionEvent) }
      def initialize(data, bot); end

      sig { returns(T.any(User, Member)) }
      def user; end

      sig { returns(Message) }
      def message; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ReactionAddEventHandler < ReactionEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ReactionRemoveEvent < ReactionEvent
      sig { returns(Emoji) }
      def emoji; end

      sig { params(data: T.untyped, bot: T.untyped).returns(ReactionEvent) }
      def initialize(data, bot); end

      sig { returns(T.any(User, Member)) }
      def user; end

      sig { returns(Message) }
      def message; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ReactionRemoveEventHandler < ReactionEventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class ReactionRemoveAllEvent < Event
      include Respondable

      sig { params(data: T.untyped, bot: T.untyped).returns(ReactionRemoveAllEvent) }
      def initialize(data, bot); end

      sig { returns(Channel) }
      def channel; end

      sig { returns(Message) }
      def message; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class ReactionRemoveAllEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end

    class VoiceStateUpdateEvent < Event
      sig { returns(T.untyped) }
      def user; end

      sig { returns(T.untyped) }
      def token; end

      sig { returns(T.untyped) }
      def suppress; end

      sig { returns(T.untyped) }
      def session_id; end

      sig { returns(T.untyped) }
      def self_mute; end

      sig { returns(T.untyped) }
      def self_deaf; end

      sig { returns(T.untyped) }
      def mute; end

      sig { returns(T.untyped) }
      def deaf; end

      sig { returns(T.untyped) }
      def server; end

      sig { returns(T.untyped) }
      def channel; end

      sig { returns(T.nilable(Channel)) }
      def old_channel; end

      sig { params(data: T.untyped, old_channel_id: T.untyped, bot: T.untyped).returns(VoiceStateUpdateEvent) }
      def initialize(data, old_channel_id, bot); end

      sig { returns(Bot) }
      def bot; end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class VoiceStateUpdateEventHandler < EventHandler
      sig { params(event: T.untyped).returns(T::Boolean) }
      def matches?(event); end

      sig { params(attributes: T.untyped, block: T.untyped).returns(EventHandler) }
      def initialize(attributes, block); end

      sig { params(event: Object).returns(T.untyped) }
      def match(event); end

      sig { params(event: Object).returns(T.untyped) }
      def call(event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def after_call(event); end

      sig { params(attributes: T.untyped, to_check: T.untyped, block: T.untyped).returns(T.untyped) }
      def matches_all(attributes, to_check, &block); end
    end
  end

  class Permissions
    sig { returns(T.untyped) }
    def bits; end

    sig { params(bits: Integer).returns(T.untyped) }
    def bits=(bits); end

    sig { returns(T.untyped) }
    def init_vars; end

    sig { params(list: T::Array[Symbol]).returns(Integer) }
    def self.bits(list); end

    sig { params(bits: T.any(Integer, T::Array[Symbol]), writer: Discordrb::Role::RoleWriter).returns(Permissions) }
    def initialize(bits = 0, writer = nil); end

    sig { params(other: T.untyped).returns(T.untyped) }
    def ==(other); end
  end

  module Voice
    class Encoder
      sig { returns(T::Boolean) }
      def use_avconv; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def use_avconv=(value); end

      sig { returns(Integer) }
      def filter_volume; end

      sig { params(value: Integer).returns(Integer) }
      def filter_volume=(value); end

      sig { returns(Encoder) }
      def initialize; end

      sig { params(value: Integer).returns(T.untyped) }
      def bitrate=(value); end

      sig { params(buffer: String).returns(String) }
      def encode(buffer); end

      sig { params(buf: String, mult: Float).returns(String) }
      def adjust_volume(buf, mult); end

      sig { params(file: String, options: String).returns(IO) }
      def encode_file(file, options = ''); end

      sig { params(io: IO, options: String).returns(IO) }
      def encode_io(io, options = ''); end

      sig { returns(T.untyped) }
      def ffmpeg_command; end

      sig { returns(T.untyped) }
      def filter_volume_argument; end
    end

    class VoiceUDP
      sig { returns(T::Boolean) }
      def encrypted; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def encrypted=(value); end

      sig { params(value: T.untyped).returns(T.untyped) }
      def secret_key=(value); end

      sig { returns(VoiceUDP) }
      def initialize; end

      sig { params(endpoint: String, port: Integer, ssrc: Integer).returns(T.untyped) }
      def connect(endpoint, port, ssrc); end

      sig { returns([String, Integer]) }
      def receive_discovery_reply; end

      sig { params(buf: String, sequence: Integer, time: Integer).returns(T.untyped) }
      def send_audio(buf, sequence, time); end

      sig { returns(T.untyped) }
      def send_discovery; end

      sig { params(header: String, buf: String).returns(String) }
      def encrypt_audio(header, buf); end

      sig { params(packet: T.untyped).returns(T.untyped) }
      def send_packet(packet); end
    end

    class VoiceWS
      sig { returns(VoiceUDP) }
      def udp; end

      sig do
        params(
          channel: Channel,
          bot: Bot,
          token: String,
          session: String,
          endpoint: String
        ).returns(VoiceWS)
      end
      def initialize(channel, bot, token, session, endpoint); end

      sig do
        params(
          server_id: Integer,
          bot_user_id: Integer,
          session_id: String,
          token: String
        ).returns(T.untyped)
      end
      def send_init(server_id, bot_user_id, session_id, token); end

      sig { params(ip: String, port: Integer, mode: Object).returns(T.untyped) }
      def send_udp_connection(ip, port, mode); end

      sig { returns(T.untyped) }
      def send_heartbeat; end

      sig { params(value: T::Boolean).returns(T.untyped) }
      def send_speaking(value); end

      sig { returns(T.untyped) }
      def websocket_open; end

      sig { params(msg: T.untyped).returns(T.untyped) }
      def websocket_message(msg); end

      sig { returns(T.untyped) }
      def connect; end

      sig { returns(T.untyped) }
      def destroy; end

      sig { returns(String) }
      def mode; end

      sig { returns(T.untyped) }
      def heartbeat_loop; end

      sig { returns(T.untyped) }
      def init_ws; end
    end

    class VoiceBot
      sig { returns(Channel) }
      def channel; end

      sig { returns(T.nilable(Integer)) }
      def stream_time; end

      sig { returns(Encoder) }
      def encoder; end

      sig { returns(Integer) }
      def adjust_interval; end

      sig { params(value: Integer).returns(Integer) }
      def adjust_interval=(value); end

      sig { returns(Integer) }
      def adjust_offset; end

      sig { params(value: Integer).returns(Integer) }
      def adjust_offset=(value); end

      sig { returns(T::Boolean) }
      def adjust_average; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def adjust_average=(value); end

      sig { returns(T::Boolean) }
      def adjust_debug; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def adjust_debug=(value); end

      sig { returns(Float) }
      def length_override; end

      sig { params(value: Float).returns(Float) }
      def length_override=(value); end

      sig { returns(Float) }
      def volume; end

      sig { params(value: Float).returns(Float) }
      def volume=(value); end

      sig do
        params(
          channel: T.untyped,
          bot: T.untyped,
          token: T.untyped,
          session: T.untyped,
          endpoint: T.untyped,
          encrypted: T.untyped
        ).returns(VoiceBot)
      end
      def initialize(channel, bot, token, session, endpoint, encrypted); end

      sig { returns(T::Boolean) }
      def encrypted?; end

      sig { params(value: Integer).returns(T.untyped) }
      def filter_volume=(value); end

      sig { returns(Integer) }
      def filter_volume; end

      sig { returns(T.untyped) }
      def pause; end

      sig { returns(T::Boolean) }
      def playing?; end

      sig { returns(T.untyped) }
      def continue; end

      sig { params(secs: Float).returns(T.untyped) }
      def skip(secs); end

      sig { params(value: T::Boolean).returns(T.untyped) }
      def speaking=(value); end

      sig { params(wait_for_confirmation: T::Boolean).returns(T.untyped) }
      def stop_playing(wait_for_confirmation = false); end

      sig { returns(T.untyped) }
      def destroy; end

      sig { params(encoded_io: IO).returns(T.untyped) }
      def play(encoded_io); end

      sig { params(file: T.untyped, options: T.untyped).returns(T.untyped) }
      def play_file(file, options = ''); end

      sig { params(io: T.untyped, options: T.untyped).returns(T.untyped) }
      def play_io(io, options = ''); end

      sig { params(file: T.untyped).returns(T.untyped) }
      def play_dca(file); end

      sig { returns(T.untyped) }
      def play_internal; end

      sig { returns(T.untyped) }
      def increment_packet_headers; end
    end
  end

  module Commands
    class CommandEvent < Discordrb::Events::MessageEvent
      sig { returns(T.untyped) }
      def bot; end

      sig { returns(T.untyped) }
      def command; end

      sig { params(value: T.untyped).returns(T.untyped) }
      def command=(value); end

      sig { returns(Message) }
      def message; end

      sig { returns(String) }
      def saved_message; end

      sig { returns(File) }
      def file; end

      sig { returns(T.any(Member, User)) }
      def author; end

      sig { returns(Channel) }
      def channel; end

      sig { returns(String) }
      def content; end

      sig { returns(Time) }
      def timestamp; end

      sig { returns(T.nilable(Server)) }
      def server; end

      sig { params(message: T.untyped, bot: T.untyped).returns(Discordrb::Events::MessageEvent) }
      def initialize(message, bot); end

      sig { params(file: File, caption: T.untyped).returns(Discordrb::Message) }
      def send_file(file, caption: nil); end

      sig { params(file: File).returns(T.untyped) }
      def attach_file(file); end

      sig { returns(T.untyped) }
      def detach_file; end

      sig { returns(T::Boolean) }
      def from_bot?; end

      sig { returns(T.nilable(Discordrb::Voice::VoiceBot)) }
      def voice; end

      sig { params(content: String, tts: T::Boolean, embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))).returns(Discordrb::Message) }
      def send_message(content, tts = false, embed = nil); end

      sig { params(message: String, embed: T.nilable(Discordrb::Webhooks::Embed), block: T.proc.params(embed: Discordrb::Webhooks::Embed).void).returns(Message) }
      def send_embed(message = '', embed = nil, &block); end

      sig { params(content: String, timeout: Float).returns(T.untyped) }
      def send_temporary_message(content, timeout); end

      sig { params(message: String).returns(T.untyped) }
      def <<(message); end

      sig { returns(T.untyped) }
      def drain; end

      sig { params(result: String).returns(String) }
      def drain_into(result); end

      sig { params(methods: T::Array[Symbol], hash: T::Hash[Symbol, Symbol]).returns(T.untyped) }
      def self.delegate(*methods, hash); end
    end

    class Command
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def attributes; end

      sig { returns(Symbol) }
      def name; end

      sig { params(name: T.untyped, attributes: T.untyped, block: T.untyped).returns(Command) }
      def initialize(name, attributes = {}, &block); end

      sig do
        params(
          event: CommandEvent,
          arguments: T::Array[String],
          chained: T::Boolean,
          check_permissions: T::Boolean
        ).returns(String)
      end
      def call(event, arguments, chained = false, check_permissions = true); end
    end

    class CommandAlias
      sig { returns(Symbol) }
      def name; end

      sig { returns(Command) }
      def aliased_command; end

      sig { params(name: T.untyped, aliased_command: T.untyped).returns(CommandAlias) }
      def initialize(name, aliased_command); end
    end

    class CommandChain
      sig { params(chain: String, bot: CommandBot, subchain: T::Boolean).returns(CommandChain) }
      def initialize(chain, bot, subchain = false); end

      sig { params(event: CommandEvent).returns(String) }
      def execute_bare(event); end

      sig { params(event: CommandEvent).returns(String) }
      def execute(event); end

      sig { params(chain: T.untyped).returns(T.untyped) }
      def divide_chain(chain); end
    end

    module CommandContainer
      include RateLimiter

      sig { returns(T::Hash[Symbol, Command]) }
      def commands; end

      sig { params(name: T.any(Symbol, T::Array[Symbol]), attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: CommandEvent).void).returns(Command) }
      def command(name, attributes = {}, &block); end

      sig { params(name: Symbol).returns(T.untyped) }
      def remove_command(name); end

      sig { params(container: Module).returns(T.untyped) }
      def include_commands(container); end

      sig { params(container: Module).returns(T.untyped) }
      def include!(container); end

      sig { params(key: Symbol, attributes: T::Hash[T.untyped, T.untyped]).returns(Bucket) }
      def bucket(key, attributes); end

      sig { params(key: Symbol, thing: T.any(T.untyped, Integer, Symbol), increment: T.untyped).returns(T.any(Integer, T::Boolean)) }
      def rate_limited?(key, thing, increment: 1); end

      sig { returns(T.untyped) }
      def clean; end

      sig { params(limiter: Module).returns(T.untyped) }
      def include_buckets(limiter); end
    end

    class CommandBot < Bot
      include CommandContainer

      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def attributes; end

      sig { returns(T.any(String, T::Array[String], T.untyped)) }
      def prefix; end

      sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(CommandBot) }
      def initialize(attributes = {}); end

      sig { params(name: Symbol).returns(T::Array[CommandAlias]) }
      def command_aliases(name); end

      sig do
        params(
          name: Symbol,
          event: CommandEvent,
          arguments: T::Array[String],
          chained: T::Boolean,
          check_permissions: T::Boolean
        ).returns(T.nilable(String))
      end
      def execute_command(name, event, arguments, chained = false, check_permissions = true); end

      sig { params(args: T.untyped, types: T.untyped, server: T.untyped).returns(T.untyped) }
      def arg_check(args, types = nil, server = nil); end

      sig { params(chain: String, event: CommandEvent).returns(T.nilable(String)) }
      def simple_execute(chain, event); end

      sig { params(id: Integer, level: Integer).returns(T.untyped) }
      def set_user_permission(id, level); end

      sig { params(id: Integer, level: Integer).returns(T.untyped) }
      def set_role_permission(id, level); end

      sig { params(user: User, level: Integer, server: Server).returns(T::Boolean) }
      def permission?(user, level, server); end

      sig { params(channels: T.untyped).returns(T.untyped) }
      def channels=(channels); end

      sig { params(channels: T::Array[T.any(String, Integer, Channel)]).returns(T.untyped) }
      def update_channels(channels = []); end

      sig { params(channel: T.any(String, Integer, Channel)).returns(T.untyped) }
      def add_channel(channel); end

      sig { params(channel: T.any(String, Integer, Channel)).returns(T.untyped) }
      def remove_channel(channel); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def create_message(data); end

      sig { params(message: T.untyped).returns(T::Boolean) }
      def trigger?(message); end

      sig { params(message: T.untyped, prefix: T.untyped).returns(T.untyped) }
      def standard_prefix_trigger(message, prefix); end

      sig { params(member: T.untyped, required: T.untyped, channel: T.untyped).returns(T::Boolean) }
      def required_permissions?(member, required, channel = nil); end

      sig { params(member: T.untyped, required: T.untyped).returns(T::Boolean) }
      def required_roles?(member, required); end

      sig { params(member: T.untyped, required: T.untyped).returns(T::Boolean) }
      def allowed_roles?(member, required); end

      sig { params(member: T.untyped, required: T.untyped, all_roles: T.untyped).returns(T.untyped) }
      def check_multiple_roles(member, required, all_roles = true); end

      sig { params(channel: T.untyped, channels: T.untyped).returns(T::Boolean) }
      def channels?(channel, channels); end

      sig { params(chain: T.untyped, event: T.untyped).returns(T.untyped) }
      def execute_chain(chain, event); end

      sig { params(object: T.untyped).returns(T.untyped) }
      def stringify(object); end

      sig { returns(T::Hash[Symbol, Command]) }
      def commands; end

      sig { params(name: T.any(Symbol, T::Array[Symbol]), attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: CommandEvent).void).returns(Command) }
      def command(name, attributes = {}, &block); end

      sig { params(name: Symbol).returns(T.untyped) }
      def remove_command(name); end

      sig { params(container: Module).returns(T.untyped) }
      def include_commands(container); end

      sig { params(container: Module).returns(T.untyped) }
      def include!(container); end

      sig { params(key: Symbol, attributes: T::Hash[T.untyped, T.untyped]).returns(Bucket) }
      def bucket(key, attributes); end

      sig { params(key: Symbol, thing: T.any(T.untyped, Integer, Symbol), increment: T.untyped).returns(T.any(Integer, T::Boolean)) }
      def rate_limited?(key, thing, increment: 1); end

      sig { returns(T.untyped) }
      def clean; end

      sig { params(limiter: Module).returns(T.untyped) }
      def include_buckets(limiter); end

      sig { returns(T::Array[Thread]) }
      def event_threads; end

      sig { returns(T::Boolean) }
      def should_parse_self; end

      sig { params(value: T::Boolean).returns(T::Boolean) }
      def should_parse_self=(value); end

      sig { returns(String) }
      def name; end

      sig { params(value: String).returns(String) }
      def name=(value); end

      sig { returns([Integer, Integer]) }
      def shard_key; end

      sig { returns(T::Hash[Symbol, Await]) }
      def awaits; end

      sig { returns(Gateway) }
      def gateway; end

      sig { returns(T::Hash[Integer, User]) }
      def users; end

      sig { returns(T::Hash[Integer, Server]) }
      def servers; end

      sig { params(id: T.untyped).returns(T.untyped) }
      def emoji(id = nil); end

      sig { params(name: String).returns(T.nilable(T.untyped)) }
      def find_emoji(name); end

      sig { returns(Profile) }
      def profile; end

      sig { returns(T.nilable(Application)) }
      def bot_application; end

      sig { returns(String) }
      def token; end

      sig { returns(String) }
      def raw_token; end

      sig { params(background: T::Boolean).returns(T.untyped) }
      def run(background = false); end

      sig { returns(T.untyped) }
      def join; end

      sig { params(no_sync: T::Boolean).returns(T.untyped) }
      def stop(no_sync = false); end

      sig { returns(T::Boolean) }
      def connected?; end

      sig { params(invite: T.any(String, Invite)).returns(T.untyped) }
      def accept_invite(invite); end

      sig { params(server: T.untyped, permission_bits: T.untyped).returns(String) }
      def invite_url(server: nil, permission_bits: nil); end

      sig { returns(T::Hash[Integer, Discordrb::Voice::VoiceBot]) }
      def voices; end

      sig { params(thing: T.any(Channel, Server, Integer)).returns(T.nilable(Voice::VoiceBot)) }
      def voice(thing); end

      sig { params(chan: T.any(Channel, Integer, T.untyped), encrypted: T::Boolean).returns(Voice::VoiceBot) }
      def voice_connect(chan, encrypted = true); end

      sig { params(server: T.any(Server, Integer, T.untyped), destroy_vws: T::Boolean).returns(T.untyped) }
      def voice_destroy(server, destroy_vws = true); end

      sig { params(code: T.any(String, Invite)).returns(T.untyped) }
      def delete_invite(code); end

      sig do
        params(
          channel: T.any(Channel, Integer, T.untyped),
          content: String,
          tts: T::Boolean,
          embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))
        ).returns(Message)
      end
      def send_message(channel, content, tts = false, embed = nil); end

      sig do
        params(
          channel: T.any(Channel, Integer, T.untyped),
          content: String,
          timeout: Float,
          tts: T::Boolean,
          embed: T.nilable(T.any(T::Hash[T.untyped, T.untyped], Discordrb::Webhooks::Embed))
        ).returns(T.untyped)
      end
      def send_temporary_message(channel, content, timeout, tts = false, embed = nil); end

      sig do
        params(
          channel: T.any(Channel, Integer, T.untyped),
          file: File,
          caption: T.untyped,
          tts: T.untyped
        ).returns(T.untyped)
      end
      def send_file(channel, file, caption: nil, tts: false); end

      sig { params(name: String, region: Symbol).returns(Server) }
      def create_server(name, region = :'eu-central'); end

      sig { params(name: String, redirect_uris: T::Array[String]).returns([String, String]) }
      def create_oauth_application(name, redirect_uris); end

      sig do
        params(
          name: String,
          redirect_uris: T::Array[String],
          description: String,
          icon: T.nilable(String)
        ).returns(T.untyped)
      end
      def update_oauth_application(name, redirect_uris, description = '', icon = nil); end

      sig { params(mention: String, server: T.nilable(Server)).returns(T.any(User, Channel, Role, Emoji)) }
      def parse_mention(mention, server = nil); end

      sig do
        params(
          status: String,
          activity: T.nilable(String),
          url: T.nilable(String),
          since: Integer,
          afk: T::Boolean,
          activity_type: Integer
        ).returns(T.untyped)
      end
      def update_status(status, activity, url, since = 0, afk = false, activity_type = 0); end

      sig { params(name: String).returns(String) }
      def game=(name); end

      sig { params(name: String).returns(String) }
      def listening=(name); end

      sig { params(name: String).returns(String) }
      def watching=(name); end

      sig { params(name: String, url: String).returns(String) }
      def stream(name, url); end

      sig { returns(T.untyped) }
      def online; end

      sig { returns(T.untyped) }
      def idle; end

      sig { returns(T.untyped) }
      def dnd; end

      sig { returns(T.untyped) }
      def invisible; end

      sig { params(new_debug: T.any()).returns(T.untyped) }
      def debug=(new_debug); end

      sig { params(new_mode: T.untyped).returns(T.untyped) }
      def mode=(new_mode); end

      sig { returns(T.untyped) }
      def suppress_ready_debug; end

      sig do
        params(
          key: Symbol,
          type: Class,
          attributes: T::Hash[T.untyped, T.untyped],
          block: T.proc.params(event: Discordrb::Events::Event).void
        ).returns(Await)
      end
      def add_await(key, type, attributes = {}, &block); end

      sig { params(type: Class, attributes: T::Hash[T.untyped, T.untyped]).returns(T.nilable(Discordrb::Events::Event)) }
      def add_await!(type, attributes = {}); end

      sig { params(user: T.any(User, Integer, T.untyped)).returns(T.untyped) }
      def ignore_user(user); end

      sig { params(user: T.any(User, Integer, T.untyped)).returns(T.untyped) }
      def unignore_user(user); end

      sig { params(user: T.any(User, Integer, T.untyped)).returns(T::Boolean) }
      def ignored?(user); end

      sig { params(message: T.untyped).returns(T.untyped) }
      def debug(message); end

      sig { params(e: T.untyped).returns(T.untyped) }
      def log_exception(e); end

      sig { params(type: T.untyped, data: T.untyped).returns(T.untyped) }
      def dispatch(type, data); end

      sig { returns(T.untyped) }
      def raise_heartbeat_event; end

      sig { returns(T.untyped) }
      def prune_empty_groups; end

      sig { returns(T.untyped) }
      def gateway_check; end

      sig { returns(T.untyped) }
      def unavailable_servers_check; end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_presence(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_voice_state(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_voice_server(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def create_channel(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_channel(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def delete_channel(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def add_recipient(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def remove_recipient(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def add_guild_member(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_guild_member(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def delete_guild_member(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def create_guild(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_guild(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def delete_guild(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_guild_role(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def create_guild_role(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def delete_guild_role(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_guild_emoji(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def start_typing(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def update_message(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def delete_message(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def add_message_reaction(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def remove_message_reaction(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def remove_all_message_reactions(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def add_user_ban(data); end

      sig { params(data: T.untyped).returns(T.untyped) }
      def remove_user_ban(data); end

      sig { params(type: T.untyped, token: T.untyped).returns(T.untyped) }
      def process_token(type, token); end

      sig { params(type: T.untyped, data: T.untyped).returns(T.untyped) }
      def handle_dispatch(type, data); end

      sig { returns(T.untyped) }
      def notify_ready; end

      sig { params(event: T.untyped).returns(T.untyped) }
      def raise_event(event); end

      sig { params(handler: T.untyped, event: T.untyped).returns(T.untyped) }
      def call_event(handler, event); end

      sig { params(event: T.untyped).returns(T.untyped) }
      def handle_awaits(event); end

      sig { returns(T.untyped) }
      def init_cache; end

      sig { returns(T.untyped) }
      def voice_regions; end

      sig { params(id: Integer, server: Server).returns(Channel) }
      def channel(id, server = nil); end

      sig { params(id: Integer).returns(T.nilable(User)) }
      def user(id); end

      sig { params(id: Integer).returns(T.nilable(Server)) }
      def server(id); end

      sig { params(server_or_id: T.any(Server, Integer), user_id: Integer).returns(T.nilable(Member)) }
      def member(server_or_id, user_id); end

      sig { params(id: Integer).returns(Channel) }
      def pm_channel(id); end

      sig { params(data: T::Hash[T.untyped, T.untyped]).returns(User) }
      def ensure_user(data); end

      sig { params(data: T::Hash[T.untyped, T.untyped]).returns(Server) }
      def ensure_server(data); end

      sig { params(data: T::Hash[T.untyped, T.untyped], server: T.nilable(Server)).returns(Channel) }
      def ensure_channel(data, server = nil); end

      sig { params(id: Integer).returns(T.untyped) }
      def request_chunks(id); end

      sig { params(invite: T.any(String, Invite)).returns(String) }
      def resolve_invite_code(invite); end

      sig { params(invite: T.any(String, Invite)).returns(Invite) }
      def invite(invite); end

      sig { params(channel_name: String, server_name: String, type: T.untyped).returns(T::Array[Channel]) }
      def find_channel(channel_name, server_name = nil, type: nil); end

      sig { params(username: T.untyped, discrim: T.untyped).returns(T.untyped) }
      def find_user(username, discrim = nil); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageEvent).void).returns(Discordrb::Events::MessageEventHandler) }
      def message(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReadyEvent).void).returns(Discordrb::Events::ReadyEventHandler) }
      def ready(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::DisconnectEvent).void).returns(Discordrb::Events::DisconnectEventHandler) }
      def disconnected(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::HeartbeatEvent).void).returns(Discordrb::Events::HeartbeatEventHandler) }
      def heartbeat(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::TypingEvent).void).returns(Discordrb::Events::TypingEventHandler) }
      def typing(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageEditEvent).void).returns(Discordrb::Events::MessageEditEventHandler) }
      def message_edit(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MessageDeleteEvent).void).returns(Discordrb::Events::MessageDeleteEventHandler) }
      def message_delete(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionAddEvent).void).returns(Discordrb::Events::ReactionAddEventHandler) }
      def reaction_add(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionRemoveEvent).void).returns(Discordrb::Events::ReactionRemoveEventHandler) }
      def reaction_remove(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ReactionRemoveAllEvent).void).returns(Discordrb::Events::ReactionRemoveAllEventHandler) }
      def reaction_remove_all(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PresenceEvent).void).returns(Discordrb::Events::PresenceEventHandler) }
      def presence(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PlayingEvent).void).returns(Discordrb::Events::PlayingEventHandler) }
      def playing(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::MentionEvent).void).returns(Discordrb::Events::MentionEventHandler) }
      def mention(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelCreateEvent).void).returns(Discordrb::Events::ChannelCreateEventHandler) }
      def channel_create(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelUpdateEvent).void).returns(Discordrb::Events::ChannelUpdateEventHandler) }
      def channel_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelDeleteEvent).void).returns(Discordrb::Events::ChannelDeleteEventHandler) }
      def channel_delete(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelRecipientAddEvent).void).returns(T.untyped) }
      def channel_recipient_add(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ChannelRecipientRemoveEvent).void).returns(T.untyped) }
      def channel_recipient_remove(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::VoiceStateUpdateEvent).void).returns(Discordrb::Events::VoiceStateUpdateEventHandler) }
      def voice_state_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberAddEvent).void).returns(Discordrb::Events::ServerMemberAddEventHandler) }
      def member_join(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberUpdateEvent).void).returns(Discordrb::Events::ServerMemberUpdateEventHandler) }
      def member_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerMemberDeleteEvent).void).returns(Discordrb::Events::ServerMemberDeleteEventHandler) }
      def member_leave(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UserBanEvent).void).returns(Discordrb::Events::UserBanEventHandler) }
      def user_ban(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UserUnbanEvent).void).returns(Discordrb::Events::UserUnbanEventHandler) }
      def user_unban(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerCreateEvent).void).returns(Discordrb::Events::ServerCreateEventHandler) }
      def server_create(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerUpdateEvent).void).returns(Discordrb::Events::ServerUpdateEventHandler) }
      def server_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerDeleteEvent).void).returns(Discordrb::Events::ServerDeleteEventHandler) }
      def server_delete(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiChangeEvent).void).returns(Discordrb::Events::ServerEmojiChangeEventHandler) }
      def server_emoji(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiCreateEvent).void).returns(Discordrb::Events::ServerEmojiCreateEventHandler) }
      def server_emoji_create(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiDeleteEvent).void).returns(Discordrb::Events::ServerEmojiDeleteEventHandler) }
      def server_emoji_delete(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerEmojiUpdateEvent).void).returns(Discordrb::Events::ServerEmojiUpdateEventHandler) }
      def server_emoji_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleCreateEvent).void).returns(Discordrb::Events::ServerRoleCreateEventHandler) }
      def server_role_create(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleDeleteEvent).void).returns(Discordrb::Events::ServerRoleDeleteEventHandler) }
      def server_role_delete(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::ServerRoleUpdateEvent).void).returns(Discordrb::Events::ServerRoleUpdateEventHandler) }
      def server_role_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::WebhookUpdateEvent).void).returns(Discordrb::Events::WebhookUpdateEventHandler) }
      def webhook_update(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::AwaitEvent).void).returns(Discordrb::Events::AwaitEventHandler) }
      def await(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::PrivateMessageEvent).void).returns(Discordrb::Events::PrivateMessageEventHandler) }
      def pm(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::RawEvent).void).returns(Discordrb::Events::RawEventHandler) }
      def raw(attributes = {}, &block); end

      sig { params(attributes: T::Hash[T.untyped, T.untyped], block: T.proc.params(event: Discordrb::Events::UnknownEvent).void).returns(Discordrb::Events::UnknownEventHandler) }
      def unknown(attributes = {}, &block); end

      sig { params(handler: Discordrb::Events::EventHandler).returns(T.untyped) }
      def remove_handler(handler); end

      sig { returns(T.untyped) }
      def clear!; end

      sig { params(handler: Discordrb::Events::EventHandler).returns(T.untyped) }
      def add_handler(handler); end

      sig { params(container: Module).returns(T.untyped) }
      def include_events(container); end

      sig { params(clazz: T.untyped, attributes: T.untyped, block: T.untyped).returns(T.untyped) }
      def register_event(clazz, attributes, block); end
    end

    class Bucket
      sig { params(limit: T.nilable(Integer), time_span: T.nilable(Integer), delay: T.nilable(Integer)).returns(Bucket) }
      def initialize(limit, time_span, delay); end

      sig { params(rate_limit_time: Time).returns(T.untyped) }
      def clean(rate_limit_time = nil); end

      sig { params(thing: T.any(T.untyped, Integer, Symbol), rate_limit_time: Time, increment: T.untyped).returns(T.any(Integer, T::Boolean)) }
      def rate_limited?(thing, rate_limit_time = nil, increment: 1); end

      sig { params(thing: T.untyped).returns(T.untyped) }
      def resolve_key(thing); end
    end

    module RateLimiter
      sig { params(key: Symbol, attributes: T::Hash[T.untyped, T.untyped]).returns(Bucket) }
      def bucket(key, attributes); end

      sig { params(key: Symbol, thing: T.any(T.untyped, Integer, Symbol), increment: T.untyped).returns(T.any(Integer, T::Boolean)) }
      def rate_limited?(key, thing, increment: 1); end

      sig { returns(T.untyped) }
      def clean; end

      sig { params(limiter: Module).returns(T.untyped) }
      def include_buckets(limiter); end
    end

    class SimpleRateLimiter
      include RateLimiter

      sig { returns(SimpleRateLimiter) }
      def initialize; end

      sig { params(key: Symbol, attributes: T::Hash[T.untyped, T.untyped]).returns(Bucket) }
      def bucket(key, attributes); end

      sig { params(key: Symbol, thing: T.any(T.untyped, Integer, Symbol), increment: T.untyped).returns(T.any(Integer, T::Boolean)) }
      def rate_limited?(key, thing, increment: 1); end

      sig { returns(T.untyped) }
      def clean; end

      sig { params(limiter: Module).returns(T.untyped) }
      def include_buckets(limiter); end
    end
  end

  class WebSocket
    sig { returns(T.untyped) }
    def open_handler; end

    sig { returns(T.untyped) }
    def message_handler; end

    sig { returns(T.untyped) }
    def close_handler; end

    sig { returns(T.untyped) }
    def error_handler; end

    sig do
      params(
        endpoint: String,
        open_handler: T.untyped,
        message_handler: T.untyped,
        close_handler: T.untyped,
        error_handler: T.untyped
      ).returns(WebSocket)
    end
    def initialize(endpoint, open_handler, message_handler, close_handler, error_handler); end

    sig { params(data: String).returns(T.untyped) }
    def send(data); end

    sig { returns(T.untyped) }
    def close; end

    sig { returns(Thread) }
    def thread; end
  end
end

class Integer
  sig { returns(Integer) }
  def resolve_id; end
end

class String
  sig { returns(Integer) }
  def resolve_id; end
end
