import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { SwalService } from '../../services/swal.service';


@Component({
  selector: 'app-banks',
  templateUrl: './banks.component.html',
  styleUrls: ['./banks.component.css']
})
export class BanksComponent implements OnInit {

  banks: any;

  constructor(private apiService: ApiService,
              private swalService: SwalService) { }

  ngOnInit() {
    this.apiService.getBanks()
      .subscribe( res => {
        if(res.success) {
          this.banks = res.data;
        } else {
          this.swalService.showError(res.message);
        }
      }, err => {
        this.swalService.showUnknownError();
      })
  }

}
