Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D7621FBAC
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 21:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D5CB88AA0;
	Tue, 14 Jul 2020 19:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptngyQM6qAGD; Tue, 14 Jul 2020 19:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8419288658;
	Tue, 14 Jul 2020 19:03:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 190DC1BF97A
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 19:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11CDD8691E
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 19:03:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id clktQysLgEHn for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 19:03:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0230.hostedemail.com
 [216.40.44.230])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C59D78623B
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 19:03:31 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id CE3D718013661
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 18:57:28 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 33E0E100E7B4A;
 Tue, 14 Jul 2020 18:57:26 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3870:3871:3872:4321:4605:5007:7514:7903:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12555:12663:12740:12760:12895:12986:13019:13161:13229:13439:14181:14659:14721:21080:21324:21451:21627:30054:30055:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: wish68_300691626ef3
X-Filterd-Recvd-Size: 3488
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Tue, 14 Jul 2020 18:57:24 +0000 (UTC)
Message-ID: <a323c1e47e8de871ff7bb72289740cb0bc2d27f8.camel@perches.com>
Subject: Re: [PATCH 6/6] staging: qlge: qlge_ethtool: Remove one byte memset.
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Suraj Upadhyay
 <usuraj35@gmail.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Tue, 14 Jul 2020 11:57:23 -0700
In-Reply-To: <20200713141749.GU2549@kadam>
References: <cover.1594642213.git.usuraj35@gmail.com>
 <b5eb87576cef4bf1b968481d6341013e6c7e9650.1594642213.git.usuraj35@gmail.com>
 <20200713141749.GU2549@kadam>
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-07-13 at 17:17 +0300, Dan Carpenter wrote:
> On Mon, Jul 13, 2020 at 05:52:22PM +0530, Suraj Upadhyay wrote:
> > Use direct assignment instead of using memset with just one byte as an
> > argument.
> > Issue found by checkpatch.pl.
> > 
> > Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> > ---
> > Hii Maintainers,
> > 	Please correct me if I am wrong here.
> > ---
> > 
> >  drivers/staging/qlge/qlge_ethtool.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
> > index 16fcdefa9687..d44b2dae9213 100644
> > --- a/drivers/staging/qlge/qlge_ethtool.c
> > +++ b/drivers/staging/qlge/qlge_ethtool.c
> > @@ -516,8 +516,8 @@ static void ql_create_lb_frame(struct sk_buff *skb,
> >  	memset(skb->data, 0xFF, frame_size);
> >  	frame_size &= ~1;
> >  	memset(&skb->data[frame_size / 2], 0xAA, frame_size / 2 - 1);
> > -	memset(&skb->data[frame_size / 2 + 10], 0xBE, 1);
> > -	memset(&skb->data[frame_size / 2 + 12], 0xAF, 1);
> > +	skb->data[frame_size / 2 + 10] = (unsigned char)0xBE;
> > +	skb->data[frame_size / 2 + 12] = (unsigned char)0xAF;
> 
> Remove the casting.
> 
> I guess this is better than the original because now it looks like
> ql_check_lb_frame().  It's still really weird looking though.

There are several of these in the intel drivers too:

drivers/net/ethernet/intel/e1000/e1000_ethtool.c:       memset(&skb->data[frame_size / 2 + 10], 0xBE, 1);
drivers/net/ethernet/intel/e1000/e1000_ethtool.c:       memset(&skb->data[frame_size / 2 + 12], 0xAF, 1);
drivers/net/ethernet/intel/e1000e/ethtool.c:    memset(&skb->data[frame_size / 2 + 10], 0xBE, 1);
drivers/net/ethernet/intel/e1000e/ethtool.c:    memset(&skb->data[frame_size / 2 + 12], 0xAF, 1);
drivers/net/ethernet/intel/igb/igb_ethtool.c:   memset(&skb->data[frame_size + 10], 0xBE, 1);
drivers/net/ethernet/intel/igb/igb_ethtool.c:   memset(&skb->data[frame_size + 12], 0xAF, 1);
drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:       memset(&skb->data[frame_size + 10], 0xBE, 1);
drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c:       memset(&skb->data[frame_size + 12], 0xAF, 1);
drivers/staging/qlge/qlge_ethtool.c:    memset(&skb->data[frame_size / 2 + 10], 0xBE, 1);
drivers/staging/qlge/qlge_ethtool.c:    memset(&skb->data[frame_size / 2 + 12], 0xAF, 1);



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
