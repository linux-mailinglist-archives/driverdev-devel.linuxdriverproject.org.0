Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6DFC35D0
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 15:35:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7541C21546;
	Tue,  1 Oct 2019 13:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yn5eJAkBUn4; Tue,  1 Oct 2019 13:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77BF2203DA;
	Tue,  1 Oct 2019 13:35:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 359201BF28D
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C9D32049E
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1HPnrXx2Tl0 for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 13:35:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id B2C992153B
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 13:35:02 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DXiR3058353;
 Tue, 1 Oct 2019 13:35:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=2S6v0Da0UQZgNufjPiiwLYA37zV4TkfepApDSqjUYWM=;
 b=MkmSdRxckjXVch/Lb4V5fl6dWFO1n6k24LEg/MHve2pTIE8NKgqipnzP+PK51UQLisPT
 nb1dJ+eBDCTaUNmlO03g7I7A3maiFvx0rDDmXF4zoohocPSZ1XRpBTGzEmmEGsMKLIa1
 ycaCAlB5+jLCHjLJvYFGVT6dme359igny3P7+xCCMRPeAjUBNCReE2Ktx3Jrg176f1Ro
 aRfAXAmXWysgJdKK9ZYH7ug+djbZRAI+SY0GOD7OWk+Dk4l0J9loTm9Y9tQ+srMpn0L5
 LzrFhOe6ycli7WaNrXqHcpk1fg8Q6UbeKE29LCyX2rngRDuJvdMybm23h+hLFVBGwHp4 Uw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2va05rntuv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:35:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91DXZLj116417;
 Tue, 1 Oct 2019 13:34:59 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2vbsm2048s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:34:59 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x91DYq9J004937;
 Tue, 1 Oct 2019 13:34:53 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 06:34:52 -0700
Date: Tue, 1 Oct 2019 16:34:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] Staging: fbtft: fix memory leak in fbtft_framebuffer_alloc
Message-ID: <20191001133408.GG22609@kadam>
References: <20190930030949.28615-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190930030949.28615-1-navid.emamdoost@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010123
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010123
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
Cc: Jan Sebastian =?iso-8859-1?Q?G=F6tte?= <linux@jaseg.net>,
 devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, smccaman@umn.edu,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 emamd001@umn.edu, Bhanusree Pola <bhanusreemahesh@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Phil Reid <preid@electromag.com.au>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 29, 2019 at 10:09:45PM -0500, Navid Emamdoost wrote:
> In fbtft_framebuffer_alloc the error handling path should take care of
> releasing frame buffer after it is allocated via framebuffer_alloc, too.
> Therefore, in two failure cases the goto destination is changed to
> address this issue.
> 
> Fixes: c296d5f9957c ("staging: fbtft: core support")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>

Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@gmail.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
