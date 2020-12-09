# typed: strong

module Net::SFTP
  class << self
    def start(host, user, ssh_options = T.unsafe(nil), sftp_options = T.unsafe(nil), &block); end
  end
end

module Net::SFTP::Constants
end

module Net::SFTP::Constants::ACE
end

module Net::SFTP::Constants::ACE::Flag
end

Net::SFTP::Constants::ACE::Flag::DIRECTORY_INHERIT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Flag::FAILED_ACCESS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Flag::FILE_INHERIT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Flag::IDENTIFIER_GROUP = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Flag::INHERIT_ONLY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Flag::NO_PROPAGATE_INHERIT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Flag::SUCCESSFUL_ACCESS = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::ACE::Mask
end

Net::SFTP::Constants::ACE::Mask::ADD_FILE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::ADD_SUBDIRECTORY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::APPEND_DATA = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::DELETE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::DELETE_CHILD = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::EXECUTE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::LIST_DIRECTORY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::READ_ACL = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::READ_ATTRIBUTES = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::READ_DATA = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::READ_NAMED_ATTRS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::SYNCHRONIZE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::WRITE_ACL = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::WRITE_ATTRIBUTES = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::WRITE_DATA = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::WRITE_NAMED_ATTRS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Mask::WRITE_OWNER = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::ACE::Type
end

Net::SFTP::Constants::ACE::Type::ACCESS_ALLOWED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Type::ACCESS_DENIED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Type::SYSTEM_ALARM = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::ACE::Type::SYSTEM_AUDIT = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::LockTypes
end

Net::SFTP::Constants::LockTypes::ADVISORY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::LockTypes::DELETE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::LockTypes::READ = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::LockTypes::WRITE = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::OpenFlags
end

module Net::SFTP::Constants::OpenFlags::FV1
end

Net::SFTP::Constants::OpenFlags::FV1::APPEND = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV1::CREAT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV1::EXCL = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV1::READ = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV1::TRUNC = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV1::WRITE = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::OpenFlags::FV5
end

Net::SFTP::Constants::OpenFlags::FV5::APPEND_DATA = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::APPEND_DATA_ATOMIC = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::CREATE_NEW = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::CREATE_TRUNCATE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::DELETE_LOCK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::OPEN_EXISTING = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::OPEN_OR_CREATE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::READ_LOCK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::TEXT_MODE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::TRUNCATE_EXISTING = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV5::WRITE_LOCK = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::OpenFlags::FV6
end

Net::SFTP::Constants::OpenFlags::FV6::ACCESS_AUDIT_ALARM_INFO = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV6::ACCESS_BACKUP = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV6::ADVISORY_LOCK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV6::BACKUP_STREAM = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV6::DELETE_ON_CLOSE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV6::NOFOLLOW = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::OpenFlags::FV6::OVERRIDE_OWNER = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::PacketTypes
end

Net::SFTP::Constants::PacketTypes::FXP_ATTRS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_BLOCK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_CLOSE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_DATA = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_EXTENDED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_EXTENDED_REPLY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_FSETSTAT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_FSTAT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_HANDLE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_INIT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_LINK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_LSTAT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_MKDIR = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_NAME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_OPEN = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_OPENDIR = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_READ = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_READDIR = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_READLINK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_REALPATH = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_REMOVE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_RENAME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_RMDIR = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_SETSTAT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_STAT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_STATUS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_SYMLINK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_UNBLOCK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_VERSION = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::PacketTypes::FXP_WRITE = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::RenameFlags
end

Net::SFTP::Constants::RenameFlags::ATOMIC = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::RenameFlags::NATIVE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::RenameFlags::OVERWRITE = T.let(T.unsafe(nil), Integer)

module Net::SFTP::Constants::StatusCodes
end

