Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DC42DDC6F
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Dec 2020 01:38:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BCC6D2D8B7;
	Fri, 18 Dec 2020 00:38:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2SrLfZ49caEw; Fri, 18 Dec 2020 00:38:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD05E20C41;
	Fri, 18 Dec 2020 00:38:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 988631BF9C6
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 00:38:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 94A2D8789F
 for <devel@linuxdriverproject.org>; Fri, 18 Dec 2020 00:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MM+jXuDGypf8 for <devel@linuxdriverproject.org>;
 Fri, 18 Dec 2020 00:38:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0106.hostedemail.com
 [216.40.44.106])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B18048782A
 for <devel@driverdev.osuosl.org>; Fri, 18 Dec 2020 00:38:00 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id EF7E71813ABBF
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 23:58:21 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 6BBEA181D337B;
 Thu, 17 Dec 2020 23:58:19 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:857:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3866:3872:4321:5007:8879:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12683:12740:12895:13069:13311:13357:13439:13894:14110:14659:14721:21080:21627:21773:21796:30036:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: limit53_2f0fb3827438
X-Filterd-Recvd-Size: 1969
Received: from XPS-9350.home (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf10.hostedemail.com (Postfix) with ESMTPA;
 Thu, 17 Dec 2020 23:58:17 +0000 (UTC)
Message-ID: <04c331f6bfce57c253cb86208ebd28f6363e04c0.camel@perches.com>
Subject: Re: [PATCH] staging: most: video: fixed a parentheses coding style
 issue.
From: Joe Perches <joe@perches.com>
To: Daniel West <daniel.west.dev@gmail.com>, gregkh@linuxfoundation.org
Date: Thu, 17 Dec 2020 15:58:16 -0800
In-Reply-To: <20201217234501.351725-1-daniel.west.dev@gmail.com>
References: <20201217234501.351725-1-daniel.west.dev@gmail.com>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, mchehab+huawei@kernel.org, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, hverkuil-cisco@xs4all.nl,
 christian.gromm@microchip.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-12-17 at 15:45 -0800, Daniel West wrote:
> Fixed a coding style issue.

It may pass checkpatch without warning, but it's uncommon kernel coding sty=
le.

> diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/vi=
deo/video.c
[]
> @@ -365,8 +365,8 @@ static const struct video_device comp_videodev_templa=
te =3D {
> =A0
> =

> =A0/*********************************************************************=
*****/
> =A0
> =

> -static struct most_video_dev *get_comp_dev(
> -	struct most_interface *iface, int channel_idx)
> +static struct most_video_dev *get_comp_dev
> +	(struct most_interface *iface, int channel_idx)

This would be better using any of:

(most common)

static struct most_video_dev *get_comp_dev(struct most_interface *iface,
					   int channel_idx)

or (less common)

static struct most_video_dev *
get_comp_dev(struct most_interface *iface, int channel_idx)

or (> 80 columns)

static struct most_video_dev *get_comp_dev(struct most_interface *iface, in=
t channel_idx)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
