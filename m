Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 809791F1F9B
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jun 2020 21:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67E6D875F0;
	Mon,  8 Jun 2020 19:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RdAWlgvNHMAy; Mon,  8 Jun 2020 19:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3236786D81;
	Mon,  8 Jun 2020 19:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F37031BF393
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EFFD78625F
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 19:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gNsGEiE4NXiZ for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 19:16:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F04558623F
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 19:16:45 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 058J2uB3031588;
 Mon, 8 Jun 2020 19:16:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=jiswnTVgmED18kuC02a6ihAd3n7cwfYz+Q7lXljGX+c=;
 b=FooZzvkr0pazIcONzEcKFgnFQlZT0bu5XIEkJhJdEDBNYS9KABxR/1ySQVEYv5gkkfH9
 VjnBjlBwB+svIxIJ0CQubmhk1eD1pHJ9/+LaUyqutJ4jtdMAeVwdEL0UsD8KSWSTIAbH
 ZZnid8LNAYuOG9iMTKS5gSEfdiknCksCvPzZToYZoFhUCeP8vxz9Q1W2y9moWibCNZdx
 rUCyHpyApP6zieHLj3JQs3kPgks9zOvQM2tzXx4Yzw8UqVacU+5wHIvXU61GWTiv3DwN
 hawjnkU8TC4YdNLJTWxADwkRa/f7lDnjVxQZFpL1ZLX+HwaD89Tz4qCChsxLk38w2FFt Jg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 31g3smrfx3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 08 Jun 2020 19:16:44 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 058Ivcr6153482;
 Mon, 8 Jun 2020 19:16:44 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 31gn2vmfq5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Jun 2020 19:16:44 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 058JGgTK027691;
 Mon, 8 Jun 2020 19:16:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 08 Jun 2020 12:16:42 -0700
Date: Mon, 8 Jun 2020 22:16:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: John Hubbard <jhubbard@nvidia.com>
Subject: Re: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
Message-ID: <20200608191635.GA30374@kadam>
References: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
 <7e725dd0-7423-b85b-ff56-9705419d13b9@nvidia.com>
 <CAFqt6zbsNcHWF-0Na2xMKdJQs2kVkLHTCw=cytvdo+z-axx97Q@mail.gmail.com>
 <5f0c68a0-2cc4-5724-d778-7e9d5fd7dfde@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f0c68a0-2cc4-5724-d778-7e9d5fd7dfde@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9646
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 bulkscore=0 adultscore=0 mlxlogscore=908 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006080135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9646
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 cotscore=-2147483648 suspectscore=0
 spamscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 mlxlogscore=993 clxscore=1011 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006080135
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Bharath Vedartham <linux.bhar@gmail.com>, harshjain32@gmail.com,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>, jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 08, 2020 at 12:05:57PM -0700, John Hubbard wrote:
> On 2020-06-08 12:01, Souptick Joarder wrote:
> > On Mon, Jun 1, 2020 at 7:15 AM John Hubbard <jhubbard@nvidia.com> wrote:
> > > 
> > > On 2020-05-31 10:51, Souptick Joarder wrote:
> > > > In 2019, we introduced pin_user_pages*() and now we are converting
> > > > get_user_pages*() to the new API as appropriate. [1] & [2] could
> > > > be referred for more information.
> > > > 
> > > > When pin_user_pages() returns numbers of partially mapped pages,
> > > > those pages were not unpinned as part of error handling. Fixed
> > > > it as part of this patch.
> > > > 
> > > 
> > > Hi Souptick,
> > > 
> > > btw, Bharath (+cc) attempted to do the "put" side of this, last year.
> > > That got as far as a v4 patch [1], and then I asked him to let me put
> > > it into my tree. But then it didn't directly apply anymore after the
> > > whole design moved to pin+unpin, and so here we are now.
> > > 
> > > 
> > > If Bharath is still doing kernel work, you might offer him a Co-Developed-by:
> > > tag (see https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html).
> > 
> > Sure, will add him as *Co-Developed-by*
> > > 
> 
> 
> Yes, but it's best to wait and see if he responds, before adding that tag, because
> it also required a Signed-off-by from him.

Souptick is porting patches from your tree?  It's not clear to me how
Bharath actually helped author this patch.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
