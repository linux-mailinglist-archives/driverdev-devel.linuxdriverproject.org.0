Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A592531BC73
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 16:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4074F86706;
	Mon, 15 Feb 2021 15:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdinS0xAe6yP; Mon, 15 Feb 2021 15:30:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43AC7864F6;
	Mon, 15 Feb 2021 15:30:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2BC531BF3AE
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 15:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 22558860D1
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 15:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQuin8ZSO15V for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 15:30:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3ED118608B
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:30:24 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id z21so4405158pgj.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 07:30:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nd5Yfn43BCBJomp6sHGwdTlb0IPHeJ9K8m6gaCF931g=;
 b=QlbaUqnzMU0C+clIlVwtHO1AAUS6hShwRtyZCDsTmZzZwcmd0MvlA67evCsxYKYrv9
 oKrDig8saJwiRnm4O6aUp1e4/ws+SKz6OIkEQBqzWkWYGXDiNbkIQfjhbtkRbYWfLd0G
 2/FCRBVDNjvBuweRiYhxsjRRVt0/QXtpRK6r/6gXOlSUzoqQ+5KOS5NRoasd9AldnGTg
 SQK3zITTU/cF1MExS0UmOE9w7TqHzbR8an+TKYTEacU5q3iZYLdZn5DWxkSYanN1sJHD
 AxS5K04hDJmBYp+SbaCJr6mhhZzQ9USz2aiea5q+oFgQ5wRm5VgMfP/Qyyzj+W3iEU0R
 jk/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nd5Yfn43BCBJomp6sHGwdTlb0IPHeJ9K8m6gaCF931g=;
 b=IQgm0sIJqpBH0knAPqMv+egZsl1Sb3VsQ9JvINIcltIVWALx+PFQ49uhzuDmKratld
 SwIjcuNxUDXfi3A2+XizcB+WRj4jsTW4EFX7sfPX3/gnGuTdhE9uQQn+9eiH/mBKJqGW
 X7NTPMTO4nbgzOPD5IH3rbE6nwDavaetZP8qmNT6dWwOpBPnOuVPAnIYeT7odwwbxfLb
 himqQmYgMNwv/2jLnat5Z1P/VetT7wGwCYTU6wnTTy9ymZjTP5ka0l7PED3lYPLolI45
 Upu+KiWU56ZEDgNCwUZA42CNW/LRlVn+rirW5sp2Vpwzh4/6Jgo0iR83r0940yBpvBpX
 pptw==
X-Gm-Message-State: AOAM5302IWO3LGVXE1QOaM2ozPlVhxkkP131q4/jqED26hMQCjOREIPV
 y0RSTs5bsBqkxsp2KjtKeoc9sUvGViyazyJK/M8=
X-Google-Smtp-Source: ABdhPJylFq9d2tX3RjtahOe8hIgIQ4VN+QPYppcEIIbyB9lQQ4aHPmvHcrHpBNqSf8zEzCF2lh70YD492yPKz49qdps=
X-Received: by 2002:a65:4c08:: with SMTP id u8mr7118551pgq.203.1613403024154; 
 Mon, 15 Feb 2021 07:30:24 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
 <20210129215638.000047b0@gmail.com>
 <CAHp75VcdOibSRuSBZYhFtEcVxuammYMfcnrUQGvS6ttArFxj6g@mail.gmail.com>
 <20210130143924.00005432@gmail.com>
 <CAHp75VenJVOSbAXryGK_BWytRJF=T1zwk5xDimRQOTojoXbMFQ@mail.gmail.com>
 <20210202095234.000059ca@gmail.com>
In-Reply-To: <20210202095234.000059ca@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 15 Feb 2021 17:30:08 +0200
Message-ID: <CAHp75VdwdBtZLG9rMWMzVSy27i3HwVm4eWk7jyKuJ-60JYJSeg@mail.gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
To: Carlis <zhangxuezhi3@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 2, 2021 at 3:52 AM Carlis <zhangxuezhi3@gmail.com> wrote:
> On Mon, 1 Feb 2021 19:40:21 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
>
> > On Sat, Jan 30, 2021 at 8:39 AM carlis <zhangxuezhi3@gmail.com> wrote:
> > > On Fri, 29 Jan 2021 16:26:12 +0200
> > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > > > On Fri, Jan 29, 2021 at 3:56 PM carlis <zhangxuezhi3@gmail.com>
> > > > wrote:
> > > > > On Fri, 29 Jan 2021 12:23:08 +0200
> > > > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> >
> > ...
> >
> > > > > Hi, I apologize for what I said in the previous two emails. I
> > > > > missed one email you sent before, and now I probably understand
> > > > > what you meant. Here is a version I modified according to your
> > > > > suggestion:
> >
> > I have realized that you are mocking stuff in the generic fbtft
> > structure for all drivers while only a single one is going to use
> > that. Consider moving everything to the driver in question.

>    Do you mean that i define the TE completion and irq_te in the
>    fb_st7789v.c as i did before?

Not in global variables. Perhaps it will require to add/update the
custom (to the specific driver) data structure.
But the idea is that all changes should be isolated to that driver.

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
