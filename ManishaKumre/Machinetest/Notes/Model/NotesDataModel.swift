//
//  NotesDataModel.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//
//MARK: NotesDataModel
import Foundation

struct NotesDataModel : Codable {
    let invites : Invites?
    let likes : Likes?

    enum CodingKeys: String, CodingKey {

        case invites = "invites"
        case likes = "likes"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        invites = try values.decodeIfPresent(Invites.self, forKey: .invites)
        likes = try values.decodeIfPresent(Likes.self, forKey: .likes)
    }

}
struct Mother_tongue : Codable {
    let id : Int?
    let name : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }

}
struct Highest_qualification_v1 : Codable {
    let id : Int?
    let name : String?
    let preference_only : Bool?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case preference_only = "preference_only"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        preference_only = try values.decodeIfPresent(Bool.self, forKey: .preference_only)
    }

}
struct Smoking_v1 : Codable {
    let id : Int?
    let name : String?
    let name_alias : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case name_alias = "name_alias"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        name_alias = try values.decodeIfPresent(String.self, forKey: .name_alias)
    }

}
struct Newprofiles : Codable {
    let general_information : General_information?
    let approved_time : Double?
    let disapproved_time : Double?
    let photos : [Photos]?
    let user_interests : [String]?
    let work : Work?
    let preferences : [Preferences]?
    let instagram_images : String?
    let last_seen_window : String?
    let is_facebook_data_fetched : Bool?
    let icebreakers : String?
    let story : String?
    let meetup : String?
    let verification_status : String?
    let has_active_subscription : Bool?
    let show_concierge_badge : Bool?
    let lat : Double?
    let lng : Double?
    let last_seen : String?
    let online_code : Int?
    let profile_data_list : [Profile_data_list]?

    enum CodingKeys: String, CodingKey {

        case general_information = "general_information"
        case approved_time = "approved_time"
        case disapproved_time = "disapproved_time"
        case photos = "photos"
        case user_interests = "user_interests"
        case work = "work"
        case preferences = "preferences"
        case instagram_images = "instagram_images"
        case last_seen_window = "last_seen_window"
        case is_facebook_data_fetched = "is_facebook_data_fetched"
        case icebreakers = "icebreakers"
        case story = "story"
        case meetup = "meetup"
        case verification_status = "verification_status"
        case has_active_subscription = "has_active_subscription"
        case show_concierge_badge = "show_concierge_badge"
        case lat = "lat"
        case lng = "lng"
        case last_seen = "last_seen"
        case online_code = "online_code"
        case profile_data_list = "profile_data_list"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        general_information = try values.decodeIfPresent(General_information.self, forKey: .general_information)
        approved_time = try values.decodeIfPresent(Double.self, forKey: .approved_time)
        disapproved_time = try values.decodeIfPresent(Double.self, forKey: .disapproved_time)
        photos = try values.decodeIfPresent([Photos].self, forKey: .photos)
        user_interests = try values.decodeIfPresent([String].self, forKey: .user_interests)
        work = try values.decodeIfPresent(Work.self, forKey: .work)
        preferences = try values.decodeIfPresent([Preferences].self, forKey: .preferences)
        instagram_images = try values.decodeIfPresent(String.self, forKey: .instagram_images)
        last_seen_window = try values.decodeIfPresent(String.self, forKey: .last_seen_window)
        is_facebook_data_fetched = try values.decodeIfPresent(Bool.self, forKey: .is_facebook_data_fetched)
        icebreakers = try values.decodeIfPresent(String.self, forKey: .icebreakers)
        story = try values.decodeIfPresent(String.self, forKey: .story)
        meetup = try values.decodeIfPresent(String.self, forKey: .meetup)
        verification_status = try values.decodeIfPresent(String.self, forKey: .verification_status)
        has_active_subscription = try values.decodeIfPresent(Bool.self, forKey: .has_active_subscription)
        show_concierge_badge = try values.decodeIfPresent(Bool.self, forKey: .show_concierge_badge)
        lat = try values.decodeIfPresent(Double.self, forKey: .lat)
        lng = try values.decodeIfPresent(Double.self, forKey: .lng)
        last_seen = try values.decodeIfPresent(String.self, forKey: .last_seen)
        online_code = try values.decodeIfPresent(Int.self, forKey: .online_code)
        profile_data_list = try values.decodeIfPresent([Profile_data_list].self, forKey: .profile_data_list)
    }

}

struct Profiles : Codable {
    let first_name : String?
    let avatar : String?

    enum CodingKeys: String, CodingKey {

