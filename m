Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC6C25F91D
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 13:15:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8F5487139;
	Mon,  7 Sep 2020 11:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMVfzQqikV6w; Mon,  7 Sep 2020 11:15:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4843387103;
	Mon,  7 Sep 2020 11:15:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8EC511BF2A9
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 11:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F0732049C
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 11:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IjyTs6r0dr-P for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 11:15:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 99B6A20101
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 11:15:15 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 700C5218AC;
 Mon,  7 Sep 2020 11:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599477315;
 bh=xWDfRcNawpJudBVVOWhyxqeQ7VUtLe+x0Cbwak2FFXQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yr0FysnIWznGgDWtDXbrC6mR8mJtZocgyHt6dNJv/AQ3TREUCyH3QkJTxussSVeSC
 r2/oIEbwjHTyRiZRpqgzatg/I2V3DiKEyq/7cgwe9DE17bo1Jz+DknNTMaNvvlf6sP
 +PLyeC073BZOU5kfEPxj5Lugf0bqUJHcBTwr0zek=
Date: Mon, 7 Sep 2020 13:15:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Naveen Panwar <naveen.panwar27@gmail.com>
Subject: Re: [PATCH] driver: staging: ralink-gdma: fixing codestyle change
Message-ID: <20200907111511.GA299182@kroah.com>
References: <20200907103703.30208-1-naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200907103703.30208-1-naveen.panwar27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, mpe@ellerman.id.au, psampat@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 07, 2020 at 04:07:03PM +0530, Naveen Panwar wrote:
> Adding a blank line after variable declarations

Why?

> 
> Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index eabf1093328e..9ad012d1581f 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,6 +122,7 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;

This patch does not do what you think it does...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
