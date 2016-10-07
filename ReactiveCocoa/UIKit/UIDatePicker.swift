//
//  UIDatePicker.swift
//  Rex
//
//  Created by Guido Marucci Blas on 3/25/16.
//  Copyright © 2016 Neil Pankey. All rights reserved.
//

import ReactiveSwift
import enum Result.NoError
import UIKit

extension Reactive where Base: UIDatePicker {
	// Wraps a datePicker's `date` value in a bindable property.
	public var date: BindingTarget<Date> {
		return makeBindingTarget { $0.date = $1 }
	}

	public var dates: Signal<Date, NoError> {
		return trigger(for: .valueChanged).map { [unowned base] in base.date }
	}
}