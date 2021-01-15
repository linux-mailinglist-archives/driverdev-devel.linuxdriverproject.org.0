Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7A92F7028
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 02:47:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C129587410;
	Fri, 15 Jan 2021 01:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P5Z1uXXeYzXv; Fri, 15 Jan 2021 01:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 381D287337;
	Fri, 15 Jan 2021 01:47:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2BC11BF3BA
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 01:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF1D8872C6
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 01:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id beb9hcU7GHaY for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 01:47:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4142A872B8
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 01:47:34 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id b24so7175135otj.0
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 17:47:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Pw673ddKtkSPV+zrhOwh4NS44XUtYPevzD6JaghUBl0=;
 b=rxOnE32HgnbLLJ4ELfoEESVqHZH8zq5PA5eTe94WyUcu4uhd7kgmlMOI1IsZuxFfjH
 IVQYGuOn+mrCfP2f+q4KyR02081sVsd06yoeQLSuIGExGJZyBSWvVUXrzScxez8Sc+/P
 GuTKEu8erF/kyWZoXvffe15XIZaRE+VFJ00q7unXz8SUgZD/BcWJXRfWy8eQGjpYFE22
 ydqDGXk1K0IVW2qusuIP2ScoNaidd4N+/rZcBtBEJOo/pIW954oJlHKg0xG3n+UdS8hb
 ntvCyAntJ8g70pbXUeULiwUxI/RGyzlKmN1YFxmN2QUciE9roO5ApXmqFf02J0b19zMx
 mWYQ==
X-Gm-Message-State: AOAM530eH9yF9jjOaFmnaRjqOtF5LgQ2iSNmzphtEtoLbnvOyQGqecLN
 3MCYOvQQHq7GNzMBkFPDhw==
X-Google-Smtp-Source: ABdhPJw9+YLvzDKXOKYwxSBhamfHNiJcw4vgO01dHrPFRc2bX3n8y87RGuUx51OSspW8DE2x5w0jLA==
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr6641002otm.305.1610675253544; 
 Thu, 14 Jan 2021 17:47:33 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 109sm1459981otj.12.2021.01.14.17.47.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 17:47:32 -0800 (PST)
Received: (nullmailer pid 4084972 invoked by uid 1000);
 Fri, 15 Jan 2021 01:47:31 -0000
Date: Thu, 14 Jan 2021 19:47:31 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 4/4] phy: phy-hi3670-usb3: move driver from staging
 into phy
Message-ID: <20210115014731.GA4077569@robh.at.kernel.org>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
 <78e54d594b9e31d603d913048a7bc89d3a089608.1610645385.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78e54d594b9e31d603d913048a7bc89d3a089608.1610645385.git.mchehab+huawei@kernel.org>
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

On Thu, Jan 14, 2021 at 06:35:44PM +0100, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../bindings/phy/phy-hi3670-usb3.yaml         |  72 ++
>  MAINTAINERS                                   |   9 +-
>  drivers/phy/hisilicon/Kconfig                 |  10 +
>  drivers/phy/hisilicon/Makefile                |   1 +
>  drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  11 -
>  drivers/staging/hikey9xx/Makefile             |   2 -
>  drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 668 ------------------
>  drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 --
>  9 files changed, 759 insertions(+), 754 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
>  create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
>  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
>  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml b/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
> new file mode 100644
> index 000000000000..125a5d6546ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/hisilicon,hi3670-usb3.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Hisilicon Kirin970 USB PHY
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Blank line.

> +description: |+
> +  Bindings for USB3 PHY on HiSilicon Kirin 970.
> +
> +properties:
> +  compatible:
> +    const: hisilicon,hi3670-usb-phy
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  hisilicon,pericrg-syscon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: phandle of syscon used to control iso refclk.
> +
> +  hisilicon,pctrl-syscon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: phandle of syscon used to control usb tcxo.
> +
> +  hisilicon,sctrl-syscon:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: phandle of syscon used to control phy deep sleep.
> +
> +  hisilicon,eye-diagram-param:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Eye diagram for phy.
> +
> +  hisilicon,tx-vboost-lvl:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: TX level vboost for phy.
> +
> +required:
> +  - compatible
> +  - hisilicon,pericrg-syscon
> +  - hisilicon,pctrl-syscon
> +  - hisilicon,sctrl-syscon
> +  - hisilicon,eye-diagram-param
> +  - hisilicon,tx-vboost-lvl
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    bus {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      usb3_otg_bc: usb3_otg_bc@ff200000 {
> +        compatible = "syscon", "simple-mfd";
> +        reg = <0x0 0xff200000 0x0 0x1000>;
> +
> +        usb_phy {

Is there a contiguous register region for this sub-block? If so, add 
'reg' even though Linux doesn't need it currently.

> +          compatible = "hisilicon,hi3670-usb-phy";
> +          #phy-cells = <0>;
> +          hisilicon,pericrg-syscon = <&crg_ctrl>;
> +          hisilicon,pctrl-syscon = <&pctrl>;
> +          hisilicon,sctrl-syscon = <&sctrl>;
> +          hisilicon,eye-diagram-param = <0xfdfee4>;
> +          hisilicon,tx-vboost-lvl = <0x5>;
> +        };
> +      };
> +    };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
