Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6602CE7233
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 13:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7A77320494;
	Mon, 28 Oct 2019 12:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ke8X0yV1H9tH; Mon, 28 Oct 2019 12:57:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28F742040C;
	Mon, 28 Oct 2019 12:57:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB6241BF2F8
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 12:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D47622040C
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 12:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id me28lK7GFQiO for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 12:57:43 +0000 (UTC)
X-Greylist: delayed 01:10:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0013.hostedemail.com
 [216.40.44.13])
 by silver.osuosl.org (Postfix) with ESMTPS id D678620343
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 12:57:43 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id CD8A8180273D7
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:09:49 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 596B3181D3052;
 Mon, 28 Oct 2019 08:09:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::::,
 RULES_HIT:41:355:379:599:966:968:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2196:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3871:3874:4321:4385:4605:5007:6119:7903:9010:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:30012:30054:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: stew80_1ac8e633b015e
X-Filterd-Recvd-Size: 2274
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Mon, 28 Oct 2019 08:09:43 +0000 (UTC)
Message-ID: <67386d9dec115d8eccaa6407a29c525eafd7811c.camel@perches.com>
Subject: Re: [RESEND PATCH 1/2] staging: rtl8712: Fix Alignment of open
 parenthesis
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Mon, 28 Oct 2019 01:09:38 -0700
In-Reply-To: <20191028080113.GD1944@kadam>
References: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
 <e3842148b6dd01c47678f517a07772c75046c50f.1572051351.git.cristianenavescardoso09@gmail.com>
 <25960b2a5dfe3f5f2c6579ef718f90a139ba84d7.camel@perches.com>
 <20191028080113.GD1944@kadam>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Cristiane Naves <cristianenavescardoso09@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-10-28 at 11:01 +0300, Dan Carpenter wrote:
> On Fri, Oct 25, 2019 at 06:50:25PM -0700, Joe Perches wrote:
> > On Fri, 2019-10-25 at 22:09 -0300, Cristiane Naves wrote:
> > > Fix alignment should match open parenthesis.Issue found by checkpatch.
> > 
> > Beyond doing style cleanups, please always try
> > to make the code more readable.
> > 
> > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > []
> > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > >  		precvbuf->ref_cnt = 0;
> > >  		precvbuf->adapter = padapter;
> > >  		list_add_tail(&precvbuf->list,
> > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > +			      &(precvpriv->free_recv_buf_queue.queue));
> > 
> > Please remove the unnecessary parentheses too
> > 
> 
> Removing the parentheses increases your chance of the patch being
> rejected on the one thing per patch rule...

Which for people that actually know how to
read and write code is a silly rule.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
