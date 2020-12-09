Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9313D2D4838
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 18:46:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4744787B16;
	Wed,  9 Dec 2020 17:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QuS862upQLHM; Wed,  9 Dec 2020 17:46:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 71A2287AAC;
	Wed,  9 Dec 2020 17:46:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62BD41BF324
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 17:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 51B312036D
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 17:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhc6em2H2ytN for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 17:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B8012075B
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 17:46:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9HjMPG156339;
 Wed, 9 Dec 2020 17:46:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=0KsIGX1ORHzxyvZHspVuYUfgAjIts9odHQEERpyqU/s=;
 b=j1HAxznXNnMAnDFce4sgM04MGFUDjF0jU+zzwdEVSKBPiTxsI/EcRM4Xm5fYCeTgws/R
 wPicFPPIbgYalwGgq43LlYh2jkV1YX20CroGoTGJaRuMsTdJK1YDzxOGaVo8acOwbtrh
 /3UiH623w7ZLzmGfhnSVqFWy7anrZOzoETkGKIJFguPtwXV6/Z9vPRIKzJX0ZIc5tvOc
 aHvaa7tCQ7TcC7OKqd68BEa46KQxGb+Q51ITc1PzghhMhl/U0IYsBJwXay7MAuKN5Foz
 vi+e21kip3h0g0Qg8ehn5xqmaPlWyupXQBpyPoaU5zs0YPFMEfKaLlnq7cXOj4bUR90X aA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 35825m9ggh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 09 Dec 2020 17:46:35 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B9HkYqJ064639;
 Wed, 9 Dec 2020 17:46:35 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 358m40krm3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Dec 2020 17:46:35 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B9HkNxQ028711;
 Wed, 9 Dec 2020 17:46:24 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Dec 2020 09:46:23 -0800
Date: Wed, 9 Dec 2020 20:46:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: shaojie.dong@isrc.iscas.ac.cn
Subject: Re: [PATCH] staging: rtl8712: check register_netdev() return value
Message-ID: <20201209174615.GI2767@kadam>
References: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209150124.23446-1-shaojie.dong@isrc.iscas.ac.cn>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 adultscore=0
 bulkscore=0 phishscore=0 suspectscore=67 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9829
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=67
 adultscore=0
 bulkscore=0 phishscore=0 mlxlogscore=999 clxscore=1011 priorityscore=1501
 mlxscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012090125
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 09, 2020 at 11:01:24PM +0800, shaojie.dong@isrc.iscas.ac.cn wrote:
> From: "shaojie.dong" <shaojie.dong@isrc.iscas.ac.cn>
> 
> Function register_netdev() can fail, so we should check it's return value
> 
> Signed-off-by: shaojie.dong <shaojie.dong@isrc.iscas.ac.cn>
> ---
>  drivers/staging/rtl8712/hal_init.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 715f1fe8b..38a3e3d44 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -45,7 +45,10 @@ static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
>  	}
>  	adapter->fw = firmware;
>  	/* firmware available - start netdev */
> -	register_netdev(adapter->pnetdev);
> +	if (register_netdev(adapter->pnetdev) != 0) {
> +		netdev_err(adapter->pnetdev, "register_netdev() failed\n");
> +		free_netdev(adapter->pnetdev);
> +	}

This function should not be calling register_netdev().  What does that
have to do with firmware?  It should also not free_netdev() because
that will just lead to a use after free in the caller.

regards,
dan carpenter

>  	complete(&adapter->rtl8712_fw_ready);
>  }
>  
> -- 
> 2.17.1
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
