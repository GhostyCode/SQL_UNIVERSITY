import { Component, OnInit } from '@angular/core';
// import { Product } from '../../domain/product';
// import { ProductService } from '../../service/productservice';
import { HttpClient } from '@angular/common/http'

@Component({
  selector: 'app-mostrar-libro',
  templateUrl: './mostrar-libro.component.html',
  styleUrls: ['./mostrar-libro.component.css']
})

export class MostrarLibroComponent implements OnInit{

  obj: any;
  columns: string[] = []; // Arreglo para almacenar los nombres de las columnas

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
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
}