        case first_name = "first_name"
        case avatar = "avatar"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
        avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
    }

}
struct General_information : Codable {
    let date_of_birth : String?
    let date_of_birth_v1 : String?
    let location : Location?
    let drinking_v1 : Drinking_v1?
    let first_name : String?
    let gender : String?
    let marital_status_v1 : Marital_status_v1?
    let ref_id : String?
    let smoking_v1 : Smoking_v1?
    let sun_sign_v1 : Sun_sign_v1?
    let mother_tongue : Mother_tongue?
    let faith : Faith?
    let height : Int?
    let cast : String?
    let kid : String?
    let diet : String?
    let politics : String?
    let pet : String?
    let settle : String?
    let mbti : String?
    let age : Int?

    enum CodingKeys: String, CodingKey {

        case date_of_birth = "date_of_birth"
        case date_of_birth_v1 = "date_of_birth_v1"
        case location = "location"
        case drinking_v1 = "drinking_v1"
        case first_name = "first_name"
        case gender = "gender"
        case marital_status_v1 = "marital_status_v1"
        case ref_id = "ref_id"
        case smoking_v1 = "smoking_v1"
        case sun_sign_v1 = "sun_sign_v1"
        case mother_tongue = "mother_tongue"
        case faith = "faith"
        case height = "height"
        case cast = "cast"
        case kid = "kid"
        case diet = "diet"
        case politics = "politics"
        case pet = "pet"
        case settle = "settle"
        case mbti = "mbti"
        case age = "age"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        date_of_birth = try values.decodeIfPresent(String.self, forKey: .date_of_birth)
        date_of_birth_v1 = try values.decodeIfPresent(String.self, forKey: .date_of_birth_v1)
        location = try values.decodeIfPresent(Location.self, forKey: .location)
        drinking_v1 = try values.decodeIfPresent(Drinking_v1.self, forKey: .drinking_v1)
        first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
        gender = try values.decodeIfPresent(String.self, forKey: .gender)
        marital_status_v1 = try values.decodeIfPresent(Marital_status_v1.self, forKey: .marital_status_v1)
        ref_id = try values.decodeIfPresent(String.self, forKey: .ref_id)
        smoking_v1 = try values.decodeIfPresent(Smoking_v1.self, forKey: .smoking_v1)
        sun_sign_v1 = try values.decodeIfPresent(Sun_sign_v1.self, forKey: .sun_sign_v1)
        mother_tongue = try values.decodeIfPresent(Mother_tongue.self, forKey: .mother_tongue)
        faith = try values.decodeIfPresent(Faith.self, forKey: .faith)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        cast = try values.decodeIfPresent(String.self, forKey: .cast)
        kid = try values.decodeIfPresent(String.self, forKey: .kid)
        diet = try values.decodeIfPresent(String.self, forKey: .diet)
        politics = try values.decodeIfPresent(String.self, forKey: .politics)
        pet = try values.decodeIfPresent(String.self, forKey: .pet)
        settle = try values.decodeIfPresent(String.self, forKey: .settle)
        mbti = try values.decodeIfPresent(String.self, forKey: .mbti)
        age = try values.decodeIfPresent(Int.self, forKey: .age)
    }

}
struct Preference_question : Codable {
    let first_choice : String?
    let second_choice : String?

    enum CodingKeys: String, CodingKey {

        case first_choice = "first_choice"
        case second_choice = "second_choice"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        first_choice = try values.decodeIfPresent(String.self, forKey: .first_choice)
        second_choice = try values.decodeIfPresent(String.self, forKey: .second_choice)
    }

}
struct Work : Codable {
    let industry_v1 : Industry_v1?
    let monthly_income_v1 : String?
    let experience_v1 : Experience_v1?
    let highest_qualification_v1 : Highest_qualification_v1?
    let field_of_study_v1 : Field_of_study_v1?

    enum CodingKeys: String, CodingKey {

        case industry_v1 = "industry_v1"
        case monthly_income_v1 = "monthly_income_v1"
        case experience_v1 = "experience_v1"
        case highest_qualification_v1 = "highest_qualification_v1"
        case field_of_study_v1 = "field_of_study_v1"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        industry_v1 = try values.decodeIfPresent(Industry_v1.self, forKey: .industry_v1)
        monthly_income_v1 = try values.decodeIfPresent(String.self, forKey: .monthly_income_v1)
        experience_v1 = try values.decodeIfPresent(Experience_v1.self, forKey: .experience_v1)
        highest_qualification_v1 = try values.decodeIfPresent(Highest_qualification_v1.self, forKey: .highest_qualification_v1)
        field_of_study_v1 = try values.decodeIfPresent(Field_of_study_v1.self, forKey: .field_of_study_v1)
    }

}
struct Likes : Codable {
    let profiles : [Profiles]?
    let can_see_profile : Bool?
    let likes_received_count : Int?

