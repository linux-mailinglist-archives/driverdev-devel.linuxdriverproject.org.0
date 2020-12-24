Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 399A82E2547
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 08:49:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67A7E86962;
	Thu, 24 Dec 2020 07:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dv-Kk03gvTi9; Thu, 24 Dec 2020 07:49:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B16F86929;
	Thu, 24 Dec 2020 07:49:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 805EF1BF59B
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 07:49:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73033872EA
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 07:49:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J2I16RQ3bjbr for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 07:49:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0100E871BA
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 07:49:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 993BF22571;
 Thu, 24 Dec 2020 07:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1608796161;
 bh=bmL0tWs45xYqEhuiyx9z9sxX9bCxhXR7RT6XHGtYCk0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z6TVvqxXzPl2ow9EcTVNvPghEGp/SvoUNXMFdPddFNPpVMlDikKg7J0QzImGfs/VU
 zJ05HL9cZNf0ULZtWjLx9/FwRd3ajAneY4M//uvN84LdbIyO3RqHzr8jxgd4WWArvS
 CUlY209sX5o7Rh3/h32TGhOcP6mdF7jIaTxsfhGM=
Date: Thu, 24 Dec 2020 08:49:17 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ayoub Soussi <ayoubfme@gmail.com>
Subject: Re: [PATCH] staging: ralink-gdma: Fixed blank line coding style issue
Message-ID: <X+RH/VlugeGaAY8b@kroah.com>
References: <20201223202230.31325-1-ayoubfme@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201223202230.31325-1-ayoubfme@gmail.com>
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

On Wed, Dec 23, 2020 at 09:22:30PM +0100, Ayoub Soussi wrote:
> Fixed coding style issue.
> 
> Signed-off-by: Ayoub Soussi <ayoubfme@gmail.com>
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

With your knowledge of C, does this change look correct?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
