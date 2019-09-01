Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C695FA4698
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Sep 2019 02:00:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0EAB881C8;
	Sun,  1 Sep 2019 00:00:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6oXQYXLHTn3; Sun,  1 Sep 2019 00:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5620881CC;
	Sun,  1 Sep 2019 00:00:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 694EB1BF35A
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 00:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 651B686B33
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 00:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TmTFxaUjxuog
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 00:00:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4125086B21
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  1 Sep 2019 00:00:37 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id d16so11045411wme.2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 17:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EQ2fHLK8vXywxkmrvjWZnyx8S4ehOmxELEJTSLmqjVM=;
 b=eYkANdfr/biAxJXu/G1v3vCk/sMCsVqzMyoA4v4c3OYhGJVm4d9X4G9pqGXJDGaJrt
 cCOBIdTd9nHqQ5qzJDTGnMnxBqQwvpBraEDIeOUj6J6qCzxp/6e3p4OKLvMh+q876ll0
 0qHxclycx6BvyXBQGCkvA+Zqbki1Y2215QyL6rkcKRiJccnMOlQMQ+0k8reg+r0d9KsV
 kATXR/XLs5rUU3T1H2Z8QPMqhXIquHe4dYEmUNPtu48UlP950NJkA8aERZfYks6etg10
 VrRjr2MtGTxv4Kb6yyVKKxvCt/O29574FmiSPeSRQM8PoYJYjcTqvX1F3frVBM+8Sa1+
 CIyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EQ2fHLK8vXywxkmrvjWZnyx8S4ehOmxELEJTSLmqjVM=;
 b=kBF36lEDPBAFhO4tuIRBEqt6b/7JdWTQH2Kh/Ju6XmVj2H2jR9GxQRd11GMCKFmrqp
 soLW8tJ6s52w+SnFqnQ5mUliBoiqwc1LfS37R6UwUWRhJ87maG2cv7xk2WXIfgxu1daz
 4ZVbQ6sWBX6lcNGwB8OB3v9XuI9g2PcPEIHqt4MXuj8Y8Y76U/6928EJP1W/mfbvUshf
 RMjatlsH9Z5YJ/preXOs6f8X3sfvaf9ofKJj0Afnhqf8jD3dxCvAJq02yn7y+bbrgBiM
 tQlb6Jr7V8zmV0ijbjPsWgOw7cu9Cem7dn/1d9nyAQ9wo6RAUVnULhp8yJQqSvAWhz6i
 wLAA==
X-Gm-Message-State: APjAAAUOOLoTMrWb1T1ByQv7I6VtAM4WmqzfCmB3dX8xEOOqOQoxxtjN
 VgDRIpdSH4KsiB5DJ4M7GRjEIifxASQZSYYrnwQ=
X-Google-Smtp-Source: APXvYqy4p7CM3y0vE1nvnJVJeAS4mT28K18KMFaea8AYBSIOGZaPhGtR9rdpwRbGSfTygH70oSza7kFqSf3ndglAoaI=
X-Received: by 2002:a7b:cb89:: with SMTP id m9mr27828197wmi.50.1567296035665; 
 Sat, 31 Aug 2019 17:00:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190705025055.GA7037@ares> <20190719093658.GF3111@kadam>
 <20190722092923.GB22763@ares>
In-Reply-To: <20190722092923.GB22763@ares>
From: Amit Kumar <free.amit.kumar@gmail.com>
Date: Sun, 1 Sep 2019 05:30:23 +0530
Message-ID: <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
To: "Tobin C. Harding" <me@tobin.cc>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
I think now your tutorial should be ready.

Regards,
Amit Kumar

On Mon, Jul 22, 2019 at 2:59 PM Tobin C. Harding <me@tobin.cc> wrote:
>
> On Fri, Jul 19, 2019 at 12:36:58PM +0300, Dan Carpenter wrote:
> > On Fri, Jul 05, 2019 at 12:50:55PM +1000, Tobin C. Harding wrote:
> > > Outcome will (hopefully) be a small patch set into drivers/staging/.
> > > (Don't worry Greg only one group got to this stage last time, you
> > > won't get flooded with patches :)
> >
> > We're good at reviewing floods of patches.  Send away.
> >
> > In the end what we want is people who will take over a driver and
> > understand it completely and become the maintainer.  We've had a few
> > people that did appointed themselves to become the maintainer of a
> > random driver and move it out of staging.  But even if people don't make
> > it all the way to become a maintainer, it's nice when they start down
> > that path by focusing on one driver and trying to understand it as much
> > as possible.
> >
> > Most of the time when you look at a new staging driver, then you do want
> > to clean up the white space just because it's hard to look at
> > non-standard code.  So that's the first step.  But then maybe start at
> > the probe and release functions and clean it up.  Keep your eyes open
> > to any other mistakes or bugs you see.  Write them down.  Then the
> > ioctls.  Etc.  Look at the TODO too.
> >
> > The other thing I wish people knew was about the relationship with
> > maintainers.  When you start out, you're virtually anonymous for the
> > first couple patchsets.  We get so many and they blend together so we
> > don't remember your name.  So don't think that we mean anything
> > personally if we don't apply your patch.  We have forgotten about the
> > patch as soon as we reply to it.  Don't panic and resend quickly.  You
> > will be too stressed.  Wait until the next day.
> >
> > In staging we really want to apply patches (unless it's in staging
> > because we're going to remove the code).  I get annoyed with other
> > staging reviewers who NAK patches because "I don't like churn" or
> > whatever.
> >
> > On the other hand, patches just "silencing checkpatch.pl" is not a valid
> > justification for sending a patch.  Patches should make the code more
> > readable.
> >
> > Anyway, maintainers are not monsters.  Very few people have made me
> > annoyed to the point where I refuse to review their code.  And everyone
> > else is in my good books so that's fine.
>
> Cool, points noted.  Thanks Dan
>
>
>         Tobin
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
