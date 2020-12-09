# typed: strong

module Net::SSH
  class << self
    def assign_defaults(options); end
    def configuration_for(host, use_ssh_config); end
    def start(host, user = T.unsafe(nil), options = T.unsafe(nil), &block); end

    private

    def _sanitize_options(options); end
    def _support_deprecated_option_paranoid(options); end
  end
end

module Net::SSH::Authentication
end

class Net::SSH::Authentication::Agent
  include(::Net::SSH::Loggable)

  def initialize(logger = T.unsafe(nil)); end

  def add_identity(priv_key, comment, lifetime: T.unsafe(nil), confirm: T.unsafe(nil)); end
  def close; end
  def connect!(agent_socket_factory = T.unsafe(nil), identity_agent = T.unsafe(nil)); end
  def identities; end
  def negotiate!; end
  def remove_all_identities; end
  def remove_identity(key); end
  def sign(key, data, flags = T.unsafe(nil)); end
  def socket; end

  private

  def agent_failed(type); end
  def blob_for_add(priv_key); end
  def read_packet; end
  def send_and_wait(type, *args); end
  def send_packet(type, *args); end
  def unix_socket_class; end

  class << self
    def connect(logger = T.unsafe(nil), agent_socket_factory = T.unsafe(nil), identity_agent = T.unsafe(nil)); end
  end
end

module Net::SSH::Authentication::Agent::Comment
  def comment; end
  def comment=(_arg0); end
end

Net::SSH::Authentication::Agent::SSH2_AGENT_ADD_IDENTITY = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_ADD_ID_CONSTRAINED = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_IDENTITIES_ANSWER = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_REMOVE_ALL_IDENTITIES = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_REMOVE_IDENTITY = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_REQUEST_IDENTITIES = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_REQUEST_VERSION = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_SIGN_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_SIGN_RESPONSE = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH2_AGENT_VERSION_RESPONSE = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_CONSTRAIN_CONFIRM = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_CONSTRAIN_LIFETIME = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_REQUEST_RSA_IDENTITIES = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_RSA_IDENTITIES_ANSWER1 = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_RSA_IDENTITIES_ANSWER2 = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_RSA_SHA2_256 = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_RSA_SHA2_512 = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_AGENT_SUCCESS = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Agent::SSH_COM_AGENT2_FAILURE = T.let(T.unsafe(nil), Integer)

class Net::SSH::Authentication::AgentError < ::Net::SSH::Exception
end

class Net::SSH::Authentication::AgentNotAvailable < ::Net::SSH::Authentication::AgentError
end

class Net::SSH::Authentication::Certificate
  def critical_options; end
  def critical_options=(_arg0); end
  def extensions; end
  def extensions=(_arg0); end
  def fingerprint; end
  def key; end
  def key=(_arg0); end
  def key_id; end
  def key_id=(_arg0); end
  def nonce; end
  def nonce=(_arg0); end
  def reserved; end
  def reserved=(_arg0); end
  def serial; end
  def serial=(_arg0); end
  def sign(key, sign_nonce = T.unsafe(nil)); end
  def sign!(key, sign_nonce = T.unsafe(nil)); end
  def signature; end
  def signature=(_arg0); end
  def signature_key; end
  def signature_key=(_arg0); end
  def signature_valid?; end
  def ssh_do_sign(data); end
  def ssh_do_verify(sig, data); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
  def to_pem; end
  def type; end
  def type=(_arg0); end
  def valid_after; end
  def valid_after=(_arg0); end
  def valid_before; end
  def valid_before=(_arg0); end
  def valid_principals; end
  def valid_principals=(_arg0); end

  private

  def key_without_type; end
  def options_to_blob(options); end
  def ssh_time(t); end
  def to_blob_without_signature; end
  def type_value(type); end

  class << self
    def read_certblob(buffer, type); end

    private

    def read_options(buffer); end
    def type_symbol(type); end
  end
end

module Net::SSH::Authentication::Constants
end

Net::SSH::Authentication::Constants::USERAUTH_BANNER = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Constants::USERAUTH_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Constants::USERAUTH_METHOD_RANGE = T.let(T.unsafe(nil), T::Range[T.untyped])

Net::SSH::Authentication::Constants::USERAUTH_PASSWD_CHANGEREQ = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Constants::USERAUTH_PK_OK = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Constants::USERAUTH_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Constants::USERAUTH_SUCCESS = T.let(T.unsafe(nil), Integer)

class Net::SSH::Authentication::DisallowedMethod < ::Net::SSH::Exception
end

module Net::SSH::Authentication::ED25519
end

