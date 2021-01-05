Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F332EA964
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 12:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1E8F84BAF;
	Tue,  5 Jan 2021 11:04:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SabUKGeGYHre; Tue,  5 Jan 2021 11:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14C5A8526D;
	Tue,  5 Jan 2021 11:04:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE4711BF271
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 11:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C706086FAB
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 11:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Kp9EIDIf2ju for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 11:04:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 164B286F9C
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 11:04:25 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105Ax2xw087539;
 Tue, 5 Jan 2021 11:04:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/7lHIJeWLo852eGuhRbc2FpzgftlCkBt+r8NhhFErlE=;
 b=knWsgT7LeGOmtL3vZvsHtBUku7iRLDLVeI297AUzlgtT8wT9OA3enEPytLYhlRzpF4+s
 OAxuP41d8KjTBAee8OWauYSEy45mp6uHgYrOqG6S2v1B9hRzz0sN9ZFdaJiC1vQGBDvp
 WlxVlyJAXzFVa4m7V4tAnfOcKqSNnHSDxua7QXAviiskbTgjNT0hqz6QCJKx67Xy/Lne
 tie6Uk1QLo65HTliBkvYWGuFLSdfbG67OYqw2qG9n2KaGJZiCyiMFYyrcjwmJR2nkOL8
 gyLqY68GcxV7ljfgOEtV7wnHvSqSSZy05KiPnWlim1vQ1QlFOAOOaEwi7NLPgfj+YsPh dg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 35tgskra4a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 05 Jan 2021 11:04:21 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105B0kcV068669;
 Tue, 5 Jan 2021 11:02:20 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 35v1f8fam7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 Jan 2021 11:02:20 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 105B2Fra007016;
 Tue, 5 Jan 2021 11:02:15 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 05 Jan 2021 11:02:14 +0000
Date: Tue, 5 Jan 2021 14:01:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
Message-ID: <20210105110140.GW2809@kadam>
References: <20210104120929.294063-1-phil@raspberrypi.com>
 <20210104120929.294063-2-phil@raspberrypi.com>
 <20210104183134.GV2809@kadam>
 <989ef44f-2afe-5147-1277-74df56797a4c@raspberrypi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <989ef44f-2afe-5147-1277-74df56797a4c@raspberrypi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0
 suspectscore=0 spamscore=0 bulkscore=0 adultscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101050068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101050068
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 04, 2021 at 07:26:42PM +0000, Phil Elwell wrote:
> On 04/01/2021 18:31, Dan Carpenter wrote:
> > On Mon, Jan 04, 2021 at 12:09:27PM +0000, Phil Elwell wrote:
> > > The addition of the local 'userdata' pointer to
> > > vchiq_irq_queue_bulk_tx_rx omitted the case where neither BLOCKING nor
> > > WAITING modes are used, in which case the value provided by the
> > > caller is replaced with a NULL.
> > > 
> > > Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")
> > > 
> > > Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> > > ---
> > >   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 +++-
> > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > index f500a7043805..2a8883673ba1 100644
> > > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > @@ -958,7 +958,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
> > >   	struct vchiq_service *service;
> > >   	struct bulk_waiter_node *waiter = NULL;
> > >   	bool found = false;
> > > -	void *userdata = NULL;
> > > +	void *userdata;
> > >   	int status = 0;
> > >   	int ret;
> > > @@ -997,6 +997,8 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
> > >   			"found bulk_waiter %pK for pid %d", waiter,
> > >   			current->pid);
> > >   		userdata = &waiter->bulk_waiter;
> > > +	} else {
> > > +		userdata = args->userdata;
> > 
> > "args->userdata" is marked as a user pointer so we really don't want to
> > mix user and kernel pointers here.  Presumably this opens up a large
> > security hole.
> 
> It's an opaque, pointer-sized token that only exists to bereturned to userspace (or not,
> without this patch) - it's hard to see that as a security hole.

I was assuming the bug here was a NULL dereference...  Apparently that's
not the case?  The commit message needs to be updated to be more clear
about how the bug looks like to the user.

Are we using the "&waiter->bulk_waiter" as a "token to be returned to
userspace" as well?  It looks like maybe it is in vchiq_put_completion().
That defeats KASLR and is a different sort of security problem.

Mixing __user pointers and regular pointers is dangerous and has lead to
security problems in this driver in the past.  But also mixing mixing
tokens with pointers just makes the code hard to read.  Instead of
undoing Arnd's work where he split the user space and kernel pointers
apart we should go ahead and spit it up even more.  At least add a giant
FIXME comment and an item in the TODO list so we don't forget to do this
before removing the code from staging.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
