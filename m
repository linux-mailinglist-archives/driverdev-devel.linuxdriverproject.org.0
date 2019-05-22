Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349EA263E2
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 14:32:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C80687DA4;
	Wed, 22 May 2019 12:32:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gw+QbJALSvw; Wed, 22 May 2019 12:32:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABC57875CB;
	Wed, 22 May 2019 12:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2ABE1BF2BB
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E5C40304CA
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 12:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xDThFlj667-D for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 12:32:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7909A30373
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 12:32:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D26672173C;
 Wed, 22 May 2019 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558528329;
 bh=qd38iVDFktSHe0ZEFWncQyLWuOgOl9SFrCwsnoUuL9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yn8lkUyommXoXyfuvI0H1VxrsWa7yrWlXqpiF8Li1aFlFXE4hkdsqMl5sUqUuY2WH
 Fo/Hb1J+JYAZuAKJBrP1ZLCSHxOPJxuAt3D2m7F3DM9uEF1ohULK+vunO2s/5CcVG4
 g1WsEzh4rb3w/75peEXk/zDnQ6z7kQdtQMaV7LPY=
Date: Wed, 22 May 2019 14:32:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [Patch v2] staging: rtl8723bs: core: rtw_ap: fix Unneeded
 variable: "ret". Return "0
Message-ID: <20190522123206.GB24298@kroah.com>
References: <20190521190032.GA7486@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521190032.GA7486@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: devel@driverdev.osuosl.org, Quytelda Kahja <quytelda@tamalin.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Omer Efrat <omer.efrat@tandemg.com>, linux-kernel@vger.kernel.org,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, Wen Yang <wen.yang99@zte.com.cn>,
 Murray McAllister <murray.mcallister@insomniasec.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 12:30:33AM +0530, Hariprasad Kelam wrote:
> Function "rtw_sta_flush" always returns 0 value.
> So change return type of rtw_sta_flush from int to void.
> 
> Same thing applies for rtw_hostapd_sta_flush
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ------
> Changes v2 -
> 	change return type of rtw_sta_flush
> 
> -----
>  drivers/staging/rtl8723bs/core/rtw_ap.c           | 7 ++-----
>  drivers/staging/rtl8723bs/include/rtw_ap.h        | 2 +-
>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 4 ++--
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 7 +++----
>  4 files changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index bc02306..19418ea 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -2189,10 +2189,9 @@ u8 ap_free_sta(
>  	return beacon_updated;
>  }
>  
> -int rtw_sta_flush(struct adapter *padapter)
> +void rtw_sta_flush(struct adapter *padapter)
>  {
>  	struct list_head	*phead, *plist;
> -	int ret = 0;
>  	struct sta_info *psta = NULL;
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
> @@ -2202,7 +2201,7 @@ int rtw_sta_flush(struct adapter *padapter)
>  	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(padapter->pnetdev));
>  
>  	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
> -		return ret;
> +		return ;

Odd use of a ' ' character here :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
