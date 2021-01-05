Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A715D2EABCF
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 14:23:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCF18868EB;
	Tue,  5 Jan 2021 13:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pifc6yFPRIAd; Tue,  5 Jan 2021 13:23:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 189018584F;
	Tue,  5 Jan 2021 13:23:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F88B1BF390
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 13:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C30F8713B
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 13:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJLnQAm4BOPo for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 13:23:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 59EE68712F
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 13:23:43 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105DFBPu068274;
 Tue, 5 Jan 2021 13:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=wc8CdL2joUwGLfiu41QD4wqlnZQIVT6EuhsZ/fDIaEY=;
 b=HNo0Gp56x0soz7hn+ltF9ZHtpWGzh8iz0hsKCM/pR3pLo+QYF6jigD0kfMZ4+VW5yfec
 UHcsVFi9LNL8KpLjCaN4c+mlzpkplyAN3ultbAK20c2ee2EScH5EpDudw1SfNxCVZXnG
 tLZLnJEPDHK6Jdd17T5qE3it4OQQOyq46qwiUinZS7jXvjYT8mPLSasaAxFEfnKR9anw
 zhyfPauqjXOdFgc3HPH6/kCFZNErsxunZILcuHyS/TmDKhMaeLHOxJ1o65XU1U8GSxkE
 VeA8ZzlKvtixoUHOaE8bIKf8CuKeUOD1kDoN6c5g1VuNJE0cjMSajErziuzFIXKApQyZ fQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 35tebart4n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 05 Jan 2021 13:23:39 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105DGLxS092069;
 Tue, 5 Jan 2021 13:23:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 35uxnsp027-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 Jan 2021 13:23:38 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 105DNbFQ012047;
 Tue, 5 Jan 2021 13:23:37 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 05 Jan 2021 13:23:36 +0000
Date: Tue, 5 Jan 2021 16:22:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
Message-ID: <20210105132229.GW2831@kadam>
References: <20210104120929.294063-1-phil@raspberrypi.com>
 <20210104120929.294063-2-phil@raspberrypi.com>
 <20210104183134.GV2809@kadam>
 <989ef44f-2afe-5147-1277-74df56797a4c@raspberrypi.com>
 <20210105110140.GW2809@kadam>
 <CAMEGJJ2emHFr7P1nzBCKK66ynuFZU-+ftLdP=dG+14JUGofXUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMEGJJ2emHFr7P1nzBCKK66ynuFZU-+ftLdP=dG+14JUGofXUw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101050083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9854
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0
 priorityscore=1501 spamscore=0 mlxscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2101050083
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
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 05, 2021 at 11:53:32AM +0000, Phil Elwell wrote:
> On Tue, 5 Jan 2021 at 11:04, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Mon, Jan 04, 2021 at 07:26:42PM +0000, Phil Elwell wrote:
> > > On 04/01/2021 18:31, Dan Carpenter wrote:
> > > > On Mon, Jan 04, 2021 at 12:09:27PM +0000, Phil Elwell wrote:
> > > > > The addition of the local 'userdata' pointer to
> > > > > vchiq_irq_queue_bulk_tx_rx omitted the case where neither BLOCKING nor
> > > > > WAITING modes are used, in which case the value provided by the
> > > > > caller is replaced with a NULL.
> > > > >
> > > > > Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")
> > > > >
> > > > > Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> > > > > ---
> > > > >   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 +++-
> > > > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > > > index f500a7043805..2a8883673ba1 100644
> > > > > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > > > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > > > @@ -958,7 +958,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
> > > > >           struct vchiq_service *service;
> > > > >           struct bulk_waiter_node *waiter = NULL;
> > > > >           bool found = false;
> > > > > - void *userdata = NULL;
> > > > > + void *userdata;
> > > > >           int status = 0;
> > > > >           int ret;
> > > > > @@ -997,6 +997,8 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
> > > > >                           "found bulk_waiter %pK for pid %d", waiter,
> > > > >                           current->pid);
> > > > >                   userdata = &waiter->bulk_waiter;
> > > > > + } else {
> > > > > +         userdata = args->userdata;
> > > >
> > > > "args->userdata" is marked as a user pointer so we really don't want to
> > > > mix user and kernel pointers here.  Presumably this opens up a large
> > > > security hole.
> > >
> > > It's an opaque, pointer-sized token that only exists to bereturned to userspace (or not,
> > > without this patch) - it's hard to see that as a security hole.
> >
> > I was assuming the bug here was a NULL dereference...  Apparently that's
> > not the case?  The commit message needs to be updated to be more clear
> > about how the bug looks like to the user.
> >
> > Are we using the "&waiter->bulk_waiter" as a "token to be returned to
> > userspace" as well?  It looks like maybe it is in vchiq_put_completion().
> > That defeats KASLR and is a different sort of security problem.
> >
> > Mixing __user pointers and regular pointers is dangerous and has lead to
> > security problems in this driver in the past.  But also mixing mixing
> > tokens with pointers just makes the code hard to read.  Instead of
> > undoing Arnd's work where he split the user space and kernel pointers
> > apart we should go ahead and spit it up even more.  At least add a giant
> > FIXME comment and an item in the TODO list so we don't forget to do this
> > before removing the code from staging.
> 
> Those all sound like valid comments to have made against the original
> patch, but that seems to have received little attention.
> 
> I'll just leave this here - perhaps Arnd has the patience to finish the job.

I kind of have a headache today so maybe I shouldn't be sending emails.
But really, all I'm asking is for is two fairly reasonable things:

1) The commit message needs to say what the bug looks like to the user.
   Up to now, I still have no idea the answer to this question.

2) Put a note in the TODO which says: "Clean up Sparse warnings from
   __user annotations.  See vchiq_irq_queue_bulk_tx_rx().  Ensure that
   the the address of "&waiter->bulk_waiter" is never disclosed to
   userspace."

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
