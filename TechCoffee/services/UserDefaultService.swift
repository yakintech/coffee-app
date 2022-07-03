
import Foundation


class UserDefaultService{
    
    
    
    func setLogin(loginModel: LoginModel){
        
        if let encoded = try? JSONEncoder().encode(loginModel){
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "loginModel")
        }
        
    }
    
    func getLogin()-> LoginModel{
        
        let defaults = UserDefaults.standard
        if let userModel = defaults.object(forKey: "loginModel") as? Data {
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(LoginModel.self, from: userModel) {
                return user
            }
        }
        
        return LoginModel(email: "")
        
    }
    
    func setUserModel(userModel: UserModel){
        
        if let encoded = try? JSONEncoder().encode(userModel){
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: "userModel")
        }
    }
    
    func getUserModel() -> UserModel{

        let defaults = UserDefaults.standard
        if let userModel = defaults.object(forKey: "userModel") as? Data {
            let decoder = JSONDecoder()
            if let user = try? decoder.decode(UserModel.self, from: userModel) {
                return user
            }
        }
        
        return UserModel()
      
    }
    
    
    func setUserName(name: String){
        
        let defaults = UserDefaults.standard;
        defaults.set(name, forKey: "userName")
        
    }
    
    func getUserName() -> String{
        
        let defaults = UserDefaults.standard.string(forKey: "userName")
        return defaults ?? ""
    }
    
}
