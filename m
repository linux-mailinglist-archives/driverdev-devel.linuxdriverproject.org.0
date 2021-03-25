Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F68349343
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Mar 2021 14:48:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1A0E240544;
	Thu, 25 Mar 2021 13:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIarh5mzwD4H; Thu, 25 Mar 2021 13:48:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26A1A4053C;
	Thu, 25 Mar 2021 13:48:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E42D31BF2BC
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 13:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D269B40F4D
 for <devel@linuxdriverproject.org>; Thu, 25 Mar 2021 13:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ZnbaeV4Hbu4 for <devel@linuxdriverproject.org>;
 Thu, 25 Mar 2021 13:47:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7207B40F4C
 for <devel@driverdev.osuosl.org>; Thu, 25 Mar 2021 13:47:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7088161A0F;
 Thu, 25 Mar 2021 13:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616680070;
 bh=rbWgT8Nk/uYvrxfv2Q3Zxu0QvvEsgpltMM38kZY5nns=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Is+XHdO3sb4UPUtdEOQelQf7JpDhKMGXlHz/+nMBUDGKMwzJxakfmypUKmWBwdELr
 T8Uq990sjxW1hH+jU0jdKZacd8O6y5GqXd3aV88ddiNZCA7h9KTdcfYXKntMSIF8ej
 FRBlOhM96UbHf+Hixl05+0W3kg+UTEQ+fodZquDanUac9xPXv+QoIwusCS6+5HszGy
 9afklPQ6RhWF9fDktc6UwD4SU8TUI1WjKwY027QShsN2zqLWUru6idkVOG0hBL0jFD
 SuwsI6hjhy3+XzIvyki3xHbXYym5jcxClyCRQOCblq763YB/7SwR4BcFRKQKM1eUlJ
 U0Z9/e17lkaFA==
Date: Thu, 25 Mar 2021 14:47:43 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 17/21] spmi: hisi-spmi-controller: move driver from
 staging
Message-ID: <20210325144743.2d740a06@coco.lan>
In-Reply-To: <20210205221947.GA3848249@robh.at.kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <b74098493891d0e7386c3cdb4e466aed9450b1d9.1611072387.git.mchehab+huawei@kernel.org>
 <20210205221947.GA3848249@robh.at.kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
 Mayulong <mayulong1@huawei.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 5 Feb 2021 16:19:47 -0600
Rob Herring <robh@kernel.org> escreveu:

> On Tue, Jan 19, 2021 at 05:10:43PM +0100, Mauro Carvalho Chehab wrote:
> > The Hisilicon 6421v600 SPMI driver is ready for mainstream.
> > 
> > So, move it from staging.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  .../spmi/hisilicon,hisi-spmi-controller.yaml  |  75 ++++
> >  MAINTAINERS                                   |   7 +
> >  drivers/spmi/Kconfig                          |   9 +
> >  drivers/spmi/Makefile                         |   1 +
> >  drivers/spmi/hisi-spmi-controller.c           | 358 ++++++++++++++++++
> >  drivers/staging/hikey9xx/Kconfig              |  11 -
> >  drivers/staging/hikey9xx/Makefile             |   1 -
> >  .../staging/hikey9xx/hisi-spmi-controller.c   | 358 ------------------
> >  .../hisilicon,hisi-spmi-controller.yaml       |  75 ----
> >  9 files changed, 450 insertions(+), 445 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
> >  create mode 100644 drivers/spmi/hisi-spmi-controller.c
> >  delete mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
> >  delete mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
> > new file mode 100644
> > index 000000000000..21f68a9c2df1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
> > @@ -0,0 +1,75 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/spmi/hisilicon,hisi-spmi-controller.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: HiSilicon SPMI controller
> > +
> > +maintainers:
> > +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > +
> > +description: |
> > +  The HiSilicon SPMI BUS controller is found on some Kirin-based designs.
> > +  It is a MIPI System Power Management (SPMI) controller.
> > +
> > +  The PMIC part is provided by
> > +  drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml.
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "spmi@[0-9a-f]"
> > +
> > +  compatible:
> > +    const: hisilicon,kirin970-spmi-controller  
> 
> '-controller' is kind of redundant.

Ok. Will drop it.

> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +  
> 
> > +  "#address-cells":
> > +    const: 2
> > +
> > +  "#size-cells":
> > +    const: 0  
> 
> These 2 are covered by spmi.yaml

Ok.

