Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0412CE4D8
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 16:13:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E0C220552;
	Mon,  7 Oct 2019 14:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mGgHh1R2EIjF; Mon,  7 Oct 2019 14:13:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE89C20462;
	Mon,  7 Oct 2019 14:13:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 203AC1BF859
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 14:13:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06C1585E65
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 14:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sHzw_nccyZfY for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 14:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E294A85E06
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 14:13:45 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97EDTKv054047;
 Mon, 7 Oct 2019 14:13:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=v/JPj74F9S3rIumlrnm9CbKkIEwYEENjPGMUC3qkKHg=;
 b=EedQIAKStPQCo+m5mvlaq6W72DaCQsQgRXLQ6UMSh49lf4oA3aGG6pHVG0pn504CuUoe
 iAqcDGL8UVr261SlkrWS39EXVIEHnSXZXQvLIy4iwBpDHN2n/f3Wo2jAN6dgskmXNPuz
 xWbkeWoPiqraedRhgPluUjwa9G6khJCVtpPyN/2QJnjocZG5SSmVG6TZ7BtlPxa90eEt
 kHQCPEYoRATe2jeDVAqB+kqwqLT/Q59RZ7Vcv582T5ozjR6UB7TcNUEfaZkIYtRxMX02
 AZA7YHOmOdfCBMZuf7qXfjJJyPiceIUs6gTkD6sILqjNqOVxMK1gKmcxBheKAFfV99OK Fw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2vek4q6yee-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 14:13:42 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x97ECdXj012729;
 Mon, 7 Oct 2019 14:13:41 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vf4n99tck-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 14:13:41 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x97EDdsv026177;
 Mon, 7 Oct 2019 14:13:39 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 07:13:38 -0700
Date: Mon, 7 Oct 2019 17:13:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: align arguments with open parenthesis
 in file rtl8712_led.c
Message-ID: <20191007141327.GY22609@kadam>
References: <20191007003902.21911-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007003902.21911-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910070141
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910070140
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
 trivial@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, lkcamp@lists.libreplanetbr.org,
 payal.s.kshirsagar.98@gmail.com, colin.king@canonical.com,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 09:39:02PM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "Alignment should match open parenthesis"
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_led.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_led.c b/drivers/staging/rtl8712/rtl8712_led.c
> index db99129d3169..5901026949f2 100644
> --- a/drivers/staging/rtl8712/rtl8712_led.c
> +++ b/drivers/staging/rtl8712/rtl8712_led.c
> @@ -75,7 +75,7 @@ static void BlinkWorkItemCallback(struct work_struct *work);
>   *		Initialize an LED_871x object.
>   */
>  static void InitLed871x(struct _adapter *padapter, struct LED_871x *pLed,
> -		 enum LED_PIN_871x	LedPin)
> +			enum LED_PIN_871x	LedPin)
                                         ^^^^^^
Delete these extra spaces.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
