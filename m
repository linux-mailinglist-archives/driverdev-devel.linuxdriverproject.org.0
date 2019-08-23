Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2C19A7B8
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Aug 2019 08:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26ACF22859;
	Fri, 23 Aug 2019 06:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z4JDIH0nE+Mv; Fri, 23 Aug 2019 06:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DDD9722786;
	Fri, 23 Aug 2019 06:40:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4D831BF5F4
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 06:40:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2074877E7
 for <devel@linuxdriverproject.org>; Fri, 23 Aug 2019 06:40:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SQ0k1sxOriFM for <devel@linuxdriverproject.org>;
 Fri, 23 Aug 2019 06:40:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1954087734
 for <devel@driverdev.osuosl.org>; Fri, 23 Aug 2019 06:40:15 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7N6TatF090800;
 Fri, 23 Aug 2019 06:40:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=IKs9FOOc1Z/w38x5TGWirx7GxyhP0csQK07wyh3lIHM=;
 b=gRK/Oul8P3OF8ZKfB+pqxzN4nNHtOr2uqWi/0YuwCME+fRKwgcAG7BrWCCs92SfHllvJ
 Zc/JMpY4IayuAG5oBDh/VszOznqMK0BAUH14gjnXT+DO1ZJGCvRhJ4SNEEj1QWzTl5ub
 /22uYb48mst7LNJbgCDjpDSEXLu+gUkDmUjzQzwh3qbZmcS1vH3FJkYqKO3lkh1pSo8f
 pvOxdfDqePiRswtWjH8q6S8Yq85TVuSOYRf7JvPU+06bP7JwodB75vSeJpBLVDBBqqVs
 t1hrh04vJ0OVfRut1o3/gGJ78I9L33sGUYeZJAuJ2y12v08/tDuSA2AdjUG/6LvcHrBb Ew== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2uea7ramcp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2019 06:40:11 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7N6SQ9U157702;
 Fri, 23 Aug 2019 06:40:10 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2uhusfawh1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Aug 2019 06:40:10 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7N6eAZD021291;
 Fri, 23 Aug 2019 06:40:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 22 Aug 2019 23:40:09 -0700
Date: Fri, 23 Aug 2019 09:39:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: stephen@brennan.io
Subject: Re: rtl8192u - meaning of TO_DO_LIST?
Message-ID: <20190823063947.GA23408@kadam>
References: <20190822215146.GA4240@pride>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822215146.GA4240@pride>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9357
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=839
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908230069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9357
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=899 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908230069
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
Cc: devel@driverdev.osuosl.org, Andrea Merello <andrea.merello@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 22, 2019 at 02:51:46PM -0700, stephen@brennan.io wrote:
> Hi all,
> 
> Similar to Colin's question yesterday about the rtl8192u driver, is
> anybody familiar with the TO_DO_LIST define? As I looked through
> checkpatch warnings I saw a particular concerning pattern in
> drivers/staging/rtl8192u/r8192U.h:2183:
> 
> #ifdef TO_DO_LIST
> 	if (Adapter->bInHctTest)
> 		/* long statement here */
> 	else
> #endif
> 	/* unindented statement here */
> 
> It seems this code would break if TO_DO_LIST were defined, and I verified
> that it is the case. I can't find any comment or documentation about what
> the goal of this "to do" item is.
> 
> Does anybody know what this is there for? If not, does it make sense to
> just go ahead and remove the code there?

If the code is dead, just delete it.  That's a very simple rule in
staging.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
