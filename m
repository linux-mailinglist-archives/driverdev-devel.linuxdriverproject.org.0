Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD25AC6FB
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Sep 2019 16:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFB6487BEE;
	Sat,  7 Sep 2019 14:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x3diVunDDQ6e; Sat,  7 Sep 2019 14:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 513AF878C8;
	Sat,  7 Sep 2019 14:39:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CC8E1BF385
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 14:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 08D14878C4
 for <devel@linuxdriverproject.org>; Sat,  7 Sep 2019 14:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gp87VW9Ebnen for <devel@linuxdriverproject.org>;
 Sat,  7 Sep 2019 14:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9632D878BB
 for <devel@driverdev.osuosl.org>; Sat,  7 Sep 2019 14:39:28 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x87EdQQl082101;
 Sat, 7 Sep 2019 14:39:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=s9aXxI7sA4me/ycb0JLeHZ2uDjHcFtgU9B3Kh9Cf838=;
 b=iSuHLhQJwF9e7CB3TviGpt1E4HkfhqMvBAPwkCPFb4jMd40mMwZ+PeAAQk3bJSKJ7nFS
 yznndfF+cG5gcqz/2EK9GJ5Pq4xM/dv5GCpqMsZ1DN57/h6hHTDDFXC0KbXFYPPUjojH
 sZ4XHpgXho2gnAga45cd3ykizzgHz1aXuoQKrYSZxfnQuw4Qqv65uNaZSH9mBYzQ7uYC
 PlBZVAl+zN8W4ljOiq5X5bbynr/fXjHeBfuVACUw9IOlMHImcmGA04+Avw4krAnpRY24
 OrgyuPmTpDMpU0x7WW2ScygnPyGHbii+QI9Bkv3JzGow4zpqH5VNSs5Ck8tR/wW99H/l jQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2uve1c01rm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Sep 2019 14:39:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x87EdN8K127952;
 Sat, 7 Sep 2019 14:39:25 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2uve9b0a34-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 07 Sep 2019 14:39:24 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x87Ecudq009512;
 Sat, 7 Sep 2019 14:38:56 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 07 Sep 2019 07:38:55 -0700
Date: Sat, 7 Sep 2019 17:38:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: volery <sandro@volery.com>
Subject: Re: [PATCH] Fixed parentheses malpractice in apex_driver.c
Message-ID: <20190907143849.GA30834@kadam>
References: <20190906183801.GA2456@volery>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906183801.GA2456@volery>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9373
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909070157
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9373
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909070157
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

You need a subject prefix.  It should be something like:

[PATCH] Staging: gasket: Fix parentheses malpractice in apex_driver.c

Generally "Fix" is considered better style than "Fixed".  We aren't
going to care about that in staging, but the patch prefix is mandatory
so you will need to redo it anyway and might as well fix that as well.

On Fri, Sep 06, 2019 at 08:38:01PM +0200, volery wrote:
> There were some parentheses at the end of lines, which I took care of.
> This is my first patch.
  ^^^^^^^^^^^^^^^^^^^^^^

Put this sort of comments after the --- cut off line

> 
> Signed-off-by: Sandro Volery <sandro@volery.com>
> ---
  ^^^
Put it here.  It will be removed when we apply the patch so it won't
be recorded in the git log.

>  drivers/staging/gasket/apex_driver.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)

Joe's comments are, of course, correct as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
