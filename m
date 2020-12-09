Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A0D2D4AA9
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 20:42:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD6FE87358;
	Wed,  9 Dec 2020 19:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZGCdk48yBRS; Wed,  9 Dec 2020 19:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B02DC8728C;
	Wed,  9 Dec 2020 19:42:39 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA8251BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 19:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A5F97204B4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 19:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 00gR1XQ1u65O
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 19:42:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bmail1.ministro.hu (bmail1.ministro.hu [5.249.150.236])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C974204AD
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 19:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTP id 602D9123AF7;
 Wed,  9 Dec 2020 20:42:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607542952;
 bh=umw3i716AA1RfHzauEg2V1/ls+eH/tEOpZLRHpRHjPc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eS78eQ3DXkYH0q0NAys4gAO5vp69q47sEYEpVbzjNxOBt2plp33STKVK/Z38B+Zw+
 Z616OzHihqsdtQzVQw36ljmW9SFq1E5PGcsb30vqG5AlAEVRT/vW7bG4YATDcQvHse
 pnqI/IFWBk1oJjebLiQ1yprxaZC5zTrG6Kn0TBRANVFHCAYJD9zfV46Ldun6I32EM3
 2cUadQWC+6aCEk19lqGspoBMDYE4WIRcWocm0MGwwOmg5R13a6XvQ6C6qXUJ+65Crx
 cU0GJpOG+STMg95jCQycxkMe+aJ3kMTtCCYDB3Vy7JEucUdCglwhiukeYXhCHNAAK1
 HXpW+7ZymB7Mg==
X-Virus-Scanned: Debian amavisd-new at ministro.hu
Received: from bmail1.ministro.hu ([127.0.0.1])
 by localhost (bmail1.ministro.hu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O-f_cmxzkNFt; Wed,  9 Dec 2020 20:41:55 +0100 (CET)
Received: from dincontrollerdev (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTPSA id 05045123AF4;
 Wed,  9 Dec 2020 20:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607542915;
 bh=umw3i716AA1RfHzauEg2V1/ls+eH/tEOpZLRHpRHjPc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TI7dIPr1jW2tZZkIrJPTo2HVn9JTxIyV/vwyd58YZ1C1Meq52o/v4sqRYYggwE4Xe
 9MaDR006ePPjZzd/RGDvka9lNKL9TdwUaZJpX8I3Kn3PKHl0pCo4IiwOQZVzV/lrG0
 J1SLvMQf4vQp4rIk3xHEWbI9u/TkGprubqytqlDPoB1rfiT8N6uaOAzvjQDPPkzdnI
 wwbEwECAFICaFKGM30uFBL1q0GNOHbV8Y3//7qFjcFDzi0NNSUk0/b/Q1ORYJwsmg/
 uTmMxLTlwf2whDdX/qoy1Vj8BwWjmX87px2sQW9BeTa8Agt+exVvCMqAovyHA2RL1V
 /BGZuJA6VW0ig==
Date: Wed, 9 Dec 2020 19:41:53 +0000
From: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
Message-ID: <20201209194153.GC30918@dincontrollerdev>
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
 <2907305.Mh6RI2rZIc@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2907305.Mh6RI2rZIc@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, linux-kernel@vger.kernel.org,
 'Rob Herring' <robh+dt@kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello J=E9r=F4me,

On Wed, Dec 09, 2020 at 06:38:08PM +0100, J=E9r=F4me Pouiller wrote:
> On Wednesday 9 December 2020 12:09:58 CET Info wrote:
> > =

> > This is a serial port driver for
> > Silicon Labs Si4455 Sub-GHz transciver.
> =

> Hello J=F3zsef,
> =

> Thank you for taking care of support of Silabs products :)

I think great products :) and great support :)

> =

> =

> > Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>
> =

> I think you have to use your personal address to sign-off.

I'm a self-employed, currently this is my "personal" e-mail address.

> =

> > ---
> >  .../bindings/staging/serial/silabs,si4455.txt |   39 +
> >  drivers/staging/Kconfig                       |    2 +
> >  drivers/staging/Makefile                      |    1 +
> >  drivers/staging/si4455/Kconfig                |    8 +
> >  drivers/staging/si4455/Makefile               |    2 +
> >  drivers/staging/si4455/TODO                   |    3 +
> >  drivers/staging/si4455/si4455.c               | 1465 +++++++++++++++++
> >  drivers/staging/si4455/si4455_api.h           |   56 +
> >  8 files changed, 1576 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> >  create mode 100644 drivers/staging/si4455/Kconfig
> >  create mode 100644 drivers/staging/si4455/Makefile
> >  create mode 100644 drivers/staging/si4455/TODO
> >  create mode 100644 drivers/staging/si4455/si4455.c
> >  create mode 100644 drivers/staging/si4455/si4455_api.h
> =

