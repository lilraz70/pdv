import{b as m,f as w}from"./components-33a1bea5.js";import{c as x}from"./npm~@vue~runtime-dom_-2c8e0ca9.js";import y from"./ns-alert-popup-f8b83fc1.js";import{n as C,d as L,b as Q,c as V}from"./ns-prompt-popup-4f52d15c.js";import{n as k,a as U}from"./ns-orders-preview-popup-5ab298e6.js";import{n as O}from"./ns-procurement-quantity-8246b955.js";import{_ as A,n as S}from"./currency-dc6217f5.js";import{a as q}from"./bootstrap-b8cd97d4.js";import{_ as B}from"./_plugin-vue_export-helper-c27b6911.js";import{an as a,af as n,G as c,H as e,c as d,aH as l,F as j,al as H,A as _,z as N}from"./npm~@vue~runtime-core_-0a26b3ab.js";import{V as s}from"./npm~@vue~shared_-5bb087a6.js";import{y as z}from"./npm~@vue~reactivity_-26e9e2f4.js";import"./ns-avatar-image-1c4f26a6.js";import"./npm~@dicebear~avatars_-24df7cd3.js";import"./npm~pure-color-28f75675.js";import"./npm~svgson-59868252.js";import"./npm~deep-rename-keys-9802c842.js";import"./npm~kind-of-f578382b.js";import"./npm~is-buffer-793dba8c.js";import"./npm~rename-keys-8dab041c.js";import"./npm~xml-reader-1f1b3f66.js";import"./npm~eventemitter3-e2795b41.js";import"./npm~xml-lexer-a4e87e97.js";import"./npm~@dicebear~avatars-avataaars-sprites_-796ded10.js";import"./npm~moment-a9aaa855.js";import"./npm~vue2-daterange-picker-c3e32574.js";import"./npm~@ckeditor~ckeditor5-build-classic_-b5d88964.js";import"./npm~vuedraggable-45210012.js";import"./npm~vue-0182d78b.js";import"./npm~@vue~compiler-dom_-ce2c1e21.js";import"./npm~@vue~compiler-core_-745c8708.js";import"./npm~sortablejs-1952ed83.js";import"./npm~vue-upload-component-5c82cdcf.js";import"./npm~lodash-3db1c062.js";import"./npm~rxjs-eeb06f17.js";import"./npm~tslib-8dbab242.js";import"./npm~@ckeditor~ckeditor5-vue_-4438b480.js";import"./npm~numeral-304d6dd9.js";import"./npm~currency.js-57f74176.js";import"./npm~laravel-echo-0c2ba8ed.js";import"./npm~pusher-js-bd96ae31.js";import"./npm~axios-c24e582b.js";import"./npm~chart.js-3fed1729.js";import"./npm~rx-f450d610.js";import"./npm~@wordpress~hooks_-bd0b7221.js";import"./npm~mathjs-b10bd4cd.js";import"./npm~@babel~runtime_-9313f80d.js";import"./npm~decimal.js-d133ee8e.js";import"./npm~complex.js-dc0d19c5.js";import"./npm~fraction.js-cb0643cb.js";import"./npm~typed-function-de33f2d8.js";import"./npm~seedrandom-37239647.js";import"./npm~javascript-natural-sort-11e7fc54.js";import"./npm~escape-latex-404addb9.js";const D={name:"ns-products-preview",props:["popup"],computed:{product(){return this.popup.params.product}},methods:{__:A,nsCurrency:S,changeActiveTab(t){this.active=t,this.active==="units-quantities"&&this.loadProductQuantities()},loadProductQuantities(){this.hasLoadedUnitQuantities=!1,q.get(`/api/products/${this.product.id}/units/quantities`).subscribe(t=>{this.unitQuantities=t,this.hasLoadedUnitQuantities=!0})}},data(){return{active:"units-quantities",unitQuantities:[],hasLoadedUnitQuantities:!1}},mounted(){this.loadProductQuantities()}},E={class:"shadow-lg w-6/7-screen lg:w-3/5-screen h-6/7-screen lg:h-4/5-screen ns-box overflow-hidden flex flex-col"},F={class:"p-2 border-b ns-box-header text-primary text-center font-medium flex justify-between items-center"},M={class:"flex-auto overflow-y-auto ns-box-body"},R={class:"p-2"},T={key:0,class:"table ns-table w-full"},G={class:"p-1 border"},I={width:"150",class:"text-right p-1 border"},W={width:"150",class:"text-right p-1 border"},J={width:"150",class:"text-right p-1 border"},K={class:"p-1 border text-left"},X={class:"p-1 border text-right"},Y={class:"p-1 border text-right"},Z={class:"p-1 border text-right"};function $(t,r,f,et,p,o){const b=a("ns-close-button"),P=a("ns-spinner"),v=a("ns-tabs-item"),g=a("ns-tabs");return n(),c("div",E,[e("div",F,[e("div",null,s(o.__("Previewing :"))+" "+s(o.product.name),1),e("div",null,[d(b,{onClick:r[0]||(r[0]=i=>f.popup.close())})])]),e("div",M,[e("div",R,[d(g,{active:p.active,onActive:r[1]||(r[1]=i=>o.changeActiveTab(i))},{default:l(()=>[d(v,{label:o.__("Units & Quantities"),identifier:"units-quantities"},{default:l(()=>[p.hasLoadedUnitQuantities?(n(),c("table",T,[e("thead",null,[e("tr",null,[e("th",G,s(o.__("Unit")),1),e("th",I,s(o.__("Sale Price")),1),e("th",W,s(o.__("Wholesale Price")),1),e("th",J,s(o.__("Quantity")),1)])]),e("tbody",null,[(n(!0),c(j,null,H(p.unitQuantities,i=>(n(),c("tr",{key:i.id},[e("td",K,s(i.unit.name),1),e("td",X,s(o.nsCurrency(i.sale_price)),1),e("td",Y,s(o.nsCurrency(i.wholesale_price)),1),e("td",Z,s(i.quantity),1)]))),128))])])):_("",!0),p.hasLoadedUnitQuantities?_("",!0):(n(),N(P,{key:1,size:"16",border:"4"}))]),_:1},8,["label"])]),_:1},8,["active"])])])])}const tt=B(D,[["render",$]]),h={nsOrderPreview:k,nsProductPreview:tt,nsAlertPopup:y,nsConfirmPopup:C,nsPromptPopup:L,nsMediaPopup:w,nsProcurementQuantity:O,nsOrdersRefund:U,nsSelectPopup:Q,nsPOSLoadingPopup:V};for(let t in h)window[t]=h[t];const u=x({data(){return{popups:[],defaultClass:"absolute top-0 left-0 w-full h-full items-center flex overflow-y-auto justify-center is-popup"}},mounted(){nsState.subscribe(t=>{t.popups!==void 0&&(this.popups=z(t.popups),this.$forceUpdate())})},methods:{closePopup(t,r){Object.values(r.target.classList).includes("is-popup")&&t.config!==void 0&&[void 0,!0].includes(t.config.closeOnOverlayClick)&&(r.stopPropagation(),t.close())},preventPropagation(t){t.stopImmediatePropagation()}}});for(let t in m)u.component(t,m[t]);document.addEventListener("DOMContentLoaded",()=>{u.mount("#dashboard-popups"),window.nsPopups=u});
