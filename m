Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34651220AAB
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 13:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68DA6893E8;
	Wed, 15 Jul 2020 11:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zt9f4vZyyi38; Wed, 15 Jul 2020 11:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCE65893E2;
	Wed, 15 Jul 2020 11:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E70291BF3F0
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CBDC32050E
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 11:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtuLH9HXM+IO for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 11:06:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id 68CC720446
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 11:06:33 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06FAvwHk143967;
 Wed, 15 Jul 2020 11:06:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=9czQzPDZKgqDt9khTd+GxIMpAN8cHPITMRgapCFPeQ4=;
 b=XIHlmBeAC2KsfU6WBvEP1lPt4wKBcsVkMdLaqCf5XUOa2C1QVzPGKM6Whki9YUs3AFTm
 3bhTISNATPiMe2bLpPn0c/23Xh6OszcgXHFLpVLtNijaQqaHTS9QgDoFPZ5ol27tB+ui
 k4gy283vAf3WImq/uHo2LgW22SVNdRgJfuQYVYnQZXTf8IuHbJex9IY1LL7ui3kkRuPc
 auXnk7VJx25KMKPHWiL1sUbZUG5dyruWgkfkBEkxRC/kuIyyLcMi46twe9oJhE1CgPD6
 0wCr73DlPjuQLpjxWklQ1KUMScazTFqwkXcAzCNd/WpZlvC2Nbh0pKWVHNpXBjVl66Co ag== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 327s65gy2k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Jul 2020 11:06:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06FB3dqT097137;
 Wed, 15 Jul 2020 11:06:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 327q0r162k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jul 2020 11:06:25 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06FB6K7G028955;
 Wed, 15 Jul 2020 11:06:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 15 Jul 2020 04:06:20 -0700
Date: Wed, 15 Jul 2020 14:06:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhao <zhixu001@126.com>
Subject: Re: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue
 in gasket_core.c
Message-ID: <20200715110613.GZ2549@kadam>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200714234440.27009-1-zhixu001@126.com>
 <20200715071748.GC2305231@kroah.com>
 <23ef3ca9616418b702df891443d0f4864edd58ff.camel@perches.com>
 <20200715075755.GA2516028@kroah.com> <20200715083727.GY2549@kadam>
 <128a9f7de9885257736b3bb2648ea90bcbc2c760.camel@perches.com>
 <7d0444ff.5c46.17352142e11.Coremail.zhixu001@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d0444ff.5c46.17352142e11.Coremail.zhixu001@126.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9682
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007150093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9682
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 phishscore=0 mlxscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 clxscore=1015 bulkscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007150092
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, rcy@google.com, rspringer@google.com,
 Joe Perches <joe@perches.com>, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 06:45:21PM +0800, Zhao wrote:
> At 2020-07-15 17:04:06, "Joe Perches" <joe@perches.com> wrote:
> >On Wed, 2020-07-15 at 11:37 +0300, Dan Carpenter wrote:
> >> On Wed, Jul 15, 2020 at 09:57:55AM +0200, Greg KH wrote:
> >> > On Wed, Jul 15, 2020 at 12:24:22AM -0700, Joe Perches wrote:
> >> > > On Wed, 2020-07-15 at 09:17 +0200, Greg KH wrote:
> >> > > > On Wed, Jul 15, 2020 at 07:44:40AM +0800, Zhixu Zhao wrote:
> >> > > > > On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> >> > > > > > A coding alignment issue is found by checkpatch.pl.
> >> > > > > > Fix it by using a temporary for gasket_dev->bar_data[bar_num].
> >> > > > > > 
> >> > > > > > Signed-off-by: Zhixu Zhao <zhixu001@126.com>
> >> > > > > 
> >> > > > > Hi, there~
> >> > > > > 
> >> > > > > Does anybody have any further comments on this?
> >> > > > > Can it be merged?
> >> > > > 
> >> > > > I never saw the first version of this, are you sure it got sent to the
> >> > > > mailing list?  It's not in any archives anywhere.
> >> > > 
> >> > > I saw it.  It's here:
> >> > > https://lore.kernel.org/lkml/20200617161127.32006-1-zhixu001@126.com/
> >> > 
> >> > Ah, doh, sorry.
> >> > 
> >> > Zhixu, please address the comments given to you on the series and resend
> >> > it as a new version.
> >> 
> >> He responded but not as a reply to my email.  It turns out I made a
> >> mistake.
> >> 
> >> Anyway, just resend, Zhixu.
> >
> >It's a pity a resend is being requested.
> >
> >It'd be a better process if the original patch could
> >be applied via the link akin to a git pull.
> >
> 
> Yes. All comments have been resolved by now. Patch v2 is sufficient.
> 
> As Dan said, there was a tailing thread because I mis-replied his mail.
>  I just now replied that mail with a reference to the final resolution mail.

Just resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
