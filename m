Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E2A14143B
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jan 2020 23:38:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1AA1869F8;
	Fri, 17 Jan 2020 22:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hg7Vy-p1qSFM; Fri, 17 Jan 2020 22:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6095186968;
	Fri, 17 Jan 2020 22:38:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B50F1BF41E
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 22:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7733C221AF
 for <devel@linuxdriverproject.org>; Fri, 17 Jan 2020 22:38:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YRySEsv+oFCM for <devel@linuxdriverproject.org>;
 Fri, 17 Jan 2020 22:38:12 +0000 (UTC)
X-Greylist: delayed 00:07:19 by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 9CBED22176
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 22:38:12 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id q8so4244859ljj.11
 for <devel@driverdev.osuosl.org>; Fri, 17 Jan 2020 14:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QnXq6pOPNr85Wv+pnBUgx0ksc9gD9czuLdtLLhv2wcg=;
 b=eT5PDPYAbcnfGiJmdszWf9PgnKzYuOs2aJYz2+M/Eqi5z8IV5z6aDBiIWiOpCAZDuQ
 qrZOI9AuuWyUzTiMH12kF3HC6n42WOKCjs6ne8o9zonNkOaN4AahOh8cJ/yABElv+/R9
 jCtPBieW/eB2hvEMhWQ9FNb8k61NsGBFffgeNv0ItSpjp7CBEPTmkgWoBjHpktdgAJ05
 0uid3IgjVoWSluz7Gh7uEG3tY52te5flBnA2fI6PNoYMjETtN3K87sN++YMxBATufriL
 882g7l2IxKwXGqcSPF0E04SuFtQ7J2lmdQHHj59wvzT51fz182MEwF82H+pZZ1oB85BP
 mlSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QnXq6pOPNr85Wv+pnBUgx0ksc9gD9czuLdtLLhv2wcg=;
 b=ni974lRzsHjgROMa8zrq/Pz0bpQ6WV091IZmFFO/UR29rKLFbBaEugcbnQjJ4m2Ft9
 3rW8fqwdZwzuxCQnBpTe95MB/UfHWgkgWwVOkyfJSDd4MyEgmakMgSCQ7obRaGJPi80Q
 OrSv99DFCqbWDaNIvQY4f+oa9oLvzeA2gXT4nMuCLyfHQB0yczkqgkagroQu8uVfgURE
 4aFaIJy66fCa57z8aCsrID1Kwozv91YfauBbM+g8WGIj4q3oofCvpn8rfJRqaXwi1c8m
 xkHdwrlO/q96LEwwHI7C8crgBU9CucM3eVQUmoFG2r6sejUp44pwj+Sg+zkW6BM5+05s
 ecyQ==
X-Gm-Message-State: APjAAAWiTwh+e2GyFAuAWs/t2Bz9JXIU6esWU0O/05K6n8uvXiEdywNm
 g4Nv4nKkd+U7XycPlocEwRxIq5176elXV6hMY3Ta8g==
X-Google-Smtp-Source: APXvYqzKEuQM2on6ljo2JXy1kuV7rK2JmWtGbc1ZKZNRbNyWn2UNiFCXqjY1bQwxSlByevH/7c2t8VNHBLT4UPwpTTw=
X-Received: by 2002:a2e:7005:: with SMTP id l5mr7192266ljc.230.1579300251291; 
 Fri, 17 Jan 2020 14:30:51 -0800 (PST)
MIME-Version: 1.0
References: <1578671054-5982-1-git-send-email-martin.fuzzey@flowbird.group>
 <20200114152249.GA2041689@kroah.com>
In-Reply-To: <20200114152249.GA2041689@kroah.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 17 Jan 2020 14:30:40 -0800
Message-ID: <CAHRSSEzi_hpPiMh3g4RzyXHjND-dhJH0W4jpg-c5jyYqhaOBSg@mail.gmail.com>
Subject: Re: [PATCH] binder: fix log spam for existing debugfs file creation.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martin Fuzzey <martin.fuzzey@flowbird.group>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 14, 2020 at 7:22 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Jan 10, 2020 at 04:44:01PM +0100, Martin Fuzzey wrote:
> > Since commit 43e23b6c0b01 ("debugfs: log errors when something goes wrong")
> > debugfs logs attempts to create existing files.
> >
> > However binder attempts to create multiple debugfs files with
> > the same name when a single PID has multiple contexts, this leads
> > to log spamming during an Android boot (17 such messages during
> > boot on my system).
> >
> > Fix this by checking if we already know the PID and only create
> > the debugfs entry for the first context per PID.
> >
> > Do the same thing for binderfs for symmetry.
> >
> > Signed-off-by: Martin Fuzzey <martin.fuzzey@flowbird.group>
>
> Does this need a "Fixes:" and cc: stable tag?

It would probably make sense to take it into 5.4 (spam issue was
introduced in 5.2).

Please add "Fixes:" as Greg suggests citing the commit above.
Acked-by: Todd Kjos <tkjos@google.com>

>
> And it would be good to get a review from the binder maintainer(s) to
> see if this is sane or not...
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
