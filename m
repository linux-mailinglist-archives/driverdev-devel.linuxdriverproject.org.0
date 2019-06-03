Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4DA330AB
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 15:10:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2C7C85DD1;
	Mon,  3 Jun 2019 13:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shU9BxORlekl; Mon,  3 Jun 2019 13:10:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2D4285624;
	Mon,  3 Jun 2019 13:10:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8BF4C1BF4D6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8898086361
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 13:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nGbURvGky20A for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 13:10:03 +0000 (UTC)
X-Greylist: delayed 17:02:29 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0060.hostedemail.com
 [216.40.44.60])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD8788621D
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 13:10:03 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 695408122526
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 13:10:02 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 0B43F18029129;
 Mon,  3 Jun 2019 13:10:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2911:2915:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3872:3873:3874:4321:4425:5007:8957:10004:10400:10848:11232:11473:11657:11658:11914:12043:12296:12438:12555:12740:12895:13069:13161:13229:13311:13357:13439:13894:14659:21080:21451:21627:30012:30054:30069:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: step10_3a06bdb8b0e14
X-Filterd-Recvd-Size: 2536
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Mon,  3 Jun 2019 13:09:58 +0000 (UTC)
Message-ID: <8285c867674b7fffd7286b9608fbb08affbb8d7f.camel@perches.com>
Subject: Re: [PATCH 3/3] drivers/staging/rtl8192u: Fix of checkpatch-errors
From: Joe Perches <joe@perches.com>
To: Christian =?ISO-8859-1?Q?M=FCller?= <muellerch-privat@web.de>, 
 gregkh@linuxfoundation.org
Date: Mon, 03 Jun 2019 06:09:57 -0700
In-Reply-To: <20190603122104.2564-4-muellerch-privat@web.de>
References: <20190603122104.2564-1-muellerch-privat@web.de>
 <20190603122104.2564-4-muellerch-privat@web.de>
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
Cc: devel@driverdev.osuosl.org, felix.trommer@hotmail.de,
 linux-kernel@vger.kernel.org, johnfwhitmore@gmail.com,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2019-06-03 at 14:21 +0200, Christian M=FCller wrote:
> Fix issues that lead to multiple checkpatch warnings and errors, most of
> them regarding formatting of code and comments.
> Comments that contain only commented out code are removed as well.

Generally, the quantity of changes in this patch makes it
impossible to review and apply.

It's better to do single issue fixes in separate patches.

All single line whitespace only changes can generally be done
in one patch as long as you verify that the object files have
pre and post the patch have not changed.

And the first block of this patch doesn't look like it could
ever compile properly.

> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/sta=
ging/rtl8192u/ieee80211/ieee80211.h
[]
> @@ -446,26 +446,26 @@ typedef enum _InitialGainOpType {
[]
>  #else
> -#define IEEE80211_DEBUG (level, fmt, args...) do {} while (0)
> -#define IEEE80211_DEBUG_DATA (level, data, datalen) do {} while(0)
> +#define IEEE80211_DEBUG ((level, fmt, args...) do {} while (0))
> +#define IEEE80211_DEBUG_DATA ((level, data, datalen) do {} while (0))

These need to have the space removed after the
macro identifier before the open parentheses and
another level of parentheses removed instead.

#define IEEE80211_DEBUG(level, fmt, args...) do {} while (0)
#define IEEE80211_DEBUG_DATA(level, data, datalen) do {} while (0)

Given that it's never been compiled, it might as well be removed
in another patch.

I didn't look at the rest.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
