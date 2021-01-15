Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCB72F7FC7
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 16:39:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD6D281F63;
	Fri, 15 Jan 2021 15:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMjzJL2L7f+I; Fri, 15 Jan 2021 15:39:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39D8086C4A;
	Fri, 15 Jan 2021 15:39:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 901891BF28B
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 15:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8AA90872F8
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 15:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BSIclhM6RG0G for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 15:39:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2862872E5
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 15:39:07 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id d189so9908353oig.11
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 07:39:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=jHmZbmprcEbR1QsC3/QO5a2FmEK+SUt/uIaHwmVakGg=;
 b=LDh4/X5qxBLcTHKsMD1OHUNNxLbb8LHukOqWS7b9lYDoBExpDdpxcIE3e+DcVdRin7
 7ViUZDvQjZuHMoVufhULcx4z2a6nhfTM/Z2a25JFqhK8df3iaZqN+O3GvB4JQtmBeucs
 KJzTfU5eBi6nUVOppx+4MyB79YYwsiZCLxFle8Sa9cWbfsSRl9hKv2IIB9NL6fIhk+6D
 wlABG//MbUQn+HLzy0Zsc30YcKia7gq/WeG//kFnN3mHYIBUtZLz3ll5IsYitnCj/0Ol
 7aH/1sJF81GozOCyU9AYSLFbxMZjqFASaleD54LoFhbOip/KKLDKWeAfMUTazM5by1ZK
 cenQ==
X-Gm-Message-State: AOAM531NbB9kV6tcHRehtWYgWqu6N9ix3lYrXP4ZffMJuqf3dbxQnauC
 ztvUruIX2FaAeOq4lJMvCA==
X-Google-Smtp-Source: ABdhPJxBM/BxN2PpIZ3KNI3NmCSctqZbH8H5vmUrdoawmsnh7sU76/EwJpngkxbcpxMYf7Ize5gBoA==
X-Received: by 2002:a05:6808:3bc:: with SMTP id
 n28mr6179439oie.118.1610725146938; 
 Fri, 15 Jan 2021 07:39:06 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j194sm1702875oih.56.2021.01.15.07.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Jan 2021 07:39:06 -0800 (PST)
Received: (nullmailer pid 1311454 invoked by uid 1000);
 Fri, 15 Jan 2021 15:39:04 -0000
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
In-Reply-To: <78e54d594b9e31d603d913048a7bc89d3a089608.1610697726.git.mchehab+huawei@kernel.org>
References: <cover.1610697726.git.mchehab+huawei@kernel.org>
 <78e54d594b9e31d603d913048a7bc89d3a089608.1610697726.git.mchehab+huawei@kernel.org>
Subject: Re: [PATCH v3 4/4] phy: phy-hi3670-usb3: move driver from staging
 into phy
Date: Fri, 15 Jan 2021 09:39:04 -0600
Message-Id: <1610725144.873753.1311453.nullmailer@robh.at.kernel.org>
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

On Fri, 15 Jan 2021 09:10:03 +0100, Mauro Carvalho Chehab wrote:
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

See https://patchwork.ozlabs.org/patch/1426831

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
