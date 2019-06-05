Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C7360DF
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 18:11:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 195EA870B3;
	Wed,  5 Jun 2019 16:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GPttbrBgNmiB; Wed,  5 Jun 2019 16:11:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7678486E3F;
	Wed,  5 Jun 2019 16:11:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FB6D1BF576
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4606B85F60
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:11:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 88Hit5Qwr7aZ for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 16:11:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B96F584D81
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 16:11:11 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11D0C2075C;
 Wed,  5 Jun 2019 16:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559751071;
 bh=DHGMgw+eZFadoBgNgRY+d4u+yvK0QBiz3Bpz93ekE80=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bz1bKdq0xZjqv7v8IIC6SguSpaYD6TMiAq+cLdeaCb70Z6+MTXDvVooryCKAzoVer
 oLNmWVZDV2rjUAeIV0ELVfaayfkFKsbYLnsqDgAYPVKIiqVD3E3fJbpAvwfoo3nGzg
 PcVF5zfBWtrUBAOInSKhx+RlyJCFtNxftHZlZIus=
Date: Wed, 5 Jun 2019 18:11:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Valerio Genovese <valerio.click@gmail.com>
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: fix symbol
 'kpc_dma_add_device' was not declared.
Message-ID: <20190605161109.GA17272@kroah.com>
References: <20190605155711.19722-1-valerio.click@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605155711.19722-1-valerio.click@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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

On Wed, Jun 05, 2019 at 05:57:11PM +0200, Valerio Genovese wrote:
> This was reported by sparse:
> drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:39:7: warning: symbol 'kpc_dma_add_device
> ' was not declared. Should it be static?
> 
> Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
> index ee47f43e71cf..19e88c3bc13f 100644
> --- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
> +++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
> @@ -56,6 +56,7 @@ struct dev_private_data {
>  };
>  
>  struct kpc_dma_device *kpc_dma_lookup_device(int minor);
> +void kpc_dma_add_device(struct kpc_dma_device *ldev);
>  
>  extern const struct file_operations  kpc_dma_fops;
>  

This is not how you fix this issue.

Look at the warning given to you.  Think about your C programming
knowledge and remember what the 'static' keyword is and does.

Then fix the issue properly.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
