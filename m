Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E882429861C
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 05:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8696186356;
	Mon, 26 Oct 2020 04:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PqVXlr9T3bAp; Mon, 26 Oct 2020 04:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7690C86374;
	Mon, 26 Oct 2020 04:16:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 738201BF2F0
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 04:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 666F72A12C
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 04:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Osk63-1-IuZ for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 04:16:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by silver.osuosl.org (Postfix) with ESMTPS id E33C2274E3
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 04:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Q4SO66+iv4ulprZbhTuLgvmNfQrq/X9LHRBymUOL+kI=; b=HJqwX2LRLDjf8Gx0ENYUUlvgPI
 ODB8TKnC9l1C/oMGJY86Z5Z3vW12uUMjUk+xy2OvNet/TuTme3lpdvD2k33PPXg9J0hnzFDWsruS9
 zj6jChqKQJBL8hUeHwODFY2PDhnlxoDXL3nra2WzpLStLeBwzpc/uaY7FtYHmvN2CP4ss6vayzO3n
 6F6MSuGngu68LqMsGiF51oxmJF3t6RZWbHBkILGxQl6MKGp3N+aW91eKwSxoorPXZkRHADEqFTMa8
 Wpqf3lcCZZHPCLf5IAiZ5NGw0Htp3vjr6RPVi9jbVq+nPwIKUB6qYQ+VpMc6GxX+J3E5NfUoVjbbk
 Akq49ZKw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kWtwC-0006qS-UV; Mon, 26 Oct 2020 04:16:53 +0000
Date: Mon, 26 Oct 2020 04:16:52 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma:
 rearrange lines exceeding 100 columns
Message-ID: <20201026041652.GM20115@casper.infradead.org>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201026040453.GC5074@my--box>
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
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> > -		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
> > +		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
> > +			cur,
> > +			cur->acd);

Why do you put 'cur' and 'cur->acd' on different lines?

> > -	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
> > +	rv = request_irq(eng->irq,
> > +			 ndd_irq_handler,
> > +			 IRQF_SHARED,
> > +			 KP_DRIVER_NAME_DMA_CONTROLLER,
> > +			 eng);

Likewise.  I'd do:

	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED,
			KP_DRIVER_NAME_DMA_CONTROLLER, eng);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
