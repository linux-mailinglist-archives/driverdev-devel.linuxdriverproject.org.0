Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6706122A
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 18:24:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF2AC86224;
	Sat,  6 Jul 2019 16:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EMVgKua5CsYP; Sat,  6 Jul 2019 16:24:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56BAB86030;
	Sat,  6 Jul 2019 16:24:28 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 148961BF2BF
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 16:24:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11A7785116
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 16:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GPJFSJACzVqG
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 16:24:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7231285010
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 16:24:26 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id w79so9336505oif.10
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 06 Jul 2019 09:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ClggjV1JIBkC2W5xnriDOF3iruwtpVY5UuAqbVaXNas=;
 b=Tss9Jkv4iwh8lBN8bzC456RxzVwvWWYgoWsSQOTBndlahW1n7EiHyz4x+f3XGiDpVt
 O+ay2MICq3Qt4EIJ6pKtAiEX9VJ1UAis5f2tRLAspS76pqBjg6//FYhevdBBHTe5E8cc
 3xZVrT+uJJ39FDegfscMxMEnNvvvgHj6fzd8tSavyZOhHtuSi2KvFkwX5dYXeurTJd10
 sjwiVUsrXHhHKDinfJ0+v3zPjbHlVf3zUSAFDR7QiWPlfFTbL0E+Pet/qwFTsB8s6Rhs
 tQk8ajejJp8urD+usX9cc8RtWIqYfBsZv1v2B8tVQ2pZjEMt1AU9gNDcoNzTrmxKvt1Q
 S1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ClggjV1JIBkC2W5xnriDOF3iruwtpVY5UuAqbVaXNas=;
 b=gDYLaE9pKnWRD5oDt5EUs5LYErvzPz1s705wINUy+1hVWjX9kv0oxqTl5xgo8Un7WH
 DSEJN9bTfmd79nFR/pHQcUWxrlXIJnxg53HouCNdSTT5rWn7f5Buo/hjKZvcIvoKVDvt
 yQkJjKDyzGhp0FHLxRRPzmCw6irNHXG4MazY5PfYjDQ6Rr4VpGOIS7VcCb68J7yGj6a6
 JnIZOh2Si5+teYu833siRroLnce1lHpEKN2eDkmEEVIpuRov5OZ3QbjlFcvlPweCg6HN
 7y+InhHFaV0CSR1yvqAud5XteBSm55ViCF0gcnTzGlshPorpuDJsalTMmijEtNouetRD
 +eZg==
X-Gm-Message-State: APjAAAXA7cT4yabND98WJ7xiIe3+L6XqerK9j2uCykmNYOZeyYzSRTN/
 +SAzJox+TYeaL9R4d/a8OhAcsSrtWZYYeWOnDBg=
X-Google-Smtp-Source: APXvYqxJiovd5Mr6MDTOBWXaMturV2o3adlCy8pfrk/ffAJhDxYoXuHRFaNHk3V47Eri0P/bivJSFf0+weil04gVEm0=
X-Received: by 2002:aca:4790:: with SMTP id u138mr5203152oia.44.1562430265607; 
 Sat, 06 Jul 2019 09:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
 <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
 <CAGSetNtcJkjnjO1Ftc01ueMuFMmJEv7HPpmQeSf313Rrbe2O5w@mail.gmail.com>
 <CAMhs-H_c8sq=mX-rPRDHtkqyRj1fQcSNY_8M7Y5ZGU2FV9_zSA@mail.gmail.com>
 <24106212-9bf9-867c-fed8-8ad828431cd7@kernel.org>
 <CAMhs-H-0YcipUZ2xWxRTijUDL1F8NMb-gh5WoPcj-jHabbHZJw@mail.gmail.com>
 <CAMhs-H8JrLbsfk6YwFqVXOfr7M0zKosZ-iMwtU+5ObDOqOOAAQ@mail.gmail.com>
 <b4180913-127a-1847-57b7-d630897783f0@kernel.org>
 <CAMhs-H_7y_Uxr23uoh_-K+uoYTTNqARsqZfYpq-hU0vsRRjBsg@mail.gmail.com>
 <554866dd-9b81-5854-628e-cceabcdebe5b@kernel.org>
 <CAMhs-H_K-mWQYWNUk3xEBc8Ek_128VzZa-Z1ps4yqbDDOZ+=Vg@mail.gmail.com>
 <CAGSetNv2adWboHoB4mi9pxgJwbFJhsSmyXegjb7Lc9-H3kiRDQ@mail.gmail.com>
 <CAMhs-H_NgR991THPfiWkGFcukqY1QKviRfiEAd5r_B9U3bSs7w@mail.gmail.com>
 <CAGSetNtqGuZtNqLRU4JO7AN8nBz5XhGgFD=5iuw7scfaDv5DuA@mail.gmail.com>
In-Reply-To: <CAGSetNtqGuZtNqLRU4JO7AN8nBz5XhGgFD=5iuw7scfaDv5DuA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 6 Jul 2019 18:24:14 +0200
Message-ID: <CAMhs-H83BSYHRvG4UzHHVJdRAg6WA7QPVu5X_+cTG21_vQe=QQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
To: Brett Neumeier <bneumeier@gmail.com>
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
Cc: Neil Brown <neil@brown.name>, driverdev-devel@linuxdriverproject.org,
 Greg Ungerer <gerg@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Brett,

On Sat, Jul 6, 2019 at 3:43 PM Brett Neumeier <bneumeier@gmail.com> wrote:
>
> On Sat, Jul 6, 2019 at 4:00 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> > > Out of curiosity, if it's not too complex an answer to go into, what's
> > > the benefit of the staging-next driver? Is there a reason to prefer it
> > > to the 4.2 driver?
> >
> > In terms of stability, the driver which is in staging-next now is not
> > always working as expected,
> > so I really apologize for that because main changes have been done by
> > myself. In the other hand,
> > you have to think what is staging tree for. Staging contains drivers
> > that are not ready to be properly
> > mainlined into the "real" tree because they are not clean enough, the
> > use old apis and so on. The idea
> > of staging is to have a temporal place to properly clean drivers in
> > order to get them properly added into
> > the official mainline tree and directories. Doing that it will always
> > be supported in the kernel and it won't be
> > deleted for the tree. The mt7621 pci driver is now clean enough to
> > give it a try to be mainlined but we have to
> > achieve the problem of pci link stability that sometimes gets the
> > driver to hang.
>
> I'm sorry, I think my question was unclear! I am not complaining about
> the instability introduced in the current driver. I understand that
> dealing with hardware is complicated and sometimes things are broken
> for a while -- especially in staging or experimental drivers. That
> doesn't bother me!
>
> I am curious, though, about the motivation for this change --
> obviously there must be some reason you rewrote the driver, but it's
> not at all clear to me.

The original driver was using legacy pci code, the 4.20 version also
have a lot of changes in order to use current generic pci apis which
is the way to go.
Just looking at the code, you can see real differences with
readability and maintainability. Those two are really important. Or at
least for me they are :)

> I see that with the staging driver it looks
> like maybe the 4.20 driver was split into the PCI controller driver
> and a separate PCI PHY driver? If that's the main architectural
> change, what's better about splitting them up that way?

Well, it really depends of the hardware. In this case in order to get
a chance to be properly mainlined (which is the main reason for making
changes in a staging driver and should be the final aim) pci phy part
and pci host controller driver seems neccessary because of how mt7621
SoC is described. There are not the only changes comparing it with the
4.20 version. With current staging version, all is properly described
using device tree instead of having hardcoded stuff which is not clean
at all (reset lines, phy, hw resources...),. The only thing is not
clear yet is that we are using pci clocks for the RC and ports because
there is not a "ralink" clock gate driver and other similar drivers
directly access to registers without using a custom clock driver for
that.

And another important thing for making this changes is because it is
fun and you learn a lot in the way :))

>
> Again, I understand that sometimes a question sounds really simple but
> the answer is long and involved, and I don't want to take up a lot of
> your time or energy. So if it is more complicated than a thirty-second
> explanation, that's cool.

No problem at all :) No time / energy consuming. I think if you are
curious is always better to ask :-).

Best regards,
    Sergio Paracuellos
>
> --
> Brett Neumeier (bneumeier@gmail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
