Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9495A251435
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 10:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 620CE87FE5;
	Tue, 25 Aug 2020 08:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WDzO9giSyFbx; Tue, 25 Aug 2020 08:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0917087FCC;
	Tue, 25 Aug 2020 08:29:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 012411BF2C1
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 08:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EF1628817F
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 08:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzeqoeNl8Eoc for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 08:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3415088170
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 08:28:58 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07P8OaBO071042;
 Tue, 25 Aug 2020 08:28:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=zsVr/kYMIf3SLLq2u408XY0W8r5T8vXpbbk/uBAcC4E=;
 b=Gdzk9RCXyCt2RNl7kiGev1Wr/i9jKxRWQb3uJNPNq5OVq8BuJ3BAdQ9ymwjNEkj8hluw
 KmFHYIxumLKsYd5SjVoGT2cFwZgqOcSheWH0ChNsmUbxCapvphlesad2ynbaktadHAIA
 uvLBa8AUjEKkkbLwyBCM0ss92qp02htXH3gi5HuaffT0aNYadQuwalSXnClFA73sHcTm
 kIUz2k/5SIX0TZVsJP5Chak0bcAouEkZLMyP5qhuiiVxA8KhvmEYoM3EDS94ff5hktmE
 0t9ERdN912+HrWNVwGRmHOPgvHo0zDCQP2bDHrMLresSRIgoAf+QJKzqpnZQ+TvdK0j+ GQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 333csj123e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Aug 2020 08:28:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07P8OaCC166178;
 Tue, 25 Aug 2020 08:28:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 333rtxgj3q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Aug 2020 08:28:56 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 07P8Stfa011533;
 Tue, 25 Aug 2020 08:28:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Aug 2020 01:28:54 -0700
Date: Tue, 25 Aug 2020 11:28:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH] staging: emxx_udc: Fix passing of NULL to
 dma_alloc_coherent()
Message-ID: <20200825082846.GR5493@kadam>
References: <20200824142118.GA223827@mwanda>
 <20200824151920.251446-1-alex.dewar90@gmail.com>
 <20200824155712.4kgxwqiufm2ieboz@medion>
 <20200825073713.GR1793@kadam>
 <20200825081459.qfvswtep5fkaqai2@lenovo-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825081459.qfvswtep5fkaqai2@lenovo-laptop>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9723
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008250065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9723
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 lowpriorityscore=0 suspectscore=2 mlxlogscore=999 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008250065
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

On Tue, Aug 25, 2020 at 09:14:59AM +0100, Alex Dewar wrote:
> On Tue, Aug 25, 2020 at 10:37:13AM +0300, Dan Carpenter wrote:
> > On Mon, Aug 24, 2020 at 04:57:12PM +0100, Alex Dewar wrote:
> > > On Mon, Aug 24, 2020 at 04:19:17PM +0100, Alex Dewar wrote:
> > > > In nbu2ss_eq_queue() memory is allocated with dma_alloc_coherent(),
> > > > though, strangely, NULL is passed as the struct device* argument. Pass
> > > > the UDC's device instead.
> > 
> > I think passing NULL was always wrong, but it used to not cause an Oops.
> > This was changed a year or two ago.
> > 
> > > > 
> > > > Build-tested on x86 only.
> > > > 
> > > > Fixes: 33aa8d45a4fe ("staging: emxx_udc: Add Emma Mobile USB Gadget driver")
> > > > Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> > > > ---
> > > > 
> > > > So I *think* this is the right fix, but I don't have the hardware so
> > > > I've only been able to build-test it. My worry is that I could be
> > > > passing in the wrong struct device* here, which would squelch the
> > > > warning without fixing the breakage.
> > > > 
> > > > Can someone cleverer than me tell me if this makes sense?
> > > > 
> > > > - Alex
> > > 
> > > PS -- I meant to put an RFC in the subject line and an extra tag:
> > > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > 
> > 
> > I don't know which dev pointer we're supposed to pass...  It would be
> > good to find someone to test the patch but if not then applying your
> > patch is reasonable.
> > 
> > But could you search through the file and update the rest as well.
> > The dma_free_coherent() needs to be updated and there was a second
> > dma_alloc_coherent() in the bug report.
> > 
> > regards,
> > dan carpenter
> > 
> 
> I can only find the one instance of dma_alloc_coherent(). Was it by any
> chance a different warning about the same call....?

Ah....  It was warning about the dma_free_coherent().

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
