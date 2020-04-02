Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F6F19BF31
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 12:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26CA988689;
	Thu,  2 Apr 2020 10:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JG7xJ3CbiV1; Thu,  2 Apr 2020 10:19:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8740687938;
	Thu,  2 Apr 2020 10:19:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 055031BF2CA
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 10:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01F158795A
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 10:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0prQyMeyB-m for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 10:19:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BEC6487938
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 10:19:31 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032AHeUg076924;
 Thu, 2 Apr 2020 10:19:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=WagfC93/RvzrHfjL3JZzy15HAm+jQ3RaSf+gam9lNdc=;
 b=D5sbUCQP1nH4X5j+lgLqVGYild/G4O+89qDm8eKl13f/5vEpb4Nd0Ua1Q/eRef7Xe6nq
 rn87ZxoH+IPDOxLbzxI01m5ADqI77BJ0BoITXY9uNyjDNWicriUeittFwEUji8FnY0zV
 EJvLysshc+OJZaVqix0mvq/uS4xI4scRmewjK8/b0zH0iXrhCgfGYMOyw/o7C+ZJNaqy
 1V9UXgh84mgxbocBnSRpbnAm9jp172KsVLtzwXCrKeRp3i/1oXrSp09n8KRQBgUyTpUW
 YBVVzHSfVzty7SfxcI8/22zdpiVRMjOTnLK9Jlqbdw3TRACFh3s+kRCYQ5LcXXUyVce2 EA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 303yund2xn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 10:19:30 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032AGvZm195705;
 Thu, 2 Apr 2020 10:17:29 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 302g2j9ruy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 10:17:29 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 032AHSwb028832;
 Thu, 2 Apr 2020 10:17:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 03:17:28 -0700
Date: Thu, 2 Apr 2020 13:17:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michael Straube <straube.linux@gmail.com>
Subject: Re: [PATCH] staging: rtl8188eu: refactor Efuse_GetCurrentSize()
Message-ID: <20200402101720.GJ2001@kadam>
References: <20200329100450.10126-1-straube.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200329100450.10126-1-straube.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020093
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 29, 2020 at 12:04:50PM +0200, Michael Straube wrote:
> Refactor while loop in Efuse_GetCurrentSize() to reduce indentation
> level and clear line over 80 characters checkpatch warnings.
> 
> Signed-off-by: Michael Straube <straube.linux@gmail.com>

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
