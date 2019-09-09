Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6211AADEC6
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 20:22:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7DB848592F;
	Mon,  9 Sep 2019 18:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T2duVK2Gt4Uh; Mon,  9 Sep 2019 18:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DEE6858D4;
	Mon,  9 Sep 2019 18:22:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C89061BF39F
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 18:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C5606858DA
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 18:22:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3t9pzNu2HfuQ for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 18:22:34 +0000 (UTC)
X-Greylist: delayed 00:07:38 by SQLgrey-1.7.6
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.142])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 63B1F858D4
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 18:22:34 +0000 (UTC)
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id C9B312400E5
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 20:14:53 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 46RxCH3tqVz9rxH;
 Mon,  9 Sep 2019 20:14:51 +0200 (CEST)
Date: Mon, 9 Sep 2019 20:14:50 +0200 (CEST)
From: Marc Dietrich <marvin24@gmx.de>
X-X-Sender: lucile@macbook-pro.fritz.box
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: nvec: make use of devm_platform_ioremap_resource
In-Reply-To: <1567935662-8006-1-git-send-email-hariprasad.kelam@gmail.com>
Message-ID: <alpine.OSX.2.21.1909092010430.4245@macbook-pro.fritz.box>
References: <1567935662-8006-1-git-send-email-hariprasad.kelam@gmail.com>
User-Agent: Alpine 2.21 (OSX 202 2017-01-01)
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
Cc: linux-tegra@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, ac100@lists.launchpad.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Hariprased,

On Sun, 8 Sep 2019, hariprasad@MISSING_DOMAIN wrote:
                              ^^^^^^^^^^^^^^^^^^
something is wrong with your git mail config...

> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
>
> fix below issue reported by coccicheck
> drivers/staging//nvec/nvec.c:794:1-5: WARNING: Use
> devm_platform_ioremap_resource for base
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Acked-by: Marc Dietrich <marvin24@gmx.de>

Thanks!

Marc

> ---
> drivers/staging/nvec/nvec.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> index 1cbd7b7..360ec04 100644
> --- a/drivers/staging/nvec/nvec.c
> +++ b/drivers/staging/nvec/nvec.c
> @@ -767,7 +767,6 @@ static int tegra_nvec_probe(struct platform_device *pdev)
> 	struct device *dev = &pdev->dev;
> 	struct nvec_chip *nvec;
> 	struct nvec_msg *msg;
> -	struct resource *res;
> 	void __iomem *base;
> 	char	get_firmware_version[] = { NVEC_CNTL, GET_FIRMWARE_VERSION },
> 		unmute_speakers[] = { NVEC_OEM0, 0x10, 0x59, 0x95 },
> @@ -790,8 +789,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
> 		return -ENODEV;
> 	}
>
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
> 	if (IS_ERR(base))
> 		return PTR_ERR(base);
>
> -- 
> 2.7.4
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
