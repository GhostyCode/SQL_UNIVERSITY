import { ComponentFixture, TestBed } from '@angular/core/testing';

import { EliminarLibroComponent } from './eliminar-libro.component';

describe('EliminarLibroComponent', () => {
  let component: EliminarLibroComponent;
  let fixture: ComponentFixture<EliminarLibroComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [EliminarLibroComponent]
    });
    fixture = TestBed.createComponent(EliminarLibroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
