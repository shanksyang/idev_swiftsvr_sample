import Vapor

let drop = Droplet()

drop.get("/idev_restful") { _ in
    return "Hello idev"
}

drop.run()
