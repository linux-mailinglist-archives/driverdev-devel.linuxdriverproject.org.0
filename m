Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A60FAC8FE
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 21:24:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 830932051F;
	Sat,  7 Sep 2019 19:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JeIWtcPm94oS; Sat,  7 Sep 2019 19:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0740C203CA;
	Sat,  7 Sep 2019 19:24:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 005BC1BF360
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 19:24:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0FF285D56
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 19:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzFL9KOAdLSS for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 19:24:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0074.hostedemail.com
 [216.40.44.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C307685CF2
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 19:24:08 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 5ABC1181CBDDD
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 19:24:07 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 97A12837F24A;
 Sat,  7 Sep 2019 19:24:04 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:4321:5007:6119:7903:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:21810:30012:30054:30062:30070:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:29,
 LUA_SUMMARY:none
X-HE-Tag: clam79_2374d17e87c29
X-Filterd-Recvd-Size: 2175
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Sat,  7 Sep 2019 19:24:03 +0000 (UTC)
Message-ID: <564f4da0f0a9cf9eb91ee46bf10531ea04a37750.camel@perches.com>
Subject: Re: [PATCH 2/2] staging: exfat: cleanup spacing for casts
From: Joe Perches <joe@perches.com>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Sat, 07 Sep 2019 12:24:02 -0700
In-Reply-To: <20190907185833.11910-2-vvidic@valentin-vidic.from.hr>
References: <20190907185833.11910-1-vvidic@valentin-vidic.from.hr>
 <20190907185833.11910-2-vvidic@valentin-vidic.from.hr>
User-Agent: Evolution 3.32.1-2 
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-09-07 at 18:58 +0000, Valentin Vidic wrote:
> Fixes checkpatch.pl warnings:
> 
>   CHECK: No space is necessary after a cast

Please always try to improve the code rather
than shutup checkpatch warnings.

> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
[]
> @@ -204,7 +204,7 @@ s32 fat_alloc_cluster(struct super_block *sb, s32 num_alloc,
>  
>  			if ((--num_alloc) == 0) {
>  				p_fs->clu_srch_ptr = new_clu;
> -				if (p_fs->used_clusters != (u32) ~0)
> +				if (p_fs->used_clusters != (u32)~0)

Probably better as UINT_MAX
etc...

> @@ -3678,7 +3678,7 @@ static int parse_options(char *options, int silent, int *debug,
>  	opts->fs_uid = current_uid();
>  	opts->fs_gid = current_gid();
>  	opts->fs_fmask = opts->fs_dmask = current->fs->umask;
> -	opts->allow_utime = (unsigned short) -1;
> +	opts->allow_utime = (unsigned short)-1;

and maybe U16_MAX

> @@ -3770,7 +3770,7 @@ static int parse_options(char *options, int silent, int *debug,
>  	}
>  
>  out:
> -	if (opts->allow_utime == (unsigned short) -1)
> +	if (opts->allow_utime == (unsigned short)-1)
>  		opts->allow_utime = ~opts->fs_dmask & 0022;
>  
>  	return 0;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
