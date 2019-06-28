Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 400DE594D9
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 09:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58D68875D6;
	Fri, 28 Jun 2019 07:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ULNd0cT9unQ4; Fri, 28 Jun 2019 07:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC97E86A0C;
	Fri, 28 Jun 2019 07:28:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 975101BF406
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 07:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93CAA2044F
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 07:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOrxT+xM95PK for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 07:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id BB35720407
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 07:28:48 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S7NpPT082922;
 Fri, 28 Jun 2019 07:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=eVp0fj2a3CahJv1vtl/9w4CV52CUJKAT7WbuznAHrjU=;
 b=z0NzqCAF+XcgQrMDawTZaxENcIXaVUAtO8SuL0lJ/LsoodFnFt2SmvAgpr9d0Rq12nC2
 tV3XDOuHZ5iG4wte5EcWSB9D9wnsP8CRP1vNTD3/vuFCyaehSlwGkCNNxnVLKNNm9Yyt
 n+zMBdhsAWbY9TvojHNUmSynRqWBoMSCUL8ejzMUwK4pdW5p4eSlCYjFGIkRQpt7kq3G
 JvvKEfCewVrExB9qjLRsx49eupODpFNjS+zI3fSBZEWgjQpi4uHhW6prheNd/YO5MJBy
 yj4St6qLV9/8aI3QE45Dm324IrksfJycOG3PwwlnC2mCduMM3Mzfs6wnzKSVzgh5w+dm KQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2t9c9q436f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 07:28:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S7Rlxp161109;
 Fri, 28 Jun 2019 07:28:45 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tat7dt0n2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 07:28:45 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5S7ShQB015527;
 Fri, 28 Jun 2019 07:28:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Jun 2019 00:28:43 -0700
Date: Fri, 28 Jun 2019 10:28:34 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 01/31] staging: bcm2835-camera: Ensure H264 header bytes
 get a sensible timestamp
Message-ID: <20190628072834.GE19015@kadam>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561661788-22744-2-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=863
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906280085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=915 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906280084
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
 Hans Verkuil <hverkuil@xs4all.nl>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 08:55:58PM +0200, Stefan Wahren wrote:
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> index 2b5679e..09273b0 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.h
> @@ -90,6 +90,8 @@ struct bm2835_mmal_dev {
>  		s64         vc_start_timestamp;
>  		/* Kernel start timestamp for streaming */
>  		ktime_t kernel_start_ts;
> +		/* Timestamp of last frame */
> +		u64		last_timestamp;

Not directly related to this patch but the indenting in this .h file is
all higgle-piggledy.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