class Net::SSH::Authentication::ED25519::OpenSSHPrivateKeyLoader
  class << self
    def read(datafull, password); end
  end
end

Net::SSH::Authentication::ED25519::OpenSSHPrivateKeyLoader::CipherFactory = Net::SSH::Transport::CipherFactory

Net::SSH::Authentication::ED25519::OpenSSHPrivateKeyLoader::MAGIC = T.let(T.unsafe(nil), String)

Net::SSH::Authentication::ED25519::OpenSSHPrivateKeyLoader::MBEGIN = T.let(T.unsafe(nil), String)

Net::SSH::Authentication::ED25519::OpenSSHPrivateKeyLoader::MEND = T.let(T.unsafe(nil), String)

class Net::SSH::Authentication::ED25519::PrivKey
  def initialize(buffer); end

  def public_key; end
  def sign_key; end
  def ssh_do_sign(data); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end

  class << self
    def read(data, password); end
  end
end

Net::SSH::Authentication::ED25519::PrivKey::CipherFactory = Net::SSH::Transport::CipherFactory

Net::SSH::Authentication::ED25519::PrivKey::MAGIC = T.let(T.unsafe(nil), String)

Net::SSH::Authentication::ED25519::PrivKey::MBEGIN = T.let(T.unsafe(nil), String)

Net::SSH::Authentication::ED25519::PrivKey::MEND = T.let(T.unsafe(nil), String)

class Net::SSH::Authentication::ED25519::PubKey
  include(::Net::SSH::Authentication::PubKeyFingerprint)

  def initialize(data); end

  def ssh_do_verify(sig, data); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
  def to_pem; end
  def verify_key; end

  class << self
    def read_keyblob(buffer); end
  end
end

class Net::SSH::Authentication::ED25519::SigningKeyFromFile < ::SimpleDelegator
  def initialize(pk, sk); end
end

module Net::SSH::Authentication::ED25519Loader
  class << self
    def dependenciesRequiredForED25519; end
    def raiseUnlessLoaded(message); end
  end
end

Net::SSH::Authentication::ED25519Loader::LOADED = T.let(T.unsafe(nil), TrueClass)

class Net::SSH::Authentication::KeyManager
  include(::Net::SSH::Loggable)

  def initialize(logger, options = T.unsafe(nil)); end

  def add(key_file); end
  def add_key_data(key_data_); end
  def agent; end
  def clear!; end
  def each_identity; end
  def finish; end
  def key_data; end
  def key_files; end
  def known_identities; end
  def no_keys?; end
  def options; end
  def sign(identity, data); end
  def use_agent=(use_agent); end
  def use_agent?; end

  private

  def load_identities(identities, ask_passphrase, ignore_decryption_errors); end
  def prepare_identities_from_data; end
  def prepare_identities_from_files; end
  def process_identity_loading_error(identity, e); end
  def readable_file?(path); end
end

class Net::SSH::Authentication::KeyManagerError < ::Net::SSH::Exception
end

module Net::SSH::Authentication::Methods
end

class Net::SSH::Authentication::Methods::Abstract
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Authentication::Constants)

  def initialize(session, options = T.unsafe(nil)); end

  def key_manager; end
  def send_message(msg); end
  def session; end
  def session_id; end
  def userauth_request(username, next_service, auth_method, *others); end

  private

  def prompt; end
end

class Net::SSH::Authentication::Methods::Hostbased < ::Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = T.unsafe(nil)); end

  private

  def authenticate_with(identity, next_service, username, key_manager); end
  def build_request(identity, next_service, username, hostname, client_username); end
  def hostname; end
end

class Net::SSH::Authentication::Methods::KeyboardInteractive < ::Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = T.unsafe(nil)); end
  def interactive?; end
end

Net::SSH::Authentication::Methods::KeyboardInteractive::USERAUTH_INFO_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Authentication::Methods::KeyboardInteractive::USERAUTH_INFO_RESPONSE = T.let(T.unsafe(nil), Integer)

class Net::SSH::Authentication::Methods::None < ::Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, user = T.unsafe(nil), password = T.unsafe(nil)); end
end

class Net::SSH::Authentication::Methods::Password < ::Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = T.unsafe(nil)); end

  private

  def ask_password(username); end
  def clear_prompter!; end
  def get_max_retries; end
end

Net::SSH::Authentication::Methods::Password::NUMBER_OF_PASSWORD_PROMPTS = T.let(T.unsafe(nil), Integer)

class Net::SSH::Authentication::Methods::Publickey < ::Net::SSH::Authentication::Methods::Abstract
  def authenticate(next_service, username, password = T.unsafe(nil)); end

  private

  def authenticate_with(identity, next_service, username); end
  def build_request(pub_key, username, next_service, has_sig); end
  def send_request(pub_key, username, next_service, signature = T.unsafe(nil)); end
