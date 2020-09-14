Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59422692F5
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 19:21:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12FC48725D;
	Mon, 14 Sep 2020 17:21:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r31tV2j9SFsn; Mon, 14 Sep 2020 17:21:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D4FFC871EB;
	Mon, 14 Sep 2020 17:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C22EE1BF86C
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 17:20:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B244C2044F
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 17:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1boaveoM-TlC for <devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 17:20:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 4F37A203C8
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 17:20:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id EC3501800C845
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 16:42:54 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 7633B100E8465;
 Mon, 14 Sep 2020 16:42:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:2898:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:4605:5007:6119:7576:7904:9010:9545:10004:10400:10967:11026:11232:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13161:13229:13255:13439:13848:14096:14097:14181:14659:14721:21080:21451:21627:21660:21740:21990:30041:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:11, LUA_SUMMARY:none
X-HE-Tag: twig87_0f068782710a
X-Filterd-Recvd-Size: 3560
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Mon, 14 Sep 2020 16:42:50 +0000 (UTC)
Message-ID: <8c95d3d02dbdd36a048280cb8d9e8f171c3b4959.camel@perches.com>
Subject: Re: [RESEND PATCH] staging: rtl8188eu: Fix else after return
 WARNING (checkpatch)
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Sohom Datta
 <sohom.datta@learner.manipal.edu>
Date: Mon, 14 Sep 2020 09:42:49 -0700
In-Reply-To: <20200914145755.GD4282@kadam>
References: <230f781dcaadfc797a016cc6036d63efe6542062.camel@learner.manipal.edu>
 <20200914145755.GD4282@kadam>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-09-14 at 17:57 +0300, Dan Carpenter wrote:
> On Sun, Sep 13, 2020 at 12:19:50PM +0530, Sohom Datta wrote:
> > > From 4c8c8f3ff7f4d711daea4ac3bb987fcecc7ef1ed Mon Sep 17 00:00:00 2001
> > From: Sohom <sohom.datta@learner.manipal.edu>
> > Date: Sat, 12 Sep 2020 18:04:56 +0530
> > Subject: [RESEND PATCH] staging: rtl8188eu: Fix else after return WARNING
> >  (checkpatch)
> > 
> > Fixed:
> > WARNING: else is not generally useful after a break or return
> > 1636: FILE: ./rtw_recv.c:1636:
> > +           return false;
> > +       else
> > 
> > Separated the return statement into a separate block since
> > it doesn't seem to depend on the SN_LESS explicity being false.
> > 
> > Signed-off-by: Sohom <sohom.datta@learner.manipal.edu>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_recv.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > index 5fe7a0458dd2..5e81134ffb6d 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > @@ -1629,10 +1629,11 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> >  		hdr = list_entry(plist, struct recv_frame, list);
> >  		pnextattrib = &hdr->attrib;
> >  
> > +		if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
> > +			return false;
> > +
> >  		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num))
> >  			plist = plist->next;
> > -		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
> > -			return false;
> >  		else
> >  			break;
> >  	}
> 
> Checkpatch is just wrong here.  Ignore it when it's wrong.

It's not "wrong" here.  It's making a suggestion.

Perhaps read the SN_EQUAL and SN_LESS macros.

a and b are both u16's here.

drivers/staging/rtl8188eu/include/rtw_recv.h:#define SN_LESS(a, b)              (((a - b) & 0x800) != 0)
drivers/staging/rtl8188eu/include/rtw_recv.h:#define SN_EQUAL(a, b)     (a == b)

Reordering works, perhaps it's just a question of
whether it's the most likely result of the test.

This is in a while loop.

If the expected test is really the most likely that
SN_LESS is true, then perhaps this loop could be
something like:

		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num)) {
			plist = plist->next;
			continue;
		}
		if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
			return false;
		break;
	}

The real question is whether or not that's more readable.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
