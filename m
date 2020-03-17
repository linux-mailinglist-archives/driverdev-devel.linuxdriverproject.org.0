Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CB2187E94
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Mar 2020 11:45:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8328588CC6;
	Tue, 17 Mar 2020 10:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BA7+TJwGIOAz; Tue, 17 Mar 2020 10:45:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB68E88BCD;
	Tue, 17 Mar 2020 10:45:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 518EE1BF232
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 10:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D614227AA
 for <devel@linuxdriverproject.org>; Tue, 17 Mar 2020 10:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nqu+Z05fwsqJ for <devel@linuxdriverproject.org>;
 Tue, 17 Mar 2020 10:45:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C6E0203A4
 for <devel@driverdev.osuosl.org>; Tue, 17 Mar 2020 10:45:23 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02HAdjxc152500;
 Tue, 17 Mar 2020 10:45:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=mSkMnLoVfT9tvOtdqIFWw9gr53HIM+8g9ieWNpJlYG8=;
 b=djH9ocToi04r4JjL/b8oIy9U34xHc3CnrGVoZ4qBtAOdBp7j2i7QjlSow7wAYnXy3SzI
 G4lHYzA8YaGYz+hZqaQVwX7Cl9fPsv0BaMcSrSyoV7gfLeORdAcb3CBVA+A/wH9GREWj
 M7k2Sc1vaVVYiEsrpZBbrnVGOLs6jpkAjaKVwS12Q936tXm/mjVX1mY504negNi9plCy
 Gy0sBZqDFkww4mzIqwcwaKEzaNbjEPLJV37jwah6ZIDGMOZmWHVsIYeztQYhEcjq8PXU
 jG4za59IFFmd7W0KW1C1MVskbDHDIsEcTxu2qoCbxp/FEiyRh0/BaPPfd2BOSXhLf7vm WQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2yrqwn3yga-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Mar 2020 10:45:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02HAVWvp070353;
 Tue, 17 Mar 2020 10:45:18 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2ys92cm0ef-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Mar 2020 10:45:18 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02HAjFod003782;
 Tue, 17 Mar 2020 10:45:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Mar 2020 03:45:14 -0700
Date: Tue, 17 Mar 2020 13:45:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use ARRAY_SIZE instead of hardcoded size
Message-ID: <20200317104506.GA4650@kadam>
References: <20200314164754.8531-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314164754.8531-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9562
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003170047
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9562
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxlogscore=999
 mlxscore=0 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 clxscore=1011 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003170047
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 14, 2020 at 05:47:54PM +0100, Oscar Carter wrote:
> Use ARRAY_SIZE to replace the hardcoded size so we will never have a
> mismatch.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/main_usb.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> index 5e48b3ddb94c..4370941ffc04 100644
> --- a/drivers/staging/vt6656/main_usb.c
> +++ b/drivers/staging/vt6656/main_usb.c
> @@ -23,6 +23,7 @@
> 
>  #include <linux/etherdevice.h>
>  #include <linux/file.h>
> +#include <linux/kernel.h>
>  #include "device.h"
>  #include "card.h"
>  #include "baseband.h"
> @@ -116,6 +117,7 @@ static int vnt_init_registers(struct vnt_private *priv)
>  	int ii;
>  	u8 tmp;
>  	u8 calib_tx_iq = 0, calib_tx_dc = 0, calib_rx_iq = 0;
> +	const int n_cck_pwr_tbl = ARRAY_SIZE(priv->cck_pwr_tbl);

Please use ARRAY_SIZE(priv->cck_pwr_tbl) everywhere instead of
introducing this new variable.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
