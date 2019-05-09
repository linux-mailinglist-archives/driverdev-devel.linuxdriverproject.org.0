Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E8F18308
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 03:00:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 10D3F8816B;
	Thu,  9 May 2019 01:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ECIDIlN-fbjS; Thu,  9 May 2019 01:00:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC84388146;
	Thu,  9 May 2019 01:00:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B8321BF20D
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 00:59:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56D3088146
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 00:59:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lct5fac46DQy for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 00:59:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 144FE88143
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jF6l3iV1rXe+x0MwS+AXxE/3MQbA5vLmSrDtVx8hKJ0=; b=iDLjyMGHb2MtEiX7sNEsrIOc+
 r555boyzgroaM/roefjfl/8sPXIlDAXxtafMFPJgts5KIWBA3q3sxMLL9Wjox7NuUoSN+lZsyGDWw
 1YIQfXQ89Etqt/gh+FhXMlhdhbL9rncYRHCp1u5Ydd7sskuGKJOM6SqnvXr8Ix+x0A1cHoy/Pusmm
 afAw4Qn3zKr+mSjjshNzlrS6rfxIYZK+kWmsANoEiID2eXPgmAt9+V8rVX6zZpa52fnCPoRfx1GZ/
 Wu13zOk/d8d44/7sOxIazBgLErLk/FQfGqZzRDcPlEkhHnuFiQz1PmBOXDcuzYl28U3M+xDV4tosD
 uSeh53laQ==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOXOb-0001bQ-J1; Thu, 09 May 2019 00:58:49 +0000
Subject: Re: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
To: Alastair D'Silva <alastair@au1.ibm.com>, alastair@d-silva.org
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-4-alastair@au1.ibm.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <dc093079-43a0-0a45-f5dd-88b20702fd93@infradead.org>
Date: Wed, 8 May 2019 17:58:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508070148.23130-4-alastair@au1.ibm.com>
Content-Language: en-US
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
 Tom Lendacky <thomas.lendacky@amd.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Petr Mladek <pmladek@suse.com>, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/8/19 12:01 AM, Alastair D'Silva wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
> 
> Some buffers may only be partially filled with useful data, while the rest
> is padded (typically with 0x00 or 0xff).
> 
> This patch introduces a flag to allow the supression of lines of repeated
> bytes, which are replaced with '** Skipped %u bytes of value 0x%x **'
> 
> An inline wrapper function is provided for backwards compatibility with
> existing code, which maintains the original behaviour.
> 
> Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
> ---
>  include/linux/printk.h | 25 +++++++++---
>  lib/hexdump.c          | 91 ++++++++++++++++++++++++++++++++++++------
>  2 files changed, 99 insertions(+), 17 deletions(-)
> 

Hi,
Did you do "make htmldocs" or something similar on this?

> diff --git a/lib/hexdump.c b/lib/hexdump.c
> index 3943507bc0e9..d61a1e4f19fa 100644
> --- a/lib/hexdump.c
> +++ b/lib/hexdump.c
> @@ -212,8 +212,44 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
>  EXPORT_SYMBOL(hex_dump_to_buffer);
>  
>  #ifdef CONFIG_PRINTK
> +
> +/**
> + * Check if a buffer contains only a single byte value
> + * @buf: pointer to the buffer
> + * @len: the size of the buffer in bytes
> + * @val: outputs the value if if the bytes are identical

Does this work without a function name?
Documentation/doc-guide/kernel-doc.rst says the general format is:

  /**
   * function_name() - Brief description of function.
   * @arg1: Describe the first argument.
   * @arg2: Describe the second argument.
   *        One can provide multiple line descriptions
   *        for arguments.
   *

> + */

>  /**
> - * print_hex_dump - print a text hex dump to syslog for a binary blob of data
> + * print_hex_dump_ext: dump a binary blob of data to syslog in hexadecimal

Also not in the general documented format.

>   * @level: kernel log level (e.g. KERN_DEBUG)
>   * @prefix_str: string to prefix each line with;
>   *  caller supplies trailing spaces for alignment if desired


-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
