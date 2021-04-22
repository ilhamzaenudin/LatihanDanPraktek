import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Kelas } from '../model/kelas';
import { map } from 'rxjs/operators';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class MasterService {

  constructor(private htkl: HttpClient) { }

  listKelas(): Observable<Kelas[]> {
    return this.htkl.get(environment.baseUrl + '/getdata')
      .pipe(map(data => data as Kelas[]));
  }

  insertKelas(objData: Kelas): Observable<any> {
    return this.htkl.post(environment.baseUrl + '/savedata', objData);
  }

  getKelasById(id: string): Observable<any> {
    return this.htkl.get(environment.baseUrl + '/getdatabyid/' + id)
      .pipe(map(data => data));
  }
}