This is an example to show some basic object-oriented techniques in Objective-C such as:
1. Class
2. Object
3. Encapsulation
4. Inheritance
5. Abstraction
6. Polymorphism

We have a base class Vehicle and derived classes such as Car, Truck and Motorcycle.
Vehicle has some properties which are the common characteristics of any vehicle such as brand, model number, number of wheels, etc.
In Objectice-C, every class is a subclass of NSObject.
A vehicle has behaviors such as goForward(), goBackward(),  stop(), changeGears(), etc. These are the instance methods of Vehicle and all the subclasses override these methods. The subclasses can access all the public properties of Vehicle class and can also have their own instance variables.
The main class shows polymorphism where we create an array of objects and make each vehicle do a set of operations.


### How to execute using Xcode:
1. Download the folder VehicleDemo
2. Open a new project in XCode and select VehicleDemo
3. Click Build

Running the code will produce the following output:
```

############## Vehicle number 1 #############
Vehicle Details are: 
Number of wheels is 4
Brand name is Ford
Model name is Mustang
Model year is 1968
Power source is gas engine

Car specific details are: 
Number of doors are 2
Is it convertible? YES
Is it hatchback? NO
Does it have sunroof? NO


...Going forward...

Start power source gas engine.
Put Mustang into Forward gear.
Then depress gas pedal.

...Going backward...

Start power source gas engine.
Put Mustang into Reverse gear.
Check your rear view mirror. Then depress gas pedal.

...Making noise...

Beep beep!

...Stopping..

Depress gas pedal.
Put Mustang into Park gear.

############## Vehicle number 2 #############
Vehicle Details are: 
Number of wheels is 2
Brand name is Harley-Davidson
Model name is Softail
Model year is 1979
Power source is gas engine

Motorcycle specific details are: 
Engine noise Vrrrrrrrroooooooooom!


...Going forward...

Open throttle.
Put Softail into Forward gear.

...Going backward...

Put Softail into Neutral gear.
Walk Softail backwards using feet.

...Making noise...

Vrrrrrrrroooooooooom!

...Stopping..

Squeeze brakes

############## Vehicle number 3 #############
Vehicle Details are: 
Number of wheels is 4
Brand name is Chevrolet
Model name is Silverado
Model year is 2011
Power source is gas engine

Truck specific details are: 
Cargo capacity is 53


...Going forward...

Depress gas pedal.
Put Silverado into Drive gear.

...Going backward...

Depress gas pedal.
Put Silverado into Reverse gear.

...Making noise...

Beep beep!

...Stopping..

Depress gas pedal.
Put Silverado into Park gear.
```
