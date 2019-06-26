Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F9F57078
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 20:20:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 308AD86852;
	Wed, 26 Jun 2019 18:20:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxQUjwqUDAQh; Wed, 26 Jun 2019 18:20:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 806F1868CA;
	Wed, 26 Jun 2019 18:20:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 108EC1BF41C
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 18:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D94A87B60
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 18:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92mZQfLQAB-6 for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 18:20:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0250.hostedemail.com
 [216.40.44.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4A0E857BB
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 18:20:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 7914618039019
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 17:41:47 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id DA62C18038B43;
 Wed, 26 Jun 2019 17:41:44 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1801:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:3874:4321:4384:4605:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12295:12296:12297:12438:12740:12895:13069:13255:13311:13357:13439:13894:14659:14721:21080:21627:30012:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:33,
 LUA_SUMMARY:none
X-HE-Tag: roof68_8382be6ddc757
X-Filterd-Recvd-Size: 2396
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Wed, 26 Jun 2019 17:41:43 +0000 (UTC)
Message-ID: <0ecf55be612b2ac5f40045796e54bb1ee758d3e4.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: rts5208: Rewrite redundant if statement to
 improve code style
From: Joe Perches <joe@perches.com>
To: Tobias =?ISO-8859-1?Q?Nie=DFen?= <tobias.niessen@stud.uni-hannover.de>, 
 gregkh@linuxfoundation.org
Date: Wed, 26 Jun 2019 10:41:41 -0700
In-Reply-To: <20190626142857.30155-2-tobias.niessen@stud.uni-hannover.de>
References: <20190626142857.30155-1-tobias.niessen@stud.uni-hannover.de>
 <20190626142857.30155-2-tobias.niessen@stud.uni-hannover.de>
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
Cc: devel@driverdev.osuosl.org, Sabrina Gaube <sabrina-gaube@web.de>,
 linux-kernel@vger.kernel.org, linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2019-06-26 at 16:28 +0200, Tobias Nie=DFen wrote:
> This commit uses the fact that
> =

>     if (a) {
>             if (b) {
>                     ...
>             }
>     }
> =

> can instead be written as
> =

>     if (a && b) {
>             ...
>     }
> =

> without any change in behavior, allowing to decrease the indentation
> of the contained code block and thus reducing the average line length.

unrelated and trivially:

> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
[]
> @@ -4507,20 +4507,19 @@ int sd_execute_write_data(struct scsi_cmnd *srb, =
struct rtsx_chip *chip)
[]
> +			if (sd_lock_state &&
> +			    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
> +				sd_card->sd_lock_status |=3D (
> +					SD_UNLOCK_POW_ON | SD_SDR_RST);

This could go on a single line like the &=3D ~() equivalent below.
It hardly matters if it's > 80 chars.

> +				if (CHK_SD(sd_card)) {
> +					retval =3D reset_sd(chip);
> +					if (retval !=3D STATUS_SUCCESS) {
> +						sd_card->sd_lock_status &=3D ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
> +						goto sd_execute_write_cmd_failed;
>  					}
> -
> -					sd_card->sd_lock_status &=3D ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
>  				}
> +
> +				sd_card->sd_lock_status &=3D ~(SD_UNLOCK_POW_ON | SD_SDR_RST);
>  			}
>  		}
>  	}

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
