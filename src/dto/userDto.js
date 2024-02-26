export class UserDto{
    constructor({user_id, userId, nickname}){
        this.userId = user_id ?? userId
        this.nickname = nickname
    }
}