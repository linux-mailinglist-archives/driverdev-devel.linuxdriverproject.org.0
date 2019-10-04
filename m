Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD750CB770
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Oct 2019 11:36:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE4DD86B01;
	Fri,  4 Oct 2019 09:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zieZKxglnSRV; Fri,  4 Oct 2019 09:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C1EC886AD0;
	Fri,  4 Oct 2019 09:36:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1541BF317
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 09:36:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E666226B2
 for <devel@linuxdriverproject.org>; Fri,  4 Oct 2019 09:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DugtDwuDXcWK for <devel@linuxdriverproject.org>;
 Fri,  4 Oct 2019 09:36:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id D9C0C20766
 for <devel@driverdev.osuosl.org>; Fri,  4 Oct 2019 09:36:17 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id y3so5800801ljj.6
 for <devel@driverdev.osuosl.org>; Fri, 04 Oct 2019 02:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=20VajyVjil3tDJgZlA0g2wRtoxHLAzaI3TJa8Yi+9ZQ=;
 b=Zck6aKY2ESznt61Rw+q8Vi7LbbZ5qGkrolU4N8qRT5TWoRuapSEV6VcYlD9yU7J+W4
 qlc6jD/DRf+DZNyQW44QR5BqOnQ9vs/FR0Y58qu4EYC1rVhYmoYuJ4k4qjyuGn4ADaCO
 goOI2F8dK4Pk5JrN4g1UZuo1VpxHWY+DSUkTFY9tfMlzHX9feDWI1826tJLjHs+RQo3e
 JuUwXGxX6GSDd1ty5N/8aRE+tu8sFyrXeD/OAjllSWaLTjWbAs4T5PHm9lptvpXNaZut
 h6Z/yog57X9O2FdHZsA/O36kV40KUW5B4kKgTxvVETns8z7oe1/O3xI3oz7vkMUgcLFx
 MdPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=20VajyVjil3tDJgZlA0g2wRtoxHLAzaI3TJa8Yi+9ZQ=;
 b=DIQa94bW5JMcvIb2hK1dS+U6nZ2pKNYdAUWttoPXigArQA4czgaKZI78df18+i5gJr
 5SOtxOmFnrfxVCPmlrZxHPZyS9Opw+QDR+txoSXQdzAuKVn4hfPMpsL6T2LR5e0A5oWs
 Jrp9gKhk8fSmeLeOmjYECssIDVEzsLuFfYAmDdkbNCifFOaTAjzWA1RIJyzeNzZsHvLZ
 x/0cTV/jTO262dXQajEIexd6VC7l4P2OtFqbeTAbx0/7mxzfPQ3n88WOb63oJEs6jLkT
 NC2eOgDwaiEAkv2id1SkiXxxm5fTfwLTrQPF0H/ypV/qT3y8tlKydvty1Y7f6lvHp8HG
 TCSA==
X-Gm-Message-State: APjAAAVTaixgBXM+sRX+y0Fy/Yd3ROYquLAEpsVaPOpLofkMLEVlAzhp
 YPuqB4HrAgmIo9N/k/OyOTNynxUkpKPPjmhGnYk=
X-Google-Smtp-Source: APXvYqyUJCdOxDuhk+K3Ng68tyMScQ/HKCcEjqrOvsmsO9AjIIn0fUby0juf+c9OjPv3rW1ijCcok1V6W7DScgdB9nY=
X-Received: by 2002:a2e:5dc6:: with SMTP id v67mr6104934lje.247.1570181775746; 
 Fri, 04 Oct 2019 02:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <1570125797-24410-1-git-send-email-nachukannan@gmail.com>
 <alpine.DEB.2.21.1910032253270.3451@hadrien>
In-Reply-To: <alpine.DEB.2.21.1910032253270.3451@hadrien>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Fri, 4 Oct 2019 05:36:02 -0400
Message-ID: <CAMOCsdugFu1vT8qD27wK2xcw-ROQcyr8_QVxWB-qEOsb7su7sQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Avoid typedef
To: Julia Lawall <julia.lawall@lip6.fr>
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
Cc: devel@driverdev.osuosl.org, Eric Anholt <eric@anholt.net>,
 outreachy-kernel@googlegroups.com, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 3, 2019 at 5:04 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Thu, 3 Oct 2019, Nachammai Karuppiah wrote:
>
> > Avoid typedefs to maintain kernel coding style. Issue found by
> > checkpatch.pl
> >
> > Replace the enum typedef VCHIQ_REASON_T with vchiq_reason.
>
> Would it be possible to get rid of them all?  They seem to all go
> together, since they start with the same prefix, and they all don't look
> nice at all.
>
> The changes so far seem to be going in the right direction.
>

Sure. I will work on removing all other typedefs.

Thanks,
Nachammai

> julia
>
> >
> > Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> > ---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 4 ++--
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
> >  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
> >  5 files changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index b1595b1..280e237 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -516,7 +516,7 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
> >  ***************************************************************************/
> >
> >  static VCHIQ_STATUS_T
> > -add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
> > +add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
> >              struct vchiq_header *header, struct user_service *user_service,
> >              void *bulk_userdata)
> >  {
> > @@ -583,7 +583,7 @@ add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
> >  ***************************************************************************/
> >
> >  static VCHIQ_STATUS_T
> > -service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
> > +service_callback(enum vchiq_reason reason, struct vchiq_header *header,
> >                VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
> >  {
> >       /* How do we ensure the callback goes to the right client?
> > @@ -1666,7 +1666,7 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
> >  }
> >
> >  struct vchiq_completion_data32 {
> > -     VCHIQ_REASON_T reason;
> > +     enum vchiq_reason reason;
> >       compat_uptr_t header;
> >       compat_uptr_t service_userdata;
> >       compat_uptr_t bulk_userdata;
> > @@ -2271,7 +2271,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
> >  }
> >
> >  static VCHIQ_STATUS_T
> > -vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T reason,
> > +vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
> >       struct vchiq_header *header,
> >       VCHIQ_SERVICE_HANDLE_T service_user,
> >       void *bulk_user)
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index 56a23a2..b0e0653 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -355,7 +355,7 @@ mark_service_closing(struct vchiq_service *service)
> >  }
> >
> >  static inline VCHIQ_STATUS_T
> > -make_service_callback(struct vchiq_service *service, VCHIQ_REASON_T reason,
> > +make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
> >                     struct vchiq_header *header, void *bulk_userdata)
> >  {
> >       VCHIQ_STATUS_T status;
> > @@ -1230,7 +1230,7 @@ notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
> >                                       spin_unlock(&bulk_waiter_spinlock);
> >                               } else if (bulk->mode ==
> >                                       VCHIQ_BULK_MODE_CALLBACK) {
> > -                                     VCHIQ_REASON_T reason = (bulk->dir ==
> > +                                     enum vchiq_reason reason = (bulk->dir ==
> >                                               VCHIQ_BULK_TRANSMIT) ?
> >                                               ((bulk->actual ==
> >                                               VCHIQ_BULK_ACTUAL_ABORTED) ?
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> > index c23bd10..f911612 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> > @@ -15,7 +15,7 @@
> >  #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
> >  #define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
> >
> > -typedef enum {
> > +enum vchiq_reason {
> >       VCHIQ_SERVICE_OPENED,         /* service, -, -             */
> >       VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
> >       VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
> > @@ -23,7 +23,7 @@ typedef enum {
> >       VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
> >       VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
> >       VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
> > -} VCHIQ_REASON_T;
> > +};
> >
> >  typedef enum {
> >       VCHIQ_ERROR   = -1,
> > @@ -63,7 +63,7 @@ struct vchiq_element {
> >
> >  typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
> >
> > -typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(VCHIQ_REASON_T,
> > +typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
> >                                          struct vchiq_header *,
> >                                          VCHIQ_SERVICE_HANDLE_T, void *);
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> > index 460ccea..c2343a1 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> > @@ -32,7 +32,7 @@ struct vchiq_queue_bulk_transfer {
> >  };
> >
> >  struct vchiq_completion_data {
> > -     VCHIQ_REASON_T reason;
> > +     enum vchiq_reason reason;
> >       struct vchiq_header *header;
> >       void *service_userdata;
> >       void *bulk_userdata;
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > index a2268d5..e02518d 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > @@ -509,7 +509,7 @@ EXPORT_SYMBOL(vchi_disconnect);
> >   *
> >   ***********************************************************/
> >
> > -static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
> > +static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
> >                                   struct vchiq_header *header,
> >                                   VCHIQ_SERVICE_HANDLE_T handle,
> >                                   void *bulk_user)
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570125797-24410-1-git-send-email-nachukannan%40gmail.com.
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