> 
> > +
> > +  spmi-channel:
> > +    description: |
> > +      number of the Kirin 970 SPMI channel where the SPMI devices are connected.  
> 
> Common to SPMI? If not, needs a vendor prefix.

That's an interesting question. My understanding is that this is not
vendor-specific, but maybe Stephen can give us more details.

The spmi.h header calls it "nr", and documents it at include/linux/spmi.h
as:

	/**
	 * struct spmi_controller - interface to the SPMI master controller
	 * @dev:	Driver model representation of the device.
	 * @nr:		board-specific number identifier for this controller/bus
	 * @cmd:	sends a non-data command sequence on the SPMI bus.
	 * @read_cmd:	sends a register read command sequence on the SPMI bus.
	 * @write_cmd:	sends a register write command sequence on the SPMI bus.
	 */

There, it says that this is "board-specific number identifier".

Yet, as the SPMI is a serial bus with up to 4 masters (controller), I 
suspect that the idea is to associate it with the master ID.

This is used on boards with multiple SoCs. See, for instance, slide 5 of:

	https://www.mipi.org/sites/default/files/Bangalore-Qualcomm-SPMI-1.0-Multi-master-Verification.pdf

However, it is hard to know for sure, as no drivers use it, except by
Hikey 970 controller:

	$ grep "\b\->nr\b" $(git grep -l spmi.h)
	drivers/spmi/spmi.c:	ida_simple_remove(&ctrl_ida, ctrl->nr);
	drivers/spmi/spmi.c:	dev_set_name(&sdev->dev, "%d-%02x", ctrl->nr, sdev->usid);
	drivers/spmi/spmi.c:	ctrl->nr = id;
	drivers/spmi/spmi.c:		ctrl->nr, &ctrl->dev);
	drivers/staging/hikey9xx/hisi-spmi-controller.c:	ctrl->nr = spmi_controller->channel;

> 
> Type? Range of values?

The SPMI core defines it as "unsigned int". So, I would use:

	    $ref: /schemas/types.yaml#/definitions/uint32

as a type. 

At the driver, this is used to calculate the channel offset with:

	static int spmi_write_cmd(...) {
		u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
...
		writel((u32 __force)cpu_to_be32(data),
		       spmi_controller->base + chnl_ofst +
		       SPMI_APB_SPMI_WDATA0_BASE_ADDR +
		       SPMI_PER_DATAREG_BYTE * i);
...
	}

As on both spmi.h and the Hikey 970 SPMI controller defines it as uint32, 
it doesn't seem to be a good idea to put a range of values, specially 
since we don't have the datasheets for this SoC.

> 
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - spmi-channel  
> 
> > +  - "#address-cells"
> > +  - "#size-cells"  
> 
> Covered by spmi.yaml.
> 
> > +
> > +patternProperties:
> > +  "^pmic@[0-9a-f]$":  
> 
> Presumably you could have something besides a PMIC.

Hmm... SPMI means MIPI System Power Management Interface.
The MIPI says that [1]:

	"The MIPI System Power Management Interface is a two-wire serial
	 interface that uses CMOS I/Os for the physical layer. The interface
	 connects the integrated power controller of a system-on-chip (SoC)
	 processor system with one or more power management IC voltage
	 regulation systems."

[1] https://www.mipi.org/specifications/system-power-management-interface

OK, as this is a serial bus, I guess one could abuse the interface
and add non-PMIC devices on it. Also, some future version of SPMI
might extend it to non-PMIC devices, but, IMO, if we ever add a 
non-PMIC device, another patternProperties would be needed in order
to describe the other device types that could be connected to the PM bus.

> 
> > +    description: |
> > +      PMIC properties, which are specific to the used SPMI PMIC device(s).
> > +      When used in combination with HiSilicon 6421v600, the properties
> > +      are documented at
> > +      drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml.
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    bus {
> > +      #address-cells = <2>;
> > +      #size-cells = <2>;
> > +
> > +      spmi: spmi@fff24000 {
> > +        compatible = "hisilicon,kirin970-spmi-controller";
> > +        #address-cells = <2>;
> > +        #size-cells = <0>;
> > +        status = "ok";  
> 
> Drop status.

Ok.

> 
> > +        reg = <0x0 0xfff24000 0x0 0x1000>;
> > +        spmi-channel = <2>;
> > +
> > +        pmic@0 {
> > +          reg = <0 0>;
> > +          /* pmic properties */
> > +        };
> > +      };
> > +    };


Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
