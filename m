Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 619DD249AD1
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 12:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D741A8680C;
	Wed, 19 Aug 2020 10:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xA-z3kdiBHOA; Wed, 19 Aug 2020 10:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D3B286856;
	Wed, 19 Aug 2020 10:48:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 512631BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 10:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 422672048B
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 10:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id viZvcoW6rEa4 for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 10:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C37CD204AF
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 10:48:28 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id e11so18687705otk.4
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=;
 b=SAlnLFGsaJJ2xUQvXdp6/REunLAQzaLpmNpCPkhdMyKVNOL4zXoJc+uTpvFb1PLXQe
 nN8aQpwx9KlR0QpjA0U0Eq9qCAcvJ1BkG1Pmvfae+wF16AUCkU8W0GDQheD/o4B1VrUX
 PelVL5WwDQloIppGpod8O4LcRauK/SLT0vBKv+BhPM4L1DU+6rZBrJ0Dt0oV8Ce4u200
 wfYajuI8k/buRZ/KOQgJS9xFj6qU+vsS6Mi/Pic5cr7hyqCbNaPaM64dCQ32B92C7zpm
 twdkgIcY8FJxVqqD5N4bDX/Yu8aavznJiTYE5JD98MkyaozlEe8FkOVjNVcv9NBfu1pV
 5Fgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=;
 b=RypzaYFWVSJh8rocCEoe/Tndxg3sw+vE/omzos3uVPFO6KRCDBZt+9e5iS0crGdpa+
 iIPCJUzUJh0rcezCwYrQ7yRPX40GfvANMqpdGR7B6vA0QTrbu3uuyVvVQluqQzTugupe
 JB6YVwuR6P89t5UILxNdHi0r1cMuk6Erf3pqw0J+PKfb9fMIsZ4pAgI/nuvZo2fiLhzt
 lV4RCVnxiU8CeeYKGOLDmlEPAxFNQuV3LTNLs9ATkQ+uxcxllalRpqUDSDgC1rYpKeNp
 0sb1Bwx3Ffj4f+NJBPR3glcqmVAStP1zetoWKwqrupOM7yC75vL4+35RLzCgEuyOibQp
 +oJw==
X-Gm-Message-State: AOAM531N6SDZdUCHWKRSE7OruyToHIf7GILJCsSHHVDEW3qe6DR4o2zb
 ZeNPqzqK6n4aHVSPoP88q5omtbFcQMFkwTa7lNw=
X-Google-Smtp-Source: ABdhPJwYTK+IRxToH0hqhLtJ7NIIqDs8lKmtEJkzNzElCKB5MQaF3rOwIOaAYWCB8rMlfnOVuvrNcqGFlbqr+yW4gKM=
X-Received: by 2002:a9d:128c:: with SMTP id g12mr17527086otg.242.1597834108000; 
 Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <202008181309.FD3940A2D5@keescook>
In-Reply-To: <202008181309.FD3940A2D5@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 16:18:16 +0530
Message-ID: <CAOMdWSLi-aUeKDN8Xn-X2uW_LmWsp2n=NL3dPGiUbQKm_MxcAg@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Kees Cook <keescook@chromium.org>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> > > > > > > >
> > > > > > > > In preparation for unconditionally passing the
> > > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > > and from_tasklet() to pass the tasklet pointer explicitly.
> > > > > > >
> > > > > > > Who came up with the idea to add a macro 'from_tasklet' that
> > > > > > > is just container_of? container_of in the code would be
> > > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > > from_tasklet is doing.
> > > > > > >
> > > > > > > I'd fix that up now before everything else goes in...
> > > > > >
> > > > > > As I mentioned in the other thread, I think this makes things
> > > > > > much more readable. It's the same thing that the timer_struct
> > > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > > ever-repeating use of typeof(), long lines, etc.
> > > > >
> > > > > But then it should use a generic name, instead of each sub-system
> > > > > using some random name that makes people look up exactly what it
> > > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > > adding private variants of this doesn't seem like the best way
> > > > > forward. Let's have a generic helper that does this, and use it
> > > > > everywhere.
> > > >
> > > > I'm open to suggestions, but as things stand, these kinds of
> > > > treewide
> > >
> > > On naming? Implementation is just as it stands, from_tasklet() is
> > > totally generic which is why I objected to it. from_member()? Not
> > > great with naming... But I can see this going further and then we'll
> > > suddenly have tons of these. It's not good for readability.
> >
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> >
> > #define cast_out(ptr, container, member) \
> >       container_of(ptr, typeof(*container), member)
> >
> > It does what you want, the argument order is the same as container_of
> > with the only difference being you name the containing structure
> > instead of having to specify its type.
>
> I like this! Shall I send this to Linus to see if this can land in -rc2
> for use going forward?
>

Cool, I shall wait for it to be accepted and then spin out V2 with cast_out()

-- 
       - Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
