Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4612B26A8C6
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Sep 2020 17:25:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E72F487215;
	Tue, 15 Sep 2020 15:25:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LwWMRmmgg+HR; Tue, 15 Sep 2020 15:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14E5087147;
	Tue, 15 Sep 2020 15:25:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 527951BF350
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 15:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4DE6584E5D
 for <devel@linuxdriverproject.org>; Tue, 15 Sep 2020 15:25:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ij-ruMJcEtCm for <devel@linuxdriverproject.org>;
 Tue, 15 Sep 2020 15:25:47 +0000 (UTC)
X-Greylist: delayed 22:34:52 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0210.hostedemail.com
 [216.40.44.210])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A84F84E49
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 15:25:47 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id BC27E837EC2D;
 Tue, 15 Sep 2020 15:25:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:2898:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:4605:5007:6117:6119:7576:7903:7904:9010:9545:10004:10400:10848:10967:11026:11232:11657:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:13161:13229:13255:13439:13848:14096:14097:14181:14659:14721:21080:21451:21627:21660:21740:21990:30012:30041:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: whip01_5b0304527112
X-Filterd-Recvd-Size: 4885
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf17.hostedemail.com (Postfix) with ESMTPA;
 Tue, 15 Sep 2020 15:25:44 +0000 (UTC)
Message-ID: <2f037e34bc5a32af66b2a306cc93dde2338cb960.camel@perches.com>
Subject: Re: [RESEND PATCH] staging: rtl8188eu: Fix else after return
 WARNING (checkpatch)
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Sebastian Arriola
 <sebdeveloper6952@gmail.com>
Date: Tue, 15 Sep 2020 08:25:41 -0700
In-Reply-To: <20200915112028.GG4282@kadam>
References: <230f781dcaadfc797a016cc6036d63efe6542062.camel@learner.manipal.edu>
 <20200914145755.GD4282@kadam>
 <8c95d3d02dbdd36a048280cb8d9e8f171c3b4959.camel@perches.com>
 <20200915112028.GG4282@kadam>
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
 Sohom Datta <sohom.datta@learner.manipal.edu>, linux-kernel@vger.kernel.org,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-09-15 at 14:20 +0300, Dan Carpenter wrote:
> On Mon, Sep 14, 2020 at 09:42:49AM -0700, Joe Perches wrote:
> > On Mon, 2020-09-14 at 17:57 +0300, Dan Carpenter wrote:
> > > On Sun, Sep 13, 2020 at 12:19:50PM +0530, Sohom Datta wrote:
> > > > > From 4c8c8f3ff7f4d711daea4ac3bb987fcecc7ef1ed Mon Sep 17 00:00:00 2001
> > > > From: Sohom <sohom.datta@learner.manipal.edu>
> > > > Date: Sat, 12 Sep 2020 18:04:56 +0530
> > > > Subject: [RESEND PATCH] staging: rtl8188eu: Fix else after return WARNING
> > > >  (checkpatch)
> > > > 
> > > > Fixed:
> > > > WARNING: else is not generally useful after a break or return
> > > > 1636: FILE: ./rtw_recv.c:1636:
> > > > +           return false;
> > > > +       else
> > > > 
> > > > Separated the return statement into a separate block since
> > > > it doesn't seem to depend on the SN_LESS explicity being false.
> > > > 
> > > > Signed-off-by: Sohom <sohom.datta@learner.manipal.edu>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_recv.c | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > > > index 5fe7a0458dd2..5e81134ffb6d 100644
> > > > --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> > > > +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> > > > @@ -1629,10 +1629,11 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> > > >  		hdr = list_entry(plist, struct recv_frame, list);
> > > >  		pnextattrib = &hdr->attrib;
> > > >  
> > > > +		if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
> > > > +			return false;
> > > > +
> > > >  		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num))
> > > >  			plist = plist->next;
> > > > -		else if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
> > > > -			return false;
> > > >  		else
> > > >  			break;
> > > >  	}
> > > 
> > > Checkpatch is just wrong here.  Ignore it when it's wrong.
> > 
> > It's not "wrong" here.  It's making a suggestion.
> > 
> > Perhaps read the SN_EQUAL and SN_LESS macros.
> > 
> > a and b are both u16's here.
> > 
> > drivers/staging/rtl8188eu/include/rtw_recv.h:#define SN_LESS(a, b)              (((a - b) & 0x800) != 0)
> > drivers/staging/rtl8188eu/include/rtw_recv.h:#define SN_EQUAL(a, b)     (a == b)
> > 
> > Reordering works, perhaps it's just a question of
> > whether it's the most likely result of the test.
> > 
> > This is in a while loop.
> > 
> > If the expected test is really the most likely that
> > SN_LESS is true, then perhaps this loop could be
> > something like:
> > 
> > 		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num)) {
> > 			plist = plist->next;
> > 			continue;
> > 		}
> > 		if (SN_EQUAL(pnextattrib->seq_num, pattrib->seq_num))
> > 			return false;
> > 		break;
> > 	}
> > 
> > The real question is whether or not that's more readable.
> > 
> 
> It's not clear to me that any of these are more readable than the other.
> 
> I see that someone broke the staging/rtl8712 version of this driver in
> June.  See commit 98fe05e21a6e ("staging: rtl8712: Remove unnecesary
> else after return statement.").  That patch went through LKML instead of
> going through the driver-devel list...  :/

That's sad.

Then another question is whether either is more prone
to unintentional breakage by novice code readers being
guided by brainless scripts...

A bit of a pity as the original intent of the checkpatch
test was somewhat useful.  Maybe it's outlived its value
though when used with -f files.

There aren't many of these left in the kernel.

Maybe it should be changed to work only on patches.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
