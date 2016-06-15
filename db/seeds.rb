# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ROLE_ADMIN = Role.create(id: 1, name: 'Administrator')
ROLE_PUSH = Role.create(id: 2, name: 'Maintainer')
ROLE_PULL = Role.create(id: 3, name: 'Getter')

STATUS_OPEN = StatusType.create(name: 'Open')
STATUS_PROGRESS = StatusType.create(name: 'Progress')
STATUS_SUBMITTED = StatusType.create(name: 'Submitted')
STATUS_VERIFICATION = StatusType.create(name: 'Verification')
STATUS_DONE = StatusType.create(name: 'Done')
STATUS_REJECTED = StatusType.create(name: 'Rejected')

USER_AJITH = User.create(name: 'ajith', password: 'ajith', mobile: 9986003200, roles_id: 1)

