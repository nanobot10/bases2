import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { SwalService } from '../../services/swal.service';
import { FormService } from '../../services/form.service';
import { Router } from '@angular/router';
import { UserService } from 'src/app/services/user.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {

  form: FormGroup;

  constructor(private fb: FormBuilder,
              private fv: FormService,
              private router: Router,
              private userService: UserService,
              private swalService: SwalService) { }

  ngOnInit() {
    this.form = this.fb.group({
      name: ['', Validators.required],
      username: ['', Validators.required],
      password: ['', Validators.required],
      repeatPassword: ['', Validators.required]
    });
  }

  signUp() {
    if ( this.form.invalid ) {
      return this.fv.markFormGroupTouched(this.form);
    }

    if(this.form.value.password !== this.form.value.repeatPassword) {
      this.swalService.showError('Las contraseñas deben ser iguales');
      return;
    }
    
    this.swalService.showLoading('Guardando Información');

    const user = {
      name: this.form.value.name,
      username: this.form.value.username,
      password: this.form.value.password,
    };

    

    this.userService.signup(user)
      .subscribe( res => {
        if(res.success) {
          this.swalService.showSuccess('Éxito', res.message);
          this.form.reset();
          this.router.navigate(['login']);
        } else {
          this.swalService.showError(res.message);
        }
      }, err => {
        this.swalService.showUnknownError();
      })

  }


  get nameValid() {
    return this.form.get('name').invalid && this.form.get('name').touched;
  }

  get usernameValid() {
    return this.form.get('username').invalid && this.form.get('username').touched;
  }
  
  get passwordValid() {
    return this.form.get('password').invalid && this.form.get('password').touched;
  }
  get repeatPasswordValid() {
    return this.form.get('repeatPassword').invalid && this.form.get('repeatPassword').touched;
  }
}
