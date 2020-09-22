Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19960273C95
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 09:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8331A85C92;
	Tue, 22 Sep 2020 07:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eW13hz1Ahfzo; Tue, 22 Sep 2020 07:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64DE985025;
	Tue, 22 Sep 2020 07:49:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 569CD1BF27E
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 07:49:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 52E638728C
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 07:49:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqGDIwpIGLV8 for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 07:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF1998728B
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 07:49:15 +0000 (UTC)
Received: from coco.lan (ip5f5ad5bc.dynamic.kabel-deutschland.de
 [95.90.213.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CA0523A5F;
 Tue, 22 Sep 2020 07:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600760955;
 bh=0DzvC1tqpuuweLFZwjymVALFk6hcfat24pA61wff9hE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DIhtMyF1wPsYzJaiplUZkVnharswC/x8I5bMRm7hdpVNsevB5v/XgTIhFfYsaVGKx
 Q3JDam8caFWKOoMq4yqVc8nCLw+P2ato9J4Nf3eHAwXdXR0N7TO54f5UIm0a92V4M7
 1gCQVruP+ZcoEFODY2a6zKZ90f2OOHeKA6vHvfJg=
Date: Tue, 22 Sep 2020 09:49:10 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH v2] staging: hikey9xx: Fix incorrect assignment
Message-ID: <20200922094910.36501e57@coco.lan>
In-Reply-To: <20200921212146.34662-1-alex.dewar90@gmail.com>
References: <20200921174113.19566-1-a.dewar@sussex.ac.uk>
 <20200921212146.34662-1-alex.dewar90@gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 21 Sep 2020 22:21:47 +0100
Alex Dewar <alex.dewar90@gmail.com> escreveu:

> In hi3670_phy_probe(), when reading property tx-vboost-lvl fails, its
> default value is assigned to priv->eye_diagram_param, rather than to
> priv->tx_vboost_lvl. Fix this.
> 
> Fixes: 8971a3b880b2 ("staging: hikey9xx: add USB physical layer for Kirin 3670")
> Addresses-Coverity: CID 1497107: Incorrect expression (COPY_PASTE_ERROR)
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>

Patch looks good to me. I also double-checked if everything
works ok after this fix - although it should, as the DT I'm using
has "hisilicon,tx-vboost-lvl" property defined. So:

Reviewed-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Tested-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>



> ---
> v2: Fix my email address and a typo in title
> 
>  drivers/staging/hikey9xx/phy-hi3670-usb3.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
> index 42dbc20a0b9a..4fc013911a78 100644
> --- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
> +++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
> @@ -640,7 +640,7 @@ static int hi3670_phy_probe(struct platform_device *pdev)
>  
>  	if (of_property_read_u32(dev->of_node, "hisilicon,tx-vboost-lvl",
>  				 &priv->tx_vboost_lvl))
> -		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_VBOOST;
> +		priv->tx_vboost_lvl = KIRIN970_USB_DEFAULT_PHY_VBOOST;
>  
>  	phy = devm_phy_create(dev, NULL, &hi3670_phy_ops);
>  	if (IS_ERR(phy))



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
