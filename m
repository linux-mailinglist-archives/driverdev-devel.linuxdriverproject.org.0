Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7835829F
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 14:30:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6517F83339;
	Thu, 27 Jun 2019 12:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DTzFDdgpSFQ; Thu, 27 Jun 2019 12:30:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8E0580D34;
	Thu, 27 Jun 2019 12:30:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 318F01BF414
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 12:30:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D87B203EB
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 12:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnLOVjVy-Zsn for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 12:30:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id D6EF420108
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 12:30:20 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5RCOK1m031962;
 Thu, 27 Jun 2019 12:30:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=ipk8d5AQ/zqe9jL5wZSKQYUV3pOPXWHuiuA2nj7XOY8=;
 b=n8itDAK18wwSXLo4BzgEMFFBDuG9OQsmUhltNoZycuwPKS7JEuWwU0aXjBdqlsYKgXeH
 dcgkVqIiBE6ODSLiPNQXRk3rIKgtV46NaQ8AhQpzC/fRadCppaRrcjbtbuwh1wRLXYom
 SnxPjdpQXYSR6kVHq27LHetl1q9Ps7GVT1LS3hxA8r8WvXZgNRlz/V6zCNug2UceGzkS
 uEmBwTe9MLpXlM58WfLodm6iPrBVKHtL7D6zMYvQwHZAvQwZTOKVS1YECgdUET9X/gVl
 w9l8bnNqVHX393ogPgNwjEZ6wwhIL6PoaR+S48FUziqk0+HqTO1wkqQyZpEr3tal3vti 3w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2t9c9q00y6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2019 12:30:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5RCTViM163917;
 Thu, 27 Jun 2019 12:30:17 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2tat7dbggj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2019 12:30:17 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5RCUFHQ016380;
 Thu, 27 Jun 2019 12:30:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 27 Jun 2019 05:30:14 -0700
Date: Thu, 27 Jun 2019 15:30:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lukas Schneider <lukas.s.schneider@fau.de>
Subject: Re: [PATCH] media: bcm2048: Macros with complex values should be
 enclosed in parentheses
Message-ID: <20190627123006.GC19015@kadam>
References: <20190627121515.32029-1-lukas.s.schneider@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627121515.32029-1-lukas.s.schneider@fau.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9300
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=850
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906270147
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9300
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=902 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906270147
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, code@wizofe.uk, linux-kernel@vger.kernel.org,
 st5pub@yandex.ru, Jannik Moritz <jannik.moritz@fau.de>,
 hverkuil-cisco@xs4all.nl, gabrielfanelli61@gmail.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This breaks the build.  :(

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