Net::SFTP::Constants::StatusCodes::FX_BAD_MESSAGE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_CONNECTION_LOST = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_DIR_NOT_EMPTY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_EOF = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_FAILURE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_FILE_ALREADY_EXISTS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_INVALID_FILENAME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_INVALID_HANDLE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_LINK_LOOP = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_LOCK_CONFlICT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_NOT_A_DIRECTORY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_NO_CONNECTION = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_NO_MEDIA = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_NO_SPACE_ON_FILESYSTEM = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_NO_SUCH_FILE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_NO_SUCH_PATH = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_OK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_OP_UNSUPPORTED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_PERMISSION_DENIED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_QUOTA_EXCEEDED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_UNKNOWN_PRINCIPLE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Constants::StatusCodes::FX_WRITE_PROTECT = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Exception < ::RuntimeError
end

module Net::SFTP::Operations
end

class Net::SFTP::Operations::Dir
  def initialize(sftp); end

  def [](path, pattern); end
  def entries(path); end
  def foreach(path); end
  def glob(path, pattern, flags = T.unsafe(nil)); end
  def sftp; end
end

class Net::SFTP::Operations::Download
  include(::Net::SSH::Loggable)

  def initialize(sftp, local, remote, options = T.unsafe(nil), &progress); end

  def [](name); end
  def []=(name, value); end
  def abort!; end
  def active?; end
  def local; end
  def options; end
  def properties; end
  def recursive?; end
  def remote; end
  def sftp; end
  def wait; end

  private

  def download_next_chunk(entry); end
  def on_close(response); end
  def on_closedir(response); end
  def on_open(response); end
  def on_opendir(response); end
  def on_read(response); end
  def on_readdir(response); end
  def open_file(entry); end
  def process_next_entry; end
  def progress; end
  def read_size; end
  def requests; end
  def stack; end
  def update_progress(hook, *args); end
end

Net::SFTP::Operations::Download::DEFAULT_READ_SIZE = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Operations::Download::Entry < ::Struct
  Elem = type_member(fixed: T.untyped)

  def directory; end
  def directory=(_); end
  def handle; end
  def handle=(_); end
  def local; end
  def local=(_); end
  def offset; end
  def offset=(_); end
  def remote; end
  def remote=(_); end
  def sink; end
  def sink=(_); end
  def size; end
  def size=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class Net::SFTP::Operations::File
  def initialize(sftp, handle); end

  def close; end
  def eof?; end
  def gets(sep_or_limit = T.unsafe(nil), limit = T.unsafe(nil)); end
  def handle; end
  def pos; end
  def pos=(offset); end
  def print(*items); end
  def puts(*items); end
  def read(n = T.unsafe(nil)); end
  def readline(sep_or_limit = T.unsafe(nil), limit = T.unsafe(nil)); end
  def rewind; end
  def sftp; end
  def size; end
  def stat; end
  def write(data); end

  private

  def fill; end
end

class Net::SFTP::Operations::FileFactory
  def initialize(sftp); end

  def directory?(path); end
  def open(name, flags = T.unsafe(nil), mode = T.unsafe(nil), &block); end
  def sftp; end
end

class Net::SFTP::Operations::Upload
  include(::Net::SSH::Loggable)

  def initialize(sftp, local, remote, options = T.unsafe(nil), &progress); end

  def [](name); end
  def []=(name, value); end
  def abort!; end
  def active?; end
  def local; end
  def options; end
  def properties; end
  def recursive?; end
  def remote; end
  def sftp; end
  def wait; end

  private

  def entries_for(local); end
  def on_close(response); end
  def on_mkdir(response); end
  def on_open(response); end
  def on_write(response); end
  def open_file(local, remote); end
  def process_next_entry; end
  def progress; end
  def update_progress(event, *args); end
  def write_next_chunk(file); end
end

Net::SFTP::Operations::Upload::DEFAULT_READ_SIZE = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Operations::Upload::LiveFile < ::Struct
  Elem = type_member(fixed: T.untyped)

  def handle; end
  def handle=(_); end
  def io; end
  def io=(_); end
  def local; end
  def local=(_); end
  def remote; end
  def remote=(_); end
  def size; end
  def size=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

Net::SFTP::Operations::Upload::RECURSIVE_READERS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Operations::Upload::SINGLE_FILE_READERS = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Packet < ::Net::SSH::Buffer
  def initialize(data); end

  def type; end
