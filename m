Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F41F62BB67
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 22:28:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FD1F86852;
	Mon, 27 May 2019 20:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WW-LPHqPxF2S; Mon, 27 May 2019 20:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 878EA8680C;
	Mon, 27 May 2019 20:28:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AB981BF841
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 20:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33E04840EA
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 20:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2CPEYJTsHYp1 for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 20:28:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00476864E9
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 20:28:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hera.aquilenet.fr (Postfix) with ESMTP id 20C932ED4;
 Mon, 27 May 2019 22:28:22 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
 by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GaWlTzEBuJG2; Mon, 27 May 2019 22:28:21 +0200 (CEST)
Received: from function (105.251.129.77.rev.sfr.net [77.129.251.105])
 by hera.aquilenet.fr (Postfix) with ESMTPSA id 3E6AE1969;
 Mon, 27 May 2019 22:28:21 +0200 (CEST)
Received: from samy by function with local (Exim 4.92)
 (envelope-from <samuel.thibault@ens-lyon.org>)
 id 1hVMEF-00042b-Nw; Mon, 27 May 2019 22:28:19 +0200
Date: Mon, 27 May 2019 22:28:19 +0200
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] drivers: staging: speakup: serialio: fix warning
 linux/serial.h is included more than once
Message-ID: <20190527202819.mh635ht2jf4ku7rl@function>
Mail-Followup-To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>,
 Chris Brannon <chris@the-brannons.com>,
 Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20190526071322.GA3830@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526071322.GA3830@hari-Inspiron-1545>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Chris Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hariprasad Kelam, le dim. 26 mai 2019 12:43:22 +0530, a ecrit:
> fix below warning reported by  includecheck
> 
> ./drivers/staging/speakup/serialio.h: linux/serial.h is included more
> than once.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

That was indeed the result of f79b0d9c223ca09cefffc72304a7bcbc401a1c6f
("staging: speakup: Fixed warning <linux/serial.h> instead of
<asm/serial.h>") which didn't take care of the inclusion above.
I believe <linux/serial.h> only is fine, the important part is in
drivers/staging/speakup/serialio.c which really needs to include
asm/serial.h to get SERIAL_PORT_DFNS

Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

> ---
>  drivers/staging/speakup/serialio.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/speakup/serialio.h b/drivers/staging/speakup/serialio.h
> index aa691e4..6f8f86f 100644
> --- a/drivers/staging/speakup/serialio.h
> +++ b/drivers/staging/speakup/serialio.h
> @@ -4,9 +4,6 @@
>  
>  #include <linux/serial.h>	/* for rs_table, serial constants */
>  #include <linux/serial_reg.h>	/* for more serial constants */
> -#ifndef __sparc__
> -#include <linux/serial.h>
> -#endif
>  #include <linux/serial_core.h>
>  
>  #include "spk_priv.h"
> -- 
> 2.7.4
> 

-- 
Samuel
> No manual is ever necessary.
May I politely interject here: BULLSHIT.  That's the biggest Apple lie of all!
(Discussion in comp.os.linux.misc on the intuitiveness of interfaces.)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
