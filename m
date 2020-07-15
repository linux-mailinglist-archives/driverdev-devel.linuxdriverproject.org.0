Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92374220785
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 10:38:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A1EE8AA49;
	Wed, 15 Jul 2020 08:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pQ898RwgTnLC; Wed, 15 Jul 2020 08:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8C6A8AA34;
	Wed, 15 Jul 2020 08:38:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04C6F1BF407
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:38:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F3B6A8AA3D
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 08:38:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 04fr-8Vy8nZS for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 08:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C1F3189D1B
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 08:38:03 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06F8W7kg147701;
 Wed, 15 Jul 2020 08:37:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=0oIcIHic/n+18h7D2ez3Bk061rU2Mlnb/HJIfCwCVqU=;
 b=c5VIn3MtRNPOEhDMfEao95+zv9V3kIYxMcRBq6EDrPNQzGsumpbNqdjgju1O/oCBpdMx
 8Ku3ZlFWL64vWQcTS2hobf2++tYJaP0ccPSC3FekTWvdYu5eFk7LMEiy42Pi7A9fxfIF
 +VpJDL/B+ImOoY6MAUA5jbPgRY3acGVp/NdbWDsOck2eRZdwTf8KKo7ggfxBIcqAIQgj
 A6igT30WtACoCgBCsX2LrucRHqxrGxuOmMCN1V8F9cAmn74V4QVmfGxZ1WV5br2gZUWN
 VcaEVTneH1nDxhaCdKh+8OUcbEIUxKXUKKf3NA50CAaGGhdnDl0iIC9IlxubYeO78C6F 8Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 3274ura2kv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Jul 2020 08:37:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06F8XeDp042497;
 Wed, 15 Jul 2020 08:37:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 327q6tytyk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 15 Jul 2020 08:37:56 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06F8bt7d017390;
 Wed, 15 Jul 2020 08:37:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 15 Jul 2020 01:37:54 -0700
Date: Wed, 15 Jul 2020 11:37:27 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Message-ID: <20200715083727.GY2549@kadam>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200714234440.27009-1-zhixu001@126.com>
 <20200715071748.GC2305231@kroah.com>
 <23ef3ca9616418b702df891443d0f4864edd58ff.camel@perches.com>
 <20200715075755.GA2516028@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715075755.GA2516028@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9682
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007150072
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9682
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 impostorscore=0
 suspectscore=0 phishscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007150072
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Zhixu Zhao <zhixu001@126.com>, rcy@google.com, rspringer@google.com,
 Joe Perches <joe@perches.com>, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 09:57:55AM +0200, Greg KH wrote:
> On Wed, Jul 15, 2020 at 12:24:22AM -0700, Joe Perches wrote:
> > On Wed, 2020-07-15 at 09:17 +0200, Greg KH wrote:
> > > On Wed, Jul 15, 2020 at 07:44:40AM +0800, Zhixu Zhao wrote:
> > > > On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> > > > > A coding alignment issue is found by checkpatch.pl.
> > > > > Fix it by using a temporary for gasket_dev->bar_data[bar_num].
> > > > > 
> > > > > Signed-off-by: Zhixu Zhao <zhixu001@126.com>
> > > > 
> > > > Hi, there~
> > > > 
> > > > Does anybody have any further comments on this?
> > > > Can it be merged?
> > > 
> > > I never saw the first version of this, are you sure it got sent to the
> > > mailing list?  It's not in any archives anywhere.
> > 
> > I saw it.  It's here:
> > https://lore.kernel.org/lkml/20200617161127.32006-1-zhixu001@126.com/
> 
> Ah, doh, sorry.
> 
> Zhixu, please address the comments given to you on the series and resend
> it as a new version.

He responded but not as a reply to my email.  It turns out I made a
mistake.

Anyway, just resend, Zhixu.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
