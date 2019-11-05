Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2979F0515
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 19:30:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70E938A4AF;
	Tue,  5 Nov 2019 18:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vj8Mk2wJwvNN; Tue,  5 Nov 2019 18:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CC4C8A3FD;
	Tue,  5 Nov 2019 18:30:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 299401BF31F
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 18:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 25794227FA
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 18:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UrNtzRZ9GChz for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 18:30:25 +0000 (UTC)
X-Greylist: delayed 01:10:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0201.hostedemail.com
 [216.40.44.201])
 by silver.osuosl.org (Postfix) with ESMTPS id C7E81227F7
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 18:30:23 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id D5568800CBCE
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 17:13:46 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id E6B174DA7;
 Tue,  5 Nov 2019 17:13:43 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4250:4321:4552:5007:6119:6691:7576:7775:7903:10004:10400:11026:11232:11473:11658:11914:12043:12296:12297:12679:12740:12760:12895:13069:13311:13357:13439:13618:14093:14096:14097:14181:14659:14721:14777:21080:21433:21451:21627:21819:30012:30022:30029:30054:30070:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: mist27_345d099eb123
X-Filterd-Recvd-Size: 2930
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Tue,  5 Nov 2019 17:13:42 +0000 (UTC)
Message-ID: <3a6d170b616eb52735dc6dbf985377b1c836b9e6.camel@perches.com>
Subject: Re: [PATCH v2] hp100: remove set but not used variable val
From: Joe Perches <joe@perches.com>
To: Greg KH <gregkh@linuxfoundation.org>, Chen Wandun <chenwandun@huawei.com>
Date: Tue, 05 Nov 2019 09:13:31 -0800
In-Reply-To: <20191105155024.GA2677365@kroah.com>
References: <20191105133554.6C01F9A06CB85816F399@huawei.com>
 <1572964619-76671-1-git-send-email-chenwandun@huawei.com>
 <20191105155024.GA2677365@kroah.com>
User-Agent: Evolution 3.34.1-2 
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
Cc: devel@driverdev.osuosl.org, kstewart@linuxfoundation.org,
 linux-kernel@vger.kernel.org, perex@perex.cz, tglx@linutronix.de,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-11-05 at 16:50 +0100, Greg KH wrote:
> On Tue, Nov 05, 2019 at 10:36:59PM +0800, Chen Wandun wrote:
> > From: Chenwandun <chenwandun@huawei.com>
> > 
> > Fixes gcc '-Wunused-but-set-variable' warning:
> > 
> > drivers/staging/hp/hp100.c: In function hp100_start_xmit:
> > drivers/staging/hp/hp100.c:1629:10: warning: variable val set but not used [-Wunused-but-set-variable]
> > 
> > Signed-off-by: Chenwandun <chenwandun@huawei.com>
> 
> I need a "full" name here, like the one on your email "From:" line.

You also need the submitter to run checkpatch on the patch
and not just the file.

WARNING: drivers/staging/hp/hp100.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

WARNING: drivers/staging/hp/hp100.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.
total: 0 errors, 2 warnings, 0 checks, 18 lines checked

> > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
[]
> > @@ -1626,7 +1626,9 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
> >  	unsigned long flags;
> >  	int i, ok_flag;
> >  	int ioaddr = dev->base_addr;
> > +#ifdef HP100_DEBUG_TX
> >  	u_short val;
> > +#endif
> 
> #ifdefs are not ok in .c code, sorry.
> 
> >  	struct hp100_private *lp = netdev_priv(dev);
> >  
> >  #ifdef HP100_DEBUG_B
> > @@ -1695,7 +1697,9 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
> >  
> >  	spin_lock_irqsave(&lp->lock, flags);
> >  	hp100_ints_off();
> > +#ifdef HP100_DEBUG_TX
> >  	val = hp100_inw(IRQ_STATUS);
> 
> Are you sure that this doesn't actually change the hardware in some way?

If anyone still _has_ the hardware, please let me know.

I have the only VG test equipment I know of in a box
somewhere in my basement and it's yours for the asking
and the postage.

It hasn't been powered on in 25 years, no guarantees...


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