end

module Net::SSH::Authentication::PubKeyFingerprint
  def fingerprint(algorithm = T.unsafe(nil)); end

  class << self
    def fingerprint(blob, algorithm = T.unsafe(nil)); end
  end
end

class Net::SSH::Authentication::Session
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Authentication::Constants)
  include(::Net::SSH::Transport::Constants)

  def initialize(transport, options = T.unsafe(nil)); end

  def allowed_auth_methods; end
  def auth_methods; end
  def authenticate(next_service, username, password = T.unsafe(nil)); end
  def expect_message(type); end
  def next_message; end
  def options; end
  def transport; end

  private

  def default_keys; end
  def key_data; end
  def keys; end
end

class Net::SSH::AuthenticationFailed < ::Net::SSH::Exception
end

class Net::SSH::Buffer
  def initialize(content = T.unsafe(nil)); end

  def ==(buffer); end
  def append(text); end
  def available; end
  def clear!; end
  def consume!(n = T.unsafe(nil)); end
  def content; end
  def empty?; end
  def eof?; end
  def length; end
  def position; end
  def position=(_arg0); end
  def read(count = T.unsafe(nil)); end
  def read!(count = T.unsafe(nil)); end
  def read_all(&block); end
  def read_bignum; end
  def read_bool; end
  def read_buffer; end
  def read_byte; end
  def read_int64; end
  def read_key; end
  def read_keyblob(type); end
  def read_long; end
  def read_private_keyblob(type); end
  def read_string; end
  def read_to(pattern); end
  def remainder_as_buffer; end
  def reset!; end
  def to_s; end
  def write(*data); end
  def write_bignum(*n); end
  def write_bool(*b); end
  def write_byte(*n); end
  def write_int64(*n); end
  def write_key(*key); end
  def write_long(*n); end
  def write_moved(string); end
  def write_mstring(*text); end
  def write_string(*text); end

  class << self
    def from(*args); end
  end
end

module Net::SSH::BufferedIo
  include(::Net::SSH::Loggable)

  def available; end
  def enqueue(data); end
  def fill(n = T.unsafe(nil)); end
  def pending_write?; end
  def read_available(length = T.unsafe(nil)); end
  def read_buffer; end
  def send_pending; end
  def wait_for_pending_sends; end
  def write_buffer; end

  private

  def initialize_buffered_io; end
  def input; end
  def output; end

  class << self
    def extended(object); end
  end
end

class Net::SSH::ChannelOpenFailed < ::Net::SSH::Exception
  def initialize(code, reason); end

  def code; end
  def reason; end
end

class Net::SSH::ChannelRequestFailed < ::Net::SSH::Exception
end

class Net::SSH::Config
  class << self
    def default_auth_methods; end
    def default_files; end
    def expandable_default_files; end
    def for(host, files = T.unsafe(nil)); end
    def load(path, host, settings = T.unsafe(nil), base_dir = T.unsafe(nil)); end
    def translate(settings); end

    private

    def eval_match_conditions(condition, host, settings); end
    def included_file_paths(base_dir, config_paths); end
    def interpret_size(size); end
    def merge_challenge_response_with_keyboard_interactive(hash); end
    def pattern2regex(pattern); end
    def tokenize_config_value(str); end
    def translate_config_key(hash, key, value, settings); end
    def unquote(string); end
  end
end

module Net::SSH::Connection
end

class Net::SSH::Connection::Channel
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Connection::Constants)

  def initialize(connection, type, local_id, max_pkt_size = T.unsafe(nil), max_win_size = T.unsafe(nil), &on_confirm_open); end

  def [](name); end
  def []=(name, value); end
  def active?; end
  def close; end
  def closing?; end
  def connection; end
  def do_close; end
  def do_data(data); end
  def do_eof; end
  def do_extended_data(type, data); end
  def do_failure; end
  def do_open_confirmation(remote_id, max_window, max_packet); end
  def do_open_failed(reason_code, description); end
  def do_request(request, want_reply, data); end
  def do_success; end
  def do_window_adjust(bytes); end
  def enqueue_pending_output; end
  def env(variable_name, variable_value, &block); end
  def eof!; end
  def eof?; end
  def exec(command, &block); end
  def local_closed?; end
  def local_id; end
  def local_maximum_packet_size; end
  def local_maximum_window_size; end
  def local_window_size; end
  def on_close(&block); end
  def on_data(&block); end
  def on_eof(&block); end
  def on_extended_data(&block); end
  def on_open_failed(&block); end
  def on_process(&block); end
  def on_request(type, &block); end
  def output; end
  def pending_requests; end
  def process; end
  def properties; end
  def remote_closed!; end
  def remote_closed?; end
  def remote_id; end
  def remote_maximum_packet_size; end
  def remote_maximum_window_size; end
  def remote_window_size; end
  def request_pty(opts = T.unsafe(nil), &block); end
  def send_channel_request(request_name, *data, &callback); end
  def send_data(data); end
  def subsystem(subsystem, &block); end
  def type; end
  def wait; end

  private

  def forward_local_env(env_variable_patterns); end
  def update_local_window_size(size); end
  def wait_until_open_confirmed; end
