# typed: true

class ActiveRecordCallbacksTest < ApplicationRecord

  after_create_commit :log_create_commit_action
  after_create_commit :action1, :action2
  after_create_commit :log_user_saved_to_db, if: :author_wants_emails?, unless: Proc.new { |comment| comment.article.ignore_comments? }
  after_create_commit do
    puts 'foo'
  end

  after_update_commit :log_update_commit_action
  after_update_commit :action1, :action2
  after_update_commit :log_user_saved_to_db, if: :author_wants_emails?, unless: Proc.new { |comment| comment.article.ignore_comments? }
  after_update_commit do
    puts 'foo'
  end

  after_destroy_commit :log_destroy_commit_action
  after_destroy_commit :action1, :action2
  after_destroy_commit :log_user_deleted_from_db, if: :author_wants_emails?, unless: Proc.new { |comment| comment.article.ignore_comments? }
  after_destroy_commit do
    puts 'foo'
  end

  has_secure_token :secure_token
end
