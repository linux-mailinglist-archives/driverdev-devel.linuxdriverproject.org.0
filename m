Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B34E188A1C
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 17:24:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E49288468;
	Tue, 17 Mar 2020 16:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v-KQkX1s5Jax; Tue, 17 Mar 2020 16:23:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A76A87B7D;
	Tue, 17 Mar 2020 16:23:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DC131BF35F
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 16:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79E7A203ED
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 16:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aDdlk2bZNC5W for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 16:23:52 +0000 (UTC)
X-Greylist: delayed 01:17:32 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0124.hostedemail.com
 [216.40.44.124])
 by silver.osuosl.org (Postfix) with ESMTPS id A02BC20134
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 16:23:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 264EB18018A0C
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 15:06:19 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 97CE318224D99;
 Tue, 17 Mar 2020 15:06:16 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3622:3743:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:5007:7514:8957:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12679:12740:12760:12895:13439:14093:14096:14097:14181:14659:14721:21080:21324:21451:21627:21990:30030:30045:30054:30062:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:11, LUA_SUMMARY:none
X-HE-Tag: thumb35_53bba392fd11c
X-Filterd-Recvd-Size: 4244
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Tue, 17 Mar 2020 15:06:15 +0000 (UTC)
Message-ID: <ee182711405229e85b5b5a44c683d5a2609b5ba3.camel@perches.com>
Subject: Re: [PATCH 2/2] staging: rtl8192u: Corrects 'Avoid CamelCase' for
 variables
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Camylla Goncalves Cantanheide
 <c.cantanheide@gmail.com>
Date: Tue, 17 Mar 2020 08:04:26 -0700
In-Reply-To: <20200317134329.GC4650@kadam>
References: <20200317085130.21213-1-c.cantanheide@gmail.com>
 <20200317085130.21213-2-c.cantanheide@gmail.com>
 <20200317134329.GC4650@kadam>
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
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-17 at 16:43 +0300, Dan Carpenter wrote:
> On Tue, Mar 17, 2020 at 08:51:30AM +0000, Camylla Goncalves Cantanheide wrote:
> > The variables of function setKey triggered a 'Avoid CamelCase'
> > warning from checkpatch.pl. This patch renames these
> > variables to correct this warning.
> > 
> > Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8192U_core.c | 52 +++++++++++++-------------
> >  1 file changed, 26 insertions(+), 26 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> > index 93a15d57e..fcfb9024a 100644
> > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > @@ -4877,50 +4877,50 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
> >  	write_nic_byte(dev, SECR,  SECR_value);
> >  }
> >  
> > -void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
> > -	    u8 *MacAddr, u8 DefaultKey, u32 *KeyContent)
> > +void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
> > +	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
> >  {
> > -	u32 TargetCommand = 0;
> > -	u32 TargetContent = 0;
> > -	u16 usConfig = 0;
> > +	u32 target_command = 0;
> > +	u32 target_content = 0;
> > +	u16 us_config = 0;
> 
> Use these renames to think deeply about naming.
> 
> I don't like "entryno".  I would prefer "entry_no".  Use the same
> underscore for spaces rule for key_index, mac_addr and all the rest.  Is
> "key_idx" better or "key_index"?
> 
> What added value or meaning does the "target_" part of "target_command"
> add?  Use "cmd" instead of "command".  "target_command" and
> "target_content" are the same length and mostly the same letters.  Avoid
> that sort of thing because it makes it hard to read at a glance.  The
> two get swapped in your head.
> 
> What does the "us_" mean in us_config?  Is it microsecond as in usec?
> Is it United states?  Actually it turns out it probably means "unsigned
> short".  Never make the variable names show the type.  If you have a
> good editor you can just hover the mouse over a variable to see the
> type.  Or if you're using vim like me, then you have to use '*' to
> highlight the variable and scroll to the top of the function.  Either
> way, never use "us_" to mean unsigned short.
> 
> What does the "config" part of "us_config" mean?  What does the "content"
> part of "target_content" mean?  Always think about that.  Variable names
> are hard and maybe "config" and "content" are clear enough.  But at
> think about it, and consider all the options.
> 
> Anyway, the reason that this patch needs to be re-written is because
> we want underscores in place of spaces for "key_type" and because
> "us_config" is against the rules.  The rest is just something to
> consider and if you find better names, then go with that but if you
> don't just fix those two things and resend.

What Dan said and:

Make sure to successfully compile the source files the patch
modifies before sending the patch.

Renaming function arguments and not renaming the uses of the
arguments in the function is not good.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
