import { ComponentFixture, TestBed } from '@angular/core/testing';

import { MostrarLibroComponent } from './mostrar-libro.component';

describe('MostrarLibroComponent', () => {
  let component: MostrarLibroComponent;
  let fixture: ComponentFixture<MostrarLibroComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [MostrarLibroComponent]
    });
    fixture = TestBed.createComponent(MostrarLibroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
