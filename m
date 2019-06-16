Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3172A4761B
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 19:39:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 695CC20001;
	Sun, 16 Jun 2019 17:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Zp3mmWJ8y+L; Sun, 16 Jun 2019 17:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7AED7203AB;
	Sun, 16 Jun 2019 17:39:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 874BB1BF5A8
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 17:39:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 848DB84E6B
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 17:39:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huRP8_QYxyO2 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 17:39:24 +0000 (UTC)
X-Greylist: delayed 09:26:07 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0109.hostedemail.com
 [216.40.44.109])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4B06E84C2C
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 17:39:24 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id E37811800207A
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 08:13:17 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 43DCC181D3368;
 Sun, 16 Jun 2019 08:13:15 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3872:3873:3874:4321:5007:10004:10400:10471:10848:11026:11232:11473:11657:11658:11914:12043:12296:12438:12555:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14096:14097:14659:14721:21080:21627:30012:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: print89_735c9b2327048
X-Filterd-Recvd-Size: 2424
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Sun, 16 Jun 2019 08:13:12 +0000 (UTC)
Message-ID: <1d668acbce4cc9759cc940f56016dc9437df5441.camel@perches.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: Resolve checkpatch error "that
 open brace { should be on the previous line" in the rtl8723 driver
From: Joe Perches <joe@perches.com>
To: Shobhit Kukreti <shobhitkukreti@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Sun, 16 Jun 2019 01:13:11 -0700
In-Reply-To: <1560634159-9015-1-git-send-email-shobhitkukreti@gmail.com>
References: <20190615185355.GC10201@kroah.com>
 <1560634159-9015-1-git-send-email-shobhitkukreti@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Hans de Goede <hdegoede@redhat.com>,
 linux-kernel@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-06-15 at 14:29 -0700, Shobhit Kukreti wrote:
> Cleaned up the code from the following files to get rid of
> check patch error "that open brace { should be on the previous line"

It's fine you are modifying brace styles, but:

> diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> index aa2499f..4631b68 100644
> --- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> @@ -46,8 +46,7 @@ void rtw_os_indicate_connect(struct adapter *adapter)
>  	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
>  
>  	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
> -		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true))
> -	{
> +		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
>  		rtw_cfg80211_ibss_indicate_connect(adapter);
>  	}
>  	else

the else should be on the same line as the close brace

> @@ -106,8 +105,9 @@ void rtw_reset_securitypriv(struct adapter *adapter)
>  		adapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
>  
>  	}
> -	else /* reset values in securitypriv */
> -	{
> +	else {
> +		/* reset values in securitypriv */
> +

and here.  etc.  Please change all instances appropriately.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
