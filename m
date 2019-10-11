Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0DDD4ABF
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 01:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B46125D1F;
	Fri, 11 Oct 2019 23:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fl4jkRL7w8jN; Fri, 11 Oct 2019 23:11:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EE78E204F4;
	Fri, 11 Oct 2019 23:11:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 527001BF2FA
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 23:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EAF887D9E
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 23:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fSAut6sRAi3p for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 23:11:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 150F387C2C
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 23:11:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 3783D18021445
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 22:32:29 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id E131418016C6C;
 Fri, 11 Oct 2019 22:32:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:4321:4605:5007:6742:7903:8660:10004:10400:10471:11026:11232:11473:11657:11658:11914:12043:12295:12297:12438:12740:12760:12895:13069:13148:13160:13229:13230:13255:13311:13357:13439:14096:14097:14659:14721:21080:21627:21774:21796:21939:30012:30029:30036:30054:30090:30091,
 0,
 RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: owl40_14d93818d4721
X-Filterd-Recvd-Size: 2752
Received: from XPS-9350.home (unknown [47.151.152.152])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Fri, 11 Oct 2019 22:32:23 +0000 (UTC)
Message-ID: <28ed468bc58c0d0e92f459b45d8e43cd3d1458b2.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix warnings
 of lines should not end with open parenthesis
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Jules Irenge <jbi.octave@gmail.com>
Date: Fri, 11 Oct 2019 15:32:22 -0700
In-Reply-To: <alpine.DEB.2.21.1910112320550.3284@hadrien>
References: <20191011211637.19311-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910112320550.3284@hadrien>
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 mchehab+samsung@kernel.org, outreachy-kernel@googlegroups.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-10-11 at 23:23 +0200, Julia Lawall wrote:
> On Fri, 11 Oct 2019, Jules Irenge wrote:
> > Fix warning of lines should not end with open parenthesis.
> > Issue detected by checkpatch tool.
[]
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
[]
> > @@ -337,9 +337,8 @@ static void buffer_cb(struct vchiq_mmal_instance *instance,
> >  			if (is_capturing(dev)) {
> >  				v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> >  					 "Grab another frame");
> > -				vchiq_mmal_port_parameter_set(
> > -					instance,
> > -					dev->capture.camera_port,
> > +			vchiq_mmal_port_parameter_set(instance,
> > +						      dev->capture.camera_port,
> >  					MMAL_PARAMETER_CAPTURE,
> >  					&dev->capture.frame_count,
> >  					sizeof(dev->capture.frame_count));
> 
> You can't reduce the indentation on the function call.  It has to stay
> clearly in the if branch.
> 
> If you adjust the indentation of some of the arguments, you have to do so
> to all of the arguments.
> 
> Similar issues arise below.  There may be no way to make some of the calls
> look nice without a more severe reorganization of the code.

My suggestion would be to shorten the vchiq_mmal_port_parameter_set
function name (29 chars is just too long) and pass dev instead of
dev->instance as the first argument to this function.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
