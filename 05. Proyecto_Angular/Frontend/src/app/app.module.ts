import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './components/layout/header/header.component';
import { ContentComponent } from './components/layout/content/content.component';
import { FooterComponent } from './components/layout/footer/footer.component';
import { AsideComponent } from './components/layout/aside/aside.component';

import {MenubarModule} from 'primeng/menubar';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { PanelMenuModule } from 'primeng/panelmenu';
import { TableModule } from 'primeng/table';

import { MostrarLibroComponent } from './components/layout/content/content-components/libro/mostrar-libro/mostrar-libro.component';
import { EliminarLibroComponent } from './components/layout/content/content-components/libro/eliminar-libro/eliminar-libro.component';
import { AddLibroComponent } from './components/layout/content/content-components/libro/add-libro/add-libro.component';
import { ActualizarLibroComponent } from './components/layout/content/content-components/libro/actualizar-libro/actualizar-libro.component';

/* Conecion a API */ 
import {HttpClientModule} from '@angular/common/http'


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    ContentComponent,
    FooterComponent,
    AsideComponent,
    MostrarLibroComponent,
    EliminarLibroComponent,
    AddLibroComponent,
    ActualizarLibroComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    PanelMenuModule,
    TableModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
