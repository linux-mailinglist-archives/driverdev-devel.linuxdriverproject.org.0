Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D53332FB551
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41C8784E49;
	Tue, 19 Jan 2021 10:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fzT52odYZey; Tue, 19 Jan 2021 10:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6B3B84E74;
	Tue, 19 Jan 2021 10:27:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 79BF31BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 75EFD863D9
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MYNp+S7nItMj for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:26:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8FC2786091
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:26:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B5DD42312B;
 Tue, 19 Jan 2021 10:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611052019;
 bh=Ar1/SklmNFyzFiDjsKFwakgEW96TKWupJSp0Bvsmmrk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bsZ8Tz3WzvfuDSeraGRRIKOeIxd8F0dD5h3NBVe6NLv6nAXKyKRI6N4ZDXTk0OcOR
 5SXBFK3z3rJFFybGYpXxLTNf5C2EjFikiD8i++3c2/zGAvcKGtrMaRrzUbqKhujrM8
 J10VpZuuHP4j19SRX/jhhbMqsswfsI34ZKo6B1eYXx1ho/XO3VY8lWF9N7AoCH2rQ3
 /mYUOzN+KMU40TscEcH9kfun7U1gGtHUzbm0rJCL/Lkq44zw5neqHluuvmScGhWOI4
 JfOHmSf49BH4Gx1Rd6dAbVz4LRFGpd2mSomCIL+iKPf4ylRiIRU0wM0cMzLd3CdCd6
 XScBmD8g/wm8Q==
Date: Tue, 19 Jan 2021 11:26:53 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 4/4] phy: phy-hi3670-usb3: move driver from staging
 into phy
Message-ID: <20210119112653.46f26ce3@coco.lan>
In-Reply-To: <20210115014731.GA4077569@robh.at.kernel.org>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
 <78e54d594b9e31d603d913048a7bc89d3a089608.1610645385.git.mchehab+huawei@kernel.org>
 <20210115014731.GA4077569@robh.at.kernel.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Thu, 14 Jan 2021 19:47:31 -0600
Rob Herring <robh@kernel.org> escreveu:

> On Thu, Jan 14, 2021 at 06:35:44PM +0100, Mauro Carvalho Chehab wrote:
> > The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> > for mainstream. Mode it from staging into the main driver's
> > phy/ directory.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> > ---
> >  .../bindings/phy/phy-hi3670-usb3.yaml         |  72 ++
> >  MAINTAINERS                                   |   9 +-
> >  drivers/phy/hisilicon/Kconfig                 |  10 +
> >  drivers/phy/hisilicon/Makefile                |   1 +
> >  drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 ++++++++++++++++++
> >  drivers/staging/hikey9xx/Kconfig              |  11 -
> >  drivers/staging/hikey9xx/Makefile             |   2 -
> >  drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 668 ------------------
> >  drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 --
> >  9 files changed, 759 insertions(+), 754 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
> >  create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
> >  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
> >  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
> > new file mode 100644
> > index 000000000000..125a5d6546ae
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
> > @@ -0,0 +1,72 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/hisilicon,hi3670-usb3.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Hisilicon Kirin970 USB PHY
> > +
> > +maintainers:
> > +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>  
> 
> Blank line.

Ok.

> 
> > +description: |+
> > +  Bindings for USB3 PHY on HiSilicon Kirin 970.
> > +
> > +properties:
> > +  compatible:
> > +    const: hisilicon,hi3670-usb-phy
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  hisilicon,pericrg-syscon:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: phandle of syscon used to control iso refclk.
> > +
> > +  hisilicon,pctrl-syscon:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: phandle of syscon used to control usb tcxo.
> > +
> > +  hisilicon,sctrl-syscon:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: phandle of syscon used to control phy deep sleep.
> > +
> > +  hisilicon,eye-diagram-param:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: Eye diagram for phy.
> > +
> > +  hisilicon,tx-vboost-lvl:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description: TX level vboost for phy.
> > +
> > +required:
> > +  - compatible
> > +  - hisilicon,pericrg-syscon
> > +  - hisilicon,pctrl-syscon
> > +  - hisilicon,sctrl-syscon
> > +  - hisilicon,eye-diagram-param
> > +  - hisilicon,tx-vboost-lvl
> > +  - "#phy-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    bus {
> > +      #address-cells = <2>;
> > +      #size-cells = <2>;
> > +
> > +      usb3_otg_bc: usb3_otg_bc@ff200000 {
> > +        compatible = "syscon", "simple-mfd";
> > +        reg = <0x0 0xff200000 0x0 0x1000>;
> > +
> > +        usb_phy {  
> 
> Is there a contiguous register region for this sub-block? If so, add 
> 'reg' even though Linux doesn't need it currently.

No. The driver uses 4 syscon regions in order to access the needed
registers:

	priv->peri_crg = syscon_regmap_lookup_by_phandle(dev->of_node,
							 "hisilicon,pericrg-syscon");
	if (IS_ERR(priv->peri_crg)) {
		dev_err(dev, "no hisilicon,pericrg-syscon\n");
		return PTR_ERR(priv->peri_crg);
	}

	priv->pctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
						      "hisilicon,pctrl-syscon");
	if (IS_ERR(priv->pctrl)) {
		dev_err(dev, "no hisilicon,pctrl-syscon\n");
		return PTR_ERR(priv->pctrl);
	}

	priv->sctrl = syscon_regmap_lookup_by_phandle(dev->of_node,
						      "hisilicon,sctrl-syscon");
	if (IS_ERR(priv->sctrl)) {
		dev_err(dev, "no hisilicon,sctrl-syscon\n");
		return PTR_ERR(priv->sctrl);
	}

	/* node of hi3670 phy is a sub-node of usb3_otg_bc */
	priv->usb31misc = syscon_node_to_regmap(dev->parent->of_node);
	if (IS_ERR(priv->usb31misc)) {
		dev_err(dev, "no hisilicon,usb3-otg-bc-syscon\n");
		return PTR_ERR(priv->usb31misc);
	}

So, I don't see what an additional reg would help here.

> > +          compatible = "hisilicon,hi3670-usb-phy";
> > +          #phy-cells = <0>;
> > +          hisilicon,pericrg-syscon = <&crg_ctrl>;
> > +          hisilicon,pctrl-syscon = <&pctrl>;
> > +          hisilicon,sctrl-syscon = <&sctrl>;
> > +          hisilicon,eye-diagram-param = <0xfdfee4>;
> > +          hisilicon,tx-vboost-lvl = <0x5>;
> > +        };
> > +      };
> > +    };  

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
