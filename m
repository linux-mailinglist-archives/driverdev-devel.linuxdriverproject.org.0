Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1787131EC19
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 17:16:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1CC1686F81;
	Thu, 18 Feb 2021 16:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7l2z09DT-pp5; Thu, 18 Feb 2021 16:15:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0187B86EA3;
	Thu, 18 Feb 2021 16:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 309991BF36C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B8C28739F
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mHS055xgpobW for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 16:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F7BD87396
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:15:55 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IG90KW114005;
 Thu, 18 Feb 2021 16:15:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=SZT8qMeqKoJ0unv7TTfUkp60YsPk8QUNnvzl5NroOVk=;
 b=qTXV6dCHpJMtMdORcix3Hvuqv6gGHNWAc66zA5E3JFnlDJwuth8slDOMyQ8DQotZn/kF
 VXWiGQIFZ5tP5ZBK3Zal8rCSeiwXoi3+uSr19six/Ij4mH6QqPOFxsp34MvqqYNJAoW3
 se7VW8kvHpafh61nykqL9FqXfa8ftqUQKyMDRIdmjcPp1xOul8EJVh/mtJvA/pXLalHk
 RfoHKJQQ0mE5vNVuuWw9VaADCavW9qHKW35gE6GfGimYYUGkDJgrzNsn1jmL5CXgsKy2
 hdgR2kZJiDgmNzRknEbm2dm6jH8rm1rjidI6Wj5ZaKrweG3XVWaYHDBbPwAPs6gxCObT Og== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 36p66r6gax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 16:15:52 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IGBfxj178189;
 Thu, 18 Feb 2021 16:15:51 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 36prhue2ay-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 16:15:51 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11IGFnqg028302;
 Thu, 18 Feb 2021 16:15:49 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 08:15:48 -0800
Date: Thu, 18 Feb 2021 19:15:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mairo Paul Rufus <akoudanilo@gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: Fix comments typos
Message-ID: <20210218161538.GO2087@kadam>
References: <20210210145952.722586-1-akoudanilo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210145952.722586-1-akoudanilo@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180140
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1011 spamscore=0 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180140
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, trivial@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 03:59:52PM +0100, Mairo Paul Rufus wrote:
> Signed-off-by: Mairo Paul Rufus <akoudanilo@gmail.com>

No commit message.  It should say something like:

Checkpatch complained about the accidental repeated words like
"our our" so I fixed it.

> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 8f25496188aa..e6dcb687e7a1 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -461,7 +461,7 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
>  		case WLAN_MSD_FWLOAD:
>  			wlandev->msdstate = WLAN_MSD_RUNNING_PENDING;
>  			/* Initialize the device+driver for full
> -			 * operation. Note that this might me an FWLOAD to
> +			 * operation. Note that this might me an FWLOAD
                                                     ^^^^^^^^
This probably should be "might be".


>  			 * to RUNNING transition so we must not do a chip
>  			 * or board level reset.  Note that on failure,
>  			 * the MSD state is set to HWPRESENT because we

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
