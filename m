Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE252B495D
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 16:31:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4576185F43;
	Mon, 16 Nov 2020 15:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jsCYllMJnCwS; Mon, 16 Nov 2020 15:31:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFB0885DF6;
	Mon, 16 Nov 2020 15:31:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0CF21BF47E
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 15:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9D73F85DF8
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 15:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V5Z73W5Kroth for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 15:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B956F85DF6
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 15:31:38 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k26so19245713oiw.0
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 07:31:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+pvHe9ONFH5RZzgJjd3ukZBPKpFFsELzKrcCdDKF3yE=;
 b=HrMzeY23BOT6JHbAbUYkZzP/cO7b5MeW8YJwU6h8+OOIvWu7NC3WjCrXS8DD6m1WP3
 i5/zni8YV3JeYNGgIR35kJsTdrsRBcbDSg2obDFCoFiFdITWJ22WE6giWp+/uwQ9/udo
 nBhs8KPaSZlAF0z0s3Dq8qnAvLgaXbff9VDTFuUmx5eQ3hz2Sgu2xjAm4+WorbmwRkXG
 VZrUKhm3JXbjTrIOOKbrafXUCaqSCHHwY3RTCtzfi3Kr3jiJVOlkfQVo4uLIIF6N8wEw
 Ui+b3N3CqlhzDspJxcfJkOXE1R3Prs+yhIjPTR5N5lem2f/X5eEsjAwFYBFL/7tUmKVF
 cEwg==
X-Gm-Message-State: AOAM533dZFR3uM7/kO1xZuVQXSxOXYD81p4k1wTXi2quor7JNDnpJv8A
 FiZEhAnWC9e/s+5TuSQqrA==
X-Google-Smtp-Source: ABdhPJyPe2ARluS/HNUswsiTPnD0gC1vQpqVcbcOVBBdRCpkEL/h65S6ZJYBWFI68ZqwSrRQMtRDsg==
X-Received: by 2002:aca:b588:: with SMTP id e130mr32960oif.56.1605540697955;
 Mon, 16 Nov 2020 07:31:37 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s28sm4746616otd.2.2020.11.16.07.31.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:31:37 -0800 (PST)
Received: (nullmailer pid 1684683 invoked by uid 1000);
 Mon, 16 Nov 2020 15:31:36 -0000
Date: Mon, 16 Nov 2020 09:31:36 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/8] phy: phy-hi3670-usb3: move driver from staging into
 phy
Message-ID: <20201116153136.GA1684546@bogus>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <420faf39bb03d07f8823b03bc55a429e975e23a0.1605530560.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <420faf39bb03d07f8823b03bc55a429e975e23a0.1605530560.git.mchehab+huawei@kernel.org>
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
 Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linuxarm@huawei.com, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 16 Nov 2020 13:59:27 +0100, Mauro Carvalho Chehab wrote:
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
>  drivers/phy/hisilicon/phy-hi3670-usb3.c       | 671 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  11 -
>  drivers/staging/hikey9xx/Makefile             |   2 -
>  drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 671 ------------------
>  drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 --
>  9 files changed, 762 insertions(+), 757 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
>  create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
>  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
>  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/phy/phy-hi3670-usb3.yaml#


See https://patchwork.ozlabs.org/patch/1400895

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
