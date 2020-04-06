Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 369AD19F7D0
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 16:22:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2E5F87EE3;
	Mon,  6 Apr 2020 14:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bjz5RTI7BCGQ; Mon,  6 Apr 2020 14:22:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B2EC87F8C;
	Mon,  6 Apr 2020 14:22:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF61E1BF3D7
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:22:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BB9AF2079D
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 14:22:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XP-umSziD+Zf for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 14:22:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 130B920020
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 14:22:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D50C23D4D;
 Mon,  6 Apr 2020 14:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586182934;
 bh=079T5wNZmSG8ZgElAL/OT/dS/9EsBX27bHZ9pHlhHc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ATLYI5tDGQeBumcAM2blpXje1MIDHzL0PJrmYX6l244ju4FDGPaeLvzqYkcItaI8h
 8YEi/zGP7kQdZFsDpAhji+JYnAOqfzuJsxZvf+w7Vh1pBXjM3V+RTC3rv9S1qQyvUC
 hmtDvVYkq13RNfTKPTIpQ319x4GJqAb9KERFRg6Q=
Date: Mon, 6 Apr 2020 16:22:12 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH 2/3] staging: vt6656: Use define instead of magic number
 for tx_rate
Message-ID: <20200406142212.GA48502@kroah.com>
References: <20200404141400.3772-1-oscar.carter@gmx.com>
 <20200404141400.3772-3-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404141400.3772-3-oscar.carter@gmx.com>
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 linux-kernel@vger.kernel.org, Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 04, 2020 at 04:13:59PM +0200, Oscar Carter wrote:
> Use the define RATE_11M present in the file "device.h" instead of the
> magic number 3. So the code is more clear.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/vt6656/baseband.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index 3e4bd637849a..a785f91c1566 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -24,6 +24,7 @@
> 
>  #include <linux/bits.h>
>  #include <linux/kernel.h>
> +#include "device.h"
>  #include "mac.h"
>  #include "baseband.h"
>  #include "rf.h"
> @@ -141,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
> 
>  	rate = (unsigned int)vnt_frame_time[tx_rate];
> 
> -	if (tx_rate <= 3) {
> +	if (tx_rate <= RATE_11M) {
>  		if (preamble_type == 1)
>  			preamble = 96;
>  		else
> --
> 2.20.1

This doesn't apply to my tree :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
