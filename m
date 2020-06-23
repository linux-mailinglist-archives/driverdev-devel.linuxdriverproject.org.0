Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 470392066FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 00:11:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF96787ECF;
	Tue, 23 Jun 2020 22:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oO7U-aEOXAOh; Tue, 23 Jun 2020 22:11:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC1B887D58;
	Tue, 23 Jun 2020 22:11:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4AA1BF48B
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 22:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AEF388353
 for <devel@linuxdriverproject.org>; Tue, 23 Jun 2020 22:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R+JyZBxEKRYG for <devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 22:11:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0230.hostedemail.com
 [216.40.44.230])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 00CCB8834D
 for <devel@driverdev.osuosl.org>; Tue, 23 Jun 2020 22:11:44 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 93F1F100E7B40;
 Tue, 23 Jun 2020 22:11:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:4321:5007:7576:10004:10400:10848:11026:11232:11657:11658:11914:12043:12297:12438:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21627:21972:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: alley94_42139ce26e3f
X-Filterd-Recvd-Size: 1825
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Tue, 23 Jun 2020 22:11:40 +0000 (UTC)
Message-ID: <25a963df43bfa4a1099b6813bb35d9c5a6184578.camel@perches.com>
Subject: Re: [PATCH 03/50] staging: mmal-vchiq: Avoid use of bool in structures
From: Joe Perches <joe@perches.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, 
 gregkh@linuxfoundation.org
Date: Tue, 23 Jun 2020 15:11:39 -0700
In-Reply-To: <20200623164235.29566-4-nsaenzjulienne@suse.de>
References: <20200623164235.29566-1-nsaenzjulienne@suse.de>
 <20200623164235.29566-4-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.36.2-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, Jacopo Mondi <jacopo@jmondi.org>,
 kernel-list@raspberrypi.com, linux-kernel@vger.kernel.org,
 laurent.pinchart@ideasonboard.com,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-06-23 at 18:41 +0200, Nicolas Saenz Julienne wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.org>
> 
> Fixes up a checkpatch error "Avoid using bool structure members
> because of possible alignment issues".
[]
> diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
[]
> @@ -1754,7 +1754,7 @@ int vchiq_mmal_component_enable(struct vchiq_mmal_instance *instance,
>  
>  	ret = enable_component(instance, component);
>  	if (ret == 0)
> -		component->enabled = true;
> +		component->enabled = 1;

This change does not match the commit description.

Also, checkpatch does not emit a warning here.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
