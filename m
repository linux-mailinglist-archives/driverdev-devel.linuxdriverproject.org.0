Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B13D830FE
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 13:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC7A521553;
	Tue,  6 Aug 2019 11:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9c4h4OZV2YqF; Tue,  6 Aug 2019 11:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2452221543;
	Tue,  6 Aug 2019 11:53:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 666201BF5F5
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 11:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61DB085F87
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 11:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q1uvIRyRQsRH for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 11:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 658A485F85
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 11:53:19 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x76BdYZI188043;
 Tue, 6 Aug 2019 11:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=owLXiqktrM00YzMKT+B/Oi/Ts6nHaTvaxCYeIhR23nM=;
 b=An+K5eaQPLFGr/w6URupkufgy4qM97Etr+/eGePkK8Uz9aWqiI/FVRY245pQy5iRGNSQ
 cT9KpS1ICtrZc9b3g4mP3Cc2vTREpD/wIHVW4kID7g+B4Ml9MnIWx9ubrv58ADL0pF/4
 g8puGXT13BKvg5lxFnFB+PvZsDUxOVzOWdzC9Bs7/aIFSgz5K31o0RVb9nmTEnxjvlvP
 ONNGVcv5pVQzFIa83tXSNCR7wT8PLsSgl0b2hpcY5xYLQC25dzTugOSb4hpFsldCTJP4
 2Pnmhz7DNTUxloq2k0VOkqgoPCz4ZoVXQMHoS5WDDA6WTh6VwnBEKcbcPNOKSA9BfB0M zw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2u52wr5kfa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Aug 2019 11:53:17 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x76BcEYx055575;
 Tue, 6 Aug 2019 11:53:16 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2u7576xe45-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Aug 2019 11:53:16 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x76BrEb9008513;
 Tue, 6 Aug 2019 11:53:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 06 Aug 2019 04:53:13 -0700
Date: Tue, 6 Aug 2019 14:53:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
Subject: Re: [PATCH] rtl8712: rtl871x_ioctl_linux.c: fix unnecessary typecast
Message-ID: <20190806115305.GF1974@kadam>
References: <20190806013329.28574-1-joseespiriki@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806013329.28574-1-joseespiriki@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908060119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908060119
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
 lkcamp@lists.libreplanetbr.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 05, 2019 at 10:33:29PM -0300, Jose Carlos Cazarin Filho wrote:
> Fix checkpath warning:
> WARNING: Unnecessary typecast of c90 int constant
> 
> Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
> ---
>  Hello all!
>  This is my first commit to the Linux Kernel, I'm doing this to learn and be able
>  to contribute more in the future
>  Peace all! 
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 944336e0d..da371072e 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -665,8 +665,8 @@ static int r8711_wx_set_freq(struct net_device *dev,
>  
>  /* If setting by frequency, convert to a channel */
>  	if ((fwrq->e == 1) &&
> -	  (fwrq->m >= (int) 2.412e8) &&
> -	  (fwrq->m <= (int) 2.487e8)) {
> +	  (fwrq->m >= 2.412e8) &&
> +	  (fwrq->m <= 2.487e8)) {

I don't think we can do this.  You're not allowed to use floats in the
kernel (because they make context switching slow).  I could have sworn
that we use the -nofp to stop the compile when people use floats but
this compiles fine for me.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
