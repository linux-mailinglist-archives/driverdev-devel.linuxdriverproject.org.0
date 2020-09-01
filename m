Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91236258F2A
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 15:33:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BA7986CA6;
	Tue,  1 Sep 2020 13:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xw1xW6QQ0NhI; Tue,  1 Sep 2020 13:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D1AE86230;
	Tue,  1 Sep 2020 13:33:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14AD71BF976
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 13:33:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10DFB866A3
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 13:33:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLndqCtksXjF for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 13:33:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB5AE85C20
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 13:33:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 081D0l24055238;
 Tue, 1 Sep 2020 13:33:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tncZGQIWIEZ4FEAe9DcScrIAwrizsiWeexR76yy0IIQ=;
 b=dtxeQRglYiDPtopyn3Vtf+9DrDAhfWhdGROhVxPHqIwJhl+iHvMOw0pEd8HhECQCZWQF
 ho4IaMLRqiDXC6tIsrmGKz45zY/OoxfynnwsJ2jFY3TxlzPhZWJ4hgj2bEKVH7ynT69T
 tp4XrQYEsma2BgVzqbj90NbaxBhEOsMvNQUfkZ4arjiiMd66kmIAyM/p4apARficfUaI
 T6MWYgOJyD9uG3nmfiZ76C77214aLORN7A+cyXw68GgBX0s1urhSl0ooCbN248CIpcfY
 5vIl2Y00jNd42ORP/PuXcCl/rq42c3YoRGVpekc3tzSlt8Js/wXWn5YGdI6kw0FfYV+R vw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 337eym4960-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 01 Sep 2020 13:33:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 081D0eqO076616;
 Tue, 1 Sep 2020 13:33:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 3380x3bv2m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Sep 2020 13:33:39 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 081DXciR002439;
 Tue, 1 Sep 2020 13:33:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Sep 2020 06:33:38 -0700
Date: Tue, 1 Sep 2020 16:33:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: antoniprzybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH] staging: gdm724x: gdm_tty: corrected macro by adding
 brackets
Message-ID: <20200901133332.GY8299@kadam>
References: <20200901104311.17270-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901104311.17270-1-antoni.przybylik@wp.pl>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9730
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009010113
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9730
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0
 priorityscore=1501 phishscore=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009010113
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

On Tue, Sep 01, 2020 at 12:43:11PM +0200, antoniprzybylik wrote:
                                          ^^^^^^^^^^^^^^^
Please, fix your From: header so that it says "Antoni Przybylik".

> Such macros are dangerous. Consider following example:
> 	#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
> 	GDM_TTY_READY(a + b)
> This macro will be expanded in such a way:
> 	(a + b && a + b->tty_dev && a + b->port.count)
> And it will lead to errors.
> 
> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/gdm724x/gdm_tty.c b/drivers/staging/gdm724x/gdm_tty.c
> index 6e813693a766..eab5c75ee5b1 100644
> --- a/drivers/staging/gdm724x/gdm_tty.c
> +++ b/drivers/staging/gdm724x/gdm_tty.c
> @@ -27,7 +27,7 @@
>  
>  #define MUX_TX_MAX_SIZE 2048
>  
> -#define GDM_TTY_READY(gdm) (gdm && gdm->tty_dev && gdm->port.count)
> +#define GDM_TTY_READY(gdm) ((gdm) && (gdm)->tty_dev && (gdm)->port.count)

I cannot imagine a real life example where adding these parentheses will
prevent a bug.  One idea it to silence this by making dereference ops
like this a special case where checkpatch.pl doesn't suggest adding
parentheses.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
