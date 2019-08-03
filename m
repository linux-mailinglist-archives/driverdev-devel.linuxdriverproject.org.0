Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66100807FD
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 21:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 697DC875B7;
	Sat,  3 Aug 2019 19:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1wRItDu-uYA4; Sat,  3 Aug 2019 19:09:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5350787587;
	Sat,  3 Aug 2019 19:09:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCF61BF31B
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 19:09:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 89255204B0
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 19:09:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kI0vXw04SKO6 for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 19:09:27 +0000 (UTC)
X-Greylist: delayed 01:00:01 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
 [216.40.44.214])
 by silver.osuosl.org (Postfix) with ESMTPS id D83F920419
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 19:09:27 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id ACD1C18018750
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 17:52:09 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id F006E837F24D;
 Sat,  3 Aug 2019 17:52:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3868:3871:3872:4250:4321:4605:5007:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12297:12438:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:14721:21080:21627:21740:30054:30080:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:27,
 LUA_SUMMARY:none
X-HE-Tag: snake40_699c1332f931f
X-Filterd-Recvd-Size: 2725
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf09.hostedemail.com (Postfix) with ESMTPA;
 Sat,  3 Aug 2019 17:52:05 +0000 (UTC)
Message-ID: <774ade692f5e64ab1f4fc7b35b9eeae69e11cf71.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8192e: Make use kmemdup
From: Joe Perches <joe@perches.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Himadri Pandya <himadri18.07@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, Michiel Schuurmans
 <michielschuurmans@gmail.com>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Sat, 03 Aug 2019 10:52:04 -0700
In-Reply-To: <20190803174038.GA10454@hari-Inspiron-1545>
References: <20190803174038.GA10454@hari-Inspiron-1545>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-08-03 at 23:10 +0530, Hariprasad Kelam wrote:
> As kmemdup API does kmalloc + memcpy . We can make use of it instead of
> calling kmalloc and memcpy independetly.
[]
> diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
[]
> @@ -1382,10 +1382,8 @@ rtllib_association_req(struct rtllib_network *beacon,
>  	ieee->assocreq_ies = NULL;
>  	ies = &(hdr->info_element[0].id);
>  	ieee->assocreq_ies_len = (skb->data + skb->len) - ies;
> -	ieee->assocreq_ies = kmalloc(ieee->assocreq_ies_len, GFP_ATOMIC);
> -	if (ieee->assocreq_ies)
> -		memcpy(ieee->assocreq_ies, ies, ieee->assocreq_ies_len);
> -	else {
> +	ieee->assocreq_ies = kmemdup(ies, ieee->assocreq_ies_len, GFP_ATOMIC);
> +	if (!ieee->assocreq_ies) {
>  		netdev_info(ieee->dev,
>  			    "%s()Warning: can't alloc memory for assocreq_ies\n",
>  			    __func__);
> @@ -2259,12 +2257,10 @@ rtllib_rx_assoc_resp(struct rtllib_device *ieee, struct sk_buff *skb,
>  			ieee->assocresp_ies = NULL;
>  			ies = &(assoc_resp->info_element[0].id);
>  			ieee->assocresp_ies_len = (skb->data + skb->len) - ies;
> -			ieee->assocresp_ies = kmalloc(ieee->assocresp_ies_len,
> +			ieee->assocresp_ies = kmemdup(ies,
> +						      ieee->assocresp_ies_len,
>  						      GFP_ATOMIC);
> -			if (ieee->assocresp_ies)
> -				memcpy(ieee->assocresp_ies, ies,
> -				       ieee->assocresp_ies_len);
> -			else {
> +			if (!ieee->assocresp_ies) {
>  				netdev_info(ieee->dev,
>  					    "%s()Warning: can't alloc memory for assocresp_ies\n",
>  					    __func__);

Could also remove the netdev_info() uses for allocation failures.
These are redundant as a dump_stack() is already done when OOM.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
