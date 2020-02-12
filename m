Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 976C515B2DD
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 22:37:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B13186B48;
	Wed, 12 Feb 2020 21:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHYy5LWcJ81h; Wed, 12 Feb 2020 21:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9811C86B3C;
	Wed, 12 Feb 2020 21:37:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 561851BF32E
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 52DCD85EAC
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ckxQ_XKNrfHG for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 21:37:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A691585EAA
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 21:37:22 +0000 (UTC)
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 592B22173E;
 Wed, 12 Feb 2020 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581543442;
 bh=bVlWV8eGS8M90FJHliE7E85UDJ7NxAMqD7R1Pcxd73w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=te3N7h04GS+OBPzGStJc5x3oMTzRI44umrFU5FWk2EZjMMnedeHMYdV9r6YTDM3EV
 L0hnUhBBi5zpVsdtiugfDQ1WYbmiXH1244F3gbVkfLaqMEIdjI51pbDVX0CxvpIPkO
 1Xw9bsDM8XDceA15Wbgzxh5BlFhzor/uYxN8OxBk=
Date: Wed, 12 Feb 2020 13:37:21 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 2/5] staging: vc04_services: remove unneeded parentheses
Message-ID: <20200212213721.GA2297906@kroah.com>
References: <cover.1581532523.git.marcgonzalez@google.com>
 <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
 <CAKvFj6obuHJgt1_ePLJ+Mba4k8RY2WLhutcsfNJk9ZFk4QcnPg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKvFj6obuHJgt1_ePLJ+Mba4k8RY2WLhutcsfNJk9ZFk4QcnPg@mail.gmail.com>
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

On Wed, Feb 12, 2020 at 01:51:15PM -0500, Marcelo Diop-Gonzalez wrote:
> On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
> <marcgonzalez@google.com> wrote:
> >
> > there are extra parentheses around many conditional statements
> > that make things a little harder to read
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++----------
> >  1 file changed, 18 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index 4f8b59deaec9..72bfa0f73958 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -138,8 +138,8 @@ find_service_by_handle(unsigned int handle)
> >
> >         spin_lock(&service_spinlock);
> >         service = handle_to_service(handle);
> > -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> > -               (service->handle == handle)) {
> > +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +           service->handle == handle) {
> >                 WARN_ON(service->ref_count == 0);
> >                 service->ref_count++;
> >         } else
> > @@ -161,7 +161,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
> >         if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
> >                 spin_lock(&service_spinlock);
> >                 service = state->services[localport];
> > -               if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
> > +               if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
> >                         WARN_ON(service->ref_count == 0);
> >                         service->ref_count++;
> >                 } else
> > @@ -184,9 +184,9 @@ find_service_for_instance(struct vchiq_instance *instance,
> >
> >         spin_lock(&service_spinlock);
> >         service = handle_to_service(handle);
> > -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> > -               (service->handle == handle) &&
> > -               (service->instance == instance)) {
> > +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +           service->handle == handle &&
> > +           service->instance == instance) {
> >                 WARN_ON(service->ref_count == 0);
> >                 service->ref_count++;
> >         } else
> > @@ -209,10 +209,10 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
> >         spin_lock(&service_spinlock);
> >         service = handle_to_service(handle);
> >         if (service &&
> > -               ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
> > -                (service->srvstate == VCHIQ_SRVSTATE_CLOSED)) &&
> > -               (service->handle == handle) &&
> > -               (service->instance == instance)) {
> > +           (service->srvstate == VCHIQ_SRVSTATE_FREE ||
> > +            service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
> > +           service->handle == handle &&
> > +           service->instance == instance) {
> >                 WARN_ON(service->ref_count == 0);
> >                 service->ref_count++;
> >         } else
> > @@ -237,8 +237,8 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
> >         while (idx < state->unused_service) {
> >                 struct vchiq_service *srv = state->services[idx++];
> >
> > -               if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
> > -                       (srv->instance == instance)) {
> > +               if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> > +                   srv->instance == instance) {
> >                         service = srv;
> >                         WARN_ON(service->ref_count == 0);
> >                         service->ref_count++;
> > @@ -464,10 +464,10 @@ get_listening_service(struct vchiq_state *state, int fourcc)
> >                 struct vchiq_service *service = state->services[i];
> >
> >                 if (service &&
> > -                       (service->public_fourcc == fourcc) &&
> > -                       ((service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
> > -                       ((service->srvstate == VCHIQ_SRVSTATE_OPEN) &&
> > -                       (service->remoteport == VCHIQ_PORT_FREE)))) {
> > +                   service->public_fourcc == fourcc &&
> > +                   (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
> > +                    (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> > +                     service->remoteport == VCHIQ_PORT_FREE))) {
> >                         lock_service(service);
> >                         return service;
> >                 }
> > @@ -485,8 +485,8 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
> >         for (i = 0; i < state->unused_service; i++) {
> >                 struct vchiq_service *service = state->services[i];
> >
> > -               if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
> > -                       && (service->remoteport == port)) {
> > +               if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> > +                   service->remoteport == port) {
> >                         lock_service(service);
> >                         return service;
> >                 }
> > --
> > 2.25.0.225.g125e21ebc7-goog
> >
> 
> I have to admit that this one trades one checkpatch warning for
> another.... (line too long). It seemed like it looks better this way,
> and getting rid of the long lines would have meant refactoring more
> stuff, but if its a problem I can redo this one

No worries, I'll take it :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
