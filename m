Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9118B49
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 16:13:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCB868684E;
	Thu,  9 May 2019 14:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hG0rEK9wrV6D; Thu,  9 May 2019 14:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F55E84E24;
	Thu,  9 May 2019 14:12:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 713001BF580
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:12:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E15B864E9
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 14:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQiu3wLJBpPG for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 14:12:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A3F58863FD
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 14:12:54 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49Dwxqg157483;
 Thu, 9 May 2019 14:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=nD8rLy+QMi6kereJLer+CD9I0tBeKUoE6uLBEpCj52g=;
 b=yZHNs4Bpp8MLtsa+9Oh5/5F9oYS79p1/+ik71nm9+VmwduJUC//fqbolPA2t/UnzTc1h
 4Ceqld+Y9uY87SZthLgkIT07YmObAhOrSlXCHFg2Xfw1x8U3JCZNyZzxh/NPzTUongWH
 Y00Zbvz4rXJNQzhnk2dBZGRAJndRzozlqH+qFcswemoXgWhjxWz4y6YaN0kj/jWv9bot
 kdQR93JPI50bMJXtv4h4va0p4wORwcvKTQ7TVPuf7ZBsUF7lB2dRkynD5+7Wh+2Ynuhe
 EHDOWfAVn0me63UU71wrMTIkX3HI72MiW48JNerceFWKwlVT1qYBIWyvG/eYyDPSZd+Q 4g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2s94bgb4eg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 14:12:51 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x49EBAdk157022;
 Thu, 9 May 2019 14:12:50 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2s94bataj8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 May 2019 14:12:50 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x49ECnYB011244;
 Thu, 9 May 2019 14:12:49 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 May 2019 07:12:49 -0700
Date: Thu, 9 May 2019 17:12:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Matt Sickler <Matt.Sickler@daktronics.com>
Subject: Re: [PATCH v2] kpc_i2c: Remove unused file
Message-ID: <20190509141243.GE21059@kadam>
References: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905090084
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9251
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090084
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add Staging: to the subject.

[PATCH v2] Staging: kpc_i2c: Remove unused file fileops.c

On Thu, May 09, 2019 at 01:38:27PM +0000, Matt Sickler wrote:
> The whole file was wrapped in an #if 0.  I'm guessing it was a leftover file
> from when we were first developing the driver and we just forgot about it.
> 
> V2: Forgot the signed-off-by line on the first patch.

Put this after the --- cut off line

> 
> Signed-off-by: Matt Sickler <matt.sickler@daktronics.com>
> ---
  ^^^

Here.

There is something else wrong with the patch and it's corrupted a bit or
something.  Please read the first paragraph of
Documentation/process/email-clients.rst

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
