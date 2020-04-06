Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EEC19F43F
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 13:16:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EAB3E232A7;
	Mon,  6 Apr 2020 11:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BD7RI1WvpDbf; Mon,  6 Apr 2020 11:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5B61D23086;
	Mon,  6 Apr 2020 11:16:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2B91BF3DA
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7991685E25
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id caTsZpAxe3p8 for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 11:16:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E8E6085E08
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 11:16:34 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036BEsm1027462;
 Mon, 6 Apr 2020 11:16:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ilwv4Ed7O2Ujkx8B7MXNeINOP9n9d6qmP9wV8mhqvWc=;
 b=RHXDjsof0ah063H+WqxSHhFQ++LnlaPENIAHsRn/5jOagJC9ZRLk6kyHxScqqr9Iud0p
 Z2DAzrF4US94qt5TUAeO6EPJisUALt/y5Bhhd1OgG29yxMptCzJC8wNIn3RrjpGLq1ek
 KsgQlQGJDa17WPyUNr8mcr+WESSeSx9MkcUCRkh34nlrUHAgXK2Cr7qkmd5FYc+xwdiP
 WTJBRs2VCxVbkmFlCvYbE1t8NOFLP8xt6PEA6RKwcAIJqYoTBzmP7SvzTrWqkOOgVkh1
 Q8m3XL+w1k64UxbCO586kPRAUgLVGH+vaeENDnXdKipfAqW1TCpWVIUL1vkB33N39W+A cQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 306j6m66d0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Apr 2020 11:16:32 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036BDDVn161280;
 Mon, 6 Apr 2020 11:16:32 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 3073qcu8s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Apr 2020 11:16:32 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 036BGTxJ017931;
 Mon, 6 Apr 2020 11:16:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Apr 2020 04:16:29 -0700
Date: Mon, 6 Apr 2020 14:16:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH 2/3] staging: vt6656: Use define instead of magic number
 for tx_rate
Message-ID: <20200406111622.GE2001@kadam>
References: <20200404141400.3772-1-oscar.carter@gmx.com>
 <20200404141400.3772-3-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404141400.3772-3-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004060098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999 spamscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 mlxscore=0 phishscore=0 adultscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004060098
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
 Malcolm Priestley <tvboxspy@gmail.com>,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 04, 2020 at 04:13:59PM +0200, Oscar Carter wrote:
> Use the define RATE_11M present in the file "device.h" instead of the
> magic number 3. So the code is more clear.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index 3e4bd637849a..a785f91c1566 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -24,6 +24,7 @@
> 
>  #include <linux/bits.h>
>  #include <linux/kernel.h>
> +#include "device.h"
>  #include "mac.h"
>  #include "baseband.h"
>  #include "rf.h"
> @@ -141,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
> 
>  	rate = (unsigned int)vnt_frame_time[tx_rate];
> 
> -	if (tx_rate <= 3) {
> +	if (tx_rate <= RATE_11M) {

This is nice.  And if we don't apply patch 1 then it's even nicer
because then "tx_rate" is treated consistently.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