end

module Net::SFTP::Protocol
  class << self
    def load(session, version); end
  end
end

class Net::SFTP::Protocol::Base
  include(::Net::SSH::Loggable)
  include(::Net::SFTP::Constants)
  include(::Net::SFTP::Constants::PacketTypes)

  def initialize(session); end

  def parse(packet); end
  def session; end

  private

  def send_request(type, *args); end
end

module Net::SFTP::Protocol::V01
end

class Net::SFTP::Protocol::V01::Attributes
  def initialize(attributes = T.unsafe(nil)); end

  def atime; end
  def atime=(value); end
  def attributes; end
  def directory?; end
  def extended; end
  def extended=(value); end
  def file?; end
  def gid; end
  def gid=(value); end
  def group; end
  def mtime; end
  def mtime=(value); end
  def owner; end
  def permissions; end
  def permissions=(value); end
  def size; end
  def size=(value); end
  def symbolic_type; end
  def symlink?; end
  def to_s; end
  def type; end
  def uid; end
  def uid=(value); end

  private

  def encode_extended(buffer); end
  def prepare_serialization!; end

  class << self
    def attr_accessor(name); end
    def attr_writer(name); end
    def elements; end
    def from_buffer(buffer); end

    private

    def parse_extended(buffer); end
  end
end

Net::SFTP::Protocol::V01::Attributes::F_ACMODTIME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::F_EXTENDED = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::F_PERMISSIONS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::F_SIZE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::F_UIDGID = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_BLOCK_DEVICE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_CHAR_DEVICE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_DIRECTORY = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_FIFO = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_REGULAR = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_SOCKET = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_SPECIAL = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_SYMLINK = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V01::Attributes::T_UNKNOWN = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Protocol::V01::Base < ::Net::SFTP::Protocol::Base
  include(::Net::SFTP::Constants::OpenFlags)

  def block(handle, offset, length, mask); end
  def close(handle); end
  def fsetstat(handle, attrs); end
  def fstat(handle, flags = T.unsafe(nil)); end
  def link(*args); end
  def lstat(path, flags = T.unsafe(nil)); end
  def mkdir(path, attrs); end
  def open(path, flags, options); end
  def opendir(path); end
  def parse_attrs_packet(packet); end
  def parse_data_packet(packet); end
  def parse_handle_packet(packet); end
  def parse_name_packet(packet); end
  def parse_status_packet(packet); end
  def read(handle, offset, length); end
  def readdir(handle); end
  def readlink(path); end
  def realpath(path); end
  def remove(filename); end
  def rename(name, new_name, flags = T.unsafe(nil)); end
  def rmdir(path); end
  def setstat(path, attrs); end
  def stat(path, flags = T.unsafe(nil)); end
  def symlink(path, target); end
  def unblock(handle, offset, length); end
  def version; end
  def write(handle, offset, data); end

  protected

  def attribute_factory; end
  def name_factory; end
  def normalize_open_flags(flags); end
  def not_implemented!(operation); end
end

class Net::SFTP::Protocol::V01::Name
  def initialize(name, longname, attributes); end

  def attributes; end
  def directory?; end
  def file?; end
  def longname; end
  def name; end
  def symlink?; end
end

module Net::SFTP::Protocol::V02
end

class Net::SFTP::Protocol::V02::Base < ::Net::SFTP::Protocol::V01::Base
  def rename(name, new_name, flags = T.unsafe(nil)); end
  def version; end
end

module Net::SFTP::Protocol::V03
end

class Net::SFTP::Protocol::V03::Base < ::Net::SFTP::Protocol::V02::Base
  def readlink(path); end
  def symlink(path, target); end
  def version; end
end

module Net::SFTP::Protocol::V04
end

