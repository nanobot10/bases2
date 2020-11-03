import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment.prod';
import { APIResponse } from '../interfaces/interfaces';

const API_URL = environment.apiUrl;

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(private http: HttpClient) { }
  
  getBanks() {
    return this.http.get<APIResponse>(`${API_URL}/banks`);
  }


  getAnualRanking() {
    return this.http.get(`${API_URL}/banks/anual-ranking`);
  }


}
