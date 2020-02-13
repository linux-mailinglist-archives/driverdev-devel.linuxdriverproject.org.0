Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D9315C913
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Feb 2020 18:03:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C3BC871F4;
	Thu, 13 Feb 2020 17:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2xR2bO87Hi5; Thu, 13 Feb 2020 17:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBEA28708C;
	Thu, 13 Feb 2020 17:03:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93B231BF3CA
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 17:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F20C87DFF
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 17:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oWopND5h2yY for <devel@linuxdriverproject.org>;
 Thu, 13 Feb 2020 17:03:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D78F587DAF
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 17:03:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id g3so3279745pgs.11
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 09:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V1Jz7DQCub4NFVcIsjUqfykk1pSEwxOhi09WkIkiCQ4=;
 b=SrfTq0ph5CTWFUk8fSFDvM236pkVQ/TlXToHwBkv3e14+HB1WVURZ1kjTXR007lrNB
 Bm8VbK0+LvGDHUGGqohoYhLAdc9geg+5q+1Sjb+vNrNCV5SbMCZSbXET3idTixeai/yO
 Lg4GCbvZg0QsJl/aZkY2TbPvRQ4jZ6hnbaWPPjtbsm5ULWf2Xg9+wv4sIKvVXIrGLrN8
 Zc5FUWKQlQuqsgsngd32HU4NoUStPCJkxEHpQD+QiBtEZreMayvuiDvKcaL2ZyO2Ox48
 E+NE5EKAMDSEOitcgLwXsmbAvh+C7hb/Lruy0f4gHLq5Z3ChNWPYfXhYfgA4rPPtjbtN
 UNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V1Jz7DQCub4NFVcIsjUqfykk1pSEwxOhi09WkIkiCQ4=;
 b=okMNIY68hx9/NXp31TbBg2sj87xt2+GFcKVwoBgPPCOnNtsq3GsHsSbOIw5RKvAMV0
 o+elqnrK1jmEyES3A+JBKiP365ckcoVSqi0mCPoCmOpu0vk7DeAiJf2isLRGxUg7VuYS
 wNv+/J4qCrP2t1lOSEqaHSWHGEvoV400Tx/yFVgq32LF3hqXXutNsTwIkDvh7PJ1nACb
 qiQ8rUzNAoG6tNkopmC2lu3RMvDBs1dsRYlWvr4apYdwhD8A+arhcwZXF94kRNlgkf1B
 R39PCKpffk42ypGljEvCqh5+SNTV/lK1u7VXbDl+/erszT4pwo5mJvmZeDJd7H7DLYod
 xoFQ==
X-Gm-Message-State: APjAAAVJyplRVYR32o+lThO0PZKOIbCHRcRiqwDzT8CUgFBv7Js/nlms
 BYx7mVQQqQ985dUx9j1YvZ1+bSLuZ4h1RkzdpMLmVw==
X-Google-Smtp-Source: APXvYqybG45UxWGVbIyD7iFrzFkMCFDb/shIn5BQDCuI2ZfEh7nMdcRf22IAxvR0h/jHf4hQ2tl+nnm+wuksulQB2is=
X-Received: by 2002:a63:7744:: with SMTP id s65mr18674754pgc.312.1581613423973; 
 Thu, 13 Feb 2020 09:03:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
 <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
