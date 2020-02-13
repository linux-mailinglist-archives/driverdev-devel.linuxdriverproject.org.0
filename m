Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0100D15C9AA
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Feb 2020 18:43:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3AFA1861DE;
	Thu, 13 Feb 2020 17:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZsssgBs9Fn6R; Thu, 13 Feb 2020 17:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD7A78111F;
	Thu, 13 Feb 2020 17:43:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A8A81BF2C7
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 17:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 219A720355
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 17:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkIld-6-fZFO for <devel@linuxdriverproject.org>;
 Thu, 13 Feb 2020 17:43:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B5111FEB7
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 17:43:29 +0000 (UTC)
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1901206ED;
 Thu, 13 Feb 2020 17:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581615809;
 bh=J32yj4OuDHw1RJn/WqVcGMBsWn6twYxhuCwPRG78nZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ulPubzc0xM1Z4dN0RAcelB7x1qCdRsOyb+LDiAY3I9kh6FN2ucUIW3kgjyljPbavi
 6DRBetuxf9xy8TeXC90cbeH/sYDxIIxOvJJzVBsxeDcgbDATDVFbFiAVF5qoZs5iqV
 rZABHy59Oed7H4T6mTLC1fl71HDtKu4uv/8DowRk=
Date: Thu, 13 Feb 2020 09:43:28 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 5/5] staging: vc04_services: don't increment service
 refcount when it's not needed
Message-ID: <20200213174328.GA3688005@kroah.com>
References: <cover.1581532523.git.marcgonzalez@google.com>
 <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
 <CAKvFj6q9d-Txfe9fj8tfpT9+Ea24qKd+6Jno-XRikgixqghCYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKvFj6q9d-Txfe9fj8tfpT9+Ea24qKd+6Jno-XRikgixqghCYw@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 13, 2020 at 12:03:32PM -0500, Marcelo Diop-Gonzalez wrote:
> On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
> <marcgonzalez@google.com> wrote:
> >
> > There are a few places where a service's reference count is incremented,
> > something quick is done, and the refcount is dropped. This can be made
> > a little simpler/faster by not grabbing a reference in these cases.
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_arm.c           | 16 ++++-----
> >  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++++++------
> >  .../interface/vchiq_arm/vchiq_core.h          |  8 ++++-
> >  3 files changed, 40 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index 3ed0e4ea7f5c..b377f18aed45 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -2497,11 +2497,11 @@ vchiq_instance_get_use_count(struct vchiq_instance *instance)
> >         int use_count = 0, i;
> >
> >         i = 0;
> > -       while ((service = next_service_by_instance(instance->state,
> > -               instance, &i))) {
> > +       rcu_read_lock();
> > +       while ((service = __next_service_by_instance(instance->state,
> > +                                                    instance, &i)))
> >                 use_count += service->service_use_count;
> > -               unlock_service(service);
> > -       }
> > +       rcu_read_unlock();
> >         return use_count;
> >  }
> >
> > @@ -2524,11 +2524,11 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
> >         int i;
> >
> >         i = 0;
> > -       while ((service = next_service_by_instance(instance->state,
> > -               instance, &i))) {
> > +       rcu_read_lock();
> > +       while ((service = __next_service_by_instance(instance->state,
> > +                                                    instance, &i)))
> >                 service->trace = trace;
> > -               unlock_service(service);
> > -       }
> > +       rcu_read_unlock();
> >         instance->trace = (trace != 0);
> >  }
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index 65270a5b29db..d7d7f4d9d57f 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -222,28 +222,42 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
> >  }
> >
> >  struct vchiq_service *
> > -next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
> > -                        int *pidx)
> > +__next_service_by_instance(struct vchiq_state *state,
> > +                          struct vchiq_instance *instance,
> > +                          int *pidx)
> >  {
> >         struct vchiq_service *service = NULL;
> >         int idx = *pidx;
> >
> > -       rcu_read_lock();
> >         while (idx < state->unused_service) {
> >                 struct vchiq_service *srv;
> >
> >                 srv = rcu_dereference(state->services[idx++]);
> >                 if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> > -                   srv->instance == instance &&
> > -                   kref_get_unless_zero(&srv->ref_count)) {
> > -                       service = rcu_pointer_handoff(srv);
> > +                   srv->instance == instance) {
> > +                       service = srv;
> >                         break;
> >                 }
> >         }
> > -       rcu_read_unlock();
> >
> >         *pidx = idx;
> > +       return service;
> > +}
> >
> > +struct vchiq_service *
> > +next_service_by_instance(struct vchiq_state *state,
> > +                        struct vchiq_instance *instance,
> > +                        int *pidx)
> > +{
> > +       struct vchiq_service *service;
> > +
> > +       rcu_read_lock();
> > +       service = __next_service_by_instance(state, instance, pidx);
> > +       if (service && kref_get_unless_zero(&service->ref_count))
> > +               service = rcu_pointer_handoff(service);
> > +       else
> > +               service = NULL;
> > +       rcu_read_unlock();
> >         return service;
> >  }
> 
> ahh wait, this one is buggy..... If kref_get_unless_zero fails then we
> want to keep looking
> for the next one. Greg, since you already applied this one, would it
> be best for me to send
> a patch on top of this or send a V2?

On top is easiest for me, I don't like to revert things :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
