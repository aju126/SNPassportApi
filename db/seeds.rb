# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ROLE_ADMIN = Role.create('Administrator')
ROLE_PUSH = Role.create('Maintainer')
ROLE_PULL = Role.create('Getter')

STATUS_OPEN = Status.create('Open')
STATUS_PROGRESS = Status.create('Progress')
STATUS_SUBMITTED = Status.create('Submitted')
STATUS_VERIFICATION = Status.create('Verification')
STATUS_DONE = Status.create('Done')
STATUS_REJECTED = Status.create('Rejected')


