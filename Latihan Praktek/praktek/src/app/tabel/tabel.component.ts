import { ChangeDetectionStrategy, Component, EventEmitter, Input, OnChanges, OnInit, Output, SimpleChange, SimpleChanges } from '@angular/core';
import { Data } from '../model/data';
import { MasterService } from '../service/master.service';

@Component({
  selector: 'app-tabel',
  templateUrl: './tabel.component.html',
  styleUrls: ['./tabel.component.css'],
  providers: [MasterService],
})
export class TabelComponent implements OnInit {

  dataList!: Data[];
  constructor(private ms: MasterService) { }

  ngOnInit(): void {
    this.ms.listData().subscribe((data) => {
      this.dataList = data;
    })
  }

}