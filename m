Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38FE5951F
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 09:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC3C788159;
	Fri, 28 Jun 2019 07:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0qzPo4EVDH4w; Fri, 28 Jun 2019 07:38:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5829987EAE;
	Fri, 28 Jun 2019 07:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 25B561BF406
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 07:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A62C2044F
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 07:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBx2yWO9Uunv for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 07:38:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 89CBA20407
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 07:38:56 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S7chF6094903;
 Fri, 28 Jun 2019 07:38:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=R1rq9fMEaYE3cPLOb/Zu55GOyM3aBErGTTWM9neSg8I=;
 b=CeiLsr1BevMHP3a3PXhFgHw6n3CKbSRSYhdlkGiUBzF3iXa6BiQ0MkpEEPv5Qky2Idxb
 Ud0PNHwanJIj5LlxaJs49qAwsyOCVpTsuhj29yhT/lutu6FclqOjonsLQ/86X4VzwN/1
 xsKde3TgBO5KI7B9JsLaAR09BBfEeUqREgtruaViDlV5Q0izYgG+EFzK+iiddFGqx2xK
 js0uIDhluSB7kuBIa2Srf6+/BGCISIvVVMoosG7rxpEkScjC539nlR/1FjhQS6xB6A4L
 PkljfaS2RJtBQelPOFNwVEyTbqp+1dwSw5DjPCzLl3uT5V6FiHwxIeHnbjJx7izkSesd Cg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2t9c9q44s5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 07:38:53 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S7blvW060944;
 Fri, 28 Jun 2019 07:38:53 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2t9acdp1cr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 07:38:53 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5S7clBG022393;
 Fri, 28 Jun 2019 07:38:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Jun 2019 00:38:46 -0700
Date: Fri, 28 Jun 2019 10:38:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 06/31] staging: bcm2835-camera: Return early on errors
Message-ID: <20190628073838.GF19015@kadam>
References: <1561661788-22744-1-git-send-email-wahrenst@gmx.net>
 <1561661788-22744-7-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561661788-22744-7-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=919
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906280088
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=969 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906280088
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

On Thu, Jun 27, 2019 at 08:56:03PM +0200, Stefan Wahren wrote:
>  	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev, "connecting %p to %p\n",
>  		 src, dst);
>  	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
>  	if (!ret)
>  		ret = vchiq_mmal_port_enable(dev->instance, src, NULL);
> -error:
> +
>  	return ret;

In future patches, you probably want to flip this one around as well.
Try to do error handling instead of success handling.  In other words,
keep the success patch indented one tab and the failure path indented
two tabs.  Don't make the last failure check in the function special.

	ret = vchiq_mmal_port_connect_tunnel(dev->instance, src, dst);
	if (ret)
		return ret;

	ret = vchiq_mmal_port_enable(dev->instance, src, NULL);
	if (ret)
		return ret;
	return 0;

Or you can make the last check a little special if you want...

	return vchiq_mmal_port_enable(dev->instance, src, NULL);

Either format is good.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
