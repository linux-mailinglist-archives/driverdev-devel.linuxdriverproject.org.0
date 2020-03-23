Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8138918F048
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 08:32:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 859AC2281E;
	Mon, 23 Mar 2020 07:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IDQbhzyv6j6W; Mon, 23 Mar 2020 07:32:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA9312040A;
	Mon, 23 Mar 2020 07:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD5881BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 07:32:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D9FB188179
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 07:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NuBTevsEG-ms for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 07:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 367338816A
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 07:32:28 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02N7T93m149295;
 Mon, 23 Mar 2020 07:32:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=SbyAzLPTSfg0LERazBvqTCZWVy8onnfoA8sEWerOK98=;
 b=XROB+1byvVNOsA410SlC+1cU3oogToJggiJEjTfCloTD3iICXpkSjJKEYSsVBktY0Bov
 FZwOrpbr94XRYVhMvZXs2YQUu9p3IbuPdmjCgAjbTDjEeMK/tyu0Uzt4+O6RLYKCGRMQ
 Lg0BlkBisu+moTeCIbvrQdDdRcziy5MDxbaBU3ZQxkiGagi4lgLSh1xH4TevBPHwuLxi
 k2SNQQl7E4XpFY8eqcpoyPkeTtruw59p2c3mg2xBfe/C6ct2hMvsMJU42sJPEVgkq9Q3
 IdWSDaLL3jQPPV8VSYEkVKcN44v++vl4QcvfVClWHpZzaA+IABhNlm+iAkJ3iDWUg/Xb Dw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2ywavkvwxh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Mar 2020 07:32:24 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02N7RuC2060891;
 Mon, 23 Mar 2020 07:32:24 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2ywvqqcvrw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Mar 2020 07:32:24 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02N7WMjP020978;
 Mon, 23 Mar 2020 07:32:22 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Mar 2020 00:32:22 -0700
Date: Mon, 23 Mar 2020 10:32:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_*
 functions
Message-ID: <20200323073214.GJ4650@kadam>
References: <20200320181326.12156-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320181326.12156-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9568
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003230044
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9568
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 phishscore=0 suspectscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003230044
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

On Fri, Mar 20, 2020 at 07:13:26PM +0100, Oscar Carter wrote:
> +#include <linux/bits.h>
>  #include "mac.h"
>  #include "baseband.h"
>  #include "rf.h"
> @@ -468,7 +469,7 @@ int vnt_vt3184_init(struct vnt_private *priv)
>  		if (ret)
>  			goto end;
> 
> -		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));

Everyone knows 0x01 is bit(0) already.  This isn't more clear.  It
should be a define instead of a magic number.

> @@ -63,7 +64,8 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
>  	vnt_mac_reg_bits_on(priv, MAC_REG_MACCR, MACCR_CLRNAV);
> 
>  	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
> -	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL, 0xb0);
> +	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL,
> +			     (BIT(7) | BIT(5) | BIT(4)));

This one especially is just a lot longer now but still not clear.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
