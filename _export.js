// https://runtime.fivem.net/doc/reference.html
var script = document.createElement("script");
script.type = "text/javascript";
script.src = "https://code.jquery.com/jquery-3.2.1.min.js";
document.head.appendChild(script);
String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
};
$("main").each(function() {
	var doc = "";
	var $main = $(this);
	var module = $main.data("name").toLowerCase();
	var $sections = $main.find("section");
	$sections.each(function() {
		var $section = $(this);
		var original = $section.data("native");
		if(!original.startsWith("0x") && !original.startsWith("_")) {
			var method = {};
			method.module = "native";
			method.submodule = module;
			method.native = original;
			method.function = original.toLowerCase().capitalize().replace(/_([a-z])/g, function (g) { return g[1].toUpperCase(); });
			method.description = $section.find(".desc").text().trim();
			method.usage = $section.find(".code").text().trim().split("\n")[1].trim();
			var splittedUsage = method.usage.split(" ");
			method.return = splittedUsage.shift().trim();
			method.see = splittedUsage.join(" ").trim();
			method.params = {};
			$.each(method.see.match("\\((.*)\\)")[1].split(","), function() {
			    if(this.trim() != "") {
                    var param = this.trim().split(" ");
                    method.params[param[1]] = param[0];
				}
			});
			console.log(method.params);

			var description = method.description.split("\n").join(" ").trim();
			doc += ""
				+ "-- "+(description == "" ? "@todo" : description)+"\n"
				+ "-- @module "+method.module+"\n"
				+ "-- @submodule "+method.submodule+"\n"
				+ "-- @see "+method.native+"\n"
				+ "-- @usage "+method.usage+"\n";
			$.each(method.params, function(name, type) {
				doc += "-- @param "+name+" "+type+"\n";
			});
			doc += "-- @return "+method.return+"\n";
			var methodParams = "";
			if(Object.keys(method.params).length > 0) {
			    methodParams = Object.keys(method.params).join(", ");
			}
			doc += "function "+method.function+"("+methodParams+") end"+"\n\n";
		}
	});
	$main.html(
	    "<h4>"+module+"</h4><textarea rows='5'>"+doc.trim()+"</textarea>"
    );
});
