Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A43FF1A5F6E
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 18:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F24BB8440A;
	Sun, 12 Apr 2020 16:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FxwuWObJbVN; Sun, 12 Apr 2020 16:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E0AC38445A;
	Sun, 12 Apr 2020 16:58:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00F671BF354
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 16:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFEE787526
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 16:58:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1HtNhx6cNiW for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 16:58:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 205E786F5C
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 16:58:54 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 71D88100E7B40;
 Sun, 12 Apr 2020 16:58:51 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3653:3865:3867:3872:3873:4321:5007:6119:6691:7514:7903:9010:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:30054:30060:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: bag70_6a529ded9e51b
X-Filterd-Recvd-Size: 1544
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Sun, 12 Apr 2020 16:58:50 +0000 (UTC)
Message-ID: <ac67c70345464efd347d56267d6748064131f7e2.camel@perches.com>
Subject: Re: [PATCH] Staging: comedi: drivers: jr3_pci: fixed two warnings
From: Joe Perches <joe@perches.com>
To: carlosteniswarrior@gmail.com, gregkh@linuxfoundation.org
Date: Sun, 12 Apr 2020 09:56:44 -0700
In-Reply-To: <20200412142508.327-1-carlosteniswarrior@gmail.com>
References: <20200412142508.327-1-carlosteniswarrior@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-04-12 at 16:25 +0200, carlosteniswarrior@gmail.com wrote:
> Fixed two checkpatch warnings.

by introducing compiler errors.

> diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
[]
> @@ -91,8 +91,8 @@ struct jr3_pci_dev_private {
>  };
 
>  union jr3_pci_single_range {
> -	struct comedi_lrange l;
> -	char _reserved[offsetof(struct comedi_lrange, range[1])];
> +	const comedi_lrange l;
> +	char _reserved[offsetof(const comedi_lrange, range[1])];
>  };

try this:

$ make allyesconfig
$ make drivers/staging/comedi/drivers/jr3_pci.o

_always_ compile the files modified by your patch before
you post it to a mailing list or submit it to a maintainer.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
