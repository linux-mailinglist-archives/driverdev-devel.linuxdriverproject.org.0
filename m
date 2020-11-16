Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 836732B495E
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 16:32:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5C22A867F0;
	Mon, 16 Nov 2020 15:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TREEeHOx6iyF; Mon, 16 Nov 2020 15:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB01C867D3;
	Mon, 16 Nov 2020 15:32:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA70E1BF47E
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 15:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B26F72051C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 15:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iiEuibYi2LLa for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 15:32:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 27A542051B
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 15:32:05 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id k3so16340723otp.12
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 07:32:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wixeaOXGt4VS5H1X/I4umvvniIQSQv3LBR9erOlmCDg=;
 b=P9NbLquVDBhoUabgskOYRXRp+YNZtqyHNb/sxLFghrJAGCaFTqKKkFjVPcJcLfOdzU
 epsuRZo4mCKHRP8p1TI3u+L9c2VX2JHxTEJ0RtY0/pqYAfbkqoKwCmO5RtPtAkPd0teT
 mD336+/gF0EkVx6PXxBRDc/BlHmTG+zoUHAl8inkX1ZvTkOSilcYh9Wk81jE97+u3bbH
 Ivlahvv8OyicqE8/UxAW7EHw3tL3LlE/c6ra5FE8xHfGWcnkOAw59Z7uIumTwYr5sN0s
 LncryNnm6/NKGIf6e4AjxC9oE0eq0DOyQRFeM6qCddxhe3Pbpa17TieeezIZ8jBK7O8i
 7mcw==
X-Gm-Message-State: AOAM531oeiMb3GWZkxpWVS8CuQL5xzn5FMBGyMqwIsIKdnmiiq6ins0p
 xTuc9+lUHV3jl+AGfczygg==
X-Google-Smtp-Source: ABdhPJxGhcMJL/DOYks58mO9JJMSpwwlGx6zJQaXkutaB4fNQpZUlOZri1r+ZjQNCziItAYEQLnZQA==
X-Received: by 2002:a9d:470c:: with SMTP id a12mr11470030otf.161.1605540724371; 
 Mon, 16 Nov 2020 07:32:04 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t19sm4730619otp.51.2020.11.16.07.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:32:03 -0800 (PST)
Received: (nullmailer pid 1685415 invoked by uid 1000);
 Mon, 16 Nov 2020 15:32:02 -0000
Date: Mon, 16 Nov 2020 09:32:02 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 2/8] spmi: hi6421-spmi-pmic: move driver from staging
Message-ID: <20201116153202.GA1685169@bogus>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <7e01d84b31d561fa4df1d42369e4222f4a41a8d3.1605530560.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e01d84b31d561fa4df1d42369e4222f4a41a8d3.1605530560.git.mchehab+huawei@kernel.org>
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
 linux-arm-msm@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, mauro.chehab@huawei.com,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 16 Nov 2020 13:59:28 +0100, Mauro Carvalho Chehab wrote:
> The Hisilicon 6421v600 SPMI driver is ready for mainstream.
> 
> So, move it from staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../spmi/hisilicon,hisi-spmi-controller.yaml  |  62 +++
>  MAINTAINERS                                   |   7 +
>  drivers/spmi/Kconfig                          |   9 +
>  drivers/spmi/Makefile                         |   1 +
>  drivers/spmi/hisi-spmi-controller.c           | 358 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  11 -
>  drivers/staging/hikey9xx/Makefile             |   1 -
>  .../staging/hikey9xx/hisi-spmi-controller.c   | 358 ------------------
>  .../hisilicon,hisi-spmi-controller.yaml       |  62 ---
>  9 files changed, 437 insertions(+), 432 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
>  create mode 100644 drivers/spmi/hisi-spmi-controller.c
>  delete mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
>  delete mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml:34:2: [warning] wrong indentation: expected 2 but found 1 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml: 'additionalProperties' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.example.dts:29.20-31.15: Warning (unit_address_vs_reg): /example-0/bus/spmi@fff24000/pmic@0: node has a unit name, but no reg or ranges property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.example.dt.yaml: spmi@fff24000: pmic@0: 'reg' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spmi/spmi.yaml


See https://patchwork.ozlabs.org/patch/1400897

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
