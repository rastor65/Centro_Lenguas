"use strict";(self.webpackChunkAppTuristica=self.webpackChunkAppTuristica||[]).push([[597],{1592:(S,p,i)=>{i.r(p),i.d(p,{AsignacionModule:()=>E});var Z=i(9808),s=i(1813),t=i(7587);let A=(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-crear"]],decls:2,vars:0,template:function(n,r){1&n&&(t.TgZ(0,"p"),t._uU(1,"crear works!"),t.qZA())},styles:[""]}),e})(),h=(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-editar"]],decls:2,vars:0,template:function(n,r){1&n&&(t.TgZ(0,"p"),t._uU(1,"editar works!"),t.qZA())},styles:[""]}),e})(),T=(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-eliminar"]],decls:2,vars:0,template:function(n,r){1&n&&(t.TgZ(0,"p"),t._uU(1,"eliminar works!"),t.qZA())},styles:[""]}),e})();var f=i(2340),v=i(7948),c=i(6697),C=i(9783),l=i(845),u=i(1497),d=i(5315);function q(e,o){1&e&&(t.TgZ(0,"tr"),t.TgZ(1,"th"),t._uU(2,"Indice"),t.qZA(),t.TgZ(3,"th"),t._uU(4,"ID"),t.qZA(),t.TgZ(5,"th"),t._uU(6,"Titulo"),t.qZA(),t.TgZ(7,"th"),t._uU(8,"Tipo"),t.qZA(),t.TgZ(9,"th"),t._uU(10,"Persona"),t.qZA(),t.TgZ(11,"th"),t._uU(12,"Detalles"),t.qZA(),t.qZA())}function y(e,o){if(1&e){const n=t.EpF();t.TgZ(0,"tr"),t.TgZ(1,"td"),t._uU(2),t.qZA(),t.TgZ(3,"td"),t._uU(4),t.qZA(),t.TgZ(5,"td"),t._uU(6),t.qZA(),t.TgZ(7,"td"),t._uU(8),t.qZA(),t.TgZ(9,"td"),t._uU(10),t.qZA(),t.TgZ(11,"td"),t.TgZ(12,"button",9),t.NdJ("click",function(){const a=t.CHM(n).$implicit;return t.oxw().verDetalles(a)}),t.qZA(),t.qZA(),t.qZA()}if(2&e){const n=o.$implicit,r=o.rowIndex;t.xp6(2),t.Oqu(r),t.xp6(2),t.Oqu(n.id),t.xp6(2),t.Oqu(n.titulo),t.xp6(2),t.Oqu(n.tipopqrs),t.xp6(2),t.Oqu(n.persona)}}const U=function(){return{"min-width":"50rem"}},x=function(){return{width:"50vw",height:"70vh"}},O=[{path:"crear",component:A},{path:"ver",component:(()=>{class e{constructor(n,r){this.pqrsService=n,this.router=r,this.API_URI=f.N.API_URI,this.display=!1,this.solicitud={id:"",titulo:"",description:"",persona:"",tipopqrs:""}}ngOnInit(){this.token=localStorage.getItem("token"),this.traerSolicitudes()}traerSolicitudes(){try{this.pqrsService.getAllPqrs(`${this.API_URI}/pqrs`,this.token).subscribe(n=>{this.solicitudes=n.data.results,console.log(n)})}catch(n){}}verDetalles(n){this.display=!0,this.solicitud=n}atender(n){this.router.navigate(["/dashboard/pqrs/respuesta/verDetalles"],{queryParams:{id:n}})}}return e.\u0275fac=function(n){return new(n||e)(t.Y36(v.K),t.Y36(s.F0))},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-ver"]],decls:28,vars:14,consts:[[1,"main"],[3,"value","tableStyle"],["pTemplate","header"],["pTemplate","body"],["header","Detalles de solicitud",3,"visible","modal","draggable","resizable","visibleChange"],[1,"grid","dialog-form-crear","col-12","md:col-12","lg:col-12"],[1,"content"],[1,"body"],["label","Atender","icon","pi pi-check",3,"click"],["pButton","","pRipple","","type","button","icon","pi pi-eye",1,"p-button-rounded","p-button-secondary",3,"click"]],template:function(n,r){1&n&&(t.TgZ(0,"div",0),t.TgZ(1,"h1"),t._uU(2,"Atender solicitudes"),t.qZA(),t.TgZ(3,"p-table",1),t.YNc(4,q,13,0,"ng-template",2),t.YNc(5,y,13,5,"ng-template",3),t.qZA(),t.qZA(),t._UZ(6,"p-toast"),t.TgZ(7,"p-dialog",4),t.NdJ("visibleChange",function(a){return r.display=a}),t.TgZ(8,"div",5),t.TgZ(9,"div",6),t.TgZ(10,"div",7),t.TgZ(11,"h4"),t._uU(12,"Persona: "),t.qZA(),t.TgZ(13,"p"),t._uU(14),t.qZA(),t.TgZ(15,"h4"),t._uU(16,"Tipo: "),t.qZA(),t.TgZ(17,"p"),t._uU(18),t.qZA(),t.TgZ(19,"h4"),t._uU(20,"Titulo: "),t.qZA(),t.TgZ(21,"p"),t._uU(22),t.qZA(),t.TgZ(23,"h4"),t._uU(24,"Descripcion: "),t.qZA(),t.TgZ(25,"p"),t._uU(26),t.qZA(),t.qZA(),t.TgZ(27,"p-button",8),t.NdJ("click",function(){return r.atender(r.solicitud.id)}),t.qZA(),t.qZA(),t.qZA(),t.qZA()),2&n&&(t.xp6(3),t.Q6J("value",r.solicitudes)("tableStyle",t.DdM(12,U)),t.xp6(4),t.Akn(t.DdM(13,x)),t.Q6J("visible",r.display)("modal",!0)("draggable",!1)("resizable",!1),t.xp6(7),t.Oqu(r.solicitud.persona),t.xp6(4),t.hij(" ",r.solicitud.tipopqrs," "),t.xp6(4),t.Oqu(r.solicitud.titulo),t.xp6(4),t.Oqu(r.solicitud.description))},directives:[c.iA,C.jx,l.Hq,u.FN,d.V,l.zx],styles:[".main[_ngcontent-%COMP%]{display:flex;justify-content:center;align-items:center;flex-direction:column}.content[_ngcontent-%COMP%]{width:100%;height:100%;display:flex;justify-content:center;align-items:center;flex-direction:column}.content[_ngcontent-%COMP%]   p-button[_ngcontent-%COMP%]{margin-top:50px}"]}),e})()},{path:"editar",component:h},{path:"eliminar",component:T}];let I=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[s.Bz.forChild(O)],s.Bz]}),e})();var m=i(2382),b=i(1424),M=i(4036),V=i(7307),P=i(3407);let E=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[Z.ez,I,m.u5,m.UX,b.j,l.hJ,u.EV,c.U$,d.S,M.kW,V.n,P.A]]}),e})()}}]);