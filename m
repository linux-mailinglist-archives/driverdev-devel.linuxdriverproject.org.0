Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6156D2D5713
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 10:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D2A4876C3;
	Thu, 10 Dec 2020 09:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c8gOciwXIw25; Thu, 10 Dec 2020 09:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D123876A1;
	Thu, 10 Dec 2020 09:27:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6077F1BF3D4
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 09:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 56133865AB
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 09:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HmUOBv7h2kb0 for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 09:26:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3F12485C13
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 09:26:59 +0000 (UTC)
Date: Thu, 10 Dec 2020 10:28:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1607592418;
 bh=+bm4nSxz3uw7A+wBxE5e9SXlmjGSJ/oe2vmGKGeAAEI=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=K4DGBQuO/JPxvu0h5+FGlDWGI7zQnKw0nj47sUHM03bEup9UYODQF72kCKZ7bD3X3
 Dh1sxixAu71uuEaYgLVgBwXcYRKSayp3be6lGFQCav1Xgl8i0bndcV2Znbq7ToJ2sS
 lE856qsBfwCJpZCO2Bc5Z6Gnh9E98fPew6R64ARQ=
From: Greg KH <gregkh@linuxfoundation.org>
To: Chris Bloomfield <ginge264@gmail.com>
Subject: Re: [PATCH] Staging: ralink-gdma: ralink-gdma: Fix a blank line
 coding style issue
Message-ID: <X9HqLFwjHSPXqRgZ@kroah.com>
References: <20201210100657.22562-1-ginge264@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210100657.22562-1-ginge264@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 10, 2020 at 10:06:57AM +0000, Chris Bloomfield wrote:
> Fix a coding style issue as identified by checkpatch.pl
> 
> Signed-off-by: Chris Bloomfield <ginge264@gmail.com>
> ---
>  drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
> index 655df317d0ee..a6181a167814 100644
> --- a/drivers/staging/ralink-gdma/ralink-gdma.c
> +++ b/drivers/staging/ralink-gdma/ralink-gdma.c
> @@ -122,6 +122,7 @@ struct gdma_dma_dev {
>  	struct gdma_data *data;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> +
>  	volatile unsigned long chan_issued;
>  	atomic_t cnt;
>  

With your knowledge of C, do you think the above change looks correct?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
