## 2 : 1 Multiplexer

In 2:1 multiplexer, there are only two inputs,A0 and A1, 1 selection line, S0 and single outputs, Y. On the basis of the combination of inputs at the selection line S0, one of these 2 inputs will be connected to the output.

### Block Diagram


![block diagram](https://static.javatpoint.com/tutorial/digital-electronics/images/multiplexer.png)

### Truth Table

|S|A0|A1|Y|
|-|-|-|-|
|0|0|0|0|
|0|0|1|0|
|0|1|0|1|
|0|1|1|1|
| | | | |
|1|0|0|0|
|1|0|1|1|
|1|1|0|0|
|1|1|1|1|


**The Logical expression of 2 : 1 Multiplexer is -**

Y = S'.A0 + S.A1

But the simplest form of it is (According to CMOS),

Y = (A0.S'+A1.S)''<br>
=> Y = [(A0.S')'. (A1.S)']'

So, Circuit will be like this :

![circuit](./mux.png)

And the layout :

![layout](./2_1_mux_layout.png)


In IC form (6-pin):

![ic](./mux_ic_form.png)


> Use Electric for layout designing<br>
> And LTSpice for simulation


### Important

```bash
vdd vdd 0 DC 5
va A0 0 pulse 5 0 0 10n 10n 1u 2u
vb A1 0 pulse 5 0 0 10n 10n 1u 3u
vc A2 0 pulse 5 0 0 10n 10n 2u 4u
vd A3 0 pulse 5 0 0 10n 10n 2u 2u
vs1 S0 0 pulse 5 0 0 10n 10n 1u 5u
vs2 S1 0 pulse 5 0 0 10n 10n 1u 4u
.trans 20u
.include D:\Electric\projects\C5_models.txt
```

> Use it during simulation

[See VHDL code](./code.vhdl)

<br>

Author :<br>
[Amit Barman](https://abhisandhi.netlify.app/)<br>
ETC undergrad,IIESTS