end

Net::SSH::Connection::Channel::GOOD_LOCAL_MAXIUMUM_WINDOW_SIZE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Channel::LOCAL_WINDOW_SIZE_INCREMENT = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Channel::VALID_PTY_OPTIONS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Net::SSH::Connection::Constants
end

Net::SSH::Connection::Constants::CHANNEL_CLOSE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_DATA = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_EOF = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_EXTENDED_DATA = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_OPEN = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_OPEN_CONFIRMATION = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_OPEN_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_SUCCESS = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::CHANNEL_WINDOW_ADJUST = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::GLOBAL_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::REQUEST_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Constants::REQUEST_SUCCESS = T.let(T.unsafe(nil), Integer)

class Net::SSH::Connection::EventLoop
  include(::Net::SSH::Loggable)

  def initialize(logger = T.unsafe(nil)); end

  def ev_preprocess(&block); end
  def ev_select_and_postprocess(wait); end
  def process(wait = T.unsafe(nil), &block); end
  def process_only(session, wait = T.unsafe(nil)); end
  def register(session); end
end

class Net::SSH::Connection::Keepalive
  include(::Net::SSH::Loggable)

  def initialize(session); end

  def enabled?; end
  def interval; end
  def keepalive_maxcount; end
  def options; end
  def send_as_needed(was_events); end
  def should_send?; end
end

class Net::SSH::Connection::Session
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Connection::Constants)

  def initialize(transport, options = T.unsafe(nil)); end

  def [](key); end
  def []=(key, value); end
  def busy?(include_invisible = T.unsafe(nil)); end
  def channel_open_handlers; end
  def channels; end
  def cleanup_channel(channel); end
  def close; end
  def closed?; end
  def ev_do_calculate_rw_wait(wait); end
  def ev_do_handle_events(readers, writers); end
  def ev_do_postprocess(was_events); end
  def ev_preprocess(&block); end
  def exec(command, status: T.unsafe(nil), &block); end
  def exec!(command, status: T.unsafe(nil), &block); end
  def forward; end
  def host; end
  def listen_to(io, &callback); end
  def listeners; end
  def loop(wait = T.unsafe(nil), &block); end
  def max_select_wait_time; end
  def on_global_request(type, &block); end
  def on_open_channel(type, &block); end
  def open_channel(type = T.unsafe(nil), *extra, &on_confirm); end
  def options; end
  def pending_requests; end
  def postprocess(readers, writers); end
  def preprocess(&block); end
  def process(wait = T.unsafe(nil), &block); end
  def properties; end
  def send_global_request(type, *extra, &callback); end
  def send_message(message); end
  def sftp(wait = T.unsafe(nil)); end
  def shutdown!; end
  def stop_listening_to(io); end
  def transport; end

  private

  def channel_close(packet); end
  def channel_closed(channel); end
  def channel_data(packet); end
  def channel_eof(packet); end
  def channel_extended_data(packet); end
  def channel_failure(packet); end
  def channel_open(packet); end
  def channel_open_confirmation(packet); end
  def channel_open_failure(packet); end
  def channel_request(packet); end
  def channel_success(packet); end
  def channel_window_adjust(packet); end
  def dispatch_incoming_packets(raise_disconnect_errors: T.unsafe(nil)); end
  def each_channel(&block); end
  def force_channel_cleanup_on_close; end
  def get_next_channel_id; end
  def global_request(packet); end
  def io_select_wait(wait); end
  def loop_forever; end
  def request_failure(packet); end
  def request_success(packet); end
end

Net::SSH::Connection::Session::DEFAULT_IO_SELECT_TIMEOUT = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Session::MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Net::SSH::Connection::Session::NilChannel
  def initialize(session); end

  def method_missing(sym, *args); end
end

class Net::SSH::Connection::Session::StringWithExitstatus < ::String
  def initialize(str, exitstatus); end

  def exitstatus; end
end

