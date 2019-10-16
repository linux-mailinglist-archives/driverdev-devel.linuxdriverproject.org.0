Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD56BD8D00
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 11:54:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3FF1E23115;
	Wed, 16 Oct 2019 09:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ftq2a9Ste4L9; Wed, 16 Oct 2019 09:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0FDE203DE;
	Wed, 16 Oct 2019 09:54:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED0551BF681
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 09:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EAC3E203D0
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 09:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pGBeoAjAe0-O for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 09:53:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by silver.osuosl.org (Postfix) with ESMTPS id E2BBA203CF
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 09:53:58 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8361443E;
 Wed, 16 Oct 2019 11:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1571219635;
 bh=gjcnDXgTaHH8i0rQWIk9tmPvMqWjkUNsCfrg0iTzX/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BjNRpsJlVWhEN2gh2yeS7XLz3wM+GhoW+gTtqVPxOvthF6gcJDbUAfd6owFXi7IBC
 M+7+h31pY9s8i/nlfZWjSj92dvu1HLAOw+5QWPHnmHlrS1q1wmxsFBuIw33JDUOugs
 o9CqGq9H5Oy1FnBCXb+66ZIBJfklmfTCCa8cK9ws=
Date: Wed, 16 Oct 2019 12:53:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: media: make use of devm_platform_ioremap_resource
Message-ID: <20191016095352.GA5175@pendragon.ideasonboard.com>
References: <1570517752-30991-1-git-send-email-hariprasad.kelam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570517752-30991-1-git-send-email-hariprasad.kelam@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Hariprasad,

Thank you for the patch.

As the patch only touches the omap4iss driver, you could have made the
subject line a bit more specific, for instance "staging: media:
omap4iss: Use devm_platform_ioremap_resource". No big deal though.

On Tue, Oct 08, 2019 at 12:25:51PM +0530, hariprasadKelamhariprasad.kelam@gmail.com wrote:
> From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> 
> fix below issue reported by coccicheck
> drivers/staging//media/omap4iss/iss.c:915:1-15: WARNING: Use
> devm_platform_ioremap_resource for iss -> regs [ res ]
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

The change looks good to me.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

and applied to my tree for v5.5.

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
