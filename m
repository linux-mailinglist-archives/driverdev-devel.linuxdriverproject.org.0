Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3281F1A917D
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 05:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD64786E9E;
	Wed, 15 Apr 2020 03:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M0dgS38IR2WO; Wed, 15 Apr 2020 03:17:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02D3486DEA;
	Wed, 15 Apr 2020 03:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A46FB1BF9B4
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 03:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93B77204BE
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 03:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gwojFqJbA0zy for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 03:17:10 +0000 (UTC)
X-Greylist: delayed 00:05:47 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
 [216.40.44.214])
 by silver.osuosl.org (Postfix) with ESMTPS id 73010203A7
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 03:17:10 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 3E0DF1803DDBA
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 03:11:22 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 66338181D341E;
 Wed, 15 Apr 2020 03:11:19 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:1801:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3868:4321:4605:5007:10004:10400:10848:11026:11232:11658:11914:12043:12297:12740:12895:13019:13069:13311:13357:13439:13894:14181:14659:14721:21080:21627:30054:30064:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: floor22_286eb4526923a
X-Filterd-Recvd-Size: 2068
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Wed, 15 Apr 2020 03:11:17 +0000 (UTC)
Message-ID: <414a17ea0978cf65020d9be84f257fe85edc62ab.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
From: Joe Perches <joe@perches.com>
To: Camylla Cantanheide <c.cantanheide@gmail.com>, Dan Carpenter
 <dan.carpenter@oracle.com>
Date: Tue, 14 Apr 2020 20:09:07 -0700
In-Reply-To: <CAG3pEr+huVACoP7sTMALYfE46dc+D8DdGPF0ky6EShd4eXD9eg@mail.gmail.com>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
 <20200414123326.GG1163@kadam>
 <CAG3pEr+huVACoP7sTMALYfE46dc+D8DdGPF0ky6EShd4eXD9eg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 nishkadg.linux@gmail.com, navid.emamdoost@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-04-14 at 22:18 -0300, Camylla Cantanheide wrote:
> Em ter., 14 de abr. de 2020 =E0s 09:35, Dan Carpenter <
> dan.carpenter@oracle.com> escreveu:
[]
> > > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
[]
> > > +     target_content =3D macaddr[0] << 16 |
> > > +                      macaddr[0] << 24 |
> > > +                     (u32)us_config;

And Camylla, this statement should be

+     target_content =3D macaddr[0] << 16 |
+                      macaddr[1] << 24 |
+                     (u32)us_config;

Not a repeated [0]

> > > +
> > > +     write_nic_dword(dev, WCAMI, target_content);
> > > +     write_nic_dword(dev, RWCAM, target_command++);
> > > +
> > > +     /* MAC */
> > > +     target_content =3D macaddr[2]       |
> > > +                      macaddr[3] <<  8 |
> > > +                      macaddr[4] << 16 |
> > > +                      macaddr[5] << 24;



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
