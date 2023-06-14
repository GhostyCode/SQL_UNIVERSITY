import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MostrarLibroComponent } from './components/layout/content/content-components/libro/mostrar-libro/mostrar-libro.component';
import { ActualizarLibroComponent } from './components/layout/content/content-components/libro/actualizar-libro/actualizar-libro.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: '/',
    pathMatch: 'full'
  },
  {
    path: 'mostrar-libro',
    component: MostrarLibroComponent
  },
  {
    path: 'actualizar-libro',
    component: ActualizarLibroComponent
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
