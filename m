Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB626153F67
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 08:53:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3D5A85BBA;
	Thu,  6 Feb 2020 07:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m4BIjqUdoNRz; Thu,  6 Feb 2020 07:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 844A983791;
	Thu,  6 Feb 2020 07:53:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C82251BF3B5
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 07:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B961386EA5
 for <devel@linuxdriverproject.org>; Thu,  6 Feb 2020 07:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Di1IL-mV6Rkj for <devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 07:53:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 06AAF86DC6
 for <devel@driverdev.osuosl.org>; Thu,  6 Feb 2020 07:53:13 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id z9so4643144oth.5
 for <devel@driverdev.osuosl.org>; Wed, 05 Feb 2020 23:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TzW6dHQjSfGvyhr9jvkDeTU/fqID38DqFrV0O6n8BYI=;
 b=fz2yOEz39A46Nic9NDCQj8Ps0Alpb0HcDMSfX5hQP1amWqxUYeh52V8Ip8OfX597wW
 olh+MYnyXbImoLPyztSyR9kjRId73OUVDCq7KtM2HpBYUtXaEE47uRrUbEeVafIC4R7n
 MwFzDKwSBnTaB7Xr6t8hk03Ep0IqfTwDwa0PXljXjx1UTYzxb5YH23r54J8T1N7thOEU
 iPdDNoa19HDYHosEWWCV/1FAnNmOj/6LgMhq5arvwfBgjk9exsfBrTFpVTfJJtAhc8QK
 6zsQoCVsFH+0frbgFhTLqU0vkocPisG/v55PQz4SF8UVak1uiIYDxFBhB7KR568sGT6c
 K1kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TzW6dHQjSfGvyhr9jvkDeTU/fqID38DqFrV0O6n8BYI=;
 b=VWdQz4CawiWYL18ddPd3MklpD+fMic33Cvspvne0jo8ZVUcLVhegTSohMMOtv3uLGl
 mZPTyisdXJJ8lj6SijawsZX/P2AcnmxiPDD5GtqHdEzZtAlGDjvErUrvROyy2aELtrMI
 fPLQNvu+sPYhVZ6UWP9+1M/vWDGnGN5zvfCzsOs9XH8ibI+cNZ7CITM3BuKyz+64j5VV
 KpgcP9XcHFjfa0O7gMED/E36zhB1MBOSG6QAqrgAjM51tmN1jSSYsmBHkPiCNT5Nx2ws
 nKB6DxVbanaDIthav7fpwLP7HTdePk5yXxa3esu1+A0NJ7n2iTeEZPNjDSzSnTPiPQYi
 IYhQ==
X-Gm-Message-State: APjAAAXQ8pVNXAyh92/OYLPqOjCZmyP5iRpipvL/yCex/vwV1mDVZ05+
 I7UDXaecuCbDGD5/urKyc7k479QT7Xvjl5hr9xY=
X-Google-Smtp-Source: APXvYqx9glLF1qZqDriJ3CVIwTku2+BXSPCnAZ0pW0nTinxUEWmlDrIKG9QaBGHVyfCOXQhHe7ezJr0WzBnnQ4yDkJ0=
X-Received: by 2002:a9d:4c92:: with SMTP id m18mr28265420otf.168.1580975592187; 
 Wed, 05 Feb 2020 23:53:12 -0800 (PST)
MIME-Version: 1.0
References: <20200204090022.123261-1-gch981213@gmail.com>
 <20200204094647.GS1778@kadam>
 <CAJsYDV+b1bqc3b87Amo8p2UzVi4fpbRv6ytus8A5Y0r4K-X0hw@mail.gmail.com>
 <20200204103456.GO11068@kadam>
In-Reply-To: <20200204103456.GO11068@kadam>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 6 Feb 2020 15:53:01 +0800
Message-ID: <CAJsYDVKQFB-X-mMRCZ44ypGyoWOQdSsYpfVsCPkg+TYDSw=4KQ@mail.gmail.com>
Subject: Are people from linux-mediatek also interested in Mediatek MIPS SoCs?
 [Was: [PATCH] staging: mt7621-dts: add dt node for 2nd/3rd uart on
 mt7621]
To: Dan Carpenter <dan.carpenter@oracle.com>,
 linux-mediatek@lists.infradead.org, 
 Matthias Brugger <matthias.bgg@gmail.com>
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
 NeilBrown <neil@brown.name>, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 4, 2020 at 6:37 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Feb 04, 2020 at 05:59:21PM +0800, Chuanhong Guo wrote:
> > Hi!
> >
> > On Tue, Feb 4, 2020 at 5:47 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > >
> > > Please use ./scripts/get_maintainer.pl to pick the CC list and resend.
> > >
> > > The MAINTAINERS file says Matthias Brugger is supposed to be CC'd and
> > > a couple other email lists.
> >
> > According to get_maintainer.pl,  Matthias Brugger is the maintainer of
> > Mediatek ARM SoC:
> >
> > Matthias Brugger <matthias.bgg@gmail.com> (maintainer:ARM/Mediatek SoC support)
> > linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC support)
> > linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC support)
> >
> > I specifically removed the above 3 addresses because they are all for
> > Mediatek ARM chips
> > while mt7621 is a mips chip and belongs to ralink target under
> > /arch/mips/mach-ralink.
> > Code contribution for mt7621 goes through linux-mips instead of
> > linux-arm or linux-mediatek,
>
> I would have thought that we would still CC linux-mediatek?
>
> >
> > I thinks this is an incorrect setup of get_maintainer.pl and should be
> > corrected.
>
> We could ask him...
>
> It's always easiest to fix MAINTAINERS instead of remembering all the
> exceptions and rules.

Hi Matthias and other folks on linux-mediatek:

I noticed that get_maintainers.pl reports "ARM/Mediatek SoC support"
e-mail addreses for MTK MIPS SoCs (mt7620/mt7621/mt76x8) because of
"mt[678]" name match in MAINTAINERS file.
This is confusing because these MIPS SoCs clearly don't fall into
"ARM" category. Is this an incorrect match or is it intentional? If
it's intentional I think we should remove the confusing ARM prefix,
and if it's incorrect we may need to figure out how to exclude
mt7620/mt7621/mt76x8 from "ARM/Mediatek SoC support".

Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
