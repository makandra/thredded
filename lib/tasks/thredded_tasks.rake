namespace :thredded do
  desc 'Destroy messageboard and all related data'
  task :destroy, [:slug] => :environment do |_, args|
    Thredded::MessageboardDestroyer.new(args.slug).run
  end

  task :nuke, [:slug] => :destroy
end
