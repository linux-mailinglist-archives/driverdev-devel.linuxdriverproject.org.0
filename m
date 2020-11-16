Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 668FB2B4960
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 16:32:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E44CA867F0;
	Mon, 16 Nov 2020 15:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpfLRuFmUfSq; Mon, 16 Nov 2020 15:32:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E403B86764;
	Mon, 16 Nov 2020 15:32:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3E401BF47E
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 15:32:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C30BA2050C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 15:32:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L+zaXEFU7xdr for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 15:32:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id F0EE820518
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 15:32:39 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id n11so16410834ota.2
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 07:32:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jms1tjLF1eND3pvYwF99TGV28gY+b78u9W1AZwIrB3M=;
 b=d01vgwgdUtxfYKYJpkhgSYgNVfMyklz9f5BXO1+sDLedxyraZVN5yzES2oYqiA1GmH
 duPjqJzbJsWE7hGpbn1CQm+YC8Ywm7pRTanz8MxpBz+1LOEx7wqI+J6kNK+9KsxkQexZ
 UEmlb+5Bf6sMZM8kvgxQgetQ+gYc+E4YgQoOC7MyBU8HVZNHeU8vJgzim1DImk9L5YEd
 YAc+UiyVJZ2cr86uDcls1e+x5ze0KpNKwBLW+p9mVSRfdD1hgKXTwDXh58p45oZ5vUx1
 iTzUzuN/iDF+d6B5EezKH3Osirr8xsJn6nFG3yxUrNurklZQcewAy5EkSdvOoVKyCkWX
 mCcQ==
X-Gm-Message-State: AOAM532kAdwnKkTN7NzX6HSn/M24/8mI8l/lsjOn1Tm9ztPgdb+OzyZ8
 hs/LpDAAyvTVl2nn5uiyLg==
X-Google-Smtp-Source: ABdhPJyD00JXiViecz7jg35poN6Lre3W3a3UQ9S/5zoPMwy4+oplksUnWCkMC3no3KF6cZIwbWOETQ==
X-Received: by 2002:a05:6830:1af4:: with SMTP id
 c20mr11735398otd.198.1605540759297; 
 Mon, 16 Nov 2020 07:32:39 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g22sm5097101oop.0.2020.11.16.07.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:32:38 -0800 (PST)
Received: (nullmailer pid 1686301 invoked by uid 1000);
 Mon, 16 Nov 2020 15:32:37 -0000
Date: Mon, 16 Nov 2020 09:32:37 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 3/8] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20201116153237.GA1685828@bogus>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <504469db0d6659fdaed550a89822be6e7b8dc85e.1605530560.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <504469db0d6659fdaed550a89822be6e7b8dc85e.1605530560.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 16 Nov 2020 13:59:29 +0100, Mauro Carvalho Chehab wrote:
> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 159 ++++++++
>  MAINTAINERS                                   |   7 +
>  drivers/mfd/Kconfig                           |  15 +
>  drivers/mfd/Makefile                          |   1 +
>  drivers/mfd/hi6421-spmi-pmic.c                | 342 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  16 -
>  drivers/staging/hikey9xx/Makefile             |   1 -
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 342 ------------------
>  .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 159 --------
>  9 files changed, 524 insertions(+), 518 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
>  create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
>  delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
>  delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml: 'additionalProperties' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml


See https://patchwork.ozlabs.org/patch/1400898

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
