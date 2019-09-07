Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5EAAC70D
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 16:52:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA8EE86CB4;
	Sat,  7 Sep 2019 14:52:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lwlJT+AECyWp; Sat,  7 Sep 2019 14:52:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E08786AE5;
	Sat,  7 Sep 2019 14:52:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F248F1BF385
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 14:52:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF59B20341
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 14:52:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTBtbrxOnV4G for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 14:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 3AC4320111
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 14:52:25 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x87EmhLw088769;
 Sat, 7 Sep 2019 14:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=tsKmCXb/CruJncApOshfpn/JACneo/DGDdmtT3egoso=;
 b=CYEPcycU8FDYEHOoqIMJp+jApC2SO55fi3P0ZsZNIz4PTdUBeL+yLDQ3yCZR2CdQHW8g
 LAyKkVR6AOBnQcQImuvX5Av3fHQS520PugRBVt7evJY1yz6+HX97eMq1/meEKTKgiUxR
 MpR7BsJh+/0vUdxOWTLchkhLTdnZKSq9n1rtvUhDuEwkR0ZLzcDeO/r+661QRd2aqb8B
 0qMrAg4AD9K3XK1B9+AXyvsa+m8fDD8X5sJ/t9jD74agQfpRRUa5ZueSGfVaM4I8lMNq
 7eIPH+7d+hbWNL7MVHNPRNoVGdc1k0fiDVL0BEmAFtvUEAnfSxI7yhGhELv2gNUFuzPz Tw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2uvem080dt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Sep 2019 14:52:23 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x87Elw3c093136;
 Sat, 7 Sep 2019 14:52:23 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2uv2kxckwx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Sep 2019 14:52:23 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x87EqJeR022719;
 Sat, 7 Sep 2019 14:52:21 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 07 Sep 2019 07:52:19 -0700
Date: Sat, 7 Sep 2019 17:52:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH] Fixed parentheses malpractice in apex_driver.c
Message-ID: <20190907145210.GB20699@kadam>
References: <20190907143849.GA30834@kadam>
 <C3F8799B-2CFE-4F3B-A01A-DFDF248BA01F@volery.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C3F8799B-2CFE-4F3B-A01A-DFDF248BA01F@volery.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9373
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909070159
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9373
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909070159
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
 linux-kernel@vger.kernel.org, rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 07, 2019 at 04:48:21PM +0200, Sandro Volery wrote:
> > Joe's comments are, of course, correct as well.
> > 
> > regards,
> > dan carpenter
> > 
> 
> I'll take a look at Joe's suggestions too sometime tonight. I'd feel kinda bad tho if I just apply his work and send it in?

Don't feel bad.  Just do it.  Give him credit in the commit message if
you want.  "Thanks to Joe Perches for his help."

I sometimes give people word for word patches and they don't copy it
exactly and I wonder if this is why...  My exact patch was the best one.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
