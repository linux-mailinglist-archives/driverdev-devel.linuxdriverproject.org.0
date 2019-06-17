Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D305478F4
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 06:07:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A201875C2;
	Mon, 17 Jun 2019 04:07:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p31B8+RtQOXn; Mon, 17 Jun 2019 04:07:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E1C087532;
	Mon, 17 Jun 2019 04:07:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ADE831BF383
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 04:07:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A97492038D
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 04:07:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ovCglN5KfT+V for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 04:07:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (ushosting.nmnhosting.com
 [66.55.73.32])
 by silver.osuosl.org (Postfix) with ESMTP id CBD8520134
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 04:07:40 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id E75102DC007F;
 Mon, 17 Jun 2019 00:07:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1560744460;
 bh=fcIJWb9zFrSz2UB8a7mxef1I4k9iDutEwQyvrCEDLlQ=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=WCFaSA53OEIg+og8L/naQbQPlaTsOoXPKsvTwtmXP2Vk09oVK0XuS5AD3x5/CqLrM
 G0GIng39m1v0lZ4sKpUf3T99/+YBxM9RX44WLALuhESqgh+r5BAShy10176lEQBE3q
 DQvd2fgD6zwuDb2r3HtAMEKvNfyGEklzY4KUQ+U+VxMilUgRO+yfLfvjALw1DuedIj
 U07cuyKZx46E0NJINEB5+8FVHhYvvSWxSY7sKWAoGvSBG/TJ18P0TuXGu+r+H6bH0e
 aXUQ8ilJHofP52ff/zDalxsvFnS/I19R0WtGSyZHeql8nV+rZAy3ckW9tGr7DubBUl
 qpbsJvQK16Hb/jOSoEHhPkG1VKXuLKMb1qy/wzkUplRpkQy3lck+ggy2ukzRhUgkqh
 N1Q6mMJi30A9PGd1HWpWuLWkLg4LedcJItJ961IWPw6XnamogZOK4OajearEtq6Wug
 Q7fZpUvUrqSKSyRRBPeipKEoLRw/YY+95nWqf7l5GKHjuTC0GylNVU3e6c29Aa3j+X
 5pRuwG5Xw/zIJlIzmObseyKrpDD4TC7M/3O2j/4ernSmXnXxPfSq1dRv9DqHM2oKIk
 cA8ovQOzGfvEiJha5fCrgByfWUnR6D8Ngp3/azplb/9QJOs0SiH1pg9yh8F/C3rFek
 9RkRnoy0sArwZ3E9Df8kzHf0=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5H47CvI055927
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 17 Jun 2019 14:07:28 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <da2ff58290c4b6f08eb5ac25c288bdd03b5688f7.camel@d-silva.org>
Subject: Re: [PATCH v3 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Date: Mon, 17 Jun 2019 14:07:12 +1000
In-Reply-To: <20190617020430.8708-4-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <20190617020430.8708-4-alastair@au1.ibm.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Mon, 17 Jun 2019 14:07:35 +1000 (AEST)
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Steven Rostedt <rostedt@goodmis.org>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Benson Leung <bleung@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>, Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> Some buffers may only be partially filled with useful data, while the
> rest
> is padded (typically with 0x00 or 0xff).
> 
> This patch introduces a flag to allow the supression of lines of
> repeated
> bytes, which are replaced with '** Skipped %u bytes of value 0x%x **'
> 
> An inline wrapper function is provided for backwards compatibility
> with
> existing code, which maintains the original behaviour.
> 
> Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> ---
>  include/linux/printk.h | 25 +++++++++---
>  lib/hexdump.c          | 91 ++++++++++++++++++++++++++++++++++++--
> ----
>  2 files changed, 99 insertions(+), 17 deletions(-)
> 
> diff --git a/include/linux/printk.h b/include/linux/printk.h
> index cefd374c47b1..d7754799cfe0 100644
> --- a/include/linux/printk.h
> +++ b/include/linux/printk.h
> @@ -481,13 +481,18 @@ enum {
>  	DUMP_PREFIX_ADDRESS,
>  	DUMP_PREFIX_OFFSET
>  };
> +
>  extern int hex_dump_to_buffer(const void *buf, size_t len, int
> rowsize,
>  			      int groupsize, char *linebuf, size_t
> linebuflen,
>  			      bool ascii);
> +
> +#define HEXDUMP_ASCII			BIT(0)
> +#define HEXDUMP_SUPPRESS_REPEATED	BIT(1)
> +

This is missing the include of linux/bits.h, I'll fix this in the next
version.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
