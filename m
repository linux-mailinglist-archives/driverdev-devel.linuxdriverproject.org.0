Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A85D3D51
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 12:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 62AB98887E;
	Fri, 11 Oct 2019 10:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImhvSKPiU-dj; Fri, 11 Oct 2019 10:27:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 50D3B8883F;
	Fri, 11 Oct 2019 10:27:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F9FC1BF2A2
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 10:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4A7EF2039C
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 10:27:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XEIVhocAZ98N for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 10:27:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id AF92D20396
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 10:27:37 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAO55M188694;
 Fri, 11 Oct 2019 10:27:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Q+0VIr151B1mn8oR6VfAD9KdaxNSMZsIBKXR7z/rOdE=;
 b=jO3L995q1kkhqBcUj9rOzRGx05DgAsVSKEbaBs5Lb9IiAZoI2Af4gHePVpomAhxBWWyQ
 9RlOX1nWekuadvnoOeG9d5tyCkm8Y1zUrcPvBrFrikWGS1zpaxVtau9UlcCWp4rzKORT
 K6QTr44dbHHIxQ7v0r7K9iV+cm3W2QyOjRkAgCLagUacxojECxLJt7CeDUWDmxttevg5
 vRj8JTMyw7mFaCrumI5xpEQN7Ncx85ajwIJfG9lR8tQZGxzUo9oDHwHagV5SW/Zn+8YU
 DYjZ4DaJXNrsCGJfUvE1XsIW2dkrgmpgHoHWEJ5ndWuR51eD3PZADJrGreNslHF7Q8wW Ig== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2vek4r0p5v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:27:32 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAPrKo097601;
 Fri, 11 Oct 2019 10:27:32 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2vjdykqb79-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:27:32 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BARMgi017104;
 Fri, 11 Oct 2019 10:27:22 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Oct 2019 10:27:21 +0000
Date: Fri, 11 Oct 2019 13:27:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v2 0/2] Add initial support for slimport anx7625
Message-ID: <20191011102711.GP13286@kadam>
References: <cover.1570760115.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1570760115.git.xji@analogixsemi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110099
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 02:20:47AM +0000, Xin Ji wrote:
> Hi all,
> 
> The following series add initial support for the Slimport ANX7625 transmitter, a
> ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.
> 
> This is the initial version, any mistakes, please let me know, I will fix it in
> the next series.
> 
> Thanks,
> Xin
> 

I'm not a domain expert but I like these patches now.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
