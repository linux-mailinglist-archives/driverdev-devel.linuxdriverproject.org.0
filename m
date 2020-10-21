Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FE529539A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 22:46:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BA3BA203E0;
	Wed, 21 Oct 2020 20:46:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eA2L0lro4RS0; Wed, 21 Oct 2020 20:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EFDE831D90;
	Wed, 21 Oct 2020 05:49:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09DFF1BF85D
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 05:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0611285D52
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 05:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SIWfWzHYfboN for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 05:49:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8AF2F8592F
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 05:49:51 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6895322242;
 Wed, 21 Oct 2020 05:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603259391;
 bh=taOpv62xMFjvC91g/I0bBiGPpCcTG7wKO1QE0K78oxs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1l88VW0cQcJEsH2SRohMJ+92fOAFGHxtxFhuFN48Y1Ys3dCarVt+eDhuDwdKQvlUy
 tBcR8yFCfLpE0quNCbMrpwfQQCbD1/cuzOMBtGkUN/XlEksid2j34jO5MFRZSYrlco
 00JBO5eHfBP2WvbPksSgQYbWjRfnmAD2PPU9xpSs=
Date: Wed, 21 Oct 2020 07:50:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Subject: Re: [PATCH 2/2] staging: kpc2000: kpc_dma: rename show function per
 convention
Message-ID: <20201021055031.GA975815@kroah.com>
References: <273abf291f47286a702d2a53445e7a6efcf9972b.1603256795.git.mh12gx2825@gmail.com>
 <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d757cf6f97533b48aa471db6efc100acfb8f517.1603256795.git.mh12gx2825@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 21, 2020 at 10:40:21AM +0530, Deepak R Varma wrote:
> Rename show_engine_regs to engine_regs_show as per the convention
> followed. Issue reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> index 7698e5ef2a7c..b6d1afbd452d 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
> @@ -50,7 +50,7 @@ static void kpc_dma_del_device(struct kpc_dma_device *ldev)
>  }
>  
>  /**********  SysFS Attributes **********/
> -static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *attr, char *buf)
> +static ssize_t  engine_regs_show(struct device *dev, struct device_attribute *attr, char *buf)
>  {
>  	struct kpc_dma_device *ldev;
>  	struct platform_device *pldev = to_platform_device(dev);
> @@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
>  		ldev->desc_completed
>  	);
>  }
> -static DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
> +static DEVICE_ATTR(engine_regs, 0444, engine_regs_show, NULL);

Shouldn't this just be using a DEVICE_ATTR_RO() macro instead?  Make
that change and the name will be fixed up at the same time.

And did checkpatch really complain about this?  What was the actual
message it produced?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
