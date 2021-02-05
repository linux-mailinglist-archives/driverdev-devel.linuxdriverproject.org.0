Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1654131148B
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 23:14:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2762C873CB;
	Fri,  5 Feb 2021 22:14:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LgNJn8UIDx5Q; Fri,  5 Feb 2021 22:14:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBD4A873BE;
	Fri,  5 Feb 2021 22:14:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 151961BF576
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11B9986BED
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:14:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nnb2vXMdfFkr for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 22:13:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0BAB86BE5
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 22:13:58 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id j25so9167555oii.0
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 14:13:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+M4rD8lhAIwaWja6r8ayIGoRcioSa2ru8gsy3RVn3Ec=;
 b=gYgLFk9HXqExAv767BQd6eKYoHxChjwr/3XQz9TE6E+oYejRx3wJdCM4HJoTtceK7t
 RgXzHXhh3o017SGOaOp5nc1VXH7/oll9KXI4qiMwJZyuwpmmhBnFHAWYX4K/oNM/vW2n
 FxolAuvajtOyWgKNM1wJZRb6s6TV7rkB9pX+Zdk0JkJykNwVc012kDACaQF2lwM1l4u1
 0M9yxD1dMh+C4ToiK9q0r5B6pI9yvYx2sjY1sGlBYBBxmJv3lVol2fOBb9K/flPEGeg6
 PDidNC5Rvb7E8UHfBtjJquD1ls5sNP0ir7un3srofTcuV5XZUG4wchG45cZAd8HNdIA8
 D4+Q==
X-Gm-Message-State: AOAM530IVVuLi0HrblvCI+mH+zF6icDsEsl7CwjfGVYIia3rVnDGlOYi
 GSICJmDgDWxAUYVKlFbzrA==
X-Google-Smtp-Source: ABdhPJwT+do3Tf8ShVWqxdJZu0MSFLTcBAZfVqwvPQ1VqaYfgImnDQkA3Ib6XJKGM1n47zjkuTd86w==
X-Received: by 2002:aca:b255:: with SMTP id b82mr4420318oif.98.1612563238100; 
 Fri, 05 Feb 2021 14:13:58 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u73sm2035591oie.30.2021.02.05.14.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 14:13:56 -0800 (PST)
Received: (nullmailer pid 3847968 invoked by uid 1000);
 Fri, 05 Feb 2021 22:13:55 -0000
Date: Fri, 5 Feb 2021 16:13:55 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 5/5] phy: phy-hi3670-usb3: move driver from staging
 into phy
Message-ID: <20210205221355.GA3847933@robh.at.kernel.org>
References: <cover.1611052729.git.mchehab+huawei@kernel.org>
 <82ce73ac9a383f0cae0faded5ec6fef2d3417d3c.1611052729.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82ce73ac9a383f0cae0faded5ec6fef2d3417d3c.1611052729.git.mchehab+huawei@kernel.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 19 Jan 2021 11:44:43 +0100, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../bindings/phy/hisilicon,hi3670-usb3.yaml   |  73 ++
>  MAINTAINERS                                   |   9 +-
>  drivers/phy/hisilicon/Kconfig                 |  10 +
>  drivers/phy/hisilicon/Makefile                |   1 +
>  drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  11 -
>  drivers/staging/hikey9xx/Makefile             |   2 -
>  drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 668 ------------------
>  drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  73 --
>  9 files changed, 760 insertions(+), 755 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
>  create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
>  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
>  delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml
> 

Acked-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
