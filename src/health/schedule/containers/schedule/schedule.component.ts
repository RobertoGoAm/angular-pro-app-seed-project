import { Component, OnDestroy, OnInit } from "@angular/core";
import { Observable } from "rxjs/Observable";
import { Subscription } from "rxjs/Subscription";

import { Store } from "../../../../store";
import {
  ScheduleItem,
  ScheduleService
} from "../../../shared/services/schedule/schedule.service";

import {
  Workout,
  WorkoutsService
} from "../../../shared/services/workouts/workouts.service";
import {
  Meal,
  MealsService
} from "../../../shared/services/meals/meals.service";

@Component({
  selector: "schedule",
  styleUrls: ["schedule.component.scss"],
  template: `
    <div class="schedule">
      <schedule-calendar
        [date]="date$ | async"
        [items]="schedule$ | async"
        (change)="changeDate($event)"
        (select)="changeSection($event)"
      ></schedule-calendar>

      <schedule-assign
        *ngIf="open"
        [section]="selected$ | async"
        [list]="list$ | async"
      >
      </schedule-assign>
    </div>
  `
})
export class ScheduleComponent implements OnInit, OnDestroy {
  open = false;
  date$: Observable<Date>;
  selected$: Observable<any>;
  list$: Observable<Meal[] | Workout[]>;
  schedule$: Observable<ScheduleItem[]>;
  subscriptions: Subscription[] = [];

  constructor(
    private store: Store,
    private workoutsService: WorkoutsService,
    private mealService: MealsService,
    private scheduleService: ScheduleService
  ) {}

  changeDate(date: Date) {
    this.scheduleService.updateDate(date);
  }

  changeSection(event: any) {
    this.open = true;
    this.scheduleService.selectSection(event);
  }

  ngOnInit() {
    this.date$ = this.store.select("date");
    this.schedule$ = this.store.select("schedule");
    this.selected$ = this.store.select("selected");
    this.list$ = this.store.select("list");

    this.subscriptions = [
      this.scheduleService.schedule$.subscribe(),
      this.scheduleService.selected$.subscribe(),
      this.scheduleService.list$.subscribe(),
      this.mealService.meals$.subscribe(),
      this.workoutsService.workouts$.subscribe()
    ];
  }

  ngOnDestroy() {
    this.subscriptions.forEach((sub) => sub.unsubscribe());
  }
}
