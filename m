Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DA485311525
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 23:26:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ABE7C2E140;
	Fri,  5 Feb 2021 22:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B507aadGdme0; Fri,  5 Feb 2021 22:26:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 245A12E13C;
	Fri,  5 Feb 2021 22:26:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4831BF576
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 68ACC8738E
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TrtW8+BSdw35 for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 22:26:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
 [209.85.210.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D3F068738D
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 22:26:47 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id s107so8400825otb.8
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 14:26:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bWD0Xd1LugmrPim9uT1TIxiY19YbyAjLXKLTF24G3cs=;
 b=TOlp9Pl/SIa5FOT3fC6crgxa0JF+ewXmmQ+r+aq+Gd9cVKfSkX7ID+ASFRA7R0c9Ni
 7ZtKPnn/zqFLHU09ppKaNOWH1yUpePcJxIaafL2mwbsKCJXBnmHqC5SYRnwbvOCBKtbc
 h2S3v+W7mtgFSjQ0Y6Sd3s2NGjR8ttfgjKDLs9SHCISH0Yr4K0ms2O3+Xwu/gFKzNDOS
 REnw5Rg4KdOpYE3lgDv3XxDCRl5a0kS5iyW9zDyvmsTcU4mPcm9TdWzNbyKvE1OE+mFo
 F84zkBBxXY4+H6kDA4MOAbiO4uvaBUgX3Y9H4GTg+dILkzAUXEIyERbbmhXImu1dcflC
 d0eg==
X-Gm-Message-State: AOAM531zKWLIOlaBn/6rmdNHxfgdj/N9J/wZM+L/fTOqA7I6GiPBWhlT
 qSPRbeRw2h7ZtdnG5soI2A==
X-Google-Smtp-Source: ABdhPJx4H3231S2pjcifJwGi+k2xYKRAeq+BOInc+gwPHSJdr5kMBWGsfC5hidReoeOqkxqNElMVZQ==
X-Received: by 2002:a9d:7514:: with SMTP id r20mr4899658otk.318.1612564007144; 
 Fri, 05 Feb 2021 14:26:47 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u7sm2067882oib.22.2021.02.05.14.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 14:26:46 -0800 (PST)
Received: (nullmailer pid 3867655 invoked by uid 1000);
 Fri, 05 Feb 2021 22:26:45 -0000
Date: Fri, 5 Feb 2021 16:26:45 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 18/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210205222645.GB3857395@robh.at.kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 19, 2021 at 05:10:44PM +0100, Mauro Carvalho Chehab wrote:
> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 135 +++++++++
>  MAINTAINERS                                   |   7 +
>  drivers/mfd/Kconfig                           |  15 +
>  drivers/mfd/Makefile                          |   1 +
>  drivers/mfd/hi6421-spmi-pmic.c                | 281 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  16 -
>  drivers/staging/hikey9xx/Makefile             |   1 -
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 281 ------------------
>  .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 135 ---------
>  9 files changed, 439 insertions(+), 433 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
>  create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
>  delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
>  delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
> new file mode 100644
> index 000000000000..3b23ad56b31a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
> @@ -0,0 +1,135 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/hisilicon,hi6421-spmi-pmic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon 6421v600 SPMI PMIC
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> +
> +description: |
> +  HiSilicon 6421v600 should be connected inside a MIPI System Power Management
> +  (SPMI) bus. It provides interrupts and power supply.
> +
> +  The GPIO and interrupt settings are represented as part of the top-level PMIC
> +  node.
> +
> +  The SPMI controller part is provided by
> +  drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml.
> +
> +properties:
> +  $nodename:
> +    pattern: "pmic@[0-9a-f]"
> +
> +  compatible:
> +    const: hisilicon,hi6421v600-spmi

Also, use the compatible string as the filename.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
