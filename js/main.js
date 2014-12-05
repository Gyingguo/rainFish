$(function() {
    (function() {   //初始化worker展示部分
        $.getJSON("json/worker.json", function(data) {
            render("worker.tpl", data, $(".container"));
        });
    })();

    window.onhashchange = function() {
        var hash = location.hash.replace("#!", "");
        var dataUrl = "json/" + hash + ".json";
        var templateName = hash + ".tpl";
        $.getJSON(dataUrl, function(data) {
           render(templateName, data, $(".container"));
        });
    };
});

var render = function(templateName ,data, rootNode) {
    var pageSource = null;
    var url = "/templates/" + templateName;

    function tryRender() {
        if (pageSource) {
            var template = Handlebars.compile(pageSource);
            rootNode.html(template(data));
        }
    }

    $.get(url, function(source) {
        pageSource = source;
        tryRender();
    })
};