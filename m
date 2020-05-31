Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A51E11E9A7A
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 23:15:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02FFE85F45;
	Sun, 31 May 2020 21:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 42y3R9-j56Yu; Sun, 31 May 2020 21:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14BF28480D;
	Sun, 31 May 2020 21:15:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3495D1BF37A
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 21:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3116E867C5
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 21:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bySJK75Fqk9L for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 21:15:39 +0000 (UTC)
X-Greylist: delayed 02:59:59 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0151.hostedemail.com
 [216.40.44.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F8A986767
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 21:15:39 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 4EEBF8123E32
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 17:37:06 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 7F546837F253;
 Sun, 31 May 2020 17:37:03 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:2904:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:3873:3874:4321:5007:6119:6742:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12297:12438:12740:12760:12895:13019:13069:13311:13357:13439:14659:14721:21080:21627:21990:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: cup30_260de1426d76
X-Filterd-Recvd-Size: 2605
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf02.hostedemail.com (Postfix) with ESMTPA;
 Sun, 31 May 2020 17:37:01 +0000 (UTC)
Message-ID: <24e0f572511724ea338f8802fde2ad3a359ea8d5.camel@perches.com>
Subject: Re: [PATCH] staging:r8723bs: remove wrappers around skb_clone()
From: Joe Perches <joe@perches.com>
To: Ivan Safonov <insafonov@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Sun, 31 May 2020 10:36:59 -0700
In-Reply-To: <8e4df253-e021-6c29-96ab-24eed9b61eb2@gmail.com>
References: <20200531160843.39120-1-insafonov@gmail.com>
 <7bf8612d3708b811e026daec5c7a1486c5954905.camel@perches.com>
 <8e4df253-e021-6c29-96ab-24eed9b61eb2@gmail.com>
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
Cc: devel@driverdev.osuosl.org, R Veera Kumar <vkor@vkten.in>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Lukasz Szczesny <luk@wybcz.pl>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>, Pascal Terjan <pterjan@google.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-05-31 at 20:28 +0300, Ivan Safonov wrote:
> On 5/31/20 7:15 PM, Joe Perches wrote:
> > On Sun, 2020-05-31 at 19:08 +0300, Ivan Safonov wrote:
> > > Wrappers around skb_clone() do not simplify the driver code.
> > []
> > > -inline struct sk_buff *_rtw_skb_clone(struct sk_buff *skb)
> > > -{
> > > -	return skb_clone(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
> > > -}
> > > -
> > []
> > > diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
> > []
> > > @@ -110,7 +110,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
> > >   			if (memcmp(pattrib->dst, myid(&padapter->eeprompriv), ETH_ALEN)) {
> > >   				if (bmcast) {
> > >   					psta = rtw_get_bcmc_stainfo(padapter);
> > > -					pskb2 = rtw_skb_clone(pkt);
> > > +					pskb2 = skb_clone(pkt, GFP_ATOMIC);
> > 
> > Why make every clone allocation GFP_ATOMIC ?
> 
> The rtw_os_recv_indicate_pkt() is always called from an interrupt handler.

It'd be better to indicate you know that in the changelog
as the subject and changelog just shows removing wrappers
and the patch code does not agree with that.



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
