Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEE92EAA48
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 12:59:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C4F585DF5;
	Tue,  5 Jan 2021 11:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZeW9JxK1zD92; Tue,  5 Jan 2021 11:59:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 70ADC848A9;
	Tue,  5 Jan 2021 11:59:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 120731BF23F
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 11:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0EAC4870C8
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 11:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-DV9Z9dvYoS for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 11:59:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2FCC0870C3
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 11:59:02 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id o11so29028632ote.4
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 03:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pk4Qq2YKL30G+6a6HOVm8kHQKCseUHAE6YvgfBgjVZk=;
 b=h6IbyPCaSChmAyVG/ynnFKP/3nQ/ZGwZiHvQExwhDecZ36WXISf6yENgPUjIw/mBUG
 15nJQ2YfvOq2FN95133nZDbb7CSSzHtrX0CGg6VaUYSGD8AL+IDGSazn8N8KeW2akXWU
 oUFe4lghga2pNZJD1/ib6soFiUfTXN86hXKNpPTFjdFniM61DmnMmdI5FaYnAgbYUI4o
 8xI+uCOHw7gmBzFM8gOSvsbe4ftCz94bq22kt0zL9iLjzAcrbD88jY6fO51lEebJzbJr
 4suwEb5eaQZFiOkEi0jWHbFHsTJSWmPrIHxoWfiLR1ay5KPfIKcocc4vwLc6RFgi0Hrc
 folw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pk4Qq2YKL30G+6a6HOVm8kHQKCseUHAE6YvgfBgjVZk=;
 b=QMrxaabo7Q047SEOZomtVQYpyrYKMIv+qStehDqoFs5u1P+H+5ezIVb3kDufhEm8fh
 RoJWIhPlOZRG2hHmwL3TJHI13LBagJifN6yOE1fwH+LyYs4PrUkW/d5W5GpHzOd+dLTQ
 TwO8amaoaB8u65QzIqp6hIA06PKENaxVGJAvlDG3JiluKPCenSeo/YwC/MHCCcd4yojx
 0+Q0PE5plRVd4/yvhZWZLEF1J3c9OcJb/p8vpoTwQ50MADLdO6B8RjkoYRmjmb1qAQcj
 pCuL3e62qNSe8FP/SkInGnLueEzxuBbEjrB7uRTjwksa0YQmsS9kDWOXE6IgJWTHkzMj
 zIkQ==
X-Gm-Message-State: AOAM530iMLZJsMns4Q8gCYk7XXtS9Nh/1iEFEXYTb0cmrjGZsoaGl31h
 hzb+64djWYfOstQCbSRxtf5DB0t+GLJvnIcpoxrN12EqfgfDjQ==
X-Google-Smtp-Source: ABdhPJxLzR1Pw8N/NP8hPCrIiJC/HSISpbPs+Yx5Rm1iWHE64RNsD/a+GMpBjYOlTJ0kFQYWR5qFHDexfDktJK0BVOM=
X-Received: by 2002:a9d:27ea:: with SMTP id c97mr53960788otb.173.1609847622735; 
 Tue, 05 Jan 2021 03:53:42 -0800 (PST)
MIME-Version: 1.0
References: <20210104120929.294063-1-phil@raspberrypi.com>
 <20210104120929.294063-2-phil@raspberrypi.com>
 <20210104183134.GV2809@kadam>
 <989ef44f-2afe-5147-1277-74df56797a4c@raspberrypi.com>
 <20210105110140.GW2809@kadam>
In-Reply-To: <20210105110140.GW2809@kadam>
From: Phil Elwell <phil@raspberrypi.com>
Date: Tue, 5 Jan 2021 11:53:32 +0000
Message-ID: <CAMEGJJ2emHFr7P1nzBCKK66ynuFZU-+ftLdP=dG+14JUGofXUw@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
To: Dan Carpenter <dan.carpenter@oracle.com>
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

On Tue, 5 Jan 2021 at 11:04, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Jan 04, 2021 at 07:26:42PM +0000, Phil Elwell wrote:
> > On 04/01/2021 18:31, Dan Carpenter wrote:
> > > On Mon, Jan 04, 2021 at 12:09:27PM +0000, Phil Elwell wrote:
> > > > The addition of the local 'userdata' pointer to
> > > > vchiq_irq_queue_bulk_tx_rx omitted the case where neither BLOCKING nor
> > > > WAITING modes are used, in which case the value provided by the
> > > > caller is replaced with a NULL.
> > > >
> > > > Fixes: 4184da4f316a ("staging: vchiq: fix __user annotations")
> > > >
> > > > Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> > > > ---
> > > >   drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 4 +++-
> > > >   1 file changed, 3 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > > index f500a7043805..2a8883673ba1 100644
> > > > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > > > @@ -958,7 +958,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
> > > >           struct vchiq_service *service;
> > > >           struct bulk_waiter_node *waiter = NULL;
> > > >           bool found = false;
> > > > - void *userdata = NULL;
> > > > + void *userdata;
> > > >           int status = 0;
> > > >           int ret;
> > > > @@ -997,6 +997,8 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
> > > >                           "found bulk_waiter %pK for pid %d", waiter,
> > > >                           current->pid);
> > > >                   userdata = &waiter->bulk_waiter;
> > > > + } else {
> > > > +         userdata = args->userdata;
> > >
> > > "args->userdata" is marked as a user pointer so we really don't want to
> > > mix user and kernel pointers here.  Presumably this opens up a large
> > > security hole.
> >
> > It's an opaque, pointer-sized token that only exists to bereturned to userspace (or not,
> > without this patch) - it's hard to see that as a security hole.
>
> I was assuming the bug here was a NULL dereference...  Apparently that's
> not the case?  The commit message needs to be updated to be more clear
> about how the bug looks like to the user.
>
> Are we using the "&waiter->bulk_waiter" as a "token to be returned to
> userspace" as well?  It looks like maybe it is in vchiq_put_completion().
> That defeats KASLR and is a different sort of security problem.
>
> Mixing __user pointers and regular pointers is dangerous and has lead to
> security problems in this driver in the past.  But also mixing mixing
> tokens with pointers just makes the code hard to read.  Instead of
> undoing Arnd's work where he split the user space and kernel pointers
> apart we should go ahead and spit it up even more.  At least add a giant
> FIXME comment and an item in the TODO list so we don't forget to do this
> before removing the code from staging.

Those all sound like valid comments to have made against the original
patch, but that seems to have received little attention.

I'll just leave this here - perhaps Arnd has the patience to finish the job.

Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
