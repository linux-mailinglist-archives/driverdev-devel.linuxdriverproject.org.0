Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B37110E1B2
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Dec 2019 12:40:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9BD8285785;
	Sun,  1 Dec 2019 11:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fz6MYpeIBb4B; Sun,  1 Dec 2019 11:40:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 871E385551;
	Sun,  1 Dec 2019 11:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24E7D1BF3BA
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 11:40:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 13AA087C41
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 11:40:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uagUDWSh5wpJ for <devel@linuxdriverproject.org>;
 Sun,  1 Dec 2019 11:40:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8029B87C3F
 for <devel@driverdev.osuosl.org>; Sun,  1 Dec 2019 11:40:37 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 005C620833;
 Sun,  1 Dec 2019 11:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575200437;
 bh=QADRPI/v7uWFrZlAU+lAp7qfdc0QVa9R92Z8HOa8KhA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IZpF2yGCdLXKN8JNr0Y7btEYg90Ty8DjDGwzbAQMzKDCMHYhZ1JMkeGoLlGRCSk4J
 G3aARmYvar7U0WdKDgaTQSI8TrJmXBz/fVU2xd8//C46c064OHw+/nE/j7VQhCiSZU
 DOE6vym2k+qL7osP6u4bcuBUDVZ1RaF5NKXtSzF0=
Date: Sun, 1 Dec 2019 11:40:32 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v4] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Message-ID: <20191201114032.1a972dda@archlinux>
In-Reply-To: <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
References: <20191123051927.5016-1-rodrigorsdc@gmail.com>
 <20191123114119.7b0c3447@archlinux>
 <a55b9c576eded8c91a985aabbba89180561ab156.camel@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 Mark Brown <broonie@kernel.org>, "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


+CC Mark as we probably need a more general view point on
the question of whether SPI mode should be enforced by binding
or in the driver.

On Mon, 25 Nov 2019 07:51:30 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Sat, 2019-11-23 at 11:41 +0000, Jonathan Cameron wrote:
> > On Sat, 23 Nov 2019 02:19:27 -0300
> > Rodrigo Carvalho <rodrigorsdc@gmail.com> wrote:
> >   
> > > This patch add device tree binding documentation for ADIS16240.
> > > 
> > > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>  
> 
> My bad for the late timing on this.
> I'm slightly more fresh on Mondays.
> But I will get overloaded with work in a few hours, so I may not have time
> ot respond.
> 
> > No problem with this patch, but I definitely want to see an accompanying
> > one enforcing the SPI mode in the driver.
> >   
> 
> So, then the binding should probably also define spi-cpol & spi-cpha
> as mandatory.
> Maybe, the driver would do a check and print a warning.
> 
> I'm noticing that this device uses SPI mode 3, but this DT binding defaults
> to SPI mode 0
> 
> > Right now the driver doesn't set it and so I'm fairly sure not putting
> > it in the binding will leave you with a non working device.
> > 
> > The right option if only one option is supported is for the driver
> > to call spi_setup with the relevant options.
> >   
> 
> What if the board uses some level inverters [because of some weird reason]
> and that messes up with the SPI mode?
> It's not common, but it is possible.

I have wondered the same and have a few boards that do this sort of thing.
My personal feeling is that such level convertors should have explicit
representation rather than being hidden in changes to
the devicetree.  Perhaps via a single input single output mux that
would wrap up the actions of any inverters in the path.

As you say, the alternative is to just leave it to the devicetree bindings.

Jonathan

> 
> > Thanks,
> > 
> > Jonathan
> >   
> > > ---
> > > V4:
> > >    - Remove spi-cpha and spi-cpol in binding example, since this driver
> > > supports only one timing mode.
> > >  .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
> > >  1 file changed, 49 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > > 
> > > diff --git
> > > a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > > b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > > new file mode 100644
> > > index 000000000000..8e902f7c49e6
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > > @@ -0,0 +1,49 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: ADIS16240 Programmable Impact Sensor and Recorder driver
> > > +
> > > +maintainers:
> > > +  - Alexandru Ardelean <alexandru.ardelean@analog.com>
> > > +
> > > +description: |
> > > +  ADIS16240 Programmable Impact Sensor and Recorder driver that
> > > supports
> > > +  SPI interface.
> > > +    https://www.analog.com/en/products/adis16240.html
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - adi,adis16240
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +    spi0 {
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        /* Example for a SPI device node */
> > > +        accelerometer@0 {
> > > +            compatible = "adi,adis16240";
> > > +            reg = <0>;
> > > +            spi-max-frequency = <2500000>;
> > > +            interrupt-parent = <&gpio0>;
> > > +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> > > +        };
> > > +    };  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
