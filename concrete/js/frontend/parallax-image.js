!function(a,b){"use strict";var c=function(a,c){this.$element=b(a),this.$image=null,this.image=null,this.settings=b.fn.extend({variation:0,speed:.25,window:window},c),this.settings.variation&&(this.settings.speed=this.settings.variation/this.$element.height()/5),this.$window=b(this.settings.window)};c.prototype={init:function(){var a=this,c=b("<div/>").addClass("parallax-image-container"),d=new Image;d.onload=function(){a.image=d,a.$image=b(d).addClass("parallaxic-image"),a.bindListeners(),window.setTimeout(function(){a.handleResize(),a.render(),c.append(a.$image.hide().fadeIn())},0)},d.src=this.$element.data("background-image"),this.$element.addClass("parallaxic-container").prepend(c)},bindListeners:function(){var a=this;this.$window.on("resize",function(b){a.handleResize(),a.render()}).on("scroll",function(b){a.handleScroll(),a.render()})},handleResize:function(){var a=this.getFrame();a.determineScale(this),a.determineOffsetLeft(this),this.handleScroll()},handleScroll:function(){var a;this.isVisible()&&(a=this.getFrame(),a.determineOffsetTop(this),a.determineParallax(this))},isVisible:function(){var a=this.$window.scrollTop(),b=this.$window.height(),c=this.$element.offset().top,d=this.$element.height();return a+b>c&&a<c+d},render:function(){this.getFrame().render(this)},getFrame:function(){return this.frame||(this.frame=new d),this.frame}};var d=function(){this.scale=1,this.offset={x:0,y:0}};d.prototype={determineScale:function(a){var b,c=a.image.height,d=a.image.width,e=a.$window.height(),f=a.$element.height(),g=a.$element.width(),h=a.settings.speed,i=h*(e+f),j=f+i;d<g||c>j?(b=g/d,c*b>=j?this.scale=b:this.scale=j/c):this.scale=j/c,this.scale=Math.ceil(1e3*this.scale)/1e3},determineOffsetLeft:function(a){var b=a.image.width,c=a.$element.width(),d=b*this.scale,e=d-b+(c-d);this.offset.x=e/2},determineOffsetTop:function(a){var b=a.image.height,c=b*this.scale,d=c-b;this.offset.y=d/2},determineParallax:function(a){var b,c=a.settings.speed,d=a.$element,e=d.offset(),f=a.$window.scrollTop();b=f-e.top,this.offset.y+=b*c},render:function(a){var b="";b+="translate3d("+this.offset.x+"px,"+this.offset.y+"px, 0) ",b+="scale3d("+this.scale+","+this.scale+","+this.scale+")",a.$image.get(0).style.transform=b}},b.fn.parallaxize=function(a){var d,e=b(this);return e.data("parallax")?d=e.data("parallax"):(d=new c(this,a),b(this).data("parallax",d),d.init()),d}}(this,jQuery);