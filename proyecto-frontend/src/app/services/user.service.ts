import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { APIResponse } from '../interfaces/interfaces';


const API_URL = environment.apiUrl;

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private http: HttpClient) { }


  signup(user: any) {
    return this.http.post<APIResponse>(`${API_URL}/users/signup`, user);
  }
}
