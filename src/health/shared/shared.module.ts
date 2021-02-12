import { CommonModule } from "@angular/common";
import { ModuleWithProviders, NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";

// Third-party modules
import { AngularFireDatabaseModule } from "angularfire2/database";

// components
import { ListItemComponent } from "./components/list-item/list-item.component";

// Servides
import { MealsService } from "./services/meals/meals.service";

@NgModule({
  imports: [CommonModule, RouterModule, AngularFireDatabaseModule],
  declarations: [ListItemComponent],
  exports: [ListItemComponent]
})
export class SharedModule {
  static forRoot(): ModuleWithProviders {
    return {
      ngModule: SharedModule,
      providers: [MealsService]
    };
  }
}