In-Reply-To: <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Thu, 13 Feb 2020 12:03:32 -0500
Message-ID: <CAKvFj6q9d-Txfe9fj8tfpT9+Ea24qKd+6Jno-XRikgixqghCYw@mail.gmail.com>
Subject: Re: [PATCH 5/5] staging: vc04_services: don't increment service
 refcount when it's not needed
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 12, 2020 at 1:43 PM Marcelo Diop-Gonzalez
<marcgonzalez@google.com> wrote:
>
> There are a few places where a service's reference count is incremented,
> something quick is done, and the refcount is dropped. This can be made
> a little simpler/faster by not grabbing a reference in these cases.
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  .../interface/vchiq_arm/vchiq_arm.c           | 16 ++++-----
>  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++++++------
>  .../interface/vchiq_arm/vchiq_core.h          |  8 ++++-
>  3 files changed, 40 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 3ed0e4ea7f5c..b377f18aed45 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -2497,11 +2497,11 @@ vchiq_instance_get_use_count(struct vchiq_instance *instance)
>         int use_count = 0, i;
>
>         i = 0;
> -       while ((service = next_service_by_instance(instance->state,
> -               instance, &i))) {
> +       rcu_read_lock();
> +       while ((service = __next_service_by_instance(instance->state,
> +                                                    instance, &i)))
>                 use_count += service->service_use_count;
> -               unlock_service(service);
> -       }
> +       rcu_read_unlock();
>         return use_count;
>  }
>
> @@ -2524,11 +2524,11 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
>         int i;
>
>         i = 0;
> -       while ((service = next_service_by_instance(instance->state,
> -               instance, &i))) {
> +       rcu_read_lock();
> +       while ((service = __next_service_by_instance(instance->state,
> +                                                    instance, &i)))
>                 service->trace = trace;
> -               unlock_service(service);
> -       }
> +       rcu_read_unlock();
>         instance->trace = (trace != 0);
>  }
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 65270a5b29db..d7d7f4d9d57f 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -222,28 +222,42 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>  }
>
>  struct vchiq_service *
> -next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
> -                        int *pidx)
> +__next_service_by_instance(struct vchiq_state *state,
> +                          struct vchiq_instance *instance,
> +                          int *pidx)
>  {
>         struct vchiq_service *service = NULL;
>         int idx = *pidx;
>
> -       rcu_read_lock();
>         while (idx < state->unused_service) {
>                 struct vchiq_service *srv;
>
>                 srv = rcu_dereference(state->services[idx++]);
>                 if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> -                   srv->instance == instance &&
> -                   kref_get_unless_zero(&srv->ref_count)) {
> -                       service = rcu_pointer_handoff(srv);
> +                   srv->instance == instance) {
> +                       service = srv;
>                         break;
>                 }
>         }
> -       rcu_read_unlock();
>
>         *pidx = idx;
> +       return service;
> +}
>
> +struct vchiq_service *
> +next_service_by_instance(struct vchiq_state *state,
> +                        struct vchiq_instance *instance,
> +                        int *pidx)
> +{
> +       struct vchiq_service *service;
> +
> +       rcu_read_lock();
> +       service = __next_service_by_instance(state, instance, pidx);
> +       if (service && kref_get_unless_zero(&service->ref_count))
> +               service = rcu_pointer_handoff(service);
> +       else
> +               service = NULL;
> +       rcu_read_unlock();
>         return service;
>  }

ahh wait, this one is buggy..... If kref_get_unless_zero fails then we
want to keep looking
for the next one. Greg, since you already applied this one, would it
be best for me to send
a patch on top of this or send a V2?

-Marcelo

>
> @@ -283,13 +297,13 @@ unlock_service(struct vchiq_service *service)
>  int
>  vchiq_get_client_id(unsigned int handle)
>  {
> -       struct vchiq_service *service = find_service_by_handle(handle);
> +       struct vchiq_service *service;
>         int id;
>
> +       rcu_read_lock();
> +       service = handle_to_service(handle);
>         id = service ? service->client_id : 0;
> -       if (service)
> -               unlock_service(service);
> -
> +       rcu_read_unlock();
>         return id;
>  }
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> index 30e4965c7666..cedd8e721aae 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> @@ -572,7 +572,13 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>         unsigned int handle);
>
>  extern struct vchiq_service *
> -next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
> +__next_service_by_instance(struct vchiq_state *state,
> +                          struct vchiq_instance *instance,
> +                          int *pidx);
> +
> +extern struct vchiq_service *
> +next_service_by_instance(struct vchiq_state *state,
> +                        struct vchiq_instance *instance,
>                          int *pidx);
>
>  extern void
> --
> 2.25.0.225.g125e21ebc7-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
