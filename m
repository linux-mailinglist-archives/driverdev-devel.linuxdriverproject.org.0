Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BABDA1A973
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 May 2019 22:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 98F6385C32;
	Sat, 11 May 2019 20:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5MI8FtKmjQ7; Sat, 11 May 2019 20:47:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31E8F85C37;
	Sat, 11 May 2019 20:47:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3F21BF5A9
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 20:47:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0952285C28
 for <devel@linuxdriverproject.org>; Sat, 11 May 2019 20:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SYXZ-AhafSvS for <devel@linuxdriverproject.org>;
 Sat, 11 May 2019 20:47:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E4AC85C1D
 for <devel@driverdev.osuosl.org>; Sat, 11 May 2019 20:47:23 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4BKcxfq138977;
 Sat, 11 May 2019 20:47:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=TATKjhwZHN/z6muIX01mJSP7pI5rbeNwwgu/ed7JqrA=;
 b=NJ3xB0/iG5+EBwd2G0oY6BBq5zwHsuqUssQca7AJiS6/HaxfY6stMCwTlt4sk3vNYUj7
 NmTAIj5qypg7jo4eQ35JD0nb95I4ggm5T/qvVWqB1kism4CSnMO8EsH5r2KiSLTX34/d
 Qf0aIJvoUPyKCpwjIWPvViiduPZmlQn1SBCd42Vmg56dAZ85tfjJEhlZn5AXWuthQEzs
 8FWgeQZsdSUiJm6AgZKdcdNHgWgoZ2Kab3w/f997zzWweOoRiE+CzVoBUS0XG8hiXkBX
 pbpLMxMUbrp1HZz9pSZZs+OBN+LfPSNnu7xvQJJxYgmw77lhWj+8Yw2wM37jyAj2oND+ VQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2sdkwd9s2f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 11 May 2019 20:47:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4BKk4AO155526;
 Sat, 11 May 2019 20:47:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2sdy5u26pt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 11 May 2019 20:47:21 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4BKlJPU021793;
 Sat, 11 May 2019 20:47:19 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 11 May 2019 13:47:18 -0700
Date: Sat, 11 May 2019 23:47:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [Patch v2] drivers: staging : wlan-ng : collect return status
 without variable
Message-ID: <20190511204711.GG18105@kadam>
References: <20190511094859.GA21232@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511094859.GA21232@hari-Inspiron-1545>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9254
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905110152
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9254
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905110152
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>, linux-kernel@vger.kernel.org,
 Chris Opperman <eklikeroomys@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 11, 2019 at 03:18:59PM +0530, Hariprasad Kelam wrote:
> As caller rdev_set_default_key  not particular about -EFAULT.
> We can preserve the return value of prism2_domibset_uint32.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> -----
> Changes in v2:
>   - remove  masking of original return value with EFAULT
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 5dad5ac..4018fc5 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -231,12 +231,9 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
>  {
>  	struct wlandevice *wlandev = dev->ml_priv;
>  
> -	if (prism2_domibset_uint32(wlandev,
> -				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> -				   key_index))
> -		return -EFAULT;
> -	else
> -		return 0;
> +	return prism2_domibset_uint32(wlandev,
> +				      DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> +				      key_index);
>  }
>  

I'm sorry, this patch can only be applied on top of v1, but we need a
patch which can be applied on top of linux-next without applying v1
first.  (Merge/fold the two patches together and resend).

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
