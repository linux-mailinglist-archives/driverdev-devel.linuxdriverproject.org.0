Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 032045258C
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 09:56:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 17DFB85E28;
	Tue, 25 Jun 2019 07:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ieg_nQUvjstY; Tue, 25 Jun 2019 07:56:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AB7385E27;
	Tue, 25 Jun 2019 07:56:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DF961BF31B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 07:56:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8B16985BC4
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 07:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pY46LK6bVA0 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 07:56:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 01DEA85B1C
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 07:56:10 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5P7sOWG008130;
 Tue, 25 Jun 2019 07:56:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=5hPNEEOLEhrLonKXVMBQSK5/DYkRHzR0TDxjO5rF1gg=;
 b=yx6SN5D5OpW+U1sSOBLsx/z+kGMd1Jy3WzcGBdZNSUUPIONIFXRKSa5jA/FLZQs8Vsdj
 h2qFp+7RgdPKOYbh9JEstZAxRTYy1oM3iRw3Ay20n3dIWjWkYalYHC7Whq++2YEfSLjz
 J8JS5QTpX+QFjCPBzejqmSJ15glCWGgb47/KAeei9RCFm+odfWJ4kPfaEYY54Vr7BT6N
 UMFOwPx0bkvm5UzKRoKNpodMfrti044WM05JNGTqa5S02Purd36alP0dXOG4EZtbsiME
 4fEw71+2erJS/dQUJXnZtYAXm+D4nC9f2+CI84jeVspfQV/qd6bgVOZM1Q9PHitGPmgJ hQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t9brt2jv7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 07:56:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5P7tXD6007243;
 Tue, 25 Jun 2019 07:56:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tat7c3a4g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 07:56:07 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5P7u6hM005590;
 Tue, 25 Jun 2019 07:56:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 00:56:06 -0700
Date: Tue, 25 Jun 2019 10:55:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Message-ID: <20190625075558.GY28859@kadam>
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906250065
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
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 12:13:15AM +0200, Stefan Wahren wrote:
> The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
> ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
> This breaks probing of bcm2835-camera:
> 
>     bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
>     Cleanup: Destroy video encoder
>     Cleanup: Destroy image encoder
>     Cleanup: Destroy video render
>     Cleanup: Destroy camera
>     bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
>     bcm2835-camera: probe of bcm2835-camera failed with error -3
> 
> So restore the old behavior and fix this issue.
> 
> Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

I feel like this papers over the issue.  It would be better to figure
out why this is failing and fix it properly.  -3 is -ESRCH and when I
grep for ESRCH I only see it used in the ioctl so that can't be it.

I think it must be -MMAL_MSG_STATUS_EINVAL actually, but it comes from
the firmware or something so we can't grep for it.

Can we do some more digging to find out why it's failing or otherwise
we could add a comment.

	/*
	 * FIXME:  port_parameter_set() sometimes fails with
	 * -MMAL_MSG_STATUS_EINVAL and we don't know why so we're
	 * ignoring those errors for now.
	 *
	 */
	return 0;


regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
