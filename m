Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F33FAFF2B
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 16:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADCB985F6C;
	Wed, 11 Sep 2019 14:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8kxfT1ClIpiF; Wed, 11 Sep 2019 14:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9353485F56;
	Wed, 11 Sep 2019 14:51:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 114ED1BF295
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 14:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CF4E2040C
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 14:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KjJvPI7FyiZ6 for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 14:51:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 29F85203FE
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 14:51:36 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BEi0YN161669;
 Wed, 11 Sep 2019 14:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=GALjjsQ4XuYbTbMKG4BUnACZ78xWL+7Db4FVG5RO2+k=;
 b=U0v+kCO3frbL4CXrNOLTwy2buzmL0rI1kd9rn4/GnGpuRAXLmxRVcw9t6z0hvwOnIPuF
 khPYVpp2Qe5miSZXn8z4lXHttKdts51XbQL6Cqq5pSnuLgTwXdlbDYxxdwYDQvyG2Fto
 GQHHZDZ+vxoWVXDizobo9cpByxp8NqS0w4aOGd3smYY2FknSZnmGsDRUwYsuYe97uXh+
 PZiKNMhkHRQlWWHCOBdNzDC0EHm7l4SjYRHrui2t/mxfXyVSSjxgbFQU1I8OphBvUAMq
 oq+Gf5iBsLoR39U6uzaO33wWwJ4dvt3YxFI46Ppw2APE7e5F5q2DFhVvzBFVUFk9ded4 Fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2uw1jyakas-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 14:51:32 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BEhja2115834;
 Wed, 11 Sep 2019 14:51:31 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2uxk0tach8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 14:51:31 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8BEkOxI002956;
 Wed, 11 Sep 2019 14:46:24 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 07:46:23 -0700
Date: Wed, 11 Sep 2019 17:46:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: vhciq_core: replace snprintf with scnprintf
Message-ID: <20190911144312.GL15977@kadam>
References: <20190911135112.GA5569@SARKAR>
 <7bf3c74d-e690-1ef1-dd74-ac98667e42ef@i2se.com>
 <20190911142543.GA9873@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911142543.GA9873@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110138
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Tobias =?iso-8859-1?Q?B=FCttner?= <tobias.buettner@fau.de>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Dominic Braun <inf.braun@fau.de>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 11, 2019 at 07:55:43PM +0530, Rohit Sarkar wrote:
> On Wed, Sep 11, 2019 at 04:17:25PM +0200, Stefan Wahren wrote:
> > Hi Rohit,
> > 
> > On 11.09.19 15:51, Rohit Sarkar wrote:
> > > When the number of bytes to be printed exceeds the limit snprintf
> > > returns the number of bytes that would have been printed (if there was
> > > no truncation). This might cause issues, hence use scnprintf which
> > > returns the actual number of bytes printed to buffer always
> > >
> > > Signed-off-by: Rohit Sarkar <rohitsarkar5398@gmail.com>
> > thanks for your patch. Did you test your change on the Raspberry Pi?
> 
> Hey Stefan,
> No I haven't done so as I thought this is a generic change?
> Will that be necessary?

No.  It's not required.  The patch is easy to audit and clearly
harmless.

The question would be does it actually fix a bug?  I looked at it and
some of the strings are definitely a bit long.  The longest one I saw
was:
	"  Slots: %d available (%d data), %d recyclable, %d stalls (%d data)",
	123456789 123456789 123456789 123456789 123456789 123456789 123456789

If you get a lot of stalls, then that looks like it could lead to a
read overflow (an information leak).  Either way this does make the
code a bit easier to audit so it seems like a nice cleanup.  Next time
though, I really would prefer if you put this sort analysis in your
commit message so I can just glance over it.  (I'm lazy).

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
