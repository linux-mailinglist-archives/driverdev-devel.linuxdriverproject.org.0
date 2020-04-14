Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CD01A8413
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 18:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F6E0833C6;
	Tue, 14 Apr 2020 16:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id masc9F0PApxl; Tue, 14 Apr 2020 16:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E1D281B7D;
	Tue, 14 Apr 2020 16:03:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D51F61BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 16:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D0A3381B87
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 16:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNXe0sTG90Hw for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 16:03:34 +0000 (UTC)
X-Greylist: delayed 18:29:46 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0213.hostedemail.com
 [216.40.44.213])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8BD381B7D
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 16:03:34 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 4BDEE1802FE52
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 16:03:32 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 7AA5E18016BAA;
 Tue, 14 Apr 2020 16:03:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1461:1515:1516:1518:1535:1544:1593:1594:1605:1711:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2693:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4605:5007:6119:7514:7903:8957:10004:10226:10848:11026:11232:11233:11473:11658:11876:11914:12043:12296:12297:12438:12555:12663:12740:12760:12895:12986:13019:13095:13439:14181:14659:14721:21080:21324:21433:21451:21524:21525:21627:21990:30003:30012:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: hope66_1e399ae4d9553
X-Filterd-Recvd-Size: 5838
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Tue, 14 Apr 2020 16:03:27 +0000 (UTC)
Message-ID: <d3725a08531898adc1bfb1e6d875888c434b42d6.camel@perches.com>
Subject: Re: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Camylla Goncalves Cantanheide
 <c.cantanheide@gmail.com>
Date: Tue, 14 Apr 2020 09:01:18 -0700
In-Reply-To: <20200414123326.GG1163@kadam>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
 <20200414123326.GG1163@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 nishkadg.linux@gmail.com, navid.emamdoost@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-04-14 at 15:33 +0300, Dan Carpenter wrote:
> On Mon, Apr 13, 2020 at 03:01:28AM +0000, Camylla Goncalves Cantanheide wrote:
> > Changes of the local variable value and
> > modification in the seletive repetition structure.
> > 
> 
> This changelog isn't totally clear why you're doing this.  Just say:
> "I am refactorying setKey() to make it more clear.  I have unrolled the
> first two iterations through the loop.  This patch will not change
> runtime."
> 
> So long as it's clear what you're trying to do and why, that's the
> important thing with a commit message.
> 
> > Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8192U_core.c | 52 ++++++++++++--------------
> >  1 file changed, 24 insertions(+), 28 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> > index 9b8d85a4855d..87c02aee3854 100644
> > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > @@ -4880,7 +4880,7 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
> >  void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
> >  	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
> >  {
> > -	u32 target_command = 0;
> > +	u32 target_command = CAM_CONTENT_COUNT * entryno |  BIT(31) | BIT(16);
> >  	u32 target_content = 0;
> >  	u16 us_config = 0;
> >  	u8 i;
> > @@ -4890,39 +4890,35 @@ void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
> >  
> >  	RT_TRACE(COMP_SEC,
> >  		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
> > -        	 __func__, dev, entryno, keyindex, keytype, macaddr);
> > +		 __func__, dev, entryno, keyindex, keytype, macaddr);
> 
> Do this white space change in a separate patch.
> 
> >  
> >  	if (defaultkey)
> >  		us_config |= BIT(15) | (keytype << 2);
> >  	else
> >  		us_config |= BIT(15) | (keytype << 2) | keyindex;
> >  
> > -	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
> > -		target_command  = i + CAM_CONTENT_COUNT * entryno;
> > -		target_command |= BIT(31) | BIT(16);
> > -
> > -		if (i == 0) { /* MAC|Config */
> > -			target_content = (u32)(*(macaddr + 0)) << 16 |
> > -					(u32)(*(macaddr + 1)) << 24 |
> > -					(u32)us_config;
> > -
> > -			write_nic_dword(dev, WCAMI, target_content);
> > -			write_nic_dword(dev, RWCAM, target_command);
> > -		} else if (i == 1) { /* MAC */
> > -			target_content = (u32)(*(macaddr + 2))	 |
> > -					(u32)(*(macaddr + 3)) <<  8 |
> > -					(u32)(*(macaddr + 4)) << 16 |
> > -					(u32)(*(macaddr + 5)) << 24;
> > -			write_nic_dword(dev, WCAMI, target_content);
> > -			write_nic_dword(dev, RWCAM, target_command);
> > -		} else {
> > -			/* Key Material */
> > -			if (keycontent) {
> > -				write_nic_dword(dev, WCAMI,
> > -						*(keycontent + i - 2));
> > -				write_nic_dword(dev, RWCAM, target_command);
> > -                	}
> > -		}
> > +	target_content = macaddr[0] << 16 |
> > +			 macaddr[0] << 24 |
> > +			(u32)us_config;
> > +
> > +	write_nic_dword(dev, WCAMI, target_content);
> > +	write_nic_dword(dev, RWCAM, target_command++);
> > +
> > +	/* MAC */
> > +	target_content = macaddr[2]	  |
> > +			 macaddr[3] <<  8 |
> > +			 macaddr[4] << 16 |
> > +			 macaddr[5] << 24;
> > +	write_nic_dword(dev, WCAMI, target_content);
> > +	write_nic_dword(dev, RWCAM, target_command++);
> > +
> > +	/* Key Material */
> > +	if (!keycontent)
> > +		return;
> > +
> > +	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
> > +		write_nic_dword(dev, WCAMI, *keycontent++);
> 
> This code was wrong in the original as well, but now that I see the bug
> let's fix it.  CAM_CONTENT_COUNT is 8.  8 - 2 = 6.  We are writing 6
> u32 variables to write_nic_dword().  But the *keycontent buffer only has
> 4 u32 variables so it is a buffer overflow.

Did you find the overflow with smatch?

Perhaps this but it'll write 0's for the
last couple cam entries instead of random
address values.

Dunno what effect that'd have.  Likely none.

---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 100532..923c0c 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -733,7 +733,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
 	{
 		u8 broadcast_addr[6] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
 		u8 zero[6] = {0};
-		u32 key[4] = {0};
+		u32 key[6] = {0};
 		struct iw_encode_ext *ext = (struct iw_encode_ext *)extra;
 		struct iw_point *encoding = &wrqu->encoding;
 		u8 idx = 0, alg = 0, group = 0;



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