    enum CodingKeys: String, CodingKey {

        case profiles = "profiles"
        case can_see_profile = "can_see_profile"
        case likes_received_count = "likes_received_count"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        profiles = try values.decodeIfPresent([Profiles].self, forKey: .profiles)
        can_see_profile = try values.decodeIfPresent(Bool.self, forKey: .can_see_profile)
        likes_received_count = try values.decodeIfPresent(Int.self, forKey: .likes_received_count)
    }

}
struct Invites : Codable {
    let profiles : [Newprofiles]?
    let totalPages : Int?
    let pending_invitations_count : Int?

    enum CodingKeys: String, CodingKey {

        case profiles = "profiles"
        case totalPages = "totalPages"
        case pending_invitations_count = "pending_invitations_count"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        profiles = try values.decodeIfPresent([Newprofiles].self, forKey: .profiles)
        totalPages = try values.decodeIfPresent(Int.self, forKey: .totalPages)
        pending_invitations_count = try values.decodeIfPresent(Int.self, forKey: .pending_invitations_count)
    }

}
struct Field_of_study_v1 : Codable {
    let id : Int?
    let name : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }

}
struct Photos : Codable {
    let photo : String?
    let photo_id : Int?
    let selected : Bool?
    let status : String?

    enum CodingKeys: String, CodingKey {

        case photo = "photo"
        case photo_id = "photo_id"
        case selected = "selected"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        photo = try values.decodeIfPresent(String.self, forKey: .photo)
        photo_id = try values.decodeIfPresent(Int.self, forKey: .photo_id)
        selected = try values.decodeIfPresent(Bool.self, forKey: .selected)
        status = try values.decodeIfPresent(String.self, forKey: .status)
    }

}
struct Experience_v1 : Codable {
    let id : Int?
    let name : String?
    let name_alias : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case name_alias = "name_alias"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        name_alias = try values.decodeIfPresent(String.self, forKey: .name_alias)
    }

}
struct Location : Codable {
    let summary : String?
    let full : String?

    enum CodingKeys: String, CodingKey {

        case summary = "summary"
        case full = "full"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        summary = try values.decodeIfPresent(String.self, forKey: .summary)
        full = try values.decodeIfPresent(String.self, forKey: .full)
    }

}
struct Sun_sign_v1 : Codable {
    let id : Int?
    let name : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }

}
struct Industry_v1 : Codable {
    let id : Int?
    let name : String?
    let preference_only : Bool?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case preference_only = "preference_only"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        preference_only = try values.decodeIfPresent(Bool.self, forKey: .preference_only)
    }

}
struct Marital_status_v1 : Codable {
    let id : Int?
    let name : String?
    let preference_only : Bool?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case preference_only = "preference_only"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        preference_only = try values.decodeIfPresent(Bool.self, forKey: .preference_only)
    }

}
struct Profile_data_list : Codable {
    let question : String?
    let preferences : [Preferences]?
    let invitation_type : String?

    enum CodingKeys: String, CodingKey {

        case question = "question"
        case preferences = "preferences"
        case invitation_type = "invitation_type"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        question = try values.decodeIfPresent(String.self, forKey: .question)
        preferences = try values.decodeIfPresent([Preferences].self, forKey: .preferences)
        invitation_type = try values.decodeIfPresent(String.self, forKey: .invitation_type)
    }

}
struct Faith : Codable {
    let id : Int?
    let name : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
    }

}
struct Preferences : Codable {
    let answer_id : Int?
    let answer : String?
    let first_choice : String?
    let second_choice : String?

    enum CodingKeys: String, CodingKey {

        case answer_id = "answer_id"
        case answer = "answer"
        case first_choice = "first_choice"
        case second_choice = "second_choice"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        answer_id = try values.decodeIfPresent(Int.self, forKey: .answer_id)
        answer = try values.decodeIfPresent(String.self, forKey: .answer)
        first_choice = try values.decodeIfPresent(String.self, forKey: .first_choice)
        second_choice = try values.decodeIfPresent(String.self, forKey: .second_choice)
    }

}
struct Drinking_v1 : Codable {
    let id : Int?
    let name : String?
    let name_alias : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case name_alias = "name_alias"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        name_alias = try values.decodeIfPresent(String.self, forKey: .name_alias)
    }

}
