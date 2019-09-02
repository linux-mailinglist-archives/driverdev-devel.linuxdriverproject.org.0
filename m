Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3594BA5676
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 14:42:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A58E787DDE;
	Mon,  2 Sep 2019 12:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zq-mnmkByQXS; Mon,  2 Sep 2019 12:42:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38A89863FD;
	Mon,  2 Sep 2019 12:42:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E38341BF359
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E08F6864EF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rbB04rDDXHNh
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:42:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE749863FD
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 12:42:31 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id i8so1784605edn.13
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 02 Sep 2019 05:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NY5sK7Wmp1kccwmBofuPAyc4AIoRicqZVWtPoZSvFcY=;
 b=GXVoi0QU0y+gMW1Bz6rGDHiY4Rprm8lU9fXkJqMImZnCAVNjOS6pgQ7YA++nekVNzq
 pluxBuY4mTWSVMo5Va6AIW6rE+m0rJRQEwPCVKXebhNs9S1zt4AIVBcIDMm5uzIWxvxp
 GHqpcVzCug42YIU9PyhVrYFztD62+Fw1j2MUeuRS9gnDAsF0UXqHpwvMkQ2jrS8ucxNP
 lpsp1YLPcMKV2JrtGg+3/wY0oAAesRVZzb8xO4SMimdXV/MU4igFRIf5lLIgGOQNBo1b
 O2e19aTHNaYrnC6QMpbFg2K+0bpNL/3fMwY7hg9Zy3ZWc8V46TZgSa52jo8W7hLHwLg8
 wTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NY5sK7Wmp1kccwmBofuPAyc4AIoRicqZVWtPoZSvFcY=;
 b=egiQw4PnmB9dKqV9+R+cVDIbAkoXwF6VIJgPaPwbEa3Ehm39Ok84OoeZeoXBc5b15T
 1BokJtwBIWZhjOmsv5DequS+5x64CWuT+SUag//AdFRLssGGdq0L/1coYBbGahb6WqLE
 Inwb25z0JPiLPjBLDSVSBlheomuDpprjU7jZIAlH0sFzS7ezgMgMMZuWXN/CvCVMiose
 10mB6TsHAfuBWGUYTrc3oHdlE3B0ecSN47ADdCPYSg6rA8fQaKhyIKrcPftiInORigKi
 LB1uLWtGZni6PgDzVUrub+hq7yGPd5tMANiB014ooGnbDxq3/2Eou1gJIHO8nnASULOK
 Nztw==
X-Gm-Message-State: APjAAAXOutKsRc1eWzgggMEP1kHiflqLYLw2V8FOYZ3ygUGO5LJyopA2
 OnFpwVZ4xL1iQ513Zy7C1Pw7myNmblTj39WmjrPoM2gi
X-Google-Smtp-Source: APXvYqwECfmMzYDEp6fsvgZ4H0y8sO7ud3eeobKd99mqhkiGw+bJnF4jXEcwILg5l8aUAnWU3ytTkYDcJKYJ0STrMDU=
X-Received: by 2002:a05:6402:1594:: with SMTP id
 c20mr30194581edv.130.1567428150393; 
 Mon, 02 Sep 2019 05:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190705025055.GA7037@ares> <20190719093658.GF3111@kadam>
 <20190722092923.GB22763@ares>
 <CAPTh4OtcwP_B7gY2HLDQvihuubCKbTbVgnF9LkKaFg=pqSs64w@mail.gmail.com>
 <20190902015137.GB14611@ares>
In-Reply-To: <20190902015137.GB14611@ares>
From: Anatoly Pugachev <matorola@gmail.com>
Date: Mon, 2 Sep 2019 15:42:19 +0300
Message-ID: <CADxRZqyBgDEiZaK5At2RoCHPNquRA6OWvFg2SU3TZ9hsqEs8rg@mail.gmail.com>
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
Cc: driverdev-devel@linuxdriverproject.org,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 2, 2019 at 4:52 AM Tobin C. Harding <me@tobin.cc> wrote:
>
> On Sun, Sep 01, 2019 at 05:30:23AM +0530, Amit Kumar wrote:
> > Hi,
> > I think now your tutorial should be ready.
>
> I do  not understand what this means sorry.  Is it a request for action?
> The tutorial was a couple of weeks ago now, here is a link to the
> material if that is what you were asking
>
> https://github.com/tcharding/kernel/tree/master/workshop

Tobin,

is it intentionally that you use

yes "" | make oldconfig

instead of

make olddefconfig

in some of your docs ? ( tutorial/cheat-sheet.rst , tutorial/trouble-shoot.rst )

Want me to create/submit PR on github with 'make olddefconfig' ?

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
