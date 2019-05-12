Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7B31AD3A
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 18:59:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6C968753F;
	Sun, 12 May 2019 16:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IOv-bQuY9jC2; Sun, 12 May 2019 16:59:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4903F873DC;
	Sun, 12 May 2019 16:59:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09CCD1BF215
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 16:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 068EB84B60
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 16:59:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gJ6S0HXiLosx for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 16:59:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0037.hostedemail.com
 [216.40.44.37])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34DFE84B1C
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 16:59:48 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 94B86837F24C;
 Sun, 12 May 2019 16:59:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3873:4321:5007:6119:6737:7903:10004:10400:10848:11026:11657:11658:11914:12043:12048:12295:12438:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:14721:21060:21080:21451:21627:30054:30070:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: brain49_37d5198bb7c08
X-Filterd-Recvd-Size: 2095
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Sun, 12 May 2019 16:59:43 +0000 (UTC)
Message-ID: <c929d6ee3acd820fbd29a7eb639f0b565d15063f.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8723bs: core  fix warning  "Comparison to
 bool"
From: Joe Perches <joe@perches.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Madhumitha Prabakaran
 <madhumithabiw@gmail.com>,  Hans de Goede <hdegoede@redhat.com>, Arnd
 Bergmann <arnd@arndb.de>, Emanuel Bennici <benniciemanuel78@gmail.com>, 
 Dan Carpenter <dan.carpenter@oracle.com>, Hardik Singh Rathore
 <hardiksingh.k@gmail.com>,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  viswanath.barenkala@gmail.com
Date: Sun, 12 May 2019 09:59:42 -0700
In-Reply-To: <20190512121923.GA28044@hari-Inspiron-1545>
References: <20190512121923.GA28044@hari-Inspiron-1545>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
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

On Sun, 2019-05-12 at 17:49 +0530, Hariprasad Kelam wrote:
> fix below issue reported by coccicheck
> drivers/staging/rtl8723bs/core/rtw_cmd.c:1741:7-17: WARNING: Comparison
> to bool
[]
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
[]
> @@ -1738,7 +1738,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
>  			pstapriv->tim_bitmap &= ~BIT(0);
>  			pstapriv->sta_dz_bitmap &= ~BIT(0);
>  
> -			if (update_tim == true)
> +			if (update_tim)
>  				update_beacon(padapter, _TIM_IE_, NULL, true);
>  		} else {/* re check again */
>  			rtw_chk_hi_queue_cmd(padapter);

There are dozens of these in this file and
even more in the subsystem.

$ git grep -P '(==|!=)\s*(true|false)' drivers/staging/rtl8723bs/core/rtw_cmd.c | wc -l
22

When you submit a patch for a single file,
at least please try to do all the instances
in the file.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
