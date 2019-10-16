Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898B2D8D1A
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 11:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBA5F88185;
	Wed, 16 Oct 2019 09:58:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CwNsVdpZcSmt; Wed, 16 Oct 2019 09:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA877879FF;
	Wed, 16 Oct 2019 09:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F0C91BF681
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 09:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 56A4585D55
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 09:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1x8QbeR6fsj for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 09:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4298C8501A
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 09:58:53 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AFF5E43E;
 Wed, 16 Oct 2019 11:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1571219930;
 bh=WcoU1rgkgfqck3Sixg1f5PWiV0VMExUEKXAuCwDKFlA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pVj4hmDAfQUZ32V/hQgFbhsQSVDs5bKAe3nKkT2Zpmjt7bkGF9yascohgHlwmSQdu
 DgBXeW9qdQYvf1u0dvdke62X8RBvclto0p9mYDQuWe2Duulvh4v1ljjGwtWswjcmcY
 sJl5LJGL59qhrS9V5JmNbPkd6Pjp/7TqymSToksY=
Date: Wed, 16 Oct 2019 12:58:48 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] staging: media: omap4iss: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191016095848.GC5175@pendragon.ideasonboard.com>
References: <20191016085136.22812-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016085136.22812-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello YueHaibing,

Thank you for the patch.

The same fix has already been submitted a week ago, and I have sent a
pull request today that includes it. I'm afraid I thus can't take this
patch. The good news is that the change was good :-)

On Wed, Oct 16, 2019 at 04:51:36PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 1a966cb..6fb60b5 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -908,11 +908,7 @@ static int iss_map_mem_resource(struct platform_device *pdev,
>  				struct iss_device *iss,
>  				enum iss_mem_resources res)
>  {
> -	struct resource *mem;
> -
> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, res);
> -
> -	iss->regs[res] = devm_ioremap_resource(iss->dev, mem);
> +	iss->regs[res] = devm_platform_ioremap_resource(pdev, res);
>  
>  	return PTR_ERR_OR_ZERO(iss->regs[res]);
>  }

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