class Net::SSH::Connection::SingleSessionEventLoop < ::Net::SSH::Connection::EventLoop
  def ev_preprocess(&block); end
  def ev_select_and_postprocess(wait); end
end

module Net::SSH::Connection::Term
end

Net::SSH::Connection::Term::CS7 = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::CS8 = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ECHO = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ECHOCTL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ECHOE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ECHOK = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ECHOKE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ECHONL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ICANON = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ICRNL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IEXTEN = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IGNCR = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IGNPAR = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IMAXBEL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::INCLR = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::INPCK = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ISIG = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ISTRIP = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IUCLC = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IXANY = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IXOFF = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::IXON = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::NOFLSH = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::OCRNL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::OLCUC = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ONLCR = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ONLRET = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::ONOCR = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::OPOST = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::PARENB = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::PARMRK = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::PARODD = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::PENDIN = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::TOSTOP = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::TTY_OP_ISPEED = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::TTY_OP_OSPEED = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VDISCARD = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VDSUSP = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VEOF = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VEOL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VEOL2 = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VERASE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VFLUSH = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VINTR = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VKILL = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VLNEXT = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VQUIT = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VREPRINT = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VSTART = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VSTATUS = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VSTOP = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VSUSP = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VSWITCH = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::VWERASE = T.let(T.unsafe(nil), Integer)

Net::SSH::Connection::Term::XCASE = T.let(T.unsafe(nil), Integer)

class Net::SSH::ConnectionTimeout < ::Net::SSH::Exception
end

class Net::SSH::Disconnect < ::Net::SSH::Exception
end

class Net::SSH::Exception < ::RuntimeError
end

module Net::SSH::ForwardedBufferedIo
  def fill(n = T.unsafe(nil)); end
  def send_pending; end
end

class Net::SSH::HostKeyError < ::Net::SSH::Exception
  def [](key); end
  def callback=(_arg0); end
  def data=(_arg0); end
  def fingerprint; end
  def host; end
  def ip; end
  def key; end
  def port; end
  def remember_host!; end
end

class Net::SSH::HostKeyMismatch < ::Net::SSH::HostKeyError
end

class Net::SSH::HostKeyUnknown < ::Net::SSH::HostKeyError
end

class Net::SSH::HostKeys
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)

  def initialize(host_keys, host, known_hosts, options = T.unsafe(nil)); end

  def add_host_key(key); end
  def each(&block); end
  def empty?; end
  def host; end
end

class Net::SSH::KeyFactory
  class << self
    def get(name); end
    def load_data_private_key(data, passphrase = T.unsafe(nil), ask_passphrase = T.unsafe(nil), filename = T.unsafe(nil), prompt = T.unsafe(nil)); end
    def load_data_public_key(data, filename = T.unsafe(nil)); end
    def load_private_key(filename, passphrase = T.unsafe(nil), ask_passphrase = T.unsafe(nil), prompt = T.unsafe(nil)); end
    def load_public_key(filename); end

    private

    def classify_key(data, filename); end
  end
end

Net::SSH::KeyFactory::MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Net::SSH::KnownHosts
  def initialize(source); end

  def add(host, key); end
  def keys_for(host); end
  def known_host_hash?(hostlist, entries); end
  def source; end

  class << self
    def add(host, key, options = T.unsafe(nil)); end
    def hostfiles(options, which = T.unsafe(nil)); end
    def search_for(host, options = T.unsafe(nil)); end
    def search_in(files, host); end
  end
end

Net::SSH::KnownHosts::SUPPORTED_TYPE = T.let(T.unsafe(nil), T::Array[T.untyped])

module Net::SSH::Loggable
  def debug; end
  def error; end
  def fatal; end
  def info; end
  def logger; end
  def logger=(_arg0); end
  def lwarn; end

  private

  def facility; end
end

class Net::SSH::Packet < ::Net::SSH::Buffer
  include(::Net::SSH::Connection::Constants)
  include(::Net::SSH::Authentication::Constants)
  include(::Net::SSH::Transport::Constants)

  def initialize(payload); end

  def [](name); end
  def type; end

  private

  def instantiate!; end

  class << self
    def register(type, *pairs); end
  end
end

class Net::SSH::Prompt
  def initialize(options = T.unsafe(nil)); end

  def start(info); end

  class << self
    def default(options = T.unsafe(nil)); end
  end
end

class Net::SSH::Prompt::Prompter
  def initialize(info); end

  def ask(prompt, echo = T.unsafe(nil)); end
  def success; end
end

module Net::SSH::Service
end

