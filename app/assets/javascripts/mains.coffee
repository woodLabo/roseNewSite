# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
`
window.addEventListener('load', function () {
    var Close_nav = (function () {
        function Close_nav(anime) {
            this.anime = anime;
        }
        Close_nav.prototype.close_bt = function (target_el) {
            var close = document.querySelector("." + target_el);
            return close;
        };
        Close_nav.prototype.close_event = function (container_el) {
            var container = document.querySelector("." + container_el);
            container.classList.add(this.anime);
        };
        return Close_nav;
    }());
    var close_news = new Close_nav("fadeOut");
    var news_close = close_news.close_bt("news_close");
    var tweet_close = close_news.close_bt("tweet_close");
    var lives_close = close_news.close_bt("lives_close");
    if (document.querySelector(".news_close")) {
        news_close.addEventListener('click', function () {
            close_news.close_event("news");
        }, false);
    }
    if (document.querySelector(".tweet_close")) {
        tweet_close.addEventListener('click', function () {
            close_news.close_event("tweet_area");
        }, false);
    }
    if (document.querySelector(".lives_close")) {
        lives_close.addEventListener('click', function () {
            close_news.close_event("lives");
        }, false);
    }
}, false);`
