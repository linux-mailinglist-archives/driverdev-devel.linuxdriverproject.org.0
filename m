Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFBCDE10A
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Oct 2019 01:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E21832047D;
	Sun, 20 Oct 2019 23:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4E3c8OhD8PnB; Sun, 20 Oct 2019 23:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A64220429;
	Sun, 20 Oct 2019 23:12:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C76A1BF3DA
 for <devel@linuxdriverproject.org>; Sun, 20 Oct 2019 23:12:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 196A085A7D
 for <devel@linuxdriverproject.org>; Sun, 20 Oct 2019 23:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttcD3J0i5gvT for <devel@linuxdriverproject.org>;
 Sun, 20 Oct 2019 23:12:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0121.hostedemail.com
 [216.40.44.121])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D3368544C
 for <devel@driverdev.osuosl.org>; Sun, 20 Oct 2019 23:12:39 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 0657018034AB1
 for <devel@driverdev.osuosl.org>; Sun, 20 Oct 2019 19:36:55 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 9D95852C6;
 Sun, 20 Oct 2019 19:36:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:4605:5007:6119:7556:7903:8957:10004:10400:10450:10455:10848:11026:11232:11658:11914:12043:12297:12555:12663:12679:12740:12760:12895:13095:13137:13141:13150:13153:13161:13228:13229:13230:13231:13439:14039:14093:14096:14097:14659:14721:19904:19999:21080:21433:21450:21451:21611:21627:21819:30012:30022:30054:30070:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: place89_1ebe01dc52621
X-Filterd-Recvd-Size: 3658
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Sun, 20 Oct 2019 19:36:51 +0000 (UTC)
Message-ID: <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Julia Lawall
 <julia.lawall@lip6.fr>
Date: Sun, 20 Oct 2019 12:36:50 -0700
In-Reply-To: <20191020191759.GJ24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
 <20191019180514.GI24678@kadam>
 <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
 <20191020191759.GJ24678@kadam>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2019-10-20 at 22:17 +0300, Dan Carpenter wrote:
> On Sat, Oct 19, 2019 at 01:02:31PM -0700, Joe Perches wrote:
> > diff -u -p a/rtl8723bs/core/rtw_mlme_ext.c b/rtl8723bs/core/rtw_mlme_ext.c
[]
> > @@ -1132,7 +1132,7 @@ unsigned int OnAuthClient(struct adapter
> >  				goto authclnt_fail;
> >  			}
> >  
> > -			memcpy((void *)(pmlmeinfo->chg_txt), (void *)(p + 2), len);
> > +			memcpy((void *)(pmlmeinfo->chg_txt), (p + 2), len);
> 
> I wonder why it didn't remove the first void cast?

drivers/staging/rtl8723bs/include/sta_info.h:151:       unsigned char chg_txt[128];

I think the cocci transforms for an array do not match a pointer
and I wrote the cocci script without much care.

btw;

There's probably a generic cocci mechanism to check function
prototypes and then remove uses of unnecessary void pointer casts
in function calls.  I'm not going to try to figure out that syntax.

> [ The rest of the email is bonus comments for outreachy developers ].
> 
> And someone needs to check the final patch probably to remove the extra
> parentheses around "(p + 2)".  Those were necessary when for the cast
> but not required after the cast is gone.
> 
> >  			pmlmeinfo->auth_seq = 3;
> >  			issue_auth(padapter, NULL, 0);
> >  			set_link_timer(pmlmeext, REAUTH_TO);
> 
> It's sort of tricky to know what "one thing per patch means".

It seems somewhat arbitrary and based on Greg's understanding
of the experience of the patch submitter and also the language
of the potential commit message.

> -       memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> +       memset((&(pHTInfo->SelfHTCap)), 0,
>                 sizeof(pHTInfo->SelfHTCap));
> 
> Here the parentheses were never related to the cast so we should leave
> them as is.  In other words, in the first example, if we didn't remove
> the cast that would be "half a thing per patch" and in the second
> example that would be "two things in one patch".

For style patches, it's frequently easier and better to 
do all the code transformation at once.

IMO the last should be:

	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap));

like it is here:

drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c:1056:       memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap));

btw2:

I really dislike all the code inconsistencies and
unnecessary code duplication with miscellaneous changes
in the rtl staging drivers....

Horrid stuff.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