class Net::SSH::Service::Forward
  include(::Net::SSH::Loggable)

  def initialize(session); end

  def active_local_sockets; end
  def active_locals; end
  def active_remote_destinations; end
  def active_remotes; end
  def agent(channel); end
  def cancel_local(port, bind_address = T.unsafe(nil)); end
  def cancel_local_socket(local_socket_path); end
  def cancel_remote(port, host = T.unsafe(nil)); end
  def local(*args); end
  def local_socket(local_socket_path, remote_socket_path); end
  def remote(port, host, remote_port, remote_host = T.unsafe(nil)); end
  def remote_to(port, host, remote_port, remote_host = T.unsafe(nil)); end
  def session; end

  private

  def auth_agent_channel(session, channel, packet); end
  def forwarded_tcpip(session, channel, packet); end
  def prepare_client(client, channel, type); end
  def prepare_simple_client(client, channel, type); end
end

class Net::SSH::Service::Forward::Remote < ::Struct
  Elem = type_member(fixed: T.untyped)

  def host; end
  def host=(_); end
  def port; end
  def port=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Net::SSH::Timeout < ::Net::SSH::Disconnect
end

module Net::SSH::Transport
end

class Net::SSH::Transport::Algorithms
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Transport::Constants)

  def initialize(session, options = T.unsafe(nil)); end

  def [](key); end
  def accept_kexinit(packet); end
  def algorithms; end
  def allow?(packet); end
  def compression_client; end
  def compression_server; end
  def encryption_client; end
  def encryption_server; end
  def hmac_client; end
  def hmac_server; end
  def host_key; end
  def host_key_format; end
  def initialized?; end
  def kex; end
  def language_client; end
  def language_server; end
  def options; end
  def pending?; end
  def rekey!; end
  def session; end
  def session_id; end
  def start; end

  private

  def build_client_algorithm_packet; end
  def compose_algorithm_list(supported, option, append_all_supported_algorithms = T.unsafe(nil)); end
  def exchange_keys; end
  def kex_byte_requirement; end
  def negotiate(algorithm); end
  def negotiate_algorithms; end
  def normalize_compression_name(name); end
  def parse_server_algorithm_packet(packet); end
  def prepare_preferred_algorithms!; end
  def proceed!; end
  def send_kexinit; end

  class << self
    def allowed_packet?(packet); end
  end
end

Net::SSH::Transport::Algorithms::ALGORITHMS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Net::SSH::Transport::CTR
  class << self
    def extended(orig); end
  end
end

class Net::SSH::Transport::CipherFactory
  class << self
    def get(name, options = T.unsafe(nil)); end
    def get_lengths(name, options = T.unsafe(nil)); end
    def supported?(name); end
  end
end

Net::SSH::Transport::CipherFactory::KEY_LEN_OVERRIDE = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

Net::SSH::Transport::CipherFactory::SSH_TO_OSSL = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Net::SSH::Transport::Constants
end

Net::SSH::Transport::Constants::DEBUG = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::DISCONNECT = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::IGNORE = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::KEXDH_INIT = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::KEXDH_REPLY = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::KEXECDH_INIT = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::KEXECDH_REPLY = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::KEXINIT = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::NEWKEYS = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::SERVICE_ACCEPT = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::SERVICE_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Constants::UNIMPLEMENTED = T.let(T.unsafe(nil), Integer)

module Net::SSH::Transport::HMAC
  class << self
    def get(name, key = T.unsafe(nil), parameters = T.unsafe(nil)); end
    def key_length(name); end
  end
end

class Net::SSH::Transport::HMAC::Abstract
  def initialize(key = T.unsafe(nil)); end

  def digest(data); end
  def digest_class; end
  def key; end
  def key=(value); end
  def key_length; end
  def mac_length; end

  class << self
    def digest_class(*v); end
    def key_length(*v); end
    def mac_length(*v); end
  end
end

Net::SSH::Transport::HMAC::MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Net::SSH::Transport::HMAC::MD5 < ::Net::SSH::Transport::HMAC::Abstract
end

class Net::SSH::Transport::HMAC::MD5_96 < ::Net::SSH::Transport::HMAC::MD5
end

class Net::SSH::Transport::HMAC::None < ::Net::SSH::Transport::HMAC::Abstract
  def digest(data); end
end

class Net::SSH::Transport::HMAC::RIPEMD160 < ::Net::SSH::Transport::HMAC::Abstract
end

class Net::SSH::Transport::HMAC::SHA1 < ::Net::SSH::Transport::HMAC::Abstract
end

class Net::SSH::Transport::HMAC::SHA1_96 < ::Net::SSH::Transport::HMAC::SHA1
end

class Net::SSH::Transport::HMAC::SHA2_256 < ::Net::SSH::Transport::HMAC::Abstract
end

