Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E265ADD5
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2019 01:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 24ACE203EF;
	Sat, 29 Jun 2019 23:59:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ec1GFn0GHQgF; Sat, 29 Jun 2019 23:59:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D9B15203AF;
	Sat, 29 Jun 2019 23:59:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2BC61BF20B
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 23:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C611F857D1
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 23:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BWVFbH5mssQF for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 23:59:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0253.hostedemail.com
 [216.40.44.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E126854C4
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 23:59:23 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 4C3A018012875
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 23:59:22 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 5D94D182CF668;
 Sat, 29 Jun 2019 23:59:19 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3874:4321:5007:8603:10004:10400:10848:11026:11232:11658:11914:12043:12048:12297:12740:12760:12895:13019:13069:13311:13357:13439:14181:14659:14721:21080:21627:30012:30029:30054:30070:30091,
 0, RBL:172.58.27.65:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: level91_6e35fe890bd1c
X-Filterd-Recvd-Size: 1915
Received: from XPS-9350 (unknown [172.58.27.65])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Sat, 29 Jun 2019 23:59:17 +0000 (UTC)
Message-ID: <dbe411be6aa32a32aafc5a5b77f08e8507b45da3.camel@perches.com>
Subject: Re: [PATCH] Staging: most: fix coding style issues
From: Joe Perches <joe@perches.com>
To: Gabriel Beauchamp <beauchampgabriel@gmail.com>, 
 gregkh@linuxfoundation.org, christian.gromm@microchip.com, 
 colin.king@canonical.com, gustavo@embeddedor.com
Date: Sat, 29 Jun 2019 16:58:46 -0700
In-Reply-To: <20190629234427.20746-1-beauchampgabriel@gmail.com>
References: <20190629234427.20746-1-beauchampgabriel@gmail.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
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

On Sat, 2019-06-29 at 16:44 -0700, Gabriel Beauchamp wrote:
> This is a patch for the core.[ch] files that fixes up warnings
> found with the checkpatch.pl tool.
[]
> diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
[]
> @@ -303,7 +303,8 @@ static ssize_t set_datatype_show(struct device *dev,
>  
>  	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
>  		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
> -			return snprintf(buf, PAGE_SIZE, "%s", ch_data_type[i].name);
> +			return snprintf(buf, PAGE_SIZE,
> +					"%s", ch_data_type[i].name);
>  	}
>  	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
>  }

Assuming the newline difference is unintentional,
(if not change "unconfigured" to "unconfigured\n")

How about using a single sprintf and reducing object code size too?

	char *type = "unconfigured";

	for (...)
		if (c-> etc...) {
			type = ch_data_type[i].name;
			break;
		}
	}

	return snprintf(buf, PAGE_SIZE, "%s", type);



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
