Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB6B11562C
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Dec 2019 18:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E67EE877F5;
	Fri,  6 Dec 2019 17:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Jxlu6NeR9C0; Fri,  6 Dec 2019 17:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 986AE86B96;
	Fri,  6 Dec 2019 17:10:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DE7571BF41B
 for <devel@linuxdriverproject.org>; Fri,  6 Dec 2019 17:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DAFCD8907E
 for <devel@linuxdriverproject.org>; Fri,  6 Dec 2019 17:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qaKXdXuhzrcJ for <devel@linuxdriverproject.org>;
 Fri,  6 Dec 2019 17:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 508838899A
 for <devel@driverdev.osuosl.org>; Fri,  6 Dec 2019 17:10:08 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C16AF20706;
 Fri,  6 Dec 2019 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575652208;
 bh=cnUp3MMTWmr0jeElpcAs3FfhFQExmXjdVn6BToXvU58=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=T/fsoK61BtPcpSWGYW3vyJzZZGzL49IVAqUvYZLKfI8aMAwerC5jJZuhonYA36swL
 PVV5K8eo+JdsAZ60yZfhYV9oJQ05X0FpA27eT8vRrwgEJvlhnTNFjbBb5ku392S77T
 L6ODDYlDzGICXNs+hHGZF2qBAC0N9qlwL4X93JUY=
Date: Fri, 6 Dec 2019 17:10:02 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v5 2/2] dt-bindings: iio: accel: add binding
 documentation for ADIS16240
Message-ID: <20191206171002.2ad020e4@archlinux>
In-Reply-To: <20191205152129.GA13911@bogus>
References: <20191123233510.4890-1-rodrigorsdc@gmail.com>
 <20191123233510.4890-2-rodrigorsdc@gmail.com>
 <20191205152129.GA13911@bogus>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rodrigo Carvalho <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com,
 Stefan Popa <stefan.popa@analog.com>, Hartmut Knaack <knaack.h@gmx.de>,
 alexandru.ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 5 Dec 2019 09:21:29 -0600
Rob Herring <robh@kernel.org> wrote:

> On Sat, Nov 23, 2019 at 08:35:10PM -0300, Rodrigo Carvalho wrote:
> > This patch add device tree binding documentation for ADIS16240.
> > 
> > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>  
> 
> checkpatch.pl complains about a mismatch between the author and S-o-b.
The open question on patch 1 is resolved, so respin with the points Rob pointed
out her resolved and I'll pick up v6.

Thanks,

Jonathan

> 
> > ---
> > V5:
> >   - None 
> > 
> >  .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > new file mode 100644
> > index 000000000000..8e902f7c49e6
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0  
> 
> Dual license new bindings please: (GPL-2.0-only OR BSD-2-Clause)
> 
> With that,
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ADIS16240 Programmable Impact Sensor and Recorder driver
> > +
> > +maintainers:
> > +  - Alexandru Ardelean <alexandru.ardelean@analog.com>
> > +
> > +description: |
> > +  ADIS16240 Programmable Impact Sensor and Recorder driver that supports
> > +  SPI interface.
> > +    https://www.analog.com/en/products/adis16240.html
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,adis16240
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    spi0 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        /* Example for a SPI device node */
> > +        accelerometer@0 {
> > +            compatible = "adi,adis16240";
> > +            reg = <0>;
> > +            spi-max-frequency = <2500000>;
> > +            interrupt-parent = <&gpio0>;
> > +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > +    };
> > -- 
> > 2.24.0
> >   

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
