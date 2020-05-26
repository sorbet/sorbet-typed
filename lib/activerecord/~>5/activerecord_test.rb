# typed: true

class ActiveRecordCallbacksTest < ApplicationRecord

  after_create_commit :log_create_commit_action
  after_create_commit :log_user_saved_to_db, if: :author_wants_emails?, unless: Proc.new { |comment| comment.article.ignore_comments? }
end
