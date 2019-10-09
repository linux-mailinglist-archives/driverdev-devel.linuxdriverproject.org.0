Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55237D0F9C
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A680B22F22;
	Wed,  9 Oct 2019 13:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyBNXQXh1yeS; Wed,  9 Oct 2019 13:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2EF8022F4C;
	Wed,  9 Oct 2019 13:07:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F08B11BF2B4
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB4E921549
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ahvERgw5iQGi for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:07:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 513D220766
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:07:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93620206B6;
 Wed,  9 Oct 2019 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570626443;
 bh=I2rgea/7x+I9Lx3vaph2jU5rGmbfis/HOE3Whtcl5Gc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wpql2t7DRox+tN+68b/NXl52k+vivrSRYuP3zdewsqx0dMDovNK1t5reJi+Bha0mn
 7wFb/lyFAosoXW0vqSMYI3vN5lg1PfzBik0pL+p8tkDfhQ5+ViFm4wuhEZmzP6q5+G
 U+hpMighEWE6Lj+9mZag00VXSixkLwtMVHuKMtQI=
Date: Wed, 9 Oct 2019 15:07:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alexander Gordeev <a.gordeev.box@gmail.com>
Subject: Re: [PATCH v2 1/2] dmaengine: avalon: Intel Avalon-MM DMA Interface
 for PCIe
Message-ID: <20191009130720.GA4148375@kroah.com>
References: <cover.1570558807.git.a.gordeev.box@gmail.com>
 <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ed3c016b7fbe69e36023e7ee09c53acac8a064c.1570558807.git.a.gordeev.box@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, Michael Chen <micchen@altera.com>,
 dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 12:12:30PM +0200, Alexander Gordeev wrote:
> +static int setup_dma_descs(struct dma_desc *dma_descs,
> +			   struct avalon_dma_desc *desc)
> +{
> +	struct scatterlist *sg_stop;
> +	unsigned int sg_set;
> +	int ret;
> +
> +	ret = setup_descs_sg(dma_descs, 0,
> +			     desc->direction,
> +			     desc->dev_addr,
> +			     desc->sg, desc->sg_len,
> +			     desc->sg_curr, desc->sg_offset,
> +			     &sg_stop, &sg_set);
> +	BUG_ON(!ret);

Yeah, a driver can crash the kernel!

:(

Never do this, always recover properly, to not do so is "lazy"
programming.

If this is something that is impossible to ever happen, then never test
for it.  But if it can happen, then properly handle the error and move
on.

Same for the other uses of BUG_ON() and WARN_ON in here.  Remember many
systems run with "panic on warn" so if a user can trigger that, then the
machine reboots, which is not good.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