class Net::SSH::Transport::HMAC::SHA2_256_96 < ::Net::SSH::Transport::HMAC::SHA2_256
end

class Net::SSH::Transport::HMAC::SHA2_512 < ::Net::SSH::Transport::HMAC::Abstract
end

class Net::SSH::Transport::HMAC::SHA2_512_96 < ::Net::SSH::Transport::HMAC::SHA2_512
end

class Net::SSH::Transport::IdentityCipher
  class << self
    def block_size; end
    def decrypt; end
    def encrypt; end
    def final; end
    def iv=(v); end
    def iv_len; end
    def name; end
    def reset; end
    def update(text); end
  end
end

module Net::SSH::Transport::Kex
end

class Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA1 < ::Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1

  private

  def get_g; end
  def get_p; end
end

Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA1::G = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA1::P_r = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroup14SHA1::P_s = T.let(T.unsafe(nil), String)

class Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Transport::Constants)

  def initialize(algorithms, connection, data); end

  def algorithms; end
  def connection; end
  def data; end
  def dh; end
  def digester; end
  def exchange_keys; end
  def g; end
  def p; end

  private

  def build_signature_buffer(result); end
  def confirm_newkeys; end
  def generate_key; end
  def generate_key_fingerprint(key); end
  def get_g; end
  def get_message_types; end
  def get_p; end
  def get_parameters; end
  def send_kexinit; end
  def verify_server_key(key); end
  def verify_signature(result); end
end

Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1::G = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1::P_r = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1::P_s = T.let(T.unsafe(nil), String)

class Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1 < ::Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1

  private

  def build_signature_buffer(result); end
  def compute_need_bits; end
  def get_message_types; end
  def get_parameters; end
end

Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1::KEXDH_GEX_GROUP = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1::KEXDH_GEX_INIT = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1::KEXDH_GEX_REPLY = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1::KEXDH_GEX_REQUEST = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1::MAXIMUM_BITS = T.let(T.unsafe(nil), Integer)

Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1::MINIMUM_BITS = T.let(T.unsafe(nil), Integer)

class Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA256 < ::Net::SSH::Transport::Kex::DiffieHellmanGroupExchangeSHA1
  def initialize(*args); end
end

class Net::SSH::Transport::Kex::EcdhSHA2NistP256 < ::Net::SSH::Transport::Kex::DiffieHellmanGroup1SHA1
  def initialize(algorithms, connection, data); end

  def curve_name; end
  def digester; end
  def ecdh; end

  private

  def build_signature_buffer(result); end
  def generate_key; end
  def get_message_types; end
  def send_kexinit; end
end

class Net::SSH::Transport::Kex::EcdhSHA2NistP384 < ::Net::SSH::Transport::Kex::EcdhSHA2NistP256
  def curve_name; end
  def digester; end
end

class Net::SSH::Transport::Kex::EcdhSHA2NistP521 < ::Net::SSH::Transport::Kex::EcdhSHA2NistP256
  def curve_name; end
  def digester; end
end

Net::SSH::Transport::Kex::MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Net::SSH::Transport::KeyExpander
  class << self
    def expand_key(bytes, start, options = T.unsafe(nil)); end
  end
end

class Net::SSH::Transport::OpenSSLAESCTR < ::SimpleDelegator
  def initialize(original); end

  def block_size; end
  def iv=(iv_s); end
  def reset; end

  class << self
    def block_size; end
  end
end

module Net::SSH::Transport::PacketStream
  include(::Net::SSH::Loggable)
  include(::Net::SSH::BufferedIo)

  def available_for_read?; end
  def cleanup; end
  def client; end
  def client_name; end
  def enqueue_packet(payload); end
  def hints; end
  def if_needs_rekey?; end
  def next_packet(mode = T.unsafe(nil), timeout = T.unsafe(nil)); end
  def peer_ip; end
  def send_packet(payload); end
  def server; end

  protected

  def initialize_ssh; end
  def poll_next_packet; end

  class << self
    def extended(object); end
  end
end

Net::SSH::Transport::PacketStream::PROXY_COMMAND_HOST_IP = T.let(T.unsafe(nil), String)

class Net::SSH::Transport::ServerVersion
  include(::Net::SSH::Loggable)

  def initialize(socket, logger, timeout = T.unsafe(nil)); end

  def header; end
  def version; end

  private

  def negotiate!(socket, timeout); end
end

Net::SSH::Transport::ServerVersion::PROTO_VERSION = T.let(T.unsafe(nil), String)

