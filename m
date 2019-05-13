Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8831B0A6
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 09:01:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B45E98735E;
	Mon, 13 May 2019 07:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O523MzPa1XbH; Mon, 13 May 2019 07:01:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F18D987118;
	Mon, 13 May 2019 07:01:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33AA91BF2A9
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 07:01:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 306E585116
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 07:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fKRcEjqnTjjS for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 07:01:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
 [209.85.217.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E6A885108
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 07:01:27 +0000 (UTC)
Received: by mail-vs1-f68.google.com with SMTP id m1so184655vsr.6
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 00:01:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KZeUlM9HFwsoPba3BedCeGi13MK+EsvDzCuCOHnSeSU=;
 b=NQpWUXXabeevvsnXNRQ2//8YHP+ol3Dbkb1vXRgpjsdcJwqYl06W5Jhp1ZwA2sgzsI
 ZphSFTJRKtw453Zvfy75uKQ6xywKj79BZ4h4/LoPFtk78+/k8jT7zwEWLedLL2h2Ae2G
 pvA7r9/OexaH2XzwyOFia+hAxdV/1yUnfjt6JDBZgx2hO8Rvx4rsvBCW1v53LA0Qbrio
 Jf6yoZme8MwNGbPOEFmNQeGgBXlvMHkoWANm0UPfuLFIISJhwPC6S4MuVCF4/Iv997Zy
 rNNwS6dBIUFcAQ4SlQK6s2fVt1pHzNe3iu3WoQU4iN+77HwlYx6XOmpF1hQ6/kPrAMU4
 zWJw==
X-Gm-Message-State: APjAAAXP4yfICGbyZT1yoa/aKD81eatbQJThFKAsT02WGA1XrPZ3UJq2
 sDSvvSNxBB4grb9znFXJKhC9LVcbTbXmJs7db10=
X-Google-Smtp-Source: APXvYqxs4U9cC6qSMiyVDwFNxNbvddkvfAvZ+WOBelGbmcS7WwGSJect4/Alo1+2rHfzk8JgMisDv2BcZmORdVLPpig=
X-Received: by 2002:a67:770f:: with SMTP id s15mr4419527vsc.11.1557730886319; 
 Mon, 13 May 2019 00:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-4-alastair@au1.ibm.com>
In-Reply-To: <20190508070148.23130-4-alastair@au1.ibm.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 May 2019 09:01:14 +0200
Message-ID: <CAMuHMdVefYTgHzGKBc0ebku1z8V3wsM0ydN+6-S2nFKaB8eH_Q@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
To: "Alastair D'Silva" <alastair@au1.ibm.com>
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
Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 Stanislaw Gruszka <sgruszka@redhat.com>, Petr Mladek <pmladek@suse.com>,
 David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 driverdevel <devel@driverdev.osuosl.org>, scsi <linux-scsi@vger.kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, ath10k@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, alastair@d-silva.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Benson Leung <bleung@chromium.org>,
 Kalle Valo <kvalo@codeaurora.org>, Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@aculab.com>, Daniel Vetter <daniel@ffwll.ch>,
 netdev <netdev@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alastair,

Thanks for your patch!

On Wed, May 8, 2019 at 9:04 AM Alastair D'Silva <alastair@au1.ibm.com> wrote:
> From: Alastair D'Silva <alastair@d-silva.org>
>
> Some buffers may only be partially filled with useful data, while the rest
> is padded (typically with 0x00 or 0xff).
>
> This patch introduces a flag to allow the supression of lines of repeated
> bytes,

Given print_hex_dump() operates on entities of groupsize (1, 2, 4, or 8)
bytes, wouldn't it make more sense to consider repeated groups instead
of repeated bytes?

> which are replaced with '** Skipped %u bytes of value 0x%x **'

Using a custom message instead of just "*", like "hexdump" uses, will
require preprocessing the output when recovering the original binary
data by feeding it to e.g. "xxd".
This may sound worse than it is, though, as I never got "xxd" to work
without preprocessing anyway ;-)

    $ cat $(type -p unhexdump)
    #!/bin/sh
    sed 's/^[0-9a-f]*//' $1 | xxd -r -p | dd conv=swab

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
