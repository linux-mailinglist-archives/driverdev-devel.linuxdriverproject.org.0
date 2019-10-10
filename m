Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE5AD2451
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 10:58:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4EE6E242F3;
	Thu, 10 Oct 2019 08:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2tCu3gI4YRC; Thu, 10 Oct 2019 08:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 22C6A20411;
	Thu, 10 Oct 2019 08:58:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 33F311BF2B8
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 30BC286B7E
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 08:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ocLl_FV7Rgp6 for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 08:58:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 993ED86AE8
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 08:58:10 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A8vvZA171461;
 Thu, 10 Oct 2019 08:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=qgO5nIjtEA5M7rpWm5uYekrXGaVEyZKGlFAp0lWFa1I=;
 b=QDprH0ZroOSvHkn7uHQUIF+ffXhDgtxsjV+SMa9Se+qqjHdDEchr2SYVh/MxtQVppOzP
 BukBgJwbX8awsCHomiHgunYbIcRid0jDQ82XhYyX+oDzPm1StUyyjjh1xHkA1cK35b2N
 veA8utDGrDlfvklhuQPpWoo/WLexod7WDtjtbjFtMM5+WOGrM/2sPJrdESs9+Jp0njul
 tEeg5hTnNVzZmory2OzfHvzEv+w2R5HkMo26yHy7Q+m871zEu5lC9a+8FIyRHAGdazgE
 eKrlJ9d96mNPYDM+KqL8AHh1UX2TaVn6yPigGY6uLO6V/L9wUvrykhZBRfKaklEZwiAG ag== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vektrsk4u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 08:58:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9A8qnWn078202;
 Thu, 10 Oct 2019 08:58:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2vhrxd8tps-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Oct 2019 08:58:08 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9A8w6PJ023258;
 Thu, 10 Oct 2019 08:58:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 10 Oct 2019 01:58:05 -0700
Date: Thu, 10 Oct 2019 11:57:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH 3/4] staging: rtl8723bs: Remove comparisons to booleans
 in conditionals.
Message-ID: <20191010085755.GD20470@kadam>
References: <cover.1570678371.git.wambui.karugax@gmail.com>
 <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570678371.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4af8981347a05f0a25fa1540d8753e7040ea2d85.1570678371.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910100082
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9405
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910100082
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
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 06:39:23AM +0300, Wambui Karuga wrote:
>  	if (is_primary_adapter(adapter))
>  		DBG_871X("IsBtDisabled =%d, IsBtControlLps =%d\n", hal_btcoex_IsBtDisabled(adapter), hal_btcoex_IsBtControlLps(adapter));
>  
> -	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode == true)
> -		&& (hal_btcoex_IsBtControlLps(adapter) == false)
> +	if ((adapter_to_pwrctl(adapter)->bFwCurrentInPSMode)
> +		&& !(hal_btcoex_IsBtControlLps(adapter))

Delete the extra parentheses as well, because they don't make sense when
we remove the == false comparison.  It's part of doing "one thing" is to
the whole thing and not leave bits undone.

		&& !hal_btcoex_IsBtControlLps(adapter)

>  		) {
>  		u8 bEnterPS;
>  
> @@ -2047,7 +2047,7 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
>  
>  
>  	/* check bssid, if needed */
> -	if (mlme->assoc_by_bssid == true) {
> +	if (mlme->assoc_by_bssid) {
>  		if (memcmp(competitor->network.MacAddress, mlme->assoc_bssid, ETH_ALEN))
>  			goto exit;
>  	}
> @@ -2805,7 +2805,6 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
>  	u8 cbw40_enable = 0;
>  
> -
>  	if (!phtpriv->ht_option)
>  		return;
>  
> @@ -2815,7 +2814,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
>  	DBG_871X("+rtw_update_ht_cap()\n");
>  
>  	/* maybe needs check if ap supports rx ampdu. */
> -	if ((phtpriv->ampdu_enable == false) && (pregistrypriv->ampdu_enable == 1)) {
> +	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {

Same.

>  		if (pregistrypriv->wifi_spec == 1) {
>  			/* remove this part because testbed AP should disable RX AMPDU */
>  			/* phtpriv->ampdu_enable = false; */

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
