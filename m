Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFAD1088C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 07:54:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35D5D87BD7;
	Mon, 25 Nov 2019 06:54:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D0tIazbNbvZT; Mon, 25 Nov 2019 06:54:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F9D087B8E;
	Mon, 25 Nov 2019 06:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66FAD1BF3A6
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 06:54:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 628302049A
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 06:54:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wXQ1PfaKge-t for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 06:54:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id B16962048D
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 06:54:37 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAP6sDEp028057;
 Mon, 25 Nov 2019 06:54:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=l/PZc/dlwG4EAD6FdzK2zvGCN4xk8EscxXrPQL25xkE=;
 b=MfCLIu10rN5rqDV/Cx/Z4560dJqUaaIoGOSdqx+XrO744F2EAUEg2I3cFoflM5cWcSme
 o969klq7bDx9AxK3cIzKRdq8z9vpIROYW/+Vjubit7BNvBRQRtIDDCrzbQI4TTSkZ9Qg
 In3Vt3hJbWnhC5O0c+MLrCzx0EJph29iiSjoPeienOsEjOgw/lpXLBsodHp2A//JcLXv
 x1UwlfEZTi1OZr5pGP236d8ZZfskaBj+ksnpFqaoG7rep0LbV9QrrCF0PP8mGwhJJtf3
 kvz1Eb+QssOLRlM+6t8pKiH/JaQPuDb9U26+DovNvVo4uASYNJAF2YsbFGnIiWZJ+NSh Gg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2wev6twj2g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 25 Nov 2019 06:54:34 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAP6sDHV016407;
 Mon, 25 Nov 2019 06:54:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2wfe9dnv8c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 25 Nov 2019 06:54:33 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAP6sVvg001498;
 Mon, 25 Nov 2019 06:54:32 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 24 Nov 2019 22:54:30 -0800
Date: Mon, 25 Nov 2019 09:54:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Adham.Abozaeid@microchip.com
Subject: Re: [PATCH 1/4] staging: wilc1000: use runtime configuration for
 sdio oob interrupt
Message-ID: <20191125065423.GA1774@kadam>
References: <20191122205153.30723-1-adham.abozaeid@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122205153.30723-1-adham.abozaeid@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9451
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=697
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911250062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9451
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=778 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911250062
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
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 22, 2019 at 08:52:02PM +0000, Adham.Abozaeid@microchip.com wrote:
> From: Ajay Singh <ajay.kathat@microchip.com>
> 
> Set SDIO Out-of-band interrupt configuration at run time by passing
> parameter during module load.
> 

This is barely an improvement at all...  Why not just make it auto
detect?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
