import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

// third-party modules
import { AngularFireModule, FirebaseAppConfig } from "angularfire2";
import { AngularFireAuthModule } from "angularfire2/auth";
import { AngularFireDatabaseModule } from "angularfire2/database";

// shared modules
import { SharedModule } from "./shared/shared.module";

export const ROUTES: Routes = [
  {
    path: "auth",
    children: [
      { path: "", pathMatch: "full", redirectTo: "login" },
      { path: "login", loadChildren: "./login/login.module#LoginModule" },
      {
        path: "register",
        loadChildren: "./register/register.module#RegisterModule"
      }
    ]
  }
];

export const firebaseConfig: FirebaseAppConfig = {
  apiKey: "AIzaSyDtT9JOUR6_0zpZJhwh2c4KbQSnVP3WOsQ",
  authDomain: "fitness-app-c1a45.firebaseapp.com",
  databaseURL:
    "https://fitness-app-c1a45-default-rtdb.europe-west1.firebasedatabase.app",
  projectId: "fitness-app-c1a45",
  storageBucket: "fitness-app-c1a45.appspot.com",
  messagingSenderId: "65117212478"
  // appId: "1:65117212478:web:6b9757ec1ea38f51e5a66f",
  // measurementId: "G-6V1E4LSR5V"
};

@NgModule({
  imports: [
    CommonModule,
    RouterModule.forChild(ROUTES),
    AngularFireModule.initializeApp(firebaseConfig),
    AngularFireAuthModule,
    AngularFireDatabaseModule,
    SharedModule.forRoot()
  ],
  declarations: [],
  providers: []
})
export class AuthModule {}
