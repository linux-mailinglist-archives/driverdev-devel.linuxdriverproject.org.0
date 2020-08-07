Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3942A23EAFF
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 11:55:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AC91A254B8;
	Fri,  7 Aug 2020 09:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JksjN2xXuz3u; Fri,  7 Aug 2020 09:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 56ED4253E7;
	Fri,  7 Aug 2020 09:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DD2D1BF309
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 09:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1C0C8253E7
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 09:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cPfcWpp19qYz for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 09:55:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id E637A25281
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 09:55:34 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0779ml3q045938;
 Fri, 7 Aug 2020 09:55:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=U57hJGBvYAZAMOnQ3O6QNekgMQcBD7eYnU+p31GzweA=;
 b=y/Pbi7FUb1LHdHIpkXKGuWEqfg/BG+5bXr5kAlMt5zYIUrRf7lLNQ2KrSDsG7WUbBVpz
 SBKFdDDfxxZhEFHQeQKiarI0yYSKJSZFE8NPu7YJe6J1bTnmbwMHxi0eY0gvV0sf7aiC
 bfTPx1j9A22dXDBu23V/DD4Ae20Wp9hQlFU+PJg4CI6p+KkpKC7qJ0rSMMJLwJjzs3fZ
 4CLWpqPsvtT02m5h4hMucPEuzVrz6jzWCr/d8NpJV8F6VcZUtlU+QwfvqOA2SznWJws2
 w4iom168FzbHNbT6HgS1NByUXbhK6YnjzYhTWgRs/Zqzkqkdmcw6p8yAtAmgqHRPLgFR Dw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 32r6fxqphu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 07 Aug 2020 09:55:33 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0779nCXk187938;
 Fri, 7 Aug 2020 09:53:33 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 32qy8q98vk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Aug 2020 09:53:32 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0779rTWo028623;
 Fri, 7 Aug 2020 09:53:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 07 Aug 2020 02:53:28 -0700
Date: Fri, 7 Aug 2020 12:53:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH] staging: atomisp: move null check to earlier point
Message-ID: <20200807095320.GI1793@kadam>
References: <20200730084545.GB1793@kadam>
 <20200806221537.GA703560@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200806221537.GA703560@bjorn-Precision-5520>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9705
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 spamscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008070073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9705
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1015 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008070073
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Cengiz Can <cengiz@kernel.wtf>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Beyond that, though, I feel like the rules are stupid because I've seen
more than a couple commit messages which were contorted to avoid
imperative.  My own standard for commit messages is that 1) Is the
problem explained, especially what it looks like to user space?  2) Is
it clear what the solution is?  3)  Does the patch itself raise any
questions that I can't figure out and which aren't explained in the
commit message.  And I figure I'm not a domain expert but if I can
understand the commit message probably anyone can.

We've got people who speak English as a second language and then start
imposing pointless rules on top?  It's crazy.  I've had to ask someone
recently to redo a commit message and it seemed very obvious they were
focused on nonsense about imperative and avoiding saying "this patch"
to the extent that I literally could not figure out what they were
saying.  When I read the patch, of course, I could see what they were
doing but from the commit message it was impossible.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
