var w=function(n,i){return w=Object.setPrototypeOf||{__proto__:[]}instanceof Array&&function(e,o){e.__proto__=o}||function(e,o){for(var a in o)Object.prototype.hasOwnProperty.call(o,a)&&(e[a]=o[a])},w(n,i)};function v(n,i){if(typeof i!="function"&&i!==null)throw new TypeError("Class extends value "+String(i)+" is not a constructor or null");w(n,i);function e(){this.constructor=n}n.prototype=i===null?Object.create(i):(e.prototype=i.prototype,new e)}function m(n,i,e,o){function a(t){return t instanceof e?t:new e(function(u){u(t)})}return new(e||(e=Promise))(function(t,u){function c(f){try{r(o.next(f))}catch(y){u(y)}}function s(f){try{r(o.throw(f))}catch(y){u(y)}}function r(f){f.done?t(f.value):a(f.value).then(c,s)}r((o=o.apply(n,i||[])).next())})}function S(n,i){var e={label:0,sent:function(){if(t[0]&1)throw t[1];return t[1]},trys:[],ops:[]},o,a,t,u;return u={next:c(0),throw:c(1),return:c(2)},typeof Symbol=="function"&&(u[Symbol.iterator]=function(){return this}),u;function c(r){return function(f){return s([r,f])}}function s(r){if(o)throw new TypeError("Generator is already executing.");for(;u&&(u=0,r[0]&&(e=0)),e;)try{if(o=1,a&&(t=r[0]&2?a.return:r[0]?a.throw||((t=a.return)&&t.call(a),0):a.next)&&!(t=t.call(a,r[1])).done)return t;switch(a=0,t&&(r=[r[0]&2,t.value]),r[0]){case 0:case 1:t=r;break;case 4:return e.label++,{value:r[1],done:!1};case 5:e.label++,a=r[1],r=[0];continue;case 7:r=e.ops.pop(),e.trys.pop();continue;default:if(t=e.trys,!(t=t.length>0&&t[t.length-1])&&(r[0]===6||r[0]===2)){e=0;continue}if(r[0]===3&&(!t||r[1]>t[0]&&r[1]<t[3])){e.label=r[1];break}if(r[0]===6&&e.label<t[1]){e.label=t[1],t=r;break}if(t&&e.label<t[2]){e.label=t[2],e.ops.push(r);break}t[2]&&e.ops.pop(),e.trys.pop();continue}r=i.call(n,e)}catch(f){r=[6,f],a=0}finally{o=t=0}if(r[0]&5)throw r[1];return{value:r[0]?r[1]:void 0,done:!0}}}function _(n){var i=typeof Symbol=="function"&&Symbol.iterator,e=i&&n[i],o=0;if(e)return e.call(n);if(n&&typeof n.length=="number")return{next:function(){return n&&o>=n.length&&(n=void 0),{value:n&&n[o++],done:!n}}};throw new TypeError(i?"Object is not iterable.":"Symbol.iterator is not defined.")}function x(n,i){var e=typeof Symbol=="function"&&n[Symbol.iterator];if(!e)return n;var o=e.call(n),a,t=[],u;try{for(;(i===void 0||i-- >0)&&!(a=o.next()).done;)t.push(a.value)}catch(c){u={error:c}}finally{try{a&&!a.done&&(e=o.return)&&e.call(o)}finally{if(u)throw u.error}}return t}function g(n,i,e){if(e||arguments.length===2)for(var o=0,a=i.length,t;o<a;o++)(t||!(o in i))&&(t||(t=Array.prototype.slice.call(i,0,o)),t[o]=i[o]);return n.concat(t||Array.prototype.slice.call(i))}function d(n){return this instanceof d?(this.v=n,this):new d(n)}function E(n,i,e){if(!Symbol.asyncIterator)throw new TypeError("Symbol.asyncIterator is not defined.");var o=e.apply(n,i||[]),a,t=[];return a={},u("next"),u("throw"),u("return"),a[Symbol.asyncIterator]=function(){return this},a;function u(l){o[l]&&(a[l]=function(h){return new Promise(function(p,b){t.push([l,h,p,b])>1||c(l,h)})})}function c(l,h){try{s(o[l](h))}catch(p){y(t[0][3],p)}}function s(l){l.value instanceof d?Promise.resolve(l.value.v).then(r,f):y(t[0][2],l)}function r(l){c("next",l)}function f(l){c("throw",l)}function y(l,h){l(h),t.shift(),t.length&&c(t[0][0],t[0][1])}}function I(n){if(!Symbol.asyncIterator)throw new TypeError("Symbol.asyncIterator is not defined.");var i=n[Symbol.asyncIterator],e;return i?i.call(n):(n=typeof _=="function"?_(n):n[Symbol.iterator](),e={},o("next"),o("throw"),o("return"),e[Symbol.asyncIterator]=function(){return this},e);function o(t){e[t]=n[t]&&function(u){return new Promise(function(c,s){u=n[t](u),a(c,s,u.done,u.value)})}}function a(t,u,c,s){Promise.resolve(s).then(function(r){t({value:r,done:c})},u)}}export{_,g as a,x as b,v as c,E as d,S as e,d as f,m as g,I as h};
