"use strict";(self.webpackChunkAppTuristica=self.webpackChunkAppTuristica||[]).push([[63],{8063:(O,u,o)=>{o.r(u),o.d(u,{RespuestasModule:()=>b});var a=o(9808),p=o(1813),t=o(7587);let f=(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-crear"]],decls:2,vars:0,template:function(n,s){1&n&&(t.TgZ(0,"p"),t._uU(1,"crear works!"),t.qZA())},styles:[""]}),e})(),h=(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-editar"]],decls:2,vars:0,template:function(n,s){1&n&&(t.TgZ(0,"p"),t._uU(1,"editar works!"),t.qZA())},styles:[""]}),e})(),C=(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-eliminar"]],decls:2,vars:0,template:function(n,s){1&n&&(t.TgZ(0,"p"),t._uU(1,"eliminar works!"),t.qZA())},styles:[""]}),e})();var i=o(2382),x=o(2340),v=o(7948),Z=o(9783),c=o(3787),m=o(1424),l=o(845),d=o(1497);function T(e,r){if(1&e&&(t.TgZ(0,"p-accordionTab",8),t.TgZ(1,"h4"),t._uU(2,"Descripcion:"),t.qZA(),t.TgZ(3,"p"),t._uU(4),t.qZA(),t.TgZ(5,"h4"),t._uU(6,"Anexo:"),t.qZA(),t.TgZ(7,"p"),t._uU(8),t.qZA(),t.qZA()),2&e){const n=r.$implicit;t.xp6(4),t.hij(" ",n.descripcion,""),t.xp6(4),t.hij(" ",n.anexo,"")}}function U(e,r){if(1&e){const n=t.EpF();t.TgZ(0,"div",1),t.TgZ(1,"p-accordion"),t.TgZ(2,"p-accordionTab",2),t.TgZ(3,"h4"),t._uU(4,"Titulo:"),t.qZA(),t.TgZ(5,"p"),t._uU(6),t.qZA(),t.TgZ(7,"h4"),t._uU(8,"Descripcion:"),t.qZA(),t.TgZ(9,"p"),t._uU(10),t.qZA(),t.qZA(),t.YNc(11,T,9,2,"p-accordionTab",3),t.qZA(),t.TgZ(12,"form",4),t.NdJ("submit",function(){return t.CHM(n),t.oxw().submit()}),t.TgZ(13,"h1"),t._uU(14,"Responder a la solicitud"),t.qZA(),t._UZ(15,"textarea",5),t._UZ(16,"input",6),t._UZ(17,"button",7),t.qZA(),t.qZA()}if(2&e){const n=t.oxw();t.xp6(2),t.Q6J("selected",!0),t.xp6(4),t.hij(" ",n.data.pqrs.titulo,""),t.xp6(4),t.hij(" ",n.data.pqrs.description,""),t.xp6(1),t.Q6J("ngForOf",n.data.respuestas),t.xp6(1),t.Q6J("formGroup",n.form)}}const y=[{path:"ver",component:(()=>{class e{constructor(){}ngOnInit(){}}return e.\u0275fac=function(n){return new(n||e)},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-ver"]],decls:2,vars:0,template:function(n,s){1&n&&(t.TgZ(0,"p"),t._uU(1,"ver works!"),t.qZA())},styles:[""]}),e})()},{path:"crear",component:f},{path:"editar",component:h},{path:"eliminar",component:C},{path:"verDetalles",component:(()=>{class e{constructor(n,s,g,M){this.pqrsService=n,this.route=s,this.fb=g,this.messageService=M,this.API_URI=x.N.API_URI,this.id="",this.form=this.fb.group({anexo:["",i.kI.required],pqrs:this.id,descripcion:["",i.kI.required]})}ngOnInit(){this.token=localStorage.getItem("token"),this.traerRespuestas()}submit(){try{this.pqrsService.createPqrs(`${this.API_URI}/pqrs/respuesta/create/`,this.form.value,this.token).subscribe(n=>(this.form.reset(),this.messageService.add({severity:"success",summary:"Success",detail:"Creado correctamente"})))}catch(n){return console.log(n),this.messageService.add({severity:"error",summary:"Error",detail:"Hubo en error"})}}traerRespuestas(){this.route.queryParams.subscribe(n=>{this.id=n.id;try{this.pqrsService.getAllPqrs(`${this.API_URI}/pqrs/respuesta/pqrs/${n.id}/`,this.token).subscribe(s=>{this.data=s.data.results})}catch(s){console.log(s)}})}}return e.\u0275fac=function(n){return new(n||e)(t.Y36(v.K),t.Y36(p.gz),t.Y36(i.qu),t.Y36(Z.ez))},e.\u0275cmp=t.Xpm({type:e,selectors:[["app-ver-una"]],decls:2,vars:1,consts:[["class","main",4,"ngIf"],[1,"main"],["header","Solicitud",3,"selected"],["header","Respuestas",4,"ngFor","ngForOf"],[3,"formGroup","submit"],["rows","7","cols","10","placeholder","Descripcion","formControlName","descripcion","pInputTextarea",""],["type","text","pInputText","","placeholder","Anexo","formControlName","anexo"],["pButton","","pRipple","","type","submit","label","Responder",1,"p-button-success"],["header","Respuestas"]],template:function(n,s){1&n&&(t.YNc(0,U,18,5,"div",0),t._UZ(1,"p-toast")),2&n&&t.Q6J("ngIf",s.data)},directives:[a.O5,c.UQ,c.US,a.sg,i._Y,i.JL,i.sg,i.Fj,i.JJ,i.u,m.o,l.Hq,d.FN],styles:[".main[_ngcontent-%COMP%]{display:flex;justify-content:center;align-items:center;flex-direction:column}p-accordion[_ngcontent-%COMP%]{width:100%}form[_ngcontent-%COMP%]{background-color:#fff;box-shadow:0 2px 14px -3px #000;width:70%;border:1px solid rgba(128,128,128,.555);border-radius:10px;padding:20px;margin-top:20px;display:flex;justify-content:center;align-items:center;flex-direction:column}form[_ngcontent-%COMP%]   input[_ngcontent-%COMP%], textarea[_ngcontent-%COMP%]{margin-top:10px;width:100%}form[_ngcontent-%COMP%]   button[_ngcontent-%COMP%]{margin-top:10px;width:40%}"]}),e})()}];let A=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[p.Bz.forChild(y)],p.Bz]}),e})();var R=o(6697),q=o(5315),I=o(7307);let b=(()=>{class e{}return e.\u0275fac=function(n){return new(n||e)},e.\u0275mod=t.oAB({type:e}),e.\u0275inj=t.cJS({imports:[[a.ez,A,m.j,l.hJ,d.EV,R.U$,q.S,I.n,c.fx,i.u5,i.UX]]}),e})()}}]);