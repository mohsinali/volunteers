json.id                         v.id
json.email                      v.email
json.name                       v.name
json.father_name                v.father_name
json.phone_whatsapp             v.phone_whatsapp
json.cnic                       v.cnic
json.dob                        v.dob
json.age                        v.age
json.gender                     v.gender
json.blood_group                v.blood_group

json.city do
  json.partial! "api/v1/cities/city", c: v.city, cached: true
end
json.current_address            v.current_address
json.hometown_address           v.hometown_address
json.educational_institute      v.educational_institute
json.degree_department          v.degree_department
json.professional_details       v.professional_details
json.causes do
  json.partial! "api/v1/causes/cause", collection: v.get_causes, as: :c, cached: true
end
json.skills do
  json.partial! "api/v1/skills/skill", collection: v.skills, as: :s, cached: true
end

json.area_of_interest           v.area_of_interest
json.availability               v.availability
json.availability_days          v.availability_days
json.availability_hours         v.availability_hours
json.marketing_medium           v.marketing_medium
json.picture_url                v.picture_url
json.education_level            v.education_level
json.subject_area               v.subject_area
json.about_yourself             v.about_yourself
json.facebook_link              v.facebook_link
json.twitter_link               v.twitter_link
json.linkedin_link              v.linkedin_link
json.instagram_link             v.instagram_link
json.snapchat_link              v.snapchat_link
json.complete_personal          v.complete_personal?
json.complete_professional      v.complete_professional?
json.complete_time_investment   v.complete_time_investment?
json.complete_socialization     v.complete_socialization?
json.complete                   v.complete?