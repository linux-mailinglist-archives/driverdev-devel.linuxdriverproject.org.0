Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E25BB30D3
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Sep 2019 18:11:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A14D855A1;
	Sun, 15 Sep 2019 16:11:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id habhOxkJhzVO; Sun, 15 Sep 2019 16:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4A1E85516;
	Sun, 15 Sep 2019 16:11:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C3F11BF380
 for <devel@linuxdriverproject.org>; Sun, 15 Sep 2019 16:11:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 950AC20014
 for <devel@linuxdriverproject.org>; Sun, 15 Sep 2019 16:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vNZWApodQs1f for <devel@linuxdriverproject.org>;
 Sun, 15 Sep 2019 16:11:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com
 [209.85.222.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 708F71FF11
 for <devel@driverdev.osuosl.org>; Sun, 15 Sep 2019 16:11:27 +0000 (UTC)
Received: by mail-ua1-f65.google.com with SMTP id n6so10577731uaq.3
 for <devel@driverdev.osuosl.org>; Sun, 15 Sep 2019 09:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jSWQJqSgzi0rRB4MB03H01txRo3ZEbvDz6ZQVxWpBys=;
 b=Erd+t2miEUQ/AY1Xlk+AweRMJFkMT8HBCeMLi11DDHsLxD3Pa+IqMMXIIfpxyaYhcG
 /aeqOlIwCYg6UM/tDyIoZOzBbwegNscxVfzC87LjiAuTcUitlULaD43HLu1zPGiw2KV7
 TtOqFoNFHyRVONUq8TR/fBzZ3V2cEZgobua0m3r83q4AS8SOETKr4QTzb6qM+zjYkXkn
 C0McYEJ04d28z1hAaR3s6PCOpns71MG3rz2RwRp/xOw3R8BsUR5Ze3KD033+y5FJkzTj
 jyMnZE1dAxwc8bPBY+AVxQQFvzm3lVu6JHSaeAcK5gCGk7S1StHWlSABfVPHr5DYmWwh
 t5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jSWQJqSgzi0rRB4MB03H01txRo3ZEbvDz6ZQVxWpBys=;
 b=CM1gxNFl8F4PFH9wYTeoOyvP6jTMTI7KYvZ5qcaaZndHrTAljd7S5X5Y+eQOhPec4i
 JpvROM05aFr4kYGoeparhMrx3VP1YKFj+biLJ4ZHKpq6CGU+w3u1qSmHmHqthV2OOgNC
 0lGjeF1VjskzKnzhbShOWEx+o7+/VS6GD28xrRzS3wJEhI54ns5GRMsoeyHEfdhGKfXs
 PBfAMLNM/sb0TJ0ISEl818220Ben/w0TXBjZ70Nbs6tPpoKNTknq6nVAREZMlN379oCs
 VDrZ+UekIWftOKGHWFLV4LDD8ux15NYUPGzIgTTVsT0rgf5QTrZOXneFXhze0jigctzM
 eFFw==
X-Gm-Message-State: APjAAAXfViYSYquCeg7RItq9H795vurvxTniSeK0v2hwPHbNMvSYv77B
 lAyi7M1jiRdoicCdwyCJ0XVE0gI5nLY71yLQ4S0=
X-Google-Smtp-Source: APXvYqyB9j0r6bSS+9T87UFEPkzM/e4XMgBNe9Edu9uNZgf/FMBxUv/LhclgCMRJS0jFWtsVwrOBAVDShPeJKz7t0Ss=
X-Received: by 2002:ab0:2808:: with SMTP id w8mr21830317uap.75.1568563886024; 
 Sun, 15 Sep 2019 09:11:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190914133951.16501-1-qkrwngud825@gmail.com>
 <20190915135409.GA553917@kroah.com>
In-Reply-To: <20190915135409.GA553917@kroah.com>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Mon, 16 Sep 2019 01:11:14 +0900
Message-ID: <CAD14+f2EqjUfr+Xwx9CDoqvCdeFo0UqYrVxN=s8Yo4b3KTyZXA@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: alexander.levin@microsoft.com, devel@driverdev.osuosl.org,
 linux-fsdevel@vger.kernel.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Sun, Sep 15, 2019 at 10:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> Note, this just showed up publically on August 12, where were you with
> all of this new code before then?  :)

My sdFAT port, exfat-nofuse and the one on the staging tree, were all
made by Samsung.
And unless you guys had a chance to talk to Samsung developers
directly, those all share the same faith of lacking proper development
history.

The source I used was from http://opensource.samsung.com, which
provides kernel sources as tar.gz files.
There is no code history available.

> For the in-kernel code, we would have to rip out all of the work you did
> for all older kernels, so that's a non-starter right there.

I'm aware.
I'm just letting mainline know that there is potentially another (much
better) base that could be upstreamed.

If you want me to rip out older kernel support for upstreaming, I'm
more than happy to do so.

> As for what codebase to work off of, I don't want to say it is too late,
> but really, this shows up from nowhere and we had to pick something so
> we found the best we could at that point in time.

To be honest, whole public exFAT sources are all from nowhere unless
you had internal access to Samsung's development archive.
The one in the current staging tree isn't any better.

I'm not even sure where the staging driver is from, actually.

Samsung used the 1.2.x versioning until they switched to a new code
base - sdFAT.
The one in the staging tree is marked version 1.3.0(exfat_super.c).
I failed to find anything 1.3.x from Samsung's public kernel sources.

The last time exFAT 1.2.x was used was in Galaxy S7(released in 2016).
Mine was originally based on sdFAT 2.1.10, used in Galaxy S10(released
in March 2019) and it just got updated to 2.2.0, used in Galaxy
Note10(released in August 2019).

> Is there anything specific in the codebase you have now, that is lacking
> in the in-kernel code?  Old-kernel-support doesn't count here, as we
> don't care about that as it is not applicable.  But functionality does
> matter, what has been added here that we can make use of?

This is more of a suggestion of
"Let's base on a *much more recent* snapshot for the community to work on",
since the current one on the staging tree also lacks development history.

The diff is way too big to even start understanding the difference.


With that said though, I do have some vague but real reason as to why
sdFAT base is better.

With some major Android vendors showing interests in supporting exFAT,
Motorola notably published their work on public Git repository with
full development history(the only vendor to do this that I'm aware
of).
Commits like this:
https://github.com/MotorolaMobilityLLC/kernel-msm/commit/7ab1657 is
not merged to exFAT(including the current staging tree one) while it
did for sdFAT.


The only thing I regret is not working on porting sdFAT sooner.
I definitely didn't anticipate Microsoft to suddenly lift legal issues
on upstreaming exFAT just around when I happen to gain interest in
porting sdFAT.

If my port happened sooner, it would have been a no-brainer for it to
be considered as a top candidate for upstreaming.

> And do you have any "real" development history to look at instead of the
> "one giant commit" of the initial code drop?  That is where we could
> actually learn what has changed over time.  Your repo as-is shows none
> of the interesting bits :(

As I mentioned, development history is unobtainable, even for the
current staging tree or exfat-nofuse.
(If you guys took exfat-nofuse, you can also see that there's barely
any real exFAT-related development done in that tree. Everything is
basically fixes for newer kernel versions.)

The best I could do, if someone's interested, is to diff all versions
of exFAT/sdFAT throughout the Samsung's kernel versions, but that
still won't give us reasons as to why the changes were made.

TL;DR
My suggestion - Let's base on a much newer driver that's matured more,
contains more fixes, gives (slightly?) better performance and
hopefully has better code quality.

Both drivers are horrible.
You said it yourself(for the current staging one), and even for my new
sdFAT-base proposal, I'm definitely not comfortable seeing this kind
of crap in mainline:
https://github.com/arter97/exfat-linux/commit/0f1ddde

However, it's clear to me that the sdFAT base is less-horrible.

Please let me know what you think.

> thanks,
>
> greg kh

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
