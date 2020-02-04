Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1711518EF
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 11:37:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA49085082;
	Tue,  4 Feb 2020 10:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAzVGmvCDRTS; Tue,  4 Feb 2020 10:37:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D14084B65;
	Tue,  4 Feb 2020 10:37:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79DFF1BF841
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 10:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7616184B65
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 10:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BID6b2EB3wlZ for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 10:37:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 097A984B08
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 10:37:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 014ASL9s187483;
 Tue, 4 Feb 2020 10:37:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=XsrivgyC3EIeZ9KHHWXxM9dK+Q6rBGr1N+FXGQFjLS0=;
 b=exOSaavI5Hfn/c38zh5rREgrNHPcyN1IOX8NJt0nvV5GJ+QI5TbwwXHhWjM/B4oq5dgk
 zb89DtlTndCvYiUXtb3q3MeKtdZDCZY/j8N6n2hN4jnmEVa15g2EvSAgEumc5Rxll8lM
 u6bkaqAk+/Pv6Hg+fjzxqWYZKPj+HaqW6mvCWOMiJPj9JMzX5XJRSdcyFMVu23WjdXfQ
 WzH88DiPp4rUl7bv2twUcAIeouDXp850ojR4fYAMNwIV6DvexReHrbOn6ZVINp4tqDaH
 019fpboQSOi+wgf/Q7/cyYiak6HBtzp9vkGpEw303OLk4Gtj8KWCQ6uaVzmfKil8Xhg8 Bg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xw0ru5tr2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Feb 2020 10:37:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 014AXe5m162609;
 Tue, 4 Feb 2020 10:35:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2xxvureq67-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 04 Feb 2020 10:35:06 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 014AZ39Y013148;
 Tue, 4 Feb 2020 10:35:03 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 04 Feb 2020 02:35:03 -0800
Date: Tue, 4 Feb 2020 13:34:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH] staging: mt7621-dts: add dt node for 2nd/3rd uart on
 mt7621
Message-ID: <20200204103456.GO11068@kadam>
References: <20200204090022.123261-1-gch981213@gmail.com>
 <20200204094647.GS1778@kadam>
 <CAJsYDV+b1bqc3b87Amo8p2UzVi4fpbRv6ytus8A5Y0r4K-X0hw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJsYDV+b1bqc3b87Amo8p2UzVi4fpbRv6ytus8A5Y0r4K-X0hw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9520
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2002040079
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9520
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2002040079
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
 NeilBrown <neil@brown.name>, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 04, 2020 at 05:59:21PM +0800, Chuanhong Guo wrote:
> Hi!
> 
> On Tue, Feb 4, 2020 at 5:47 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > Please use ./scripts/get_maintainer.pl to pick the CC list and resend.
> >
> > The MAINTAINERS file says Matthias Brugger is supposed to be CC'd and
> > a couple other email lists.
> 
> According to get_maintainer.pl,  Matthias Brugger is the maintainer of
> Mediatek ARM SoC:
> 
> Matthias Brugger <matthias.bgg@gmail.com> (maintainer:ARM/Mediatek SoC support)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC support)
> linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC support)
> 
> I specifically removed the above 3 addresses because they are all for
> Mediatek ARM chips
> while mt7621 is a mips chip and belongs to ralink target under
> /arch/mips/mach-ralink.
> Code contribution for mt7621 goes through linux-mips instead of
> linux-arm or linux-mediatek,

I would have thought that we would still CC linux-mediatek?

> 
> I thinks this is an incorrect setup of get_maintainer.pl and should be
> corrected.

We could ask him...

It's always easiest to fix MAINTAINERS instead of remembering all the
exceptions and rules.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
