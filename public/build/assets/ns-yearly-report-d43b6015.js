import{h as b}from"./npm~moment-a9aaa855.js";import{c as w,e as k}from"./components-33a1bea5.js";import{g as v,n as C}from"./ns-prompt-popup-4f52d15c.js";import{a as x,b as m}from"./bootstrap-b8cd97d4.js";import{_ as a,n as D}from"./currency-dc6217f5.js";import{m as R}from"./npm~@vue~runtime-dom_-2c8e0ca9.js";import{_ as S}from"./_plugin-vue_export-helper-c27b6911.js";import{an as j,af as l,G as n,z,aH as y,M as f,A as h,H as e,aJ as F,F as d,al as u}from"./npm~@vue~runtime-core_-0a26b3ab.js";import{V as s}from"./npm~@vue~shared_-5bb087a6.js";import"./ns-alert-popup-f8b83fc1.js";import"./npm~numeral-304d6dd9.js";import"./npm~@ckeditor~ckeditor5-build-classic_-b5d88964.js";import"./npm~currency.js-57f74176.js";import"./npm~@vue~reactivity_-26e9e2f4.js";import"./ns-avatar-image-1c4f26a6.js";import"./npm~@dicebear~avatars_-24df7cd3.js";import"./npm~pure-color-28f75675.js";import"./npm~svgson-59868252.js";import"./npm~deep-rename-keys-9802c842.js";import"./npm~kind-of-f578382b.js";import"./npm~is-buffer-793dba8c.js";import"./npm~rename-keys-8dab041c.js";import"./npm~xml-reader-1f1b3f66.js";import"./npm~eventemitter3-e2795b41.js";import"./npm~xml-lexer-a4e87e97.js";import"./npm~@dicebear~avatars-avataaars-sprites_-796ded10.js";import"./npm~vue2-daterange-picker-c3e32574.js";import"./npm~vuedraggable-45210012.js";import"./npm~vue-0182d78b.js";import"./npm~@vue~compiler-dom_-ce2c1e21.js";import"./npm~@vue~compiler-core_-745c8708.js";import"./npm~sortablejs-1952ed83.js";import"./npm~vue-upload-component-5c82cdcf.js";import"./npm~lodash-3db1c062.js";import"./npm~rxjs-eeb06f17.js";import"./npm~tslib-8dbab242.js";import"./npm~@ckeditor~ckeditor5-vue_-4438b480.js";import"./npm~laravel-echo-0c2ba8ed.js";import"./npm~pusher-js-bd96ae31.js";import"./npm~axios-c24e582b.js";import"./npm~chart.js-3fed1729.js";import"./npm~rx-f450d610.js";import"./npm~@wordpress~hooks_-bd0b7221.js";import"./npm~mathjs-b10bd4cd.js";import"./npm~@babel~runtime_-9313f80d.js";import"./npm~decimal.js-d133ee8e.js";import"./npm~complex.js-dc0d19c5.js";import"./npm~fraction.js-cb0643cb.js";import"./npm~typed-function-de33f2d8.js";import"./npm~seedrandom-37239647.js";import"./npm~javascript-natural-sort-11e7fc54.js";import"./npm~escape-latex-404addb9.js";const N={name:"ns-yearly-report",props:["storeLogo","storeName"],mounted(){this.timezone!==""&&(this.year=ns.date.getMoment().format("Y"),this.loadReport())},components:{nsDatepicker:w,nsNotice:v,nsDateTimePicker:k},data(){return{startDate:b(),endDate:b(),report:{},timezone:ns.date.timeZone,year:"",ns:window.ns,labels:["month_paid_orders","month_taxes","month_expenses","month_income"]}},computed:{totalDebit(){return 0},totalCredit(){return 0}},methods:{__:a,nsCurrency:D,setStartDate(p){this.startDate=p.format()},setEndDate(p){this.endDate=p.format()},printSaleReport(){this.$htmlToPaper("annual-report")},sumOf(p){return Object.values(this.report).length>0?Object.values(this.report).map(c=>parseFloat(c[p])||0).reduce((c,_)=>c+_):0},recomputeForSpecificYear(){Popup.show(C,{title:a("Would you like to proceed ?"),message:a("The report will be computed for the current year, a job will be dispatched and you'll be informed once it's completed."),onAction:p=>{p&&x.post("/api/reports/compute/yearly",{year:this.year}).subscribe(c=>{m.success(c.message).subscribe()},c=>{m.success(c.message||a("An unexpected error has occurred.")).subscribe()})}})},getReportForMonth(p){return this.report[p]},loadReport(){const p=this.year;x.post("/api/reports/annual-report",{year:p}).subscribe(c=>{this.report=c},c=>{m.error(c.message).subscribe()})}}},T={class:"px-4"},A={key:1,class:"flex -mx-2"},B={class:"px-2"},M={class:"px-2 flex"},O=e("i",{class:"las la-sync-alt text-xl"},null,-1),P={class:"pl-2"},V={class:"px-2 flex"},Y=e("i",{class:"las la-print text-xl"},null,-1),E={class:"pl-2"},H={class:"px-2 flex"},J=e("i",{class:"las la-sync-alt text-xl"},null,-1),L={class:"pl-2"},U={key:2,id:"annual-report",class:"anim-duration-500 fade-in-entrance"},G={class:"flex w-full"},I={class:"my-4 flex justify-between w-full"},W={class:"text-secondary"},Z={class:"pb-1 border-b border-dashed"},q={class:"pb-1 border-b border-dashed"},K={class:"pb-1 border-b border-dashed"},Q=["src","alt"],X={class:"bg-box-background shadow rounded my-4 overflow-hidden"},$={class:"border-b border-box-edge overflow-auto"},ee={class:"table ns-table w-full"},te={class:""},re=e("th",{width:"100",class:"border p-2 text-left"},null,-1),se={width:"150",class:"border p-2 text-right"},oe={width:"150",class:"border p-2 text-right"},le={width:"150",class:"border p-2 text-right"},ne={width:"150",class:"border p-2 text-right"},ie={class:"border p-2 text-left"},ce={class:"border p-2 text-left"},de={class:"text-left border p-2"},ue={class:"text-left border p-2"},pe={class:"text-left border p-2"},_e={class:"text-left border p-2"},ae={class:"text-left border p-2"},me={class:"text-left border p-2"},he={class:"text-left border p-2"},be={class:"text-left border p-2"},xe={class:"text-left border p-2"},ye={class:"text-left border p-2"},fe={class:"text-left border p-2"};function ge(p,c,_,we,t,r){const g=j("ns-notice");return l(),n("div",T,[t.timezone===""?(l(),z(g,{key:0,color:"error"},{title:y(()=>[f(s(r.__("An Error Has Occured")),1)]),description:y(()=>[f(s(r.__("Unable to load the report as the timezone is not set on the settings.")),1)]),_:1})):h("",!0),t.timezone!==""?(l(),n("div",A,[e("div",B,[F(e("input",{type:"text","onUpdate:modelValue":c[0]||(c[0]=o=>t.year=o),placeholder:"{{ __( 'Year' ) }}",class:"outline-none rounded border-gray-400 border-2 focus:border-blue-400 p-2"},null,512),[[R,t.year]])]),e("div",M,[e("button",{onClick:c[1]||(c[1]=o=>r.loadReport()),class:"rounded flex justify-between bg-white shadow py-1 items-center text-gray-700 px-2"},[O,e("span",P,s(r.__("Load")),1)])]),e("div",V,[e("button",{onClick:c[2]||(c[2]=o=>r.printSaleReport()),class:"rounded flex justify-between bg-white shadow py-1 items-center text-gray-700 px-2"},[Y,e("span",E,s(r.__("Print")),1)])]),e("div",H,[e("button",{onClick:c[3]||(c[3]=o=>r.recomputeForSpecificYear()),class:"rounded flex justify-between bg-white shadow py-1 items-center text-gray-700 px-2"},[J,e("span",L,s(r.__("Recompute")),1)])])])):h("",!0),t.timezone!==""?(l(),n("div",U,[e("div",G,[e("div",I,[e("div",W,[e("ul",null,[e("li",Z,s(r.__("Date : {date}").replace("{date}",t.ns.date.current)),1),e("li",q,s(r.__("Document : Yearly Report")),1),e("li",K,s(r.__("By : {user}").replace("{user}",t.ns.user.username)),1)])]),e("div",null,[e("img",{class:"w-24",src:_.storeLogo,alt:_.storeName},null,8,Q)])])]),e("div",X,[e("div",$,[e("table",ee,[e("thead",te,[e("tr",null,[re,e("th",se,s(r.__("Sales")),1),e("th",oe,s(r.__("Taxes")),1),e("th",le,s(r.__("Expenses")),1),e("th",ne,s(r.__("Income")),1)])]),e("tbody",null,[e("tr",null,[e("td",ie,s(r.__("January")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[1]?t.report[1][o]:0)),1))),128))]),e("tr",null,[e("td",ce,s(r.__("Febuary")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[2]?t.report[2][o]:0)),1))),128))]),e("tr",null,[e("td",de,s(r.__("March")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[3]?t.report[3][o]:0)),1))),128))]),e("tr",null,[e("td",ue,s(r.__("April")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[4]?t.report[4][o]:0)),1))),128))]),e("tr",null,[e("td",pe,s(r.__("May")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[5]?t.report[5][o]:0)),1))),128))]),e("tr",null,[e("td",_e,s(r.__("June")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[6]?t.report[6][o]:0)),1))),128))]),e("tr",null,[e("td",ae,s(r.__("July")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[7]?t.report[7][o]:0)),1))),128))]),e("tr",null,[e("td",me,s(r.__("August")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[8]?t.report[8][o]:0)),1))),128))]),e("tr",null,[e("td",he,s(r.__("September")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[9]?t.report[9][o]:0)),1))),128))]),e("tr",null,[e("td",be,s(r.__("October")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[10]?t.report[10][o]:0)),1))),128))]),e("tr",null,[e("td",xe,s(r.__("November")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[11]?t.report[11][o]:0)),1))),128))]),e("tr",null,[e("td",ye,s(r.__("December")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(t.report[12]?t.report[12][o]:0)),1))),128))])]),e("tfoot",null,[e("tr",null,[e("td",fe,s(r.__("Total")),1),(l(!0),n(d,null,u(t.labels,(o,i)=>(l(),n("td",{key:i,class:"border p-2 text-right"},s(r.nsCurrency(r.sumOf(o))),1))),128))])])])])])])):h("",!0)])}const gt=S(N,[["render",ge]]);export{gt as default};
