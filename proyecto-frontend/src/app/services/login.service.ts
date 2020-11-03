import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { AuthService } from './auth.service';
import { BehaviorSubject } from 'rxjs';
import { map } from 'rxjs/operators';
import { environment } from '../../environments/environment';
import { APIResponse } from '../interfaces/interfaces';

@Injectable({
  providedIn: 'root'
})
export class LoginService {

  private loggedIn = new BehaviorSubject<boolean>(false);

  get isLoggedIn() {
    return this.loggedIn.asObservable();
  }

  doLogin( loginData: any ) {
    return this.http.post<APIResponse>(`${environment.apiUrl}/users/signin`, loginData)
      .pipe( map((resp) => {
        if (resp.success) {
          this.loggedIn.next(true);
        }
        return resp;
      }) );
  }

  constructor(private http: HttpClient,
              private router: Router,
              private auth: AuthService) { }


  doLogout() {
    sessionStorage.removeItem('token');
    this.loggedIn.next(false);
    this.router.navigate(['login']);
  }

  isAuthenticated(){
    if (this.auth.isAuthenticated()) {
      this.loggedIn.next(true);
    }
  }

}
