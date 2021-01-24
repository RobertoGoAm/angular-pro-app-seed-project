import { CommonModule } from "@angular/common";
import { ModuleWithProviders, NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";

// Third-party modules
import { AngularFireDatabaseModule } from "angularfire2/database";

// Servides
import { MealsService } from "./services/meals/meals.service";

@NgModule({
  imports: [CommonModule, RouterModule, AngularFireDatabaseModule],
  declarations: []
})
export class SharedModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: SharedModule,
      providers: [MealsService]
    };
  }
}
