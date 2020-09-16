Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFE826C1F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 13:11:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C07586F88;
	Wed, 16 Sep 2020 11:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6j9aT3zYp06; Wed, 16 Sep 2020 11:11:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3870986EC0;
	Wed, 16 Sep 2020 11:11:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8D2501BF5AC
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 11:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8970186937
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 11:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NWivG8epCsqN for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 11:11:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 36F71855C6
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 11:11:25 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D45821655;
 Wed, 16 Sep 2020 11:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600254684;
 bh=nT/vmCGFfmSFgpzah3Ct0QpHS6z8WSZoQrZ6dGKhyXc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0pB3ubzTyE8/ykxSVzAiSm6ewVDfdniIBUsWAjrJAKC/6jxW48ijVQjrUCLVyEWeX
 8bNITgFrub12hJB9JZMDySfXplhT4bYeBfier33GUOHRasNSq6TSYp/tm9sWmBK5Sg
 JMg95DQcs9GeroP7nEv0lMwrhr4rbOE8eYUxE6ac=
Date: Wed, 16 Sep 2020 13:11:59 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: trix@redhat.com
Subject: Re: [PATCH] staging: wfx: simplify virt_addr_valid call
Message-ID: <20200916111159.GA923212@kroah.com>
References: <20200912144719.13929-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200912144719.13929-1-trix@redhat.com>
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

On Sat, Sep 12, 2020 at 07:47:19AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> Reviewing sram_write_dma_safe(), there are two
> identical calls to virt_addr_valid().  The second
> call can be simplified by a comparison of variables
> set from the first call.
> 
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/staging/wfx/fwio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/fwio.c b/drivers/staging/wfx/fwio.c
> index 22d3b684f04f..c99adb0c99f1 100644
> --- a/drivers/staging/wfx/fwio.c
> +++ b/drivers/staging/wfx/fwio.c
> @@ -94,7 +94,7 @@ static int sram_write_dma_safe(struct wfx_dev *wdev, u32 addr, const u8 *buf,
>  		tmp = buf;
>  	}
>  	ret = sram_buf_write(wdev, addr, tmp, len);
> -	if (!virt_addr_valid(buf))
> +	if (tmp != buf)
>  		kfree(tmp);
>  	return ret;
>  }

Jerome, any thoughts?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
