Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC9B1C6E51
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 12:25:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F0B9886D5;
	Wed,  6 May 2020 10:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9dq0dCAyH4cH; Wed,  6 May 2020 10:25:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C64B88644;
	Wed,  6 May 2020 10:25:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 070691BF471
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 10:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 018C58773E
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 10:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qq+9xwElHao3 for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 10:25:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3253087739
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 10:25:24 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 046AHoD8054916;
 Wed, 6 May 2020 10:25:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kifplgKTxbmGsIF+s+53NwdGe6nklN1ira/VA94aWAU=;
 b=DEz/SbX8G6fg1ZJR0km/EDe/276HOOwVXqwlF5iRSsUfUWYtaJmjvWGwhi7HdVs0NmOr
 sdw1CxMiQdfE2nRFtOuWJxKawl85y+rj8O6m2JZyUrLNk6qYPIUhManAy4bW38RR756e
 c4ZqSm5gO21AFmXm1JdNr0JAciHKanmI2O0t5KK0iYrNzEQMwNyLOqTJ3k9f8jPQfitb
 JoLfEVAm1Uq/KCuwKp4yMEJFMFukVXS8lL4gE2hw5Ts6jIFQntpvQ7ZXQs0LBzVeSG2f
 K01o+Zk5nmPZqprFkNWFE5Q6IX5Jx73AmpoIfI84EusxxAIvw4GqYho2a+xlf0D5C74z cg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30s1gn9cs0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 May 2020 10:25:23 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 046AHrWM171148;
 Wed, 6 May 2020 10:25:22 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 30t1r7eq92-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 May 2020 10:25:22 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 046APJtN014271;
 Wed, 6 May 2020 10:25:19 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 03:25:18 -0700
Date: Wed, 6 May 2020 13:25:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Yu Jian Wu <yujian.wu1@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: Cleanup pointer casting code
 style
Message-ID: <20200506102512.GB9365@kadam>
References: <20200502004747.GA16480@amber>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502004747.GA16480@amber>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 spamscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005060081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1011 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005060081
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
 Larry.Finger@lwfinger.net, hdegoede@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 02, 2020 at 08:47:50AM +0800, Yu Jian Wu wrote:
> Cleanup by adding a space between type and pointer, in accordance with
> checkpatch.pl message "(foo*)" should be "(foo *)".
> 
> Signed-off-by: Yu Jian Wu <yujian.wu1@gmail.com>
> ---
>  .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c    | 16 ++++++++--------
>  drivers/staging/rtl8723bs/os_dep/recv_linux.c    |  2 +-
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> index b037868fbf22..8377bc75e308 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -98,7 +98,7 @@ static struct ieee80211_channel rtw_2ghz_channels[] = {
>  
>  static void rtw_2g_channels_init(struct ieee80211_channel *channels)
>  {
> -	memcpy((void*)channels, (void*)rtw_2ghz_channels,
> +	memcpy((void *)channels, (void *)rtw_2ghz_channels,

These casts aren't required.  It would be better to remove them.

	memcpy(channels, rtw_2ghz_channels,
	       sizeof(*channel) * RTW_2G_CHANNELS_NUM);

Same for a bunch of the others as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
