Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8B745D9D6
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 13:15:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B330560D6A;
	Thu, 25 Nov 2021 12:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yGZyeSdpxulL; Thu, 25 Nov 2021 12:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01054606B3;
	Thu, 25 Nov 2021 12:15:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F20E51BF3CC
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF4D9402A1
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 12:15:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id obeSe_raFIDJ for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 12:15:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E504400DE
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 12:15:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C70461059;
 Thu, 25 Nov 2021 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1637842533;
 bh=uEqGHPfzJaVjnN6E+ChIXI7R5xlqHtRUDyOWmJ3VNmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X6Ygs4zkqMtURBYWuQQ4+t5/N/WWbQWheGkvKm9SSqLzLC89R0lysM/4dGq4KCdMR
 eaBkxnjgy5y6nEx7YP+W4/AY3YaZIBtbpqud8rFULcEr9uKVgL25T39XilyKH+SURb
 AjbluGVF7xbjFkDUpTfOkLZ5F9ALVEM1BeLlzQqI=
Date: Thu, 25 Nov 2021 13:15:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/1] staging: ion: Prevent incorrect reference counting
 behavour
Message-ID: <YZ9+YPc7w9Z4xotR@kroah.com>
References: <20211125120234.67987-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125120234.67987-1-lee.jones@linaro.org>
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
Cc: devel@driverdev.osuosl.org, riandrews@android.com, stable@vger.kernel.org,
 arve@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 25, 2021 at 12:02:34PM +0000, Lee Jones wrote:
> Supply additional checks in order to prevent unexpected results.
> 
> Fixes: b892bf75b2034 ("ion: Switch ion to use dma-buf")
> Signed-off-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/staging/android/ion/ion.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index 806e9b30b9dc8..30f359faba575 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -509,6 +509,9 @@ static void *ion_handle_kmap_get(struct ion_handle *handle)
>  	void *vaddr;
>  
>  	if (handle->kmap_cnt) {
> +		if (handle->kmap_cnt + 1 < handle->kmap_cnt)

What about using the nice helpers in overflow.h for this?

> +			return ERR_PTR(-EOVERFLOW);
> +
>  		handle->kmap_cnt++;
>  		return buffer->vaddr;
>  	}
> -- 
> 2.34.0.rc2.393.gf8c9666880-goog

What stable kernel branch(es) is this for?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
