class AddIndexToUsersEmail < ActiveRecord::Migration[8.0]
  def change
    add_index :users, :email, unique: true
  end
test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end
end