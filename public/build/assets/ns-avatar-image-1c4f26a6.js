import{c}from"./npm~@dicebear~avatars_-24df7cd3.js";import{s as a}from"./npm~@dicebear~avatars-avataaars-sprites_-796ded10.js";import{_ as l}from"./_plugin-vue_export-helper-c27b6911.js";import{af as s,G as t,A as n}from"./npm~@vue~runtime-core_-0a26b3ab.js";import{z as i}from"./npm~@vue~shared_-5bb087a6.js";const o={name:"ns-avatar-image",props:["url","name","size"],data(){return{svg:"",currentSize:8}},mounted(){this.currentSize=this.size||8,this.svg=c(a,{seed:this.name})}},u=["src","alt"],m=["innerHTML"];function _(f,d,e,h,r,z){return s(),t("div",{class:i("h-"+r.currentSize+" w-"+r.currentSize)},[e.url!==""&&e.url!==null?(s(),t("img",{key:0,src:e.url,class:"overflow-hidden rounded-full",alt:e.name,srcset:""},null,8,u)):n("",!0),e.url===""||e.url===null?(s(),t("div",{key:1,class:i("h-"+r.currentSize+" w-"+r.currentSize),innerHTML:r.svg},null,10,m)):n("",!0)],2)}const x=l(o,[["render",_]]);export{x as n};
