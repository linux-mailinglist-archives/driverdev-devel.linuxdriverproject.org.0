Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 265C031EBEE
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 17:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5EEA260684
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 16:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ItYDcLZtCxIC for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 16:02:24 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 837DD60623; Thu, 18 Feb 2021 16:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B18360652;
	Thu, 18 Feb 2021 16:01:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A4501BF391
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7322D60623
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1DmLpYEQJSCI for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 16:01:32 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4104760631; Thu, 18 Feb 2021 16:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B3765605CD
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:01:28 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IFsDZ2112412;
 Thu, 18 Feb 2021 16:01:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=re0AgduDc5MORj6d0mAbSQpCdoy7EE3lsvXNuGddlUA=;
 b=glkujHk+UnRLV3HjGI3+ruqbbgQ1mN2uVv2dRbaStOLSpPz0lRWpaYBvmBMewXRzjbq8
 Tr800OEVtEW4vnCPmCmCzfsy9cLETOTVxeNSPe75rCvtJSvhY27OnYrncmEugUZ6UHap
 BHrS7WrJ7fuR8mdnTWDPSkbzeoanEyDLwkQJc8b/ciNLdSNyEAtkYZeSfO6xgUcDBe1G
 DiH+S+QjbTW/P4G/ANDBvE4hkH2jezgM0vNknpkJ97OzKkC2IWJQnse6OqqZ90ZtrroE
 15a6F2ptbSm33+sakYRGOWjOjUVqCIlMBn+zrB894T1DrPgVmLAgLOqfQCMxhtsReNr5 2w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 36p7dnpbte-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 16:01:27 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11IFoFRO074820;
 Thu, 18 Feb 2021 16:01:25 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 36prp1q29q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 18 Feb 2021 16:01:25 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11IG1N6P013704;
 Thu, 18 Feb 2021 16:01:24 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 08:01:23 -0800
Date: Thu, 18 Feb 2021 19:01:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH] fix comparisons - put constant on right side- eudyptula
Message-ID: <20210218160114.GM2087@kadam>
References: <20210218155422.7-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218155422.7-1-fuzzybritches@protonmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999
 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102180139
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9898
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 spamscore=0 adultscore=0 clxscore=1011 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102180139
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 03:54:29PM +0000, Kurt Manucredo wrote:
> 
> Dear linux kernel developers,
> 
> for my eudyptula challenge it is required of me to fix a coding style
> issue in the staging area in linux-next. I am aware that it is in
> general frowned upon when submitting these sorts of patches. However, to
> finish my 10th challenge I was tasked to do exactly that. So I ask you
> kindly to pull this patch if possible.
> 
> Thank you for your time,

These patches are fine in staging.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
