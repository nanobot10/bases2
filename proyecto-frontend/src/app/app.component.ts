import { Component, OnInit } from '@angular/core';
import { ApiService } from './services/api.service';
import { Chart } from 'chart.js';

const colors = [
  '#fa2d48',
  '#6b5c68',
  '#645e4d',
  '#bae1ff',
  '#f0d2da',
  '#1d431b',
  '#babbcd',
  '#ffe6bb',
  '#baffe1',
  '#cccab3',
  '#cee5ff',
  '#000047',
  '#6060c0',
  '#dbf0cb',
  '#00cba3',
  '#ef8700',
  '#904515'
];

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  
  title = 'Ranking Bancario';
  banks: any = null;
  anualRanking: any = null;
  rankingChart: any = null;

  

  constructor(private apiService: ApiService) {
  }

  ngOnInit() {
    this.apiService.getBanks()
      .subscribe( (res: any) => {
        console.log(res);
        this.banks = res.data;
      });

    this.apiService.getAnualRanking()
      .subscribe( (res: any) => {
        this.anualRanking = res.data;
        this.createChart();
      });
  }


  createChart() {
    
    const labels = [];

    let counter = 0;
    for(const item of this.anualRanking.metaData) {
      
      if(counter !== 0) {
        labels.push(item.name);
      }

      counter++;

    }

    console.log(labels);

    const datasets = [];

    counter = 0;
    for( const item of this.anualRanking.rows ) {
      datasets.push({
        data: item.slice(1),
        label: item[0],
        borderColor: colors[counter],
        fill: false
      });
      counter++;
    }

    this.rankingChart = new Chart('realtime', {
      type: 'line',
      data: {
        labels,
        datasets
      },
      options: {
        title: {
          display: true,
          text: 'Promedios Ranking Bancario Jul-19 a Jul-20'
        },
        responsive: true
      }
     });
  }

}
