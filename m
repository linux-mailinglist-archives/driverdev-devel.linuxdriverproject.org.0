Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5941527F6
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 10:03:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B50C85CBC;
	Wed,  5 Feb 2020 09:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wkvz6kQg139g; Wed,  5 Feb 2020 09:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB19B85C43;
	Wed,  5 Feb 2020 09:03:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4B2C1BF331
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 09:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0CA585159
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 09:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b+1YtXBu6oWS for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 09:03:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6620381722
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 09:03:31 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id z9so1250418oth.5
 for <devel@driverdev.osuosl.org>; Wed, 05 Feb 2020 01:03:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ly8+3gmEudftYUIeu3tPerclxKuHSskVOT90fOPXZhE=;
 b=tMI/+WxYz5SmKEOax+gQYELaKOOfXVEP9sMgx/BFo0Qxzf1/CMo/zk5+hIic2/VgQy
 0sTpR7FCEvYhueW4wYahkOopbTYmwLvi3v9ythIfkc09xTkrZVplBzlEvQ589J75zMQG
 5NoPdbHf34J4c6kRrG9OwN2X5W7//96pM3PGt6f24hhLC9ZZFu39FLCSHnG+4jij4M8f
 XvX7lpNxeiroTx2J21KfAQ9+W/KDhdlmTpW9RikUtk6TQp8SLMuj7hW8E6YHSe9lxvCs
 raOy+kVSRg98eOQD1yMp3eFC6T98u4SaGXbQPT1/wXKPnmAI1k+RIYKAfAOTOn2gE+SL
 CniA==
X-Gm-Message-State: APjAAAWF4+fvGEaoEAEsuUtpNQ1nva7nqlTMUpUHHIhB2jX7ETHceO/S
 3A4CVIU7xxo/eMoqO9teEGnawkHSZ8U4VPv3Pwc=
X-Google-Smtp-Source: APXvYqyVwSn2VmNn5oApgPX5q+zTOnNZeAT401O+YxcAG7VYa5bBHlGp+7lxWYvZwut7WPxF1fu6UU5Z6kXVuJUJXdM=
X-Received: by 2002:a9d:8f1:: with SMTP id 104mr23691249otf.107.1580893410632; 
 Wed, 05 Feb 2020 01:03:30 -0800 (PST)
MIME-Version: 1.0
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <6f934497-0635-7aa0-e7d5-ed2c4cc48d2d@roeck-us.net>
 <da150cdb160b5d1b58ad1ea2674cc93c1fc6aadc.camel@alliedtelesis.co.nz>
 <20200204070927.GA966981@kroah.com>
 <1a90dc4c62c482ed6a44de70962996b533d6f627.camel@alliedtelesis.co.nz>
 <20200204203116.GN8731@bombadil.infradead.org> <20200205033416.GT1778@kadam>
 <a3032823-03a9-f018-73e4-eb0d71e0bb53@roeck-us.net>
In-Reply-To: <a3032823-03a9-f018-73e4-eb0d71e0bb53@roeck-us.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 5 Feb 2020 10:03:18 +0100
Message-ID: <CAMuHMdXKtJEvwRViRpy4nHbxv68P_rCFWbpikw=BMM5XnBvD2A@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
To: Guenter Roeck <linux@roeck-us.net>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "brandonbonaby94@gmail.com" <brandonbonaby94@gmail.com>,
 "bobdc9664@seznam.cz" <bobdc9664@seznam.cz>, "fw@strlen.de" <fw@strlen.de>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "aaro.koskinen@iki.fi" <aaro.koskinen@iki.fi>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "ddaney@caviumnetworks.com" <ddaney@caviumnetworks.com>,
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "sandro@volery.com" <sandro@volery.com>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
 "ivalery111@gmail.com" <ivalery111@gmail.com>, "ynezz@true.cz" <ynezz@true.cz>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 5, 2020 at 4:57 AM Guenter Roeck <linux@roeck-us.net> wrote:
> On 2/4/20 7:34 PM, Dan Carpenter wrote:
> > On Tue, Feb 04, 2020 at 12:31:16PM -0800, Matthew Wilcox wrote:
> >> On Tue, Feb 04, 2020 at 08:06:14PM +0000, Chris Packham wrote:
> >>> On Tue, 2020-02-04 at 07:09 +0000, gregkh@linuxfoundation.org wrote:
> >>>> On Tue, Feb 04, 2020 at 04:02:15AM +0000, Chris Packham wrote:
> >>> On Tue, 2020-02-04 at 10:21 +0300, Dan Carpenter wrote:
> >>>> My advice is to delete all the COMPILE_TEST code.  That stuff was a
> >>>> constant source of confusion and headaches.
> >>>
> >>> I was also going to suggest this. Since the COMPILE_TEST has been a
> >>> source of trouble I was going to propose dropping the || COMPILE_TEST
> >>> from the Kconfig for the octeon drivers.
> >>
> >> Not having it also causes problems.  I didn't originally add it for
> >> shits and giggles.
> >
> > I wonder if the kbuild bot does enough cross compile build testing these
> > days to detect compile problems.  It might have improved to the point
> > where COMPILE_TEST isn't required.

It depends...

> Not really. Looking at the build failures in the mainline kernel right now:
>
> Failed builds:
>         alpha:allmodconfig
>         arm:allmodconfig
>         i386:allyesconfig
>         i386:allmodconfig
>         m68k:allmodconfig
>         microblaze:mmu_defconfig
>         mips:allmodconfig
>         parisc:allmodconfig
>         powerpc:allmodconfig
>         s390:allmodconfig
>         sparc64:allmodconfig

I did receive a report from noreply@ellerman.id.au for the m68k build
failure. But that was sent to me only, not to the offender, and I do my
own builds anyway.

More interesting, that report happened after the offending commit landed
upstream, while it had been in next for 4 weeks.

> Many of those don't even _have_ specific configurations causing the build failures.

Exactly. These are the "easy" ones, as the all*config builds enable as
much infrastructure as possible.  It's much harder if some common
dependency is not fulfilled in some specific config.

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
