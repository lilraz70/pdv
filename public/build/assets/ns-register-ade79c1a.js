import{F as y,a as o,n as u,b as d}from"./bootstrap-b8cd97d4.js";import{_}from"./currency-dc6217f5.js";import{_ as F}from"./_plugin-vue_export-helper-c27b6911.js";import{f as T}from"./npm~rxjs-eeb06f17.js";import{an as l,af as s,G as r,H as t,F as V,al as X,z as w,A as h,c as m,aH as g,M as b}from"./npm~@vue~runtime-core_-0a26b3ab.js";import{V as c}from"./npm~@vue~shared_-5bb087a6.js";import"./npm~lodash-3db1c062.js";import"./npm~@ckeditor~ckeditor5-build-classic_-b5d88964.js";import"./npm~laravel-echo-0c2ba8ed.js";import"./npm~pusher-js-bd96ae31.js";import"./npm~axios-c24e582b.js";import"./npm~chart.js-3fed1729.js";import"./npm~moment-a9aaa855.js";import"./npm~vue-0182d78b.js";import"./npm~@vue~runtime-dom_-2c8e0ca9.js";import"./npm~@vue~reactivity_-26e9e2f4.js";import"./npm~@vue~compiler-dom_-ce2c1e21.js";import"./npm~@vue~compiler-core_-745c8708.js";import"./npm~rx-f450d610.js";import"./npm~@wordpress~hooks_-bd0b7221.js";import"./npm~mathjs-b10bd4cd.js";import"./npm~@babel~runtime_-9313f80d.js";import"./npm~decimal.js-d133ee8e.js";import"./npm~complex.js-dc0d19c5.js";import"./npm~fraction.js-cb0643cb.js";import"./npm~typed-function-de33f2d8.js";import"./npm~seedrandom-37239647.js";import"./npm~javascript-natural-sort-11e7fc54.js";import"./npm~escape-latex-404addb9.js";import"./npm~tslib-8dbab242.js";import"./npm~numeral-304d6dd9.js";import"./npm~currency.js-57f74176.js";const N={name:"ns-register",data(){return{fields:[],xXsrfToken:null,validation:new y}},mounted(){T([o.get("/api/fields/ns.register"),o.get("/sanctum/csrf-cookie")]).subscribe(n=>{this.fields=this.validation.createFields(n[0]),this.xXsrfToken=o.response.config.headers["X-XSRF-TOKEN"],setTimeout(()=>u.doAction("ns-register-mounted",this))})},methods:{__:_,register(){if(!this.validation.validateFields(this.fields))return d.error(_("Unable to proceed the form is not valid.")).subscribe();this.validation.disableFields(this.fields),u.applyFilters("ns-register-submit",!0)&&o.post("/auth/sign-up",this.validation.getValue(this.fields),{headers:{"X-XSRF-TOKEN":this.xXsrfToken}}).subscribe(e=>{d.success(e.message).subscribe(),setTimeout(()=>{document.location=e.data.redirectTo},1500)},e=>{this.validation.triggerFieldsErrors(this.fields,e),this.validation.enableFields(this.fields),d.error(e.message).subscribe()})}}},B={class:"ns-box rounded shadow overflow-hidden transition-all duration-100"},C={class:"ns-box-body"},S={class:"p-3 -my-2"},E={key:0,class:"py-2 fade-in-entrance anim-duration-300"},H={key:0,class:"flex items-center justify-center"},R={class:"flex w-full items-center justify-center py-4"},j={href:"/sign-in",class:"link hover:underline text-sm"},A={class:"flex ns-box-footer border-t justify-between items-center p-3"};function K(n,e,O,z,a,i){const v=l("ns-field"),k=l("ns-spinner"),p=l("ns-button");return s(),r("div",B,[t("div",C,[t("div",S,[a.fields.length>0?(s(),r("div",E,[(s(!0),r(V,null,X(a.fields,(f,x)=>(s(),w(v,{key:x,field:f},null,8,["field"]))),128))])):h("",!0)]),a.fields.length===0?(s(),r("div",H,[m(k)])):h("",!0),t("div",R,[t("a",j,c(i.__("Already registered ?")),1)])]),t("div",A,[t("div",null,[m(p,{onClick:e[0]||(e[0]=f=>i.register()),type:"info"},{default:g(()=>[b(c(i.__("Register")),1)]),_:1})]),t("div",null,[m(p,{link:!0,href:"/sign-in",type:"success"},{default:g(()=>[b(c(i.__("Sign In")),1)]),_:1})])])])}const be=F(N,[["render",K]]);export{be as default};
