import {Component, OnInit} from '@angular/core';
import {CustomerService} from './customer.service';
import {User} from "./user";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'kubernetes-app';
  user: User | undefined;

  constructor(private customerService: CustomerService) {
  }

  ngOnInit(): void {
    this.customerService.getCustomer('/customer/user').subscribe((value: User) => this.user = value);
  }

}
