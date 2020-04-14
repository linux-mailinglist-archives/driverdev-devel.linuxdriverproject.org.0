Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF991A7AE5
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 14:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E076787818;
	Tue, 14 Apr 2020 12:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WtuxS6nso4wr; Tue, 14 Apr 2020 12:35:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5570A869D8;
	Tue, 14 Apr 2020 12:35:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 965E21BF5A4
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 12:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 917F185082
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 12:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KTp7omKpC8KK for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 12:35:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 55B3685036
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 12:35:41 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03ECI54q101846;
 Tue, 14 Apr 2020 12:35:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=y60fSCG2nXRrowJmU8VdzYgVbRBn5fWc0JMdkv+EuI8=;
 b=Dxy2k4OH6mHEFSQyrfvHAoREOtd2VgID+YF/O9/WcuKsGrDCDD+OyMHviTlzFbdZSWyL
 +eC5JXZL+R2akjNx7bJ73f4wWH3vqUueLewZdsf6DKh2ZRmi/5ki45AjvYVnPPdcfH4K
 45aJcolFwvCupJX/QPnYtf8fiyr5J/QCg+tfy/8kCGCSzlLbskY4eFK6pqng4y2J3Vj0
 ECfFgNN87QUlB6Cvq+RHMJO8eJqC6jJO44piUF8ibLNlF1tc2J6cCOCZ8w2Go7on7YJv
 /wdKmbY2lVSJ1q1FOkXtBfZP1KkHw36DB97+EumOCMI7iDeunTdaSKFoIeVlSjPr0oqB kA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 30b5um4ars-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 12:35:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03ECHj6A180506;
 Tue, 14 Apr 2020 12:33:37 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 30bqchhs56-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 12:33:37 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03ECXZUY019294;
 Tue, 14 Apr 2020 12:33:35 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Apr 2020 05:33:34 -0700
Date: Tue, 14 Apr 2020 15:33:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
Subject: Re: [PATCH 1/2] staging: rtl8192u: Refactoring setKey function
Message-ID: <20200414123326.GG1163@kadam>
References: <20200413030129.861-1-c.cantanheide@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413030129.861-1-c.cantanheide@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 bulkscore=0 mlxscore=0
 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004140103
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
 linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org,
 nishkadg.linux@gmail.com, navid.emamdoost@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 03:01:28AM +0000, Camylla Goncalves Cantanheide wrote:
> Changes of the local variable value and
> modification in the seletive repetition structure.
> 

This changelog isn't totally clear why you're doing this.  Just say:
"I am refactorying setKey() to make it more clear.  I have unrolled the
first two iterations through the loop.  This patch will not change
runtime."

So long as it's clear what you're trying to do and why, that's the
important thing with a commit message.

> Signed-off-by: Camylla Goncalves Cantanheide <c.cantanheide@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 52 ++++++++++++--------------
>  1 file changed, 24 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
> index 9b8d85a4855d..87c02aee3854 100644
> --- a/drivers/staging/rtl8192u/r8192U_core.c
> +++ b/drivers/staging/rtl8192u/r8192U_core.c
> @@ -4880,7 +4880,7 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
>  void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
>  	    u8 *macaddr, u8 defaultkey, u32 *keycontent)
>  {
> -	u32 target_command = 0;
> +	u32 target_command = CAM_CONTENT_COUNT * entryno |  BIT(31) | BIT(16);
>  	u32 target_content = 0;
>  	u16 us_config = 0;
>  	u8 i;
> @@ -4890,39 +4890,35 @@ void setKey(struct net_device *dev, u8 entryno, u8 keyindex, u16 keytype,
>  
>  	RT_TRACE(COMP_SEC,
>  		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d, KeyType:%d, MacAddr%pM\n",
> -        	 __func__, dev, entryno, keyindex, keytype, macaddr);
> +		 __func__, dev, entryno, keyindex, keytype, macaddr);

Do this white space change in a separate patch.

>  
>  	if (defaultkey)
>  		us_config |= BIT(15) | (keytype << 2);
>  	else
>  		us_config |= BIT(15) | (keytype << 2) | keyindex;
>  
> -	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
> -		target_command  = i + CAM_CONTENT_COUNT * entryno;
> -		target_command |= BIT(31) | BIT(16);
> -
> -		if (i == 0) { /* MAC|Config */
> -			target_content = (u32)(*(macaddr + 0)) << 16 |
> -					(u32)(*(macaddr + 1)) << 24 |
> -					(u32)us_config;
> -
> -			write_nic_dword(dev, WCAMI, target_content);
> -			write_nic_dword(dev, RWCAM, target_command);
> -		} else if (i == 1) { /* MAC */
> -			target_content = (u32)(*(macaddr + 2))	 |
> -					(u32)(*(macaddr + 3)) <<  8 |
> -					(u32)(*(macaddr + 4)) << 16 |
> -					(u32)(*(macaddr + 5)) << 24;
> -			write_nic_dword(dev, WCAMI, target_content);
> -			write_nic_dword(dev, RWCAM, target_command);
> -		} else {
> -			/* Key Material */
> -			if (keycontent) {
> -				write_nic_dword(dev, WCAMI,
> -						*(keycontent + i - 2));
> -				write_nic_dword(dev, RWCAM, target_command);
> -                	}
> -		}
> +	target_content = macaddr[0] << 16 |
> +			 macaddr[0] << 24 |
> +			(u32)us_config;
> +
> +	write_nic_dword(dev, WCAMI, target_content);
> +	write_nic_dword(dev, RWCAM, target_command++);
> +
> +	/* MAC */
> +	target_content = macaddr[2]	  |
> +			 macaddr[3] <<  8 |
> +			 macaddr[4] << 16 |
> +			 macaddr[5] << 24;
> +	write_nic_dword(dev, WCAMI, target_content);
> +	write_nic_dword(dev, RWCAM, target_command++);
> +
> +	/* Key Material */
> +	if (!keycontent)
> +		return;
> +
> +	for (i = 2; i < CAM_CONTENT_COUNT; i++) {
> +		write_nic_dword(dev, WCAMI, *keycontent++);

This code was wrong in the original as well, but now that I see the bug
let's fix it.  CAM_CONTENT_COUNT is 8.  8 - 2 = 6.  We are writing 6
u32 variables to write_nic_dword().  But the *keycontent buffer only has
4 u32 variables so it is a buffer overflow.

> +		write_nic_dword(dev, RWCAM, target_command++);
>  	}
>  }

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
