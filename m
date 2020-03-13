Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2C51841AF
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 08:48:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31F37894ED;
	Fri, 13 Mar 2020 07:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpncHXzew8Kn; Fri, 13 Mar 2020 07:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BDB2894CC;
	Fri, 13 Mar 2020 07:48:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 49B551BF39E
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 07:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 465FE2040D
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 07:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VLQ7YHMFyGeF for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 07:48:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id B9A3120370
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 07:48:20 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7dWup151272;
 Fri, 13 Mar 2020 07:48:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=2SK3WWBLInNfBxx+nDShdd6/aLXO/zK5eUAghcZpK6w=;
 b=dJTaazcEGYB5t2VvQ8V2QqJYkzxxJTFOcV6K/kLD5gFsJ8XeOzb0XrFF77RBQTJ8o6QV
 Co2WUAvK7LX+DRMdKSJjjiPVMbWArabCpeK/heebrdRjrckzKyAqMPmsKcmrqELk+P6b
 JL6uA/R1pcbuuUXFVHKX2TTGDOq/aqrx0BHlQGir1b3nWS9/Glr/Zrp9rgXu71Z1rHK6
 mnKVV8VNc1ufsBY2N3olqcxoBTFJA0W8aFdENf5TT5sl6ZTukmpZ/UN92qAtTT5Fo9L+
 jVJaSISWFkBwsbQM8yriTDAsAnye9PkssYn/8r6xyKEyfNygUpBhcpdjJN8bE7rSP+q8 ag== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2yqtavjbg2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Mar 2020 07:48:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02D7ljuR109285;
 Fri, 13 Mar 2020 07:48:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2yqtav271y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Mar 2020 07:48:19 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02D7mIYD004387;
 Fri, 13 Mar 2020 07:48:18 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 13 Mar 2020 00:48:17 -0700
Date: Fri, 13 Mar 2020 10:48:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
Message-ID: <20200313074811.GS11561@kadam>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
 <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 spamscore=0 mlxlogscore=806 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130043
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9558
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 phishscore=0 priorityscore=1501 clxscore=1031 mlxscore=0 adultscore=0
 spamscore=0 bulkscore=0 mlxlogscore=883 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003130042
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
Cc: devel@driverdev.osuosl.org, daniel.baluta@gmail.com,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl, sbrivio@redhat.com,
 Shreeya Patel <shreeya.patel23498@gmail.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The original patch description was basically fine.  Outreachy reviews
tend to be more pedantic about this sort of stuff than most maintainers.
There are a couple who have very strict rules, but try to avoid those
maintainers and your life will be happier.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
