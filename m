Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24312B8E63
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 12:19:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BC1387F52;
	Fri, 20 Sep 2019 10:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a+nSImfftfNG; Fri, 20 Sep 2019 10:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC10887BFF;
	Fri, 20 Sep 2019 10:19:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18A731BF39D
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 10:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1300A81F20
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 10:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e063lrDGBpBh for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 10:19:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 57FE286D53
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 10:19:05 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id g25so5786871otl.0
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 03:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BMy5oZwzaSi5YDfs1liS0DaI7vPop4R9fEaoU4PLnkE=;
 b=u+dOqgXqwLIk4ijIcH+Lh2Xp7CRSFHdQtnuAf3xgmziguzmDOjjbBtSHpMNmIP5mAH
 zW4CMOH0Pj+C0XhoqeX9X6iDvuE3nrtGZis4ernkiiBftEmJ6E450hVDs328gTpLzCx3
 UAOwihCQO1rxiQp8tj5HHaNOULxyVu7UbpTGWZrvGEvDzCmQAjuUOX6qmf4EI+MrURyA
 nGJA2LBD+Y+csBQVHe1zc7sGi6vP1jvXRmUA1xR468Wfa/NVftgqoVCCtwEvwIvVH82h
 VD02sc2aAQ1xhfYCSQ8q5Uquzt6VN/w68szq6rk/bLQUF72Vy+VYuFH7AHmxxiHdEKao
 g4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BMy5oZwzaSi5YDfs1liS0DaI7vPop4R9fEaoU4PLnkE=;
 b=YNn9wPosBFwL8yXxhcnEZbjx4OE6Kb26CJTRbQouHNJib/g1NHL4VC62Z79H1rNg30
 SgD27hiuzNJIeXf17X0gUoPCfWXwcV5qMrs6UcQU4Bij2RY5LJ7qEBfDsBuAAUwRAg0c
 0F+ssDwZQdbpyAHq/tzoIHqbh1QHD8r1Fe9m7Y4YpLnuClsyE2mfj9tCKp35u7rwF2fM
 sE2lz/uWLm/3E250wmzOV4yDFxx2VHXjmr/74aBtzKSL99vgMptVu+vzsCpkF8J9AREr
 548WEWhwKIxnoSYuZl0ExMQ/zWMgzrJPCqNgcxcmtl02tLIUDgO7cQ1KUu0qLlR5qSW2
 Sp3Q==
X-Gm-Message-State: APjAAAUSNMWLs6veUdTdhzNq6Of7FtRmMsKaPyqQmn2je9kBNejG/IiQ
 7WO1pv8O/crdy6PIyVZaJb0dQI+V7aZ8ZomJ89M=
X-Google-Smtp-Source: APXvYqzS1DBqjwuNikUvKoQL0j2CZpd6p+BrdFHsj/I9aTB8Jig4txY6GcSj0J9XA9WKUheSk03PzvdnBVOM28gIPys=
X-Received: by 2002:a05:6830:1e84:: with SMTP id
 n4mr9719021otr.141.1568974744502; 
 Fri, 20 Sep 2019 03:19:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
 <20190915134300.GA552892@kroah.com>
 <CAOtcWM2MD-Z1tg7gdgzrXiv7y62JrV7eHnTgXpv-LFW7zRApjg@mail.gmail.com>
 <20190916134727.4gi6rvz4sm6znrqc@function>
 <20190916141100.GA1595107@kroah.com>
 <20190916223848.GA8679@gregn.net> <20190917080118.GC2075173@kroah.com>
 <20190918010351.GA10455@gregn.net> <20190918061642.GB1832786@kroah.com>
 <20190918203032.GA3987@gregn.net> <20190920074611.GB518462@kroah.com>
In-Reply-To: <20190920074611.GB518462@kroah.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Fri, 20 Sep 2019 11:18:53 +0100
Message-ID: <CAOtcWM2271YEVCc=0O8QApyUhSJx+uA_vfnXyUnGHfjugzGoyg@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
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
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 Gregory Nowak <greg@gregn.net>, Didier Spaier <didier@slint.fr>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 20, 2019 at 8:46 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Sep 18, 2019 at 01:30:33PM -0700, Gregory Nowak wrote:
> > > Extra line between each attribute (before the "What:" line) would be
> > > nice.
> >
> > In a previous post above, you wrote:
> > On Mon, Sep 16, 2019 at 04:11:00PM +0200, Greg Kroah-Hartman wrote:
> > > Anyway, please put the Description: lines without a blank after that,
> > > with the description text starting on that same line.
> >
> > I understood that to mean that the description text should start on
> > the same line, and the blank lines after the description text should
> > be removed. I've put them back in. Someone more familiar with the
> > speakup code will have to dig into it to resolve the TODO items I
> > suppose.
>
> No problem, this looks good to me.  If someone wants to turn this into a
> patch adding it to the drivers/staging/speakup/ directory, I'll be glad
> to take it and it will allow others to fill in the TODO entries easier.

Thank you. I'll create a patch soon.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
