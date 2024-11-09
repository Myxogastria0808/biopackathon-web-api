library(plumber)

# Title
#* @apiTitle Biopackathon Web API Sample
# Description
#* @apiDescription This web api is loadings web api sample
# TOS link
#* @apiTOS
# Contact object
#* @apiContact list(name = "Myxogastria0808", url = "https://github.com/Myxogastria0808/biopackathon-web-api", email = "r.rstudio.c@gmail.com")
# License object
#* @apiLicense list(name = "Apache 2.0", url = "https://www.apache.org/licenses/LICENSE-2.0.html")
# Version
#* @apiVersion 0.0.1
# Tag Description
#* @apiTag loadings "Biopackathon Web API Sample"

z
#* @filter cors
cors <- function(req, res) {
    res$setHeader("Access-Control-Allow-Origin", "*")
    if (req$REQUEST_METHOD == "OPTIONS") {
        res$setHeader("Access-Control-Allow-Methods", "GET")
        res$setHeader(
        "Access-Control-Allow-Headers",
        req$HTTP_ACCESS_CONTROL_REQUEST_HEADERS
        )
        res$status <- 200
        return(list())
    } else {
        plumber::forward()
    }
}

#* sample endpoint
#* ```
#* > function() {
#* >    "Hello, World!"
#* > }
#* ```
#* @get /
function() {
  "Hello, World!"
}
