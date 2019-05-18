Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B7E221B6
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 07:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87ACA8799C;
	Sat, 18 May 2019 05:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lo-yk6KGuTeA; Sat, 18 May 2019 05:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1BF987896;
	Sat, 18 May 2019 05:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECA7A1BF277
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 05:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E4EC986BB3
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 05:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TYp1mx6VQJT6 for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 05:27:37 +0000 (UTC)
X-Greylist: delayed 01:50:02 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0114.hostedemail.com
 [216.40.44.114])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5BC286A32
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 05:27:36 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 0B2E71802BDF0
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:58:25 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id DEC82100E806B;
 Sat, 18 May 2019 02:58:21 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3865:3866:3867:3868:4321:5007:10004:10400:10848:11232:11657:11658:11914:12043:12048:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21212:21433:21611:21627:30029:30046:30054:30091,
 0,
 RBL:23.242.70.174:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:31,
 LUA_SUMMARY:none
X-HE-Tag: knot77_2bcab207af217
X-Filterd-Recvd-Size: 1751
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Sat, 18 May 2019 02:58:20 +0000 (UTC)
Message-ID: <9e30f140e314f03057a2941f4d091d8965391c17.camel@perches.com>
Subject: Re: [PATCH 4/5] staging: kpc2000: kpc_i2c: use %s with __func__
 identifier in log messages
From: Joe Perches <joe@perches.com>
To: Geordan Neukum <gneukum1@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 17 May 2019 19:58:19 -0700
In-Reply-To: <ffd66b415e67f6b03483a6ee57b7b3dc0bab388f.1558146549.git.gneukum1@gmail.com>
References: <cover.1558146549.git.gneukum1@gmail.com>
 <ffd66b415e67f6b03483a6ee57b7b3dc0bab388f.1558146549.git.gneukum1@gmail.com>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-05-18 at 02:29 +0000, Geordan Neukum wrote:
> Throughout i2c_driver.c, there are instances where the log strings
> contain the function's name hardcoded into the string. Instead, use the
> printk conversion specifier '%s' with the __func__ preprocessor
> identifier to more maintainably print the function's name.

Might as well remove all of these and use the
builtin ftrace function tracing mechanism instead.

> diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
[]
> @@ -142,7 +142,7 @@ static int i801_check_pre(struct i2c_device *priv)
>  {
>  	int status;
>  
> -	dev_dbg(&priv->adapter.dev, "i801_check_pre\n");
> +	dev_dbg(&priv->adapter.dev, "%s\n", __func__);

etc...

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
