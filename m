Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC07533A36B
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 08:34:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3560D4AD66;
	Sun, 14 Mar 2021 07:34:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AIaBCNmnlkW7; Sun, 14 Mar 2021 07:33:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F111247B6F;
	Sun, 14 Mar 2021 07:33:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4B681BF316
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 07:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B28B183E2E
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 07:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qpKnMU3dq3wQ for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 07:33:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6275883FC1
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 07:33:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1272264EB2;
 Sun, 14 Mar 2021 07:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1615707223;
 bh=/R7zLYFpW/po4qIK7muTX9jiWl1BZL/eh7Q4Otw6pj8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AJndpGIc6RG7Sw7BxyBsa8ZTozueA0bXi7sBXGGRDuZwn22Z6tBUvy9ZakKAOuvAZ
 2ppvzXw74uPhHP2+o9Umf3mPoVE9Bke4cr6WGXQTv5PzSpxfeTHvBG6wv1IRvx1bZ4
 GXYWmQWir/KDBthxwLMFcbFjvB9ZceHaBbLF78iY=
Date: Sun, 14 Mar 2021 08:33:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Selvakumar Elangovan <selvakumar16197@gmail.com>
Subject: Re: [PATCH] staging: octeon-usb: fixed precedence issue
Message-ID: <YE28Uzs6ZhHopk8J@kroah.com>
References: <20210313173247.8676-1-selvakumar16197@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210313173247.8676-1-selvakumar16197@gmail.com>
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

On Sat, Mar 13, 2021 at 11:02:47PM +0530, Selvakumar Elangovan wrote:
> Added parenthesis around reg macro to avoid precedence issue identified by
> checkpatch.pl
> 
> Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
> ---
>  drivers/staging/octeon-usb/octeon-hcd.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/octeon-usb/octeon-hcd.h b/drivers/staging/octeon-usb/octeon-hcd.h
> index 9ed619c93a4e..5aefd3fb3854 100644
> --- a/drivers/staging/octeon-usb/octeon-hcd.h
> +++ b/drivers/staging/octeon-usb/octeon-hcd.h
> @@ -51,11 +51,11 @@
>  #include <asm/bitfield.h>
>  
>  #define CVMX_USBCXBASE 0x00016F0010000000ull
> -#define CVMX_USBCXREG1(reg, bid) \
> -	(CVMX_ADD_IO_SEG(CVMX_USBCXBASE | reg) + \
> +#define CVMX_USBCXREG1((reg), bid) \

Why did you change this line?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
