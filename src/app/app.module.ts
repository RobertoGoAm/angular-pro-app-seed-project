import { NgModule } from "@angular/core";
import { BrowserModule } from "@angular/platform-browser";
import { Routes, RouterModule } from "@angular/router";

import { Store } from "store";

// feature modules
import { AuthModule } from "../auth/auth.module";
import { HealthModule } from "../health/health.module";

// containers
import { AppComponent } from "./containers/app/app.component";

// components
import { AppHeaderComponent } from "./components/app-header/app-header.component";
import { AppNavComponent } from "./components/app-nav/app-nav.component";

// routes
export const ROUTES: Routes = [];

@NgModule({
  imports: [
    BrowserModule,
    RouterModule.forRoot(ROUTES),
    AuthModule,
    HealthModule
  ],
  declarations: [AppComponent, AppHeaderComponent, AppNavComponent],
  providers: [Store],
  bootstrap: [AppComponent]
})
export class AppModule {}

// <!-- The core Firebase JS SDK is always required and must be listed first -->
// <script src="https://www.gstatic.com/firebasejs/8.2.2/firebase-app.js"></script>

// <!-- TODO: Add SDKs for Firebase products that you want to use
//      https://firebase.google.com/docs/web/setup#available-libraries -->
// <script src="https://www.gstatic.com/firebasejs/8.2.2/firebase-analytics.js"></script>

// <script>
//   // Your web app's Firebase configuration
//   // For Firebase JS SDK v7.20.0 and later, measurementId is optional
//   var firebaseConfig = {
//     apiKey: "AIzaSyDtT9JOUR6_0zpZJhwh2c4KbQSnVP3WOsQ",
//     authDomain: "fitness-app-c1a45.firebaseapp.com",
//     databaseURL: "https://fitness-app-c1a45-default-rtdb.europe-west1.firebasedatabase.app",
//     projectId: "fitness-app-c1a45",
//     storageBucket: "fitness-app-c1a45.appspot.com",
//     messagingSenderId: "65117212478",
//     appId: "1:65117212478:web:6b9757ec1ea38f51e5a66f",
//     measurementId: "G-6V1E4LSR5V"
//   };
//   // Initialize Firebase
//   firebase.initializeApp(firebaseConfig);
//   firebase.analytics();
// </script>
