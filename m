Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25540324ADB
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Feb 2021 08:08:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B576F431FC;
	Thu, 25 Feb 2021 07:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mLn8sL4y7IpU; Thu, 25 Feb 2021 07:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DA33431B8;
	Thu, 25 Feb 2021 07:08:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D00D11BF350
 for <devel@linuxdriverproject.org>; Thu, 25 Feb 2021 07:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BEBCD6F6EE
 for <devel@linuxdriverproject.org>; Thu, 25 Feb 2021 07:08:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aCOiSqCDi26b for <devel@linuxdriverproject.org>;
 Thu, 25 Feb 2021 07:08:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3137E6F6ED
 for <devel@driverdev.osuosl.org>; Thu, 25 Feb 2021 07:08:28 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11P74AsX193359;
 Thu, 25 Feb 2021 07:08:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=zBKsoyvZW42pljgNs2qIOF6TztDTbsqax0iQzIQWQUA=;
 b=HTkWMgw71P/uCefychW8VqYtMY5zRPMj4BnFIAQGW0GwYTBX5eMLVdtRZHYYGvSizjcO
 N5BnMkkyhImBV0AMy46s4EqdPeQLD4szf/h/ClOHq/SgyUWg/k+J/Yq8bwsfL+hkoPrX
 rd3n0q7o4ix6Qbj1mcWJQvCk14VfcGYdLmelMnMWwSNK9DKK0O6nRS4Ltd2QGPSgfR8O
 V26Nor9/PxNaDXPfrsf4GTQlCeK7ik/6jZPa29Bv56Rkk7Ob29sEPQckqFolhC5MLqq/
 WVrN3l7qnlSVnpBy3BgguWBfiSaUEv/cyMTYFbY8ZQc83MdJGuiomK+KJBfR4aUcnbIE 5Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 36ttcmddgu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Feb 2021 07:08:26 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11P74bsS172733;
 Thu, 25 Feb 2021 07:08:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 36v9m6week-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 25 Feb 2021 07:08:25 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11P78Mkm019540;
 Thu, 25 Feb 2021 07:08:23 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 24 Feb 2021 23:08:22 -0800
Date: Thu, 25 Feb 2021 10:08:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: William Durand <will+git@drnd.me>
Subject: Re: [PATCH v2 00/13] bss_ht struct cleanups
Message-ID: <20210225070815.GV2087@kadam>
References: <20210220172909.15812-1-will+git@drnd.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210220172909.15812-1-will+git@drnd.me>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9905
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0
 suspectscore=0 mlxlogscore=999 mlxscore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102250057
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9905
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 lowpriorityscore=0 spamscore=0 mlxscore=0 bulkscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102250057
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
