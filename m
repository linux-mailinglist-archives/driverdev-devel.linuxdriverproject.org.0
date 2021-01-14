Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A177C2F6EA1
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jan 2021 23:54:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0EA4A86A90;
	Thu, 14 Jan 2021 22:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lbcs-RFLs3c8; Thu, 14 Jan 2021 22:54:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 868D38647F;
	Thu, 14 Jan 2021 22:54:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08E2B1BF393
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 22:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03168863F2
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 22:54:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rr0qH9ILZyDu for <devel@linuxdriverproject.org>;
 Thu, 14 Jan 2021 22:54:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF9EC8638F
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 22:54:11 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id l207so7697023oib.4
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 14:54:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=qWYHygthLZ8mTq8gd7jEV6pMc0SdpN8hLLa0SmpOOjo=;
 b=BhTYANMTlW9bZ5QSPYpoE+HI/oy803gzNVTNRz7OCIK4QtobKDqXiWbj6vr4uywwzI
 C7Rjg+3CQFvmz/CZR2P02sP0AzHWQUQOs9DHxpYpROpYycL1kx2m9tszYJR/OWKs3m9i
 gstn6M2nN5Grauu/5Ra6R8cqK1mxWIQre86UIq27lfD257eYNulQT+d0F2oqmxyGQrno
 BwEGbSI7tPbO0cfSJ4lw9UGtcNmgEcRMPEbzfBBfH5QU5gthKVT5m74I1IEs+Qc/Gt3E
 N7RcKN1mQIN44xxdKvwJutpXCnDz0PH/SN3XPwIkEnxtoNoVZBvMWV+n9kNI7Qg3RKaK
 8Qrw==
X-Gm-Message-State: AOAM531+XzLzK/GJbc84eiQQSbX3t708+g0jLQjR/qrqDY/oG4ilyL9O
 vjQC0KI+hszSUTWwP4ddRQ==
X-Google-Smtp-Source: ABdhPJzyV0763obF7cbS9CXWkgMfwQPg33Rx08ZaO2ZOKRwYv+4ZxDG0NYjU132wwc6AGyIgeSrnpg==
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr3941097oic.47.1610664851178; 
 Thu, 14 Jan 2021 14:54:11 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h11sm1403197ooj.36.2021.01.14.14.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 14:54:10 -0800 (PST)
Received: (nullmailer pid 3797266 invoked by uid 1000);
 Thu, 14 Jan 2021 22:54:06 -0000
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
In-Reply-To: <78e54d594b9e31d603d913048a7bc89d3a089608.1610645385.git.mchehab+huawei@kernel.org>
References: <cover.1610645385.git.mchehab+huawei@kernel.org>
 <78e54d594b9e31d603d913048a7bc89d3a089608.1610645385.git.mchehab+huawei@kernel.org>
Subject: Re: [PATCH v2 4/4] phy: phy-hi3670-usb3: move driver from staging
 into phy
Date: Thu, 14 Jan 2021 16:54:06 -0600
Message-Id: <1610664846.682257.3797263.nullmailer@robh.at.kernel.org>
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
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 14 Jan 2021 18:35:44 +0100, Mauro Carvalho Chehab wrote:
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

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/phy/phy-hi3670-usb3.yaml#

See https://patchwork.ozlabs.org/patch/1426545

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
