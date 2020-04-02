Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9D919BD9C
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 10:30:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88CDD88386;
	Thu,  2 Apr 2020 08:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xtjfo6NMljgN; Thu,  2 Apr 2020 08:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE7C18827E;
	Thu,  2 Apr 2020 08:30:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5B421BF3AF
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB59F20438
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 08:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uNPPJjrAGX8x for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 08:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D911203A9
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 08:30:01 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328SgBg045448;
 Thu, 2 Apr 2020 08:30:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=U+mkRVdl27+gx6adSuTh7F2Z1TVp+AUE66YF/7kfUFw=;
 b=i5Rz+dwfHuNn9bHUu0m4m4b7e0C6i+2MDYSymVqwl2yLOYrPqG9igxh2/yLq8/w4nWbn
 BMR4aIYXbaKvzZwAxxHkcfyHNrUj/7me1EVMZK+kHOas1VImniRnmzaCEL8u2ZMH0zpi
 dr/c3TqXmDCIgTzUgQuj5g90f7cBgWieHH1Wda4ilNoGk5mPXewGCZxKMfd0v5nqya37
 tH9+nf28vOGtQODRxjTAnUTdRc6PV4+F7iuUQXlImgnKo2hovknzKuclcNAs/ta6pWMb
 Jps3cG4vkKkqRHpXCxIl+mRSNI6Xk8Q4hI8zrXqI+MEQkQIZrfR1Yyn/GQEQoBhDKUxi Uw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 303aqhtbxy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:30:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0328IIxa090802;
 Thu, 2 Apr 2020 08:27:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 302g4v4ys2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 08:27:59 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0328Rr5P026828;
 Thu, 2 Apr 2020 08:27:53 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 01:27:53 -0700
Date: Thu, 2 Apr 2020 11:27:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
Message-ID: <20200402082745.GG2001@kadam>
References: <20200326152251.19094-1-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326152251.19094-1-ajay.kathat@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 suspectscore=1
 mlxscore=0 spamscore=0 malwarescore=0 mlxlogscore=889 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1011
 malwarescore=0 impostorscore=0 mlxlogscore=954 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020076
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
Cc: devel@driverdev.osuosl.org, lkml@sdf.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Adham.Abozaeid@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 26, 2020 at 03:23:36PM +0000, Ajay.Kathat@microchip.com wrote:
> From: George Spelvin <lkml@SDF.ORG>
> 
> The code in lib/ is the desired polynomial, and even includes
> the 1-bit left shift in the table rather than needing to code
> it explicitly.
> 
> While I'm in Kconfig, add a description of what a WILC1000 is.
> Kconfig questions that require me to look up a data sheet to
> find out that I probably don't have one are a pet peeve.
> 

I don't know how this patch made it through two versions without anyone
complaining that this paragraph should be done as a separate patch...

> Cc: Adham Abozaeid <adham.abozaeid@microchip.com>
> Cc: linux-wireless@vger.kernel.org
> Reviewed-by: Ajay Singh <ajay.kathat@microchip.com>
> Signed-off-by: George Spelvin <lkml@sdf.org>
> ---

This should have you Signed-off-by.  The Reviewed-by is kind of assumed
so you can drop that bit.  But everyone who touches a patch needs to
add their signed off by.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
