Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F7836CAEB
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Apr 2021 20:10:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BECE0608EA;
	Tue, 27 Apr 2021 18:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yb9nxmLN-ek6; Tue, 27 Apr 2021 18:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2ADAC605AF;
	Tue, 27 Apr 2021 18:10:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5DEB1C119D
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 18:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C47B2403CE
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 18:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMph-BnbYTdl for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 18:10:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 500D8403C7
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 18:10:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 535C360BBB;
 Tue, 27 Apr 2021 18:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1619547022;
 bh=hMNih56Z7Me63IH021Heuif5NMjLNzLrXKN9bgT0KrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qUwaSyxP3IEJLA0PXt00vgdVzEcxZZtxTM52qfHq2bNIPloTjmemV6IxceFsud7kt
 fdkFp3kTaxSfLl8WaqP7AMLbWLRF1VJ7DROBs8JN0zrIbB8ug0+0QULrqQSb55ynEj
 VBojc0fhMMdbXyIwEC37OwYoWSdE0Gc3PR99CEQ0=
Date: Tue, 27 Apr 2021 20:10:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jitendra Khasdev <jkhasdev@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: fix array of flexible structures
Message-ID: <YIhTjGpmLSYKuCi3@kroah.com>
References: <20210427174945.1323-1-jkhasdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427174945.1323-1-jkhasdev@gmail.com>
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

On Tue, Apr 27, 2021 at 11:19:45PM +0530, Jitendra Khasdev wrote:
> This patch fixes sparse warning "array of flexible structures"
> for rtllib.h.
> 
> eg. drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of
> flexible structures
> 
> Signed-off-by: Jitendra Khasdev <jkhasdev@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> index 4cabaf2..c7cb318 100644
> --- a/drivers/staging/rtl8192e/rtllib.h
> +++ b/drivers/staging/rtl8192e/rtllib.h
> @@ -802,7 +802,7 @@ struct rtllib_authentication {
>  	__le16 transaction;
>  	__le16 status;
>  	/*challenge*/
> -	struct rtllib_info_element info_element[];
> +	struct rtllib_info_element *info_element;

You just changed the definition of this structure, and the other
structures here.  Are you sure this is working properly?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
