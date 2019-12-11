Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DE311A505
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 08:23:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2B512051B;
	Wed, 11 Dec 2019 07:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CARPqa9Xt23Z; Wed, 11 Dec 2019 07:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6430E204F0;
	Wed, 11 Dec 2019 07:23:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9A2221BF3C3
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9558E204D6
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 07:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdLs5NFzsgkT for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 07:23:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id CF0AF204CE
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 07:23:15 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBB7EYeL106024;
 Wed, 11 Dec 2019 07:23:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=ly12157iHdm2LNcwiJ046REPVygJhzSMcv5KEc9fs6I=;
 b=HPfHwAfr+R7uuP/vB8zTTkruHNibcK33E7n66Ne26gqHl/ylG0Zm1+3CAzcFeFPUjG7J
 yqpxfgZjTnMxCbrn17WVXj5nICB1gGA9CpNH4431xJhdJBi/uiMAomDOyAeV8w78GWoX
 9CkDCVkPxb9IQs7BKpJ6nn/Nm2UHg5vsMuNLH+8AJH4poPmfcsbJF5DFzHiPvxpAqh/O
 F2YmthVP3J7ReaP72wC/N8UAmPQ6Pn9pb9WCTy4t+Cpw4JbcLJkweOVPJPTPVU50V9Kr
 YOf45BbIHwj84G6Ai85gAvzC6ZYdgKIyZFgwRR+VEpjTnfQ+1X3foz3cz7OLFYRCEX6B Cg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2wr4qrjprh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Dec 2019 07:23:08 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBB7Etc6177177;
 Wed, 11 Dec 2019 07:23:07 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2wtqdu3y2y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Dec 2019 07:23:07 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBB7MjnW030170;
 Wed, 11 Dec 2019 07:22:49 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Dec 2019 23:22:45 -0800
Date: Wed, 11 Dec 2019 10:22:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 1/2] staging: octeon: delete driver
Message-ID: <20191211072233.GB2070@kadam>
References: <20191210091509.3546251-1-gregkh@linuxfoundation.org>
 <EFBFCF4B-745B-4B1B-A176-08CE8CADBFEA@volery.com>
 <20191210120120.GA3779155@kroah.com>
 <20191210194659.GC18225@darkstar.musicnaut.iki.fi>
 <20191210201515.GA16912@roeck-us.net>
 <20191210214848.GA5834@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210214848.GA5834@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9467
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912110062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9467
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912110062
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
Cc: devel@driverdev.osuosl.org, Branden Bonaby <brandonbonaby94@gmail.com>,
 Florian Westphal <fw@strlen.de>, Paul Burton <paulburton@kernel.org>,
 Giovanni Gherdovich <bobdc9664@seznam.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Julia Lawall <julia.lawall@lip6.fr>, Sandro Volery <sandro@volery.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Valery Ivanov <ivalery111@gmail.com>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 10, 2019 at 11:48:49PM +0200, Aaro Koskinen wrote:
> On Tue, Dec 10, 2019 at 12:15:15PM -0800, Guenter Roeck wrote:
> > On Tue, Dec 10, 2019 at 09:46:59PM +0200, Aaro Koskinen wrote:
> > > On Tue, Dec 10, 2019 at 01:01:20PM +0100, Greg Kroah-Hartman wrote:
> > > > I have no idea :(
> > > 
> > > It's stated in the TODO file you are deleting (visible in your
> > > patch): "This driver is functional and supports Ethernet on
> > > OCTEON+/OCTEON2/OCTEON3 chips at least up to CN7030."
> > > 
> > > This includes e.g. some D-Link routers and Uniquiti EdgeRouters. You
> > > can check from /proc/cpuinfo if you are running on this MIPS SoC.
> > 
> > It also results in "mips:allmodconfig" build failures in mainline
> > and is for that reason being marked as BROKEN. Unfortunately,
> > misguided attempts to clean it up had the opposite effect.
> 
> This was because of stubs hack added by someone - people who do not run
> or care about the hardware can now break it for others with their
> silly x86 "compile test"s.

Compile tests are nice in theory for finding static analysis bugs but
often they introduce static checker false positives because we don't
initialize *param variables in the stub functions.

And those compat stubs in particular were a headache to review.  We
broke the build a couple times, but we *almost* broke the build a *lot*
of times...

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