class Net::SFTP::Protocol::V04::Attributes < ::Net::SFTP::Protocol::V01::Attributes
  def initialize(attributes = T.unsafe(nil)); end

  def acl; end
  def acl=(value); end
  def atime_nseconds; end
  def atime_nseconds=(value); end
  def createtime; end
  def createtime=(value); end
  def createtime_nseconds; end
  def createtime_nseconds=(value); end
  def group=(value); end
  def mtime_nseconds; end
  def mtime_nseconds=(value); end
  def owner=(value); end
  def type; end
  def type=(value); end

  private

  def encode_acl(buffer); end
  def prepare_serialization!; end

  class << self
    def elements; end

    private

    def parse_acl(buffer); end
  end
end

class Net::SFTP::Protocol::V04::Attributes::ACL < ::Struct
  Elem = type_member(fixed: T.untyped)

  def flag; end
  def flag=(_); end
  def mask; end
  def mask=(_); end
  def type; end
  def type=(_); end
  def who; end
  def who=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

Net::SFTP::Protocol::V04::Attributes::F_ACCESSTIME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V04::Attributes::F_ACL = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V04::Attributes::F_CREATETIME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V04::Attributes::F_MODIFYTIME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V04::Attributes::F_OWNERGROUP = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V04::Attributes::F_SUBSECOND_TIMES = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Protocol::V04::Base < ::Net::SFTP::Protocol::V03::Base
  def fstat(handle, flags = T.unsafe(nil)); end
  def lstat(path, flags = T.unsafe(nil)); end
  def parse_name_packet(packet); end
  def stat(path, flags = T.unsafe(nil)); end
  def version; end

  protected

  def attribute_factory; end
  def name_factory; end
end

Net::SFTP::Protocol::V04::Base::DEFAULT_FLAGS = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Protocol::V04::Name
  def initialize(name, attributes); end

  def attributes; end
  def directory?; end
  def file?; end
  def longname; end
  def name; end
  def symlink?; end
end

module Net::SFTP::Protocol::V05
end

class Net::SFTP::Protocol::V05::Base < ::Net::SFTP::Protocol::V04::Base
  def open(path, flags, options); end
  def rename(name, new_name, flags = T.unsafe(nil)); end
  def version; end
end

module Net::SFTP::Protocol::V06
end

class Net::SFTP::Protocol::V06::Attributes < ::Net::SFTP::Protocol::V04::Attributes
  def allocation_size; end
  def allocation_size=(value); end
  def attrib_bits; end
  def attrib_bits=(value); end
  def attrib_bits_valid; end
  def attrib_bits_valid=(value); end
  def ctime; end
  def ctime=(value); end
  def ctime_nseconds; end
  def ctime_nseconds=(value); end
  def link_count; end
  def link_count=(value); end
  def mime_type; end
  def mime_type=(value); end
  def text_hint; end
  def text_hint=(value); end
  def untranslated_name; end
  def untranslated_name=(value); end

  class << self
    def elements; end
  end
end

Net::SFTP::Protocol::V06::Attributes::F_ALLOCATION_SIZE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V06::Attributes::F_BITS = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V06::Attributes::F_CTIME = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V06::Attributes::F_LINK_COUNT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V06::Attributes::F_MIME_TYPE = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V06::Attributes::F_TEXT_HINT = T.let(T.unsafe(nil), Integer)

Net::SFTP::Protocol::V06::Attributes::F_UNTRANSLATED_NAME = T.let(T.unsafe(nil), Integer)

class Net::SFTP::Protocol::V06::Base < ::Net::SFTP::Protocol::V05::Base
  def block(handle, offset, length, mask); end
  def link(new_link_path, existing_path, symlink); end
  def symlink(path, target); end
  def unblock(handle, offset, length); end
  def version; end

  protected

  def attribute_factory; end
end

class Net::SFTP::Request
  include(::Net::SFTP::Constants::PacketTypes)

  def initialize(session, type, id, &callback); end

  def [](key); end
  def []=(key, value); end
  def callback; end
  def id; end
  def pending?; end
  def properties; end
  def respond_to(packet); end
  def response; end
  def session; end
  def type; end
  def wait; end
end

