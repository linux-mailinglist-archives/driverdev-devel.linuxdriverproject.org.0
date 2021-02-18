Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA6131E975
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 13:06:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1792B60687
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 12:06:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oM0MXMJcvhPs for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 12:06:16 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 8CFE66066F; Thu, 18 Feb 2021 12:06:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C79FC606C8;
	Thu, 18 Feb 2021 12:05:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F15A1BF3BA
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 12:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E79B60615
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 12:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZuwlWXFkJp-S for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 12:05:36 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B19D76064D; Thu, 18 Feb 2021 12:05:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 577CD606CA
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 12:05:07 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IC0kw3000905;
 Thu, 18 Feb 2021 12:05:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=mzYLSDFdXXIl7ci/FLKSbqpMzibR10demEE2x4c6jmc=;
 b=Bg72+X7oDxRxUKZRrq60IAY6Y8BWwsWkFAq80oOOx6us4hsbH/Hm9Bjz6FM+JeKHDAk2
 ApKm72zICMvf74aFl7KmLz5D/mmVX60z71FpIulXYG3QZJo4bAwXFOQbzRfq2Lllvcv5
 Gr4fd0XC4gRasO/pA4Kn2aISmVG7q86b2PL/pwsDAhmqyaPLZO4507FvfGes483AtWUh
 6HuUy2SxqHGL7/KgX6M1CDjcOCAmwWczaJV4fqccWxll+8XQMBTtW1PwO6SozfCiDQ2u
 iiRhrghmo8f+dA18nbLzDvEi9ghnvLQ3jdqX0RjthfYayE8FnvrNFGzmJ/XnCIe/poGL Xw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36p49bduxt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 12:05:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IC0TOo089843;
 Thu, 18 Feb 2021 12:05:04 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 36prbqpcx5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 12:05:04 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11IC53mM006588;
 Thu, 18 Feb 2021 12:05:03 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 04:05:02 -0800
Date: Thu, 18 Feb 2021 15:04:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pritthijit Nath <pritthijit.nath@icloud.com>
Subject: Re: [PATCH] staging: wlan-ng: Fixed incorrect type warning in
 p80211netdev.c
Message-ID: <20210218120455.GI2087@kadam>
References: <20210217154255.112115-1-pritthijit.nath@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217154255.112115-1-pritthijit.nath@icloud.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180108
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 impostorscore=0 mlxlogscore=999
 adultscore=0 malwarescore=0 phishscore=0 clxscore=1011 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180108
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 09:12:55PM +0530, Pritthijit Nath wrote:
> This change fixes a sparse warning "incorrect type in argument 1
> (different address spaces)".
> 
> Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
> ---
>  drivers/staging/wlan-ng/p80211netdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> index 6f9666dc0277..70570e8a5ad2 100644
> --- a/drivers/staging/wlan-ng/p80211netdev.c
> +++ b/drivers/staging/wlan-ng/p80211netdev.c
> @@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
>  		goto bail;
>  	}
>  
> -	msgbuf = memdup_user(req->data, req->len);
> +	msgbuf = memdup_user((void __user *)req->data, req->len);

Probably the correct fix is to just change the type of
(struct p80211ioctl_req)->data from caddr_t to "void __user *data;".

I haven't looked at this though, so double check.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
