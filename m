Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DD6251363
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 09:37:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0219B22886;
	Tue, 25 Aug 2020 07:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uU6L+HBcMsSh; Tue, 25 Aug 2020 07:37:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6EABF203FE;
	Tue, 25 Aug 2020 07:37:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61EB11BF2C3
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 07:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5E77A85116
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 07:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y2cCYUlO3ri6 for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 07:37:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D114684E5A
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 07:37:41 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07P7ZDei193236;
 Tue, 25 Aug 2020 07:37:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=yea0Yzl3MVzS3ZMBBvStQCGwcTQrcrJmt40gbGzaQqs=;
 b=xmyrcOxJ55uSTkrT2XY5Q6jz0vgx3Kafs7gcoo1BU9/9rDwAmDZZymkPdUjouttDJLjj
 b3K8ZiBHfplQCw7feE80XBl5OnCgg/9TadTp9hl190N6uEw6CX6EaB4P+LqCJz4UDZj3
 WjLDR89Ntj7Zbfj40zWPJAizdNtiT2VHKx5BkzIdA1/YwoI7zAyroC3VP64sk8ytHakD
 x8OkhjlNr7Lo9z2IYGna7SC16jgHe1rvjCX/6PapSYrmh5sqmxfvPtm+i8JdnIC4Ho7i
 HBwzhjO1oovICRyINsQ1MZjowb0idHCUqlbWfdC/2Q1qMg0pydX7QEwg2Seiyx7RWYip xg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 333w6tq9nw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Aug 2020 07:37:40 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07P7alMC082370;
 Tue, 25 Aug 2020 07:37:40 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 333r9jj73h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Aug 2020 07:37:40 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 07P7bRfL023102;
 Tue, 25 Aug 2020 07:37:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Aug 2020 00:37:27 -0700
Date: Tue, 25 Aug 2020 10:37:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix passing of NULL to
 dma_alloc_coherent()
Message-ID: <20200825073713.GR1793@kadam>
References: <20200824142118.GA223827@mwanda>
 <20200824151920.251446-1-alex.dewar90@gmail.com>
 <20200824155712.4kgxwqiufm2ieboz@medion>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824155712.4kgxwqiufm2ieboz@medion>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9723
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 bulkscore=0
 adultscore=0 spamscore=0 mlxlogscore=999 phishscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008250057
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9723
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 impostorscore=0
 mlxlogscore=999 suspectscore=2 phishscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 clxscore=1011 mlxscore=0 lowpriorityscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008250057
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
Cc: devel@driverdev.osuosl.org, Saiyam Doshi <saiyamdoshi.in@gmail.com>,
 Magnus Damm <damm+renesas@opensource.se>, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, "Javier F. Arias" <jarias.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Simon Horman <horms+renesas@verge.net.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 24, 2020 at 04:57:12PM +0100, Alex Dewar wrote:
> On Mon, Aug 24, 2020 at 04:19:17PM +0100, Alex Dewar wrote:
> > In nbu2ss_eq_queue() memory is allocated with dma_alloc_coherent(),
> > though, strangely, NULL is passed as the struct device* argument. Pass
> > the UDC's device instead.

I think passing NULL was always wrong, but it used to not cause an Oops.
This was changed a year or two ago.

> > 
> > Build-tested on x86 only.
> > 
> > Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
> > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> > ---
> > 
> > So I *think* this is the right fix, but I don't have the hardware so
> > I've only been able to build-test it. My worry is that I could be
> > passing in the wrong struct device* here, which would squelch the
> > warning without fixing the breakage.
> > 
> > Can someone cleverer than me tell me if this makes sense?
> > 
> > - Alex
> 
> PS -- I meant to put an RFC in the subject line and an extra tag:
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 

I don't know which dev pointer we're supposed to pass...  It would be
good to find someone to test the patch but if not then applying your
patch is reasonable.

But could you search through the file and update the rest as well.
The dma_free_coherent() needs to be updated and there was a second
dma_alloc_coherent() in the bug report.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
