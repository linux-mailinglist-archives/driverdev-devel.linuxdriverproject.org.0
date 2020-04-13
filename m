Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EED7E1A684A
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 16:43:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8AC562049C;
	Mon, 13 Apr 2020 14:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V6+mdgeE6nj7; Mon, 13 Apr 2020 14:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5845F20401;
	Mon, 13 Apr 2020 14:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E839C1BF3A0
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E446820469
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id In7x9qKXS9Ob for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 14:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 21F7420401
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586789010;
 bh=0NCp+Vu36UV+Nep7pt3qtDDxRFXYEp54QmwUoOr/Bus=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=k145ZrB38WQIg90rT/myfy+BJRKoj2VMD+UkQl8+umJBjMzgqyN7kSodXMcd9f7MY
 Mp0t0O8Cd7kC9pOKdoqL8/EWkJTYLcYiXKHoiDmGDGFs6l0PIKR0JeMCUUFOxC8HNf
 mCBZCi1pIzBcWFvnxgFO/WsOgp13N2r57CPhsQR4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MLzBj-1jfoJ9109R-00HwcM; Mon, 13
 Apr 2020 16:43:30 +0200
Date: Mon, 13 Apr 2020 16:43:28 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Message-ID: <20200413144327.GD3101@ubuntu>
References: <20200411122610.7901-1-oscar.carter@gmx.com>
 <20200411122610.7901-2-oscar.carter@gmx.com>
 <20200413125616.GA3127208@kroah.com> <20200413142517.GB3101@ubuntu>
 <20200413143258.GA3551837@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413143258.GA3551837@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:GuMtJNikT7pEfs4/zNmaUdOgAvOacWcwwOOhytyCJSV9BYLhUfL
 kxaLu3dMC1n5UErexfEQpc8R9urBLUIOg/7w4wRspq28pXeUDUEatKEIvVuv5QPWmwFNUm/
 p0pMwnwSooeASoGzgpIPc+mg2Prw1yYkmJWAQvNYztU8G2Z/XDj8whE8H9nra14/nW3GENK
 Yw7i4mmFUUfcxppnj3eGQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:bjWEYbs8t+E=:LX7PI3mdFcGUTYfUB6shCu
 CwdHYh6OmqCF3GIOxuUzU7XywQZNZ9lF2IXPJbIm4rxE73d8fZrLJ0b/H4CobdwIWym3JoBiY
 r8bk5x/+ImhWT+njsntCiEervMp1QI91kLo7jVM/RqqKnTCqFI+oqOQBARPe6yGsyxROaLaY4
 XZWh8UMHOyh59qx8/xf/ya2vsgjORtTk+iGN6ABv5ZikdMXm67a4KRO6KDeKQiLEaHUYKFSAq
 6yONGkJx2sH55rH0MHvETKT5gBHetdgPzAt2hrLbIqSZkadOwt6olkWvubIVgSoea6fnA7Jwc
 tqAAHUhdHhm7mu8JHQXdn3avsyG308+T4ZsMqG4O52dNstJUW8C0nUpgUv29BkI0REDGzBRaJ
 918sHu2flYAxyHl6L0p8oYr0d6PeOFZyxRa4vkNUagHG+cjYfcw0dG5iThz1qVKmXMB5VMmo2
 nEcamVTDBBsm+POCEmWRkUzSnZfOJVL1uCvuxdmzmdN2sYx/WzU/Vc6f2mUoGOTMmt/ZVpzIe
 Ov5g6HQak96brV6u/zmGvRnTbTBp2ULoK4TzGDjZftEqWI5o6gk0XhW/JKFILrz22PJtB98RT
 RMH0pqBh27T5rLL1kTN+RKcCBjkWM6TA4TWzwbdkhKpz14iHaRcn8kOyNbvCoAo+KISFxMoDz
 qaP6MP8KzHIM/5z5UwgZjXKGKzGBgsMTOHLtCTlo/GiHFbhhEU6OdZYXSAVqnL54SjyPKvV8O
 yWRKRO56xO9cvSDc3NqqPgIppiIj6l0ON4p3+veLO/o3i51k7pyK9dJMsquK5qsX8a0ENmNM3
 imKqAOZ9SM1fXItqZL1fmzcFNRStjMuiKUVHM1L5Fg4DnqC6Y77KJ3cc+m6UPMDceAo6nzwFz
 AkNgQXXVnxLPH4WdzVFP4zUhThH243K7JOSmk2RlbRgXIqc5N18PvbhuwjY30p51FTDTY0uAy
 Snh7hlOcWAg+wL6kdQ8Uyh/iZaHogbc90BFkKCTjwKk8ouMNw+Qz2ursrO+2DpAF9juMN/ao4
 Z3+0vNPIsaAID27t79JZnJ3OJ87C481OTBWh9t7dwst4Cgs9LMjLesN0hNAYg1CsgdcNP42pV
 xmG8LEanCRytagh9Kvt220ofESAgQkiBjxuWB+v9TShoTZpbk1IXWnA1znE+Cjb6XsTw0QiDH
 hEbsHD8Yb7N+KR+qSLCW9jGMrjiISG2TGAzmBNwGb6ORkskm6l/7u9SeBjsyS6n26qtYdA/8Z
 S1YGw1D4HI4PGwl1W
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, Forest Bond <forest@alittletooquiet.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 04:32:58PM +0200, Greg Kroah-Hartman wrote:
> On Mon, Apr 13, 2020 at 04:25:17PM +0200, Oscar Carter wrote:
> > On Mon, Apr 13, 2020 at 02:56:16PM +0200, Greg Kroah-Hartman wrote:
> > > On Sat, Apr 11, 2020 at 02:26:09PM +0200, Oscar Carter wrote:
> > > > Create a constant array with the values of the "phy->signal" for every
> > > > rate. Remove all "phy->signal" assignments inside the switch statement
> > > > and replace these with a single reading from the new vnt_phy_signal
> > > > array.
> > > >
> > > > The constant array can be of one dimension because the OR mask with
> > > > BIT(3) or BIT(4) allow obtain a second value according to the rate,
> > > > the preamble_type and the pkt_type.
> > > >
> > > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > > ---
> > > >  drivers/staging/vt6656/baseband.c | 105 ++++++++----------------------
> > > >  1 file changed, 26 insertions(+), 79 deletions(-)
> > >
> > > This series did not apply to my tree, please rebase and resend.
> >
> > Rebase the patchs is a normal process in the development or am I doing something
> > wrong ?
>
> It's normal when multiple people are working on the same area with lots
> of patches flying around.  Not a problem, it doesn't bother me at all :)

Thanks for the clarification about this theme.

>
> thanks,
>
> greg k-h

thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
