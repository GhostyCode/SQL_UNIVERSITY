import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http'

@Component({
  selector: 'app-actualizar-libro',
  templateUrl: './actualizar-libro.component.html',
  styleUrls: ['./actualizar-libro.component.css']
})

export class ActualizarLibroComponent implements OnInit {
  obj: any;
  columns: string[] = []; // Arreglo para almacenar los nombres de las columnas

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    this.fetchData();
  }

  fetchData(): void {
    this.http.get("http://127.0.0.1:8000/biblioteca/").subscribe(
      data => {
        this.obj = data;
        this.columns = Object.keys(this.obj[0]); // Obtener los nombres de las propiedades del primer objeto
      },
      error => {
        console.log(error);
      }
    );
  }

  updateData(): void {
    // Realizar las operaciones necesarias para actualizar los datos en el backend
    // y luego llamar a fetchData() para obtener los datos actualizados
    console.log("Actualizar datos");
    this.fetchData();
  }
}