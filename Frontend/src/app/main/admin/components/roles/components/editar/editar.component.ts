import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-editar',
  templateUrl: './editar.component.html',
  styleUrls: ['./editar.component.css']
})
export class EditarComponent implements OnInit {
  nombre?: string;
  blockSpecial: RegExp = /^[a-zA-Z0-9 ]*$/;

  ngOnInit(): void {
    // Aquí debes obtener los detalles del rol a editar y asignarlos a la variable "nombre"
    this.nombre = 'Nombre del Rol a Editar'; // Solo un ejemplo, debes obtener el nombre real desde tu backend o servicio
  }

  guardar() {
    // Aquí colocas la lógica para guardar los cambios del rol editado en tu backend o servicio
    console.log('Rol editado:', this.nombre);
  }

  cancelar() {
    // Aquí colocas la lógica para cancelar la edición y volver a la lista de roles
    console.log('Edición cancelada');
  }
}
