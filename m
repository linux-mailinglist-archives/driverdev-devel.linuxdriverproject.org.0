Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0914185142
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 22:39:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC774879E1;
	Fri, 13 Mar 2020 21:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OoldPrBx5Tx3; Fri, 13 Mar 2020 21:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DAC787729;
	Fri, 13 Mar 2020 21:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6211BF578
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 21:38:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97DE287736
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 21:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MHVT9ppaikG for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 21:38:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0196.hostedemail.com
 [216.40.44.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81BEE87729
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 21:38:55 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id C746C18037D51
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 21:23:44 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 42BE018017528;
 Fri, 13 Mar 2020 21:23:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:968:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2729:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:4225:4250:4321:5007:7903:10004:10400:10848:11026:11232:11657:11658:11914:12043:12048:12297:12679:12740:12760:12895:13069:13255:13311:13357:13439:13972:14096:14097:14659:14721:21080:21627:21990:30054:30056:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: magic84_5a52c2e86bc2d
X-Filterd-Recvd-Size: 2535
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf11.hostedemail.com (Postfix) with ESMTPA;
 Fri, 13 Mar 2020 21:23:40 +0000 (UTC)
Message-ID: <25a1aca2c993ecb70ba7cd9c9e38bce9170a98b0.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723bs: rtw_mlme:
 Remove unnecessary conditions
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Fri, 13 Mar 2020 14:21:57 -0700
In-Reply-To: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
References: <20200313102912.17218-1-shreeya.patel23498@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-03-13 at 15:59 +0530, Shreeya Patel wrote:
> Remove unnecessary if and else conditions since both are leading to the
> initialization of "phtpriv->ampdu_enable" with the same value.
> Also, remove the unnecessary else-if condition since it does nothing.
[]
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
[]
> @@ -2772,16 +2772,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  
>  	/* maybe needs check if ap supports rx ampdu. */
>  	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
> -		if (pregistrypriv->wifi_spec == 1) {
> -			/* remove this part because testbed AP should disable RX AMPDU */
> -			/* phtpriv->ampdu_enable = false; */
> -			phtpriv->ampdu_enable = true;
> -		} else {
> -			phtpriv->ampdu_enable = true;
> -		}
> -	} else if (pregistrypriv->ampdu_enable == 2) {
> -		/* remove this part because testbed AP should disable RX AMPDU */
> -		/* phtpriv->ampdu_enable = true; */
> +		phtpriv->ampdu_enable = true;

This isn't the same test.

This could be:
 	if ((!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1)) ||
	    pregistrypriv->ampdu_enable == 2)
		phtpriv->ampdu_enable = true;

Though it is probably more sensible to just set
phtpriv->ampdu_enable without testing whether or
not it's already set:

	if (pregistrypriv->ampdu_enable == 1 ||
	    pregistrypriv->ampdu_enable == 2)
		phtpriv->ampdu_enable = true;


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