class Net::SFTP::Response
  include(::Net::SFTP::Constants::StatusCodes)

  def initialize(request, data = T.unsafe(nil)); end

  def [](key); end
  def code; end
  def data; end
  def eof?; end
  def message; end
  def ok?; end
  def request; end
  def to_s; end
  def to_str; end
end

Net::SFTP::Response::MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

class Net::SFTP::Session
  include(::Net::SSH::Loggable)
  include(::Net::SFTP::Constants::PacketTypes)

  def initialize(session, version = T.unsafe(nil), &block); end

  def block(handle, offset, length, mask, &callback); end
  def block!(handle, offset, length, mask, &callback); end
  def channel; end
  def close(handle, &callback); end
  def close!(handle, &callback); end
  def close_channel; end
  def closed?; end
  def connect(&block); end
  def connect!(&block); end
  def dir; end
  def download(remote, local, options = T.unsafe(nil), &block); end
  def download!(remote, local = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def file; end
  def fsetstat(handle, attrs, &callback); end
  def fsetstat!(handle, attrs, &callback); end
  def fstat(handle, flags = T.unsafe(nil), &callback); end
  def fstat!(handle, flags = T.unsafe(nil), &callback); end
  def link(new_link_path, existing_path, symlink = T.unsafe(nil), &callback); end
  def link!(new_link_path, existing_path, symlink = T.unsafe(nil), &callback); end
  def loop(&block); end
  def lstat(path, flags = T.unsafe(nil), &callback); end
  def lstat!(path, flags = T.unsafe(nil), &callback); end
  def mkdir(path, attrs = T.unsafe(nil), &callback); end
  def mkdir!(path, attrs = T.unsafe(nil), &callback); end
  def open(path, flags = T.unsafe(nil), options = T.unsafe(nil), &callback); end
  def open!(path, flags = T.unsafe(nil), options = T.unsafe(nil), &callback); end
  def open?; end
  def opendir(path, &callback); end
  def opendir!(path, &callback); end
  def opening?; end
  def pending_requests; end
  def protocol; end
  def read(handle, offset, length, &callback); end
  def read!(handle, offset, length, &callback); end
  def readdir(handle, &callback); end
  def readdir!(handle, &callback); end
  def readlink(path, &callback); end
  def readlink!(path, &callback); end
  def realpath(path, &callback); end
  def realpath!(path, &callback); end
  def remove(filename, &callback); end
  def remove!(filename, &callback); end
  def rename(name, new_name, flags = T.unsafe(nil), &callback); end
  def rename!(name, new_name, flags = T.unsafe(nil), &callback); end
  def rmdir(path, &callback); end
  def rmdir!(path, &callback); end
  def send_packet(type, *args); end
  def session; end
  def setstat(path, attrs, &callback); end
  def setstat!(path, attrs, &callback); end
  def stat(path, flags = T.unsafe(nil), &callback); end
  def stat!(path, flags = T.unsafe(nil), &callback); end
  def state; end
  def symlink(path, target, &callback); end
  def symlink!(path, target, &callback); end
  def unblock(handle, offset, length, &callback); end
  def unblock!(handle, offset, length, &callback); end
  def upload(local, remote = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def upload!(local, remote = T.unsafe(nil), options = T.unsafe(nil), &block); end
  def write(handle, offset, data, &callback); end
  def write!(handle, offset, data, &callback); end

  private

  def dispatch_request(packet); end
  def do_version(packet); end
  def input; end
  def loop_forever; end
  def request(type, *args, &callback); end
  def wait_for(request, property = T.unsafe(nil)); end
  def when_channel_closed(channel); end
  def when_channel_confirmed(channel); end
  def when_channel_polled(channel); end
  def when_subsystem_started(channel, success); end
end

Net::SFTP::Session::HIGHEST_PROTOCOL_VERSION_SUPPORTED = T.let(T.unsafe(nil), Integer)

class Net::SFTP::StatusException < ::Net::SFTP::Exception
  def initialize(response, text = T.unsafe(nil)); end

  def code; end
  def description; end
  def message; end
  def response; end
  def text; end
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
