Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74AA1B162
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 09:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF0A08739E;
	Mon, 13 May 2019 07:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t9mhhIA5o6C6; Mon, 13 May 2019 07:44:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 584D4872E8;
	Mon, 13 May 2019 07:44:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 54C6D1BF387
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 07:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4B41D21F6F
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 07:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFVGZeWeVkEu for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 07:44:42 +0000 (UTC)
X-Greylist: delayed 00:08:42 by SQLgrey-1.7.6
Received: from ushosting.nmnhosting.com (ushosting.nmnhosting.com
 [66.55.73.32])
 by silver.osuosl.org (Postfix) with ESMTP id EDD6D2107A
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 07:44:41 +0000 (UTC)
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 231832DC0069;
 Mon, 13 May 2019 03:35:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1557732958;
 bh=aa+i95blYOSxhGwoRx9zFnMo5oG4XUfXT748BNmFJIU=;
 h=From:To:Cc:References:In-Reply-To:Subject:Date:From;
 b=aSet9rLYykQxcyXFS2GF9u8JjdaPfKwlu1qpX3Ek5B3X+zmGgF+1WtmJH8QDHUKVR
 POJW18jnNWqKlc9WV/y9wswfLzQAdORTjoBGt6wbLb+XQzz+YSA8YT8exQIamI1hKA
 NgBZZqdAOIFcj5X4mKMcpOALzVECo4ayuE60g+CPH7CvPt6lSOfmFpWRNnpn+wYPF4
 P6SqYrz3uRsFocaNWbLb6GRXp8TE8CKtYMYUEeB/QfMAnGJ7U/FZrL/hYqxDE0ryBG
 /8/mtlXRqGs0pBJCO5WKEQDm1lzWRXt40l8YPyEBjUBm/McmvG1Iafbx2EfRhysC43
 vKIF2BpJNTxkposUCWaXgJuoNekulC6f7wlHUlNkNooeQHpAKXYuClI/ikmvCrnCff
 Vy/fK7azMrun4S9M5k0UdX9IUayiM9Y1AVv1iAHjIJrMhP8ELgeNkTypKa35MyJMjx
 LmIQVy3zVwlAOW1mMnZhrLapo90FKO26dOcJq140LOTx0ZahhIuR6KISKy+FuwYBfp
 cNemDFNeNEkfGRWxw0VhCsOArzkI9iJJSDwhVYx2DI4O1xJX2kFEObBeq4rx25ClRK
 PDCjVeuymuPU3aUBQKrJtdTxur1fcbH6SvSnl3OKtvCVGly9Za8zstBXG1KdRUNuvp
 kOJclMVcOxeDGLfkA1Mcr7AQ=
Received: from Hawking (ntp.lan [10.0.1.1]) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x4D7ZjC4057687
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 13 May 2019 17:35:46 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
From: "Alastair D'Silva" <alastair@d-silva.org>
To: "'Geert Uytterhoeven'" <geert@linux-m68k.org>,
 "'Alastair D'Silva'" <alastair@au1.ibm.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
 <20190508070148.23130-4-alastair@au1.ibm.com>
 <CAMuHMdVefYTgHzGKBc0ebku1z8V3wsM0ydN+6-S2nFKaB8eH_Q@mail.gmail.com>
In-Reply-To: <CAMuHMdVefYTgHzGKBc0ebku1z8V3wsM0ydN+6-S2nFKaB8eH_Q@mail.gmail.com>
Subject: RE: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
 repeated bytes
Date: Mon, 13 May 2019 17:35:47 +1000
Message-ID: <04de01d5095e$7f6af730$7e40e590$@d-silva.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-au
Thread-Index: AQGz7QD7bMLLz3XdMyQiMIIzLY+D4AJkmwv+AXBy99KmjDiokA==
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Mon, 13 May 2019 17:35:53 +1000 (AEST)
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
Cc: 'Linux Fbdev development list' <linux-fbdev@vger.kernel.org>,
 'Stanislaw Gruszka' <sgruszka@redhat.com>, 'Petr Mladek' <pmladek@suse.com>,
 'David Airlie' <airlied@linux.ie>,
 'Joonas Lahtinen' <joonas.lahtinen@linux.intel.com>,
 'DRI Development' <dri-devel@lists.freedesktop.org>,
 'driverdevel' <devel@driverdev.osuosl.org>,
 'scsi' <linux-scsi@vger.kernel.org>, 'Jassi Brar' <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org,
 'Intel Graphics Development' <intel-gfx@lists.freedesktop.org>,
 'Dan Carpenter' <dan.carpenter@oracle.com>,
 'Jose Abreu' <Jose.Abreu@synopsys.com>,
 'Tom Lendacky' <thomas.lendacky@amd.com>,
 "'James E.J. Bottomley'" <jejb@linux.ibm.com>,
 'Jani Nikula' <jani.nikula@linux.intel.com>,
 'Linux FS Devel' <linux-fsdevel@vger.kernel.org>,
 'Steven Rostedt' <rostedt@goodmis.org>,
 'Rodrigo Vivi' <rodrigo.vivi@intel.com>, 'Benson Leung' <bleung@chromium.org>,
 'Kalle Valo' <kvalo@codeaurora.org>, 'Karsten Keil' <isdn@linux-pingi.de>,
 "'Martin K. Petersen'" <martin.petersen@oracle.com>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 'linux-wireless' <linux-wireless@vger.kernel.org>,
 'Linux Kernel Mailing List' <linux-kernel@vger.kernel.org>,
 'Sergey Senozhatsky' <sergey.senozhatsky@gmail.com>,
 'David Laight' <David.Laight@aculab.com>, 'Daniel Vetter' <daniel@ffwll.ch>,
 'netdev' <netdev@vger.kernel.org>,
 'Enric Balletbo i Serra' <enric.balletbo@collabora.com>,
 'Andrew Morton' <akpm@linux-foundation.org>,
 "'David S. Miller'" <davem@davemloft.net>,
 'Alexander Viro' <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> -----Original Message-----
> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Sent: Monday, 13 May 2019 5:01 PM
> To: Alastair D'Silva <alastair@au1.ibm.com>
> Cc: alastair@d-silva.org; Jani Nikula <jani.nikula@linux.intel.com>; Joonas
> Lahtinen <joonas.lahtinen@linux.intel.com>; Rodrigo Vivi
> <rodrigo.vivi@intel.com>; David Airlie <airlied@linux.ie>; Daniel Vetter
> <daniel@ffwll.ch>; Dan Carpenter <dan.carpenter@oracle.com>; Karsten
> Keil <isdn@linux-pingi.de>; Jassi Brar <jassisinghbrar@gmail.com>; Tom
> Lendacky <thomas.lendacky@amd.com>; David S. Miller
> <davem@davemloft.net>; Jose Abreu <Jose.Abreu@synopsys.com>; Kalle
> Valo <kvalo@codeaurora.org>; Stanislaw Gruszka <sgruszka@redhat.com>;
> Benson Leung <bleung@chromium.org>; Enric Balletbo i Serra
> <enric.balletbo@collabora.com>; James E.J. Bottomley
> <jejb@linux.ibm.com>; Martin K. Petersen <martin.petersen@oracle.com>;
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Alexander Viro
> <viro@zeniv.linux.org.uk>; Petr Mladek <pmladek@suse.com>; Sergey
> Senozhatsky <sergey.senozhatsky@gmail.com>; Steven Rostedt
> <rostedt@goodmis.org>; David Laight <David.Laight@aculab.com>; Andrew
> Morton <akpm@linux-foundation.org>; Intel Graphics Development <intel-
> gfx@lists.freedesktop.org>; DRI Development <dri-
> devel@lists.freedesktop.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; netdev <netdev@vger.kernel.org>;
> ath10k@lists.infradead.org; linux-wireless <linux-wireless@vger.kernel.org>;
> scsi <linux-scsi@vger.kernel.org>; Linux Fbdev development list <linux-
> fbdev@vger.kernel.org>; driverdevel <devel@driverdev.osuosl.org>; Linux
> FS Devel <linux-fsdevel@vger.kernel.org>
> Subject: Re: [PATCH v2 3/7] lib/hexdump.c: Optionally suppress lines of
> repeated bytes
> 
> Hi Alastair,
> 
> Thanks for your patch!

And thanks for your politeness :)

> 
> On Wed, May 8, 2019 at 9:04 AM Alastair D'Silva <alastair@au1.ibm.com>
> wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> >
> > Some buffers may only be partially filled with useful data, while the
> > rest is padded (typically with 0x00 or 0xff).
> >
> > This patch introduces a flag to allow the supression of lines of
> > repeated bytes,
> 
> Given print_hex_dump() operates on entities of groupsize (1, 2, 4, or 8)
> bytes, wouldn't it make more sense to consider repeated groups instead of
> repeated bytes?

Maybe, it would mean that subsequent addresses may not be a multiple of rowsize though, which is useful.

> > which are replaced with '** Skipped %u bytes of value 0x%x **'
> 
> Using a custom message instead of just "*", like "hexdump" uses, will require
> preprocessing the output when recovering the original binary data by
> feeding it to e.g. "xxd".
> This may sound worse than it is, though, as I never got "xxd" to work without
> preprocessing anyway ;-)

I think showing the details of the skipped values is useful when reading the output directly. In situations where binary extracts are desired, the feature can always be disabled.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva     msn: alastair@d-silva.org
blog: http://alastair.d-silva.org    Twitter: @EvilDeece



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
