Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 869A2595D1
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 10:13:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7209D863E0;
	Fri, 28 Jun 2019 08:13:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mUZHqoKKbL89; Fri, 28 Jun 2019 08:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 343C5862FC;
	Fri, 28 Jun 2019 08:13:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 845741BF40F
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 08:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8145520345
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 08:12:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3cB72TS46VBT for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 08:12:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id ECF8220243
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 08:12:35 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S89BhV010144;
 Fri, 28 Jun 2019 08:12:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=lsoA1UWDq7nPbXKAtv1ZiW/0gagm4KjXwLbq4FZiBPg=;
 b=ASngeDiJjiNNpLJnzZiOLa+t+yJJ7CQq2AVaQ9mGd3Mj5nRe2Z2hl08EcSCHo3lK4BYS
 trnr90J7VJBT0MpGCDqHJv8ILBKKT5izPnxEuggKjrx5a+gBmiGRFyUtsPadP4H0Iv5W
 fbn6+sJd039YGIdMOlikCTWLh3S01R7yBYKE8gnjNlUl0gP1D/M4hxlpH5rWhLml8LK1
 MJU0jP4dwj4bfVh+2J5pCCSLooXdjQaditJ/cO+4k757RLcX2F4aUojh+bbWdhyAnChd
 pLOtxIUdwAW1lkgmzbPY6p5GSZLoxcOhZk1LDO11tHlVG0iELrkfjEQ6o1Ak4x9GIr8Q rg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2t9cyqv6pw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 08:12:33 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5S8ApmK026857;
 Fri, 28 Jun 2019 08:12:32 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2t9p6vs8ky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 28 Jun 2019 08:12:32 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5S8CSih009339;
 Fri, 28 Jun 2019 08:12:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 28 Jun 2019 01:12:28 -0700
Date: Fri, 28 Jun 2019 11:12:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 29/31] staging: bcm2835-camera: Add sanity checks for
 queue_setup/CREATE_BUFS
Message-ID: <20190628081217.GG19015@kadam>
References: <1561669769-2498-1-git-send-email-wahrenst@gmx.net>
 <1561669769-2498-3-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561669769-2498-3-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906280095
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906280095
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

On Thu, Jun 27, 2019 at 11:09:27PM +0200, Stefan Wahren wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.org>
> 
> Fixes a v4l2-compliance failure when passed a buffer that is
> too small.
> queue_setup wasn't handling the case where !(*nplanes), as
                                             ^^^^^^^^^^^
This is reversed?  It wasn't handling where *nplanes is non-zero.

> used from CREATE_BUFS and requiring the driver to sanity
> check the provided buffer parameters. It was assuming that
> it was always being used in the REQBUFS case where it provides
> the buffer properties.

These patches look really nice.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
