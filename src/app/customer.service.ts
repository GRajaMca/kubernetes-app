import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {map} from 'rxjs/operators';
import {User} from "./user";

@Injectable({
  providedIn: 'root'
})
export class CustomerService {

  constructor(private httpClient: HttpClient) {
  }

  getCustomer(path: string) {
    return this.httpClient.get<User>(`/${path}`, {});
  }

  private convertResultCode(res) {
    /*const response = res.json();*/
    const response = res;
    if (response) {
      if (response.resultCode) {
        response.resultCode = +response.resultCode;
      }
    }
    return response;
  }
}