class Net::SSH::Transport::Session
  include(::Net::SSH::Loggable)
  include(::Net::SSH::Transport::Constants)

  def initialize(host, options = T.unsafe(nil)); end

  def algorithms; end
  def close; end
  def closed?; end
  def configure_client(options = T.unsafe(nil)); end
  def configure_server(options = T.unsafe(nil)); end
  def enqueue_message(message); end
  def hint(which, value = T.unsafe(nil)); end
  def host; end
  def host_as_string; end
  def host_key_verifier; end
  def host_keys; end
  def next_message; end
  def options; end
  def peer; end
  def poll_message(mode = T.unsafe(nil), consume_queue = T.unsafe(nil)); end
  def port; end
  def push(packet); end
  def queue; end
  def rekey!; end
  def rekey_as_needed; end
  def send_message(message); end
  def server_version; end
  def service_request(service); end
  def shutdown!; end
  def socket; end
  def wait; end

  private

  def select_host_key_verifier(verifier); end
end

class Net::SSH::Transport::Session::CompatibleVerifier
  def initialize(verifier); end

  def verify(arguments); end
  def verify_signature(&block); end
end

Net::SSH::Transport::Session::DEFAULT_PORT = T.let(T.unsafe(nil), Integer)

class Net::SSH::Transport::State
  def initialize(socket, role); end

  def block_size; end
  def blocks; end
  def cipher; end
  def cleanup; end
  def compress(data); end
  def compression; end
  def compression?; end
  def compression_level; end
  def compressor; end
  def decompress(data); end
  def decompressor; end
  def final_cipher; end
  def hmac; end
  def increment(packet_length); end
  def max_blocks; end
  def max_blocks=(_arg0); end
  def max_packets; end
  def max_packets=(_arg0); end
  def needs_rekey?; end
  def packets; end
  def rekey_limit; end
  def rekey_limit=(_arg0); end
  def reset!; end
  def role; end
  def sequence_number; end
  def set(values); end
  def socket; end
  def update_cipher(data); end

  private

  def update_next_iv(data, reset = T.unsafe(nil)); end
end

Net::SSH::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

module Net::SSH::Verifiers
end

class Net::SSH::Verifiers::AcceptNew < ::Net::SSH::Verifiers::Always
  def verify(arguments); end
  def verify_signature(&block); end
end

class Net::SSH::Verifiers::AcceptNewOrLocalTunnel < ::Net::SSH::Verifiers::AcceptNew
  def verify(arguments); end

  private

  def tunnelled?(args); end
end

class Net::SSH::Verifiers::Always
  def verify(arguments); end
  def verify_signature(&block); end

  private

  def process_cache_miss(host_keys, args, exc_class, message); end
end

class Net::SSH::Verifiers::Never
  def verify(arguments); end
  def verify_signature(&block); end
end

class Net::SSH::Version
  include(::Comparable)

  def initialize(major, minor, tiny, pre = T.unsafe(nil)); end

  def <=>(version); end
  def major; end
  def minor; end
  def tiny; end
  def to_i; end
  def to_s; end

  class << self
    def [](major, minor, tiny, pre = T.unsafe(nil)); end
  end
end

Net::SSH::Version::CURRENT = T.let(T.unsafe(nil), Net::SSH::Version)

Net::SSH::Version::MAJOR = T.let(T.unsafe(nil), Integer)

Net::SSH::Version::MINOR = T.let(T.unsafe(nil), Integer)

Net::SSH::Version::STRING = T.let(T.unsafe(nil), String)

Net::SSH::Version::TINY = T.let(T.unsafe(nil), Integer)

class OpenSSL::BN
  include(::Comparable)

  def to_ssh; end
end

class OpenSSL::PKey::DH < ::OpenSSL::PKey::PKey
  def valid?; end
end

class OpenSSL::PKey::DSA < ::OpenSSL::PKey::PKey
  def ssh_do_sign(data); end
  def ssh_do_verify(sig, data); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
end

class OpenSSL::PKey::EC < ::OpenSSL::PKey::PKey
  def ssh_do_sign(data); end
  def ssh_do_verify(sig, data); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end

  private

  def digester; end

  class << self
    def read_keyblob(curve_name_in_type, buffer); end
  end
end

OpenSSL::PKey::EC::CurveNameAlias = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

OpenSSL::PKey::EC::CurveNameAliasInv = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

OpenSSL::PKey::EC::EXPLICIT_CURVE = T.let(T.unsafe(nil), Integer)

class OpenSSL::PKey::EC::Point
  def ssh_type; end
  def to_blob; end
end

class OpenSSL::PKey::RSA < ::OpenSSL::PKey::PKey
  def ssh_do_sign(data); end
  def ssh_do_verify(sig, data); end
  def ssh_signature_type; end
  def ssh_type; end
  def to_blob; end
end
