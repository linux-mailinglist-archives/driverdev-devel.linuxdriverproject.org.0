Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7FF306317
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 19:18:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D68CB86151;
	Wed, 27 Jan 2021 18:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9y2zqUoV4U4L; Wed, 27 Jan 2021 18:18:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9E4C860CF;
	Wed, 27 Jan 2021 18:18:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8261BF4D6
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 18:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 056CA860CF
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 18:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1pz8-zLCXAV for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 18:18:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0066.hostedemail.com
 [216.40.44.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2975985F85
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 18:18:30 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id C9CC71801D00E
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 17:43:02 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 5D03B181D3026;
 Wed, 27 Jan 2021 17:43:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:967:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4823:5007:6742:7514:7652:9025:10004:10400:10848:11232:11658:11783:11914:12043:12297:12555:12663:12740:12895:12986:13069:13311:13357:13439:13846:13894:14181:14659:14721:14777:21080:21433:21627:21819:30054:30083:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: crowd66_500673e27598
X-Filterd-Recvd-Size: 2238
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Wed, 27 Jan 2021 17:42:57 +0000 (UTC)
Message-ID: <3f7b25d21c10a4dc7da5d507d6d6a6a5bc93447b.camel@perches.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Greg KH
 <gregkh@linuxfoundation.org>
Date: Wed, 27 Jan 2021 09:42:56 -0800
In-Reply-To: <20210127144946.GF2696@kadam>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <YBFv+12xfsoxacDb@kroah.com> <20210127220809.000026fb@gmail.com>
 <YBF08Xf7qaZx3YZ1@kroah.com> <20210127221708.00002568@gmail.com>
 <YBF30EEUkhEMY5ti@kroah.com> <20210127144946.GF2696@kadam>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, carlis <zhangxuezhi3@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2021-01-27 at 17:49 +0300, Dan Carpenter wrote:
> On Wed, Jan 27, 2021 at 03:25:20PM +0100, Greg KH wrote:

> > Andy and Joe, there's something wrong here that is missing the fact that
> > a line is being indented with spaces and not tabs in the patch
> > at https://lore.kernel.org/r/1611754972-151016-1-git-send-email-zhangxu=
ezhi3@gmail.com
> > =

> > Any ideas what broke?
> =

> =A0=A0=A0=A0/*Tearing Effect Line On*/
> =

> Comments are the exception to the "no spaces at the start of a line"
> rule.  I was expecting that the kbuild-bot would send a Smatch warning
> for inconsistent indenting, but comments are not counted there either.
> =

> I'm sort of surprised that we don't have checkpatch rule about the
> missing space characters.  It should be: "/* Tearing Effect Line On */".

You could always write your own rule...

checkpatch doesn't care if a comment looks like

    /********************/
or
    /*foobarfoobarfoobar*/


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