> Since you add a new directory, you should also update MAINTAINERS file
> (checkpatch didn't warn you about that?).
> =

> =

> > diff --git
> > a/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> > b/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> > new file mode 100644
> > index 000000000000..abd659b7b952
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
> > @@ -0,0 +1,39 @@
> > +* Silicon Labs Si4455 EASY-TO-USE, LOW-CURRENT OOK/(G)FSK SUB-GHZ
> > TRANSCEIVER
> =

> AFAIK, Si4455 is a programmable product. So I think that this driver only
> work if the Si4455 use a specific firmware, isn't? In this case, you
> should mention it in the documentation. =


Si4455 is programmed by silabs.
In case of C2A, it is possible to load patch.

My solution is to loading EZConfig(generated by WDS) and firmware patch wit=
h ioctl calls.
You can see the definitions in si4455_api.h.
A short example for EZConfig loading(patch loading will be exacly the same =
if Si4455 is rev C2A):
	...
	#include "si4455_api.h"
	...
	#include "radio.h"			//< Generated by WDS3
	#include "radio_config_Si4455.h"	//< Generated by WDS3
	...
	struct si4455_iocbuff iocbuff =3D { 0 };
	iocbuff.length =3D sizeof(Radio_Configuration_Data_Array);
	memcpy(iocbuff.data, Radio_Configuration_Data_Array, iocbuff.length);
	ret =3D ioctl(portFd, SI4455_IOC_SEZC, &iocbuff);
	...

After SI4455_IOC_SEZC or SI4455_IOC_SEZP ioctl calls, the driver resets the=
 Si4455, and apply the configuration/patch.

> =

> =

> > +
> > +Required properties:
> > +- compatible: Should be one of the following:
> > +  - "silabs,si4455" for Silicon Labs Si4455-B1A or Si4455-C2A (driver
> > automatically detects the part info),
> > +  - "silabs,si4455b1a" for Silicon Labs Si4455-B1A,
> > +  - "silabs,si4455c2a" for Silicon Labs Si4455-C2A,
> > +- reg: SPI chip select number.
> > +- interrupts: Specifies the interrupt source of the parent interrupt
> > +  controller. The format of the interrupt specifier depends on the
> > +  parent interrupt controller.
> > +- clocks: phandle to the IC source clock (only external clock source
> > supported).
> > +- spi-max-frequency: maximum clock frequency on SPI port
> > +- shdn-gpios: gpio pin for SDN
> > +
> > +Example:
> > +
> > +/ {
> > +       clocks {
> > +                si4455_1_2_osc: si4455_1_2_osc {
> > +                        compatible =3D "fixed-clock";
> > +                        #clock-cells =3D <0>;
> > +                        clock-frequency  =3D <30000000>;
> > +                };
> > +       };
> > +};
> > +
> > +&spi0 {
> > +       si4455: si4455@0 {
> > +               compatible =3D "silabs,si4455";
> > +               reg =3D <0>;
> > +               clocks =3D <&si4455_1_2_osc>;
> =

> It seems that the driver does not use this clock. So, is the clock
> attribute mandatory? What is the purpose of declaring a fixed-clock
> for this device?
> =


Yes you are right, but the uart subsystem maybe. I'll check it again, and i=
f does not, I'll remove these definitions.

> > +               interrupt-parent =3D <&gpio>;
> > +               interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
> > +                shdn-gpios =3D <&gpio 26 1>;
> > +                status =3D "okay";
> > +                spi-max-frequency =3D <3000000>;
> > +       };
> > +};
> =

> [...]
> =

> =

> > diff --git a/drivers/staging/si4455/Kconfig b/drivers/staging/si4455/Kc=
onfig
> > new file mode 100644
> > index 000000000000..666f726f2583
> > --- /dev/null
> > +++ b/drivers/staging/si4455/Kconfig
> > @@ -0,0 +1,8 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +config SERIAL_SI4455
> > +       tristate "Si4455 support"
> > +       depends on SPI
> > +       select SERIAL_CORE
> > +       help
> > +         This driver is for Silicon Labs's Si4455 Sub-GHz transciver.
> > +         Say 'Y' here if you wish to use it as serial port.
> =

> So, in fact, Si4455 is not a UART. I don't know how this kind of device
> should be presented to the userspace. Have you check if similar devices
> already exists in the kernel?

I know Si4455 is not a regular UART, but in my mind it is a half-duplex ser=
ial transport channel, like UART with RS-485.
This is the reason why I designed it among serial drivers.
The special funcions like tx/rx channel, package size are controlled with i=
octl calls.

> =

> I suggest to add linux-wpan@vger.kernel.org to the recipients of your
> patch.
> =

> =

> [...]
> > +static int si4455_get_part_info(struct uart_port *port,
> > +                               struct si4455_part_info *result)
> > +{
> > +       int ret;
> > +       u8 dataOut[] =3D { SI4455_CMD_ID_PART_INFO };
> > +       u8 dataIn[SI4455_CMD_REPLY_COUNT_PART_INFO];
> > +
> > +       ret =3D si4455_send_command_get_response(port,
> > +                                               sizeof(dataOut),
> > +                                               dataOut,
> > +                                               sizeof(dataIn),
> > +                                               dataIn);
> =

> Why not:
> =


I changed all like this in my code already. I test it, and I'll send it aga=
in.

Ps.: For my eyes is better to read line or list, reading table is harder :)

	line(arg1, arg2, arg3, arg4);

	list(arg1,
		arg2,
		arg3,
		arg4);

	table(arg1, arg2,
		arg3, arg4);


>        ret =3D si4455_send_command_get_response(port,
>                                               sizeof(*result), result,
>                                               sizeof(dataIn), dataIn);
> =

> > +       if (ret =3D=3D 0) {
> > +               result->CHIPREV =3D dataIn[0];
> > +               memcpy(&result->PART, &dataIn[1],sizeof(result->PART));
> > +               result->PBUILD =3D dataIn[3];
> > +               memcpy(&result->ID, &dataIn[4], sizeof(result->ID));
> > +               result->CUSTOMER =3D dataIn[6];
> > +               result->ROMID =3D dataIn[7];
> > +               result->BOND =3D dataIn[8];
> =

> ... it would avoid all these lines.
> =

> > +       } else {
> > +               dev_err(port->dev,
> > +                       "%s: si4455_send_command_get_response error(%i)=
",
> > +                       __func__,
> > +                       ret);
> > +       }
> > +       return ret;
> > +}
> =

> [...]
> =

> -- =

> J=E9r=F4me Pouiller
> =

> =


=DCdv=F6zlettel / Best regards:
J=F3zsef Horv=E1th

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
