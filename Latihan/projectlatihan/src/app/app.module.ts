import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CobaComponent } from './coba/coba.component';
import { FormComponent } from './form/form.component';
import { DetailKelasComponent } from './detail-kelas/detail-kelas.component';
import { HttpClientModule } from '@angular/common/http';
import { DaftarkelasComponent } from './daftarkelas/daftarkelas.component';
import { Form2Component } from './form2/form2.component';

@NgModule({
  declarations: [
    AppComponent,
    CobaComponent,
    FormComponent,
    DetailKelasComponent,
    DaftarkelasComponent,
    Form2Component
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
