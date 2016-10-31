import Vapor

let drop = Droplet()

drop.get("/idev_restful") { request in
    guard let userId = request.data["id"]?.string else {
        throw Abort.badRequest
    }
    return try JSON(node: [
        "id": userId,
        "name": "shanks"
        ])
    
}

drop.post("/idev_restful") { request in
    guard let userId = request.data["id"]?.string, let userName = request.data["name"]?.string else {
        throw Abort.badRequest
    }
    return try JSON(node: [
        "id": userId,
        "name": userName
        ])

}

drop.put("/idev_restful") { request in
        return "Hello idev put"
}

drop.delete("/idev_restful") { request in
    return "Hello idev delete"
}
drop.run()
