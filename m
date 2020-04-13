Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC441A6840
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 16:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D95C58528B;
	Mon, 13 Apr 2020 14:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4juVrLOXN0b; Mon, 13 Apr 2020 14:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72F5B85620;
	Mon, 13 Apr 2020 14:39:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 236A11BF3A0
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20001203AB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 14:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t+xW7+0fSQAm for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 14:39:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 575EB20006
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 14:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586788718;
 bh=7+gW3BFwZ5bYk2D5SD2MBju9rDIRFKHeZgJpA93GphQ=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=GKHupCapOcADynwirN9z8IU2it6OF4e6Addhvgg4k2Nk0kZejB/TDZN86wGLig1IA
 3Nh3U7azkyezqLVaZ4jKm0f/yyIr0KWNNWeERqWZHiP0q8dXhi43JahoqMXbiWlE7L
 ABANwzdZfZUZc/0pZCW7BKVj/BENi+yfcIFs2Oks=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mel81-1io7a70tAz-00al57; Mon, 13
 Apr 2020 16:38:38 +0200
Date: Mon, 13 Apr 2020 16:38:36 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v3 1/2] staging: vt6656: Use define instead of magic
 number for tx_rate
Message-ID: <20200413143835.GC3101@ubuntu>
References: <20200407163915.7491-1-oscar.carter@gmx.com>
 <20200407163915.7491-2-oscar.carter@gmx.com>
 <20200413125633.GB3127208@kroah.com> <20200413141315.GA3101@ubuntu>
 <20200413142907.GA3548777@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413142907.GA3548777@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:GOMNog9IolI/m0UPEqlgipCA6W7EpQRdWJu1ApJS5JqVIl1xNfQ
 0KJn/vWNuBh+Z59kC+sul85jzdQOxNKOWuxTgDWmdh9VPBwUYVMeKY/m72tbe1RVXxcWpRT
 R6YTCDsKcI2kuW3BjdiH9oY68LcTa9ep8T7q7V1hSimi/rSOMUcmTJCRvD4GTZBGaV4bU7N
 mgX2H3j7z9Pi8sfixV+rQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6Nk03dupN/4=:DFjbxWxbQswu6BRbh44PqH
 gn1pfp36dOeF/GnjgBA1MvEIqBDTMX5xoJnV1pw1tIB8EkHPgo5WegC7Fn3JSK272hvvdV90r
 2el4J+daFIY0O8SVPEYLyChdIt8AEySuRiRZVJ4JEPzs+Jef3W10pdfYnW0VgzGuGOniy0EDo
 yXSsDz6hDHxqH8wlsmBzo2ginDWNCmQYtTLjNLn9+wBSi2OuoyitHaqO7cY02B/k2sIWBVApn
 Zr6BWS6vrpuxUmVwjZGnouDeQE2f/Evo47HtQ9j41ojKieP4JpbJAROxZpuq+bQFvA+Kvg1I+
 nA+u2PTIgxETPVuOe4sq2tpraIGeg4ekLa+6njVsf/cNdKCrvCirkB9Z1QFt+FXjz/ydi9T+8
 QRPtJfutLK5wtriS0SRvcnr7i924sOzMxx6ZBR0ZBcnoRv9MY9blznFmornGiO0Cs7EGjVamT
 y6/c31RBBs+8wP3U05jLV5LR677CvLtj9MF2zIhhPmLmB8Z5XGw+f/4wMOvB7BoEb045JpZ0/
 tFueXP6yh5LjOEea0n31w/M/2oEuJJegyCr9vWdCENdb1Pv2ZrpE3XzWdBhPVFsBOnF+5tVZx
 VVQwwCZ8zdGq+Ie4LYB67E1L0AHo9DcuTr5Gf39B0AnXYaZGuXQvoZ4adCRxBFVnkYi3uKQvK
 Auc6pj6aMXTZC39o243iRwu22RelUfNYPiEaPyEw57Wb89NMs2fNl5Svk/Z/q65PT6n+Hxkq6
 qhPlhvI6PI+Br7u2HYPBkkMW3zXMhDagNuroghyRSdQbFYxkdwFFmbf75hE4nurG5Qx9Mx1p+
 MPE4s/P5yurEnQqLzAc3jq2TC2k/ceGlfvpiBZ32Y/YsbZNDPRmfc0c/4KQqaz84tzIFzgE5a
 FhFITRpeQegvc3x/pBtUyHqjEe7pBEOt6efO5Xx9dPBjFe43AWSLmXBKfWzuktqQsooSahgKR
 SYMgexXF9uPbyMP5MwlbLjcviYIw5IMvF9xb8u8EOffypX2kHJcjWGNWUcmenLPkP7kO540Sj
 lC9YsUSErnrPphAwcFlh9xa0Bv+Ht6Gqp4LsmR0yBLD+mVE47aJItMISsKAqpXgDQetGknXNG
 72egbwTF8NcH0ljyLVGEr6dPE9vVx9ZzFd1VuP6jYLFgmgm0RONRyMN5vdNdiZD/p2nSWZA09
 x2TxJR2ISREIQW2cyQqw6yNGGUUZU/rwOfQNXM7g8f6NREGUJuxaWfNDOo6aEkwsCSZ7R3p1t
 8ww8BMTnW29kUBoFo
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 04:29:07PM +0200, Greg Kroah-Hartman wrote:
> On Mon, Apr 13, 2020 at 04:13:15PM +0200, Oscar Carter wrote:
> > On Mon, Apr 13, 2020 at 02:56:33PM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Apr 07, 2020 at 06:39:14PM +0200, Oscar Carter wrote:
> > > > Use the define RATE_11M present in the file "device.h" instead of the
> > > > magic number 3. So the code is more clear.
> > > >
> > > > Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > > > ---
> > > >  drivers/staging/vt6656/baseband.c | 3 ++-
> > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > This patch did not apply to my tree, please rebase and resend.
> > >
> > I need to rebase only this patch for this serie so, it's necessary to send all
> > the serie or only this patch?
>
> If I applied the other one, just this patch.
>
> > If it's only this patch I need to indicate v4 in the subject or a v2 due it's
> > related only with this patch?
>
> As so many of your patches were rejected because of this, rebase them
> all, and resend them all as a single patch series, so that I know what
> order to apply them in and have a chance to get it right :)

Ok, I will create a patch series with all the rejected patches rebased.
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
