Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 011B2321080
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 06:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BBE383852;
	Mon, 22 Feb 2021 05:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVtmhtKd_VTF; Mon, 22 Feb 2021 05:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F216E8379F;
	Mon, 22 Feb 2021 05:40:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B5C51BF3C2
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 05:40:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46F6D8379F
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 05:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FhmqO8AjZNwt for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 05:40:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68E6D83777
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 05:40:46 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M5dUtg010427;
 Mon, 22 Feb 2021 05:40:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=3mzvToJRGgOWKNcCAvalKEoB1cfD+sesK/shn4rlDSQ=;
 b=gAEbJaVHuY+rYzUdLR2b4JB3o0xG7+Iz6FdyRWJKGGj0XCq48bz2GSKeKunfKnMqPGxT
 oR226o25aMoz4vb1eQN2WFYBJVH3PnGu4WSuDBB+RFDIGIPA8/9hbno0MI2XGwUfaiSg
 feK0PmIm8VoHlaBRkB0SJp/ZvH6aZoW9dYm9VlkG3BltYE7O33YYiNBL+YsfnYRp/ajM
 F8NWkiebW6cBwjaSJQYz4W1H62AnDT3gXBqZbzR0NcfpMWbR8IQXaV4j6g+qJLCnKEmv
 P7Ls042cU57Dk3CEVHzDhmhpHL8HP1LEiDeVoE3Zod3CgEXKiyEs+HlJfSEAE/AC6CXo yw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36tqxbafjj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 05:40:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M5eggh192294;
 Mon, 22 Feb 2021 05:40:43 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 36uc0ku5cs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 05:40:43 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11M5ebY6030829;
 Mon, 22 Feb 2021 05:40:37 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 21 Feb 2021 21:40:36 -0800
Date: Mon, 22 Feb 2021 08:40:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: wimax: fix sparse incorrect type issue
Message-ID: <20210222054029.GF2087@kadam>
References: <YDDzqPT81QBGpTBB@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDDzqPT81QBGpTBB@karthik-strix-linux.karthek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102220051
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 phishscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220051
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
 linux-kernel@vger.kernel.org, Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Feb 20, 2021 at 05:04:00PM +0530, karthik alapati wrote:
> fix sparse warning by casting to explicit user address-space
> pointer type
> 
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  drivers/staging/wlan-ng/p80211netdev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> index 6f9666dc0..70570e8a5 100644
> --- a/drivers/staging/wlan-ng/p80211netdev.c
> +++ b/drivers/staging/wlan-ng/p80211netdev.c
> @@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
>  		goto bail;
>  	}
>  
> -	msgbuf = memdup_user(req->data, req->len);
> +	msgbuf = memdup_user((void __user *)req->data, req->len);

This doesn't fix anything it just silences the warning.  Linus Torvalds
worked very hard to create Sparse for the express purpose of printing
the warning.  People don't realize that warnings are very valuable
because they show where the bugs are.

Please look at this some more and figure out how to fix the warning.

To be honest, I'm tempted to not accept any patch which doesn't also fix
the buffer overflows when we pass:

	result = p80211req_dorequest(wlandev, msgbuf);

How do we know that "msgbuf" is large enough?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
