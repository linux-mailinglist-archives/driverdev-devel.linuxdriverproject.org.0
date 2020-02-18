Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FE61628C9
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 15:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2433985C9F;
	Tue, 18 Feb 2020 14:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ynWQKOnwQukR; Tue, 18 Feb 2020 14:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E174B85BE4;
	Tue, 18 Feb 2020 14:45:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DDC11BF5DD
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 14:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7AC0885BE4
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 14:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0fAELWKPHIap for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 14:45:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 78EA885BD3
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 14:45:27 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id b9so10911672pgk.12
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 06:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PgVA74rw/Os3jpwsoZ9ssKAAiF6uv0dDc1ODzO4kp7U=;
 b=YYlZcWxAZ6/+b94Q2vrpNWGl5UwkzRE+JT0dBBLtNUmGuBlYmIZMs0N6T0ItKKo/Ai
 6fIrMhA+uw2F+TUfgwdlcNuZ133c8dPrMl5NMH1di9R3USLjf3AEmThFuZmVu2p0vBV7
 JLavjooBGQpWu8bBYaOcXCrEAIsZaGGdO5iA3nQ24mkUGZRifufirPwsivRlamIn76IS
 L4vXM2VBiThAYeQvxMWhkelFCfROh36JWDW6Aac7aDAXQ73Zjr9+SdtvQ+BuCwU6r62N
 z5TuWdAC8OUlZQS+9eOGDxUhR7iiPqFpTqxk5OBH35IVtDVdaSDNXAodW/d4xKKtDfSI
 FlYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PgVA74rw/Os3jpwsoZ9ssKAAiF6uv0dDc1ODzO4kp7U=;
 b=J2rbDFjM0eAlSjiTrOiQv/8LFKJmUQAOGoxv7ai0bKCwpi/596oYBC9kz7G2UZJWuE
 MhGYO5lpOdn6uB2j72bpWWe8gTA07BiSrhOoi+UCmsEhlBnR4DMoCAouz7Lg+8PEt4JB
 sljJtGIwIk7Eeudd1fks7SBDw8Z69qwXdDwTfaq5+E/E0qe7kxD1Aq3slm6hjfHnQCmG
 zmiS2RGED1tNN7XdMV+/Bq80NaEBgwONIVd9tFMhzaohMMpBStQTEm9XtClDPRM5zfZo
 fCr0806u1BLN9wQuevnQXN2QEmPy+Neh6To6scMvjSKydQf8gynIDfjcadhacLGEQrXx
 ELAg==
X-Gm-Message-State: APjAAAX4vpQaR12qnc3wN86rdY7Vy+AdG2M9LAmjZJPHwAE2vHqI85+R
 7lvwjt+2oTHejuqrzFNnBm5wyCVhDza/0epHgSw2VQ==
X-Google-Smtp-Source: APXvYqwbiIt8Ld0kUAUr8Ptx7Nq+Jjuf5kDvUZWTU/Gh1LifVVyYDVuEb39rLiPuZCBOKca262/gj3E05azYltgr1Xs=
X-Received: by 2002:a63:3c2:: with SMTP id 185mr22342627pgd.72.1582037126783; 
 Tue, 18 Feb 2020 06:45:26 -0800 (PST)
MIME-Version: 1.0
References: <20200213194001.130110-1-marcgonzalez@google.com>
 <C0OK3FSV7XIN.MMMEHI9F14QG@linux-9qgx>
In-Reply-To: <C0OK3FSV7XIN.MMMEHI9F14QG@linux-9qgx>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Tue, 18 Feb 2020 09:45:15 -0500
Message-ID: <CAKvFj6qR+1fdVWAivo-pddsFk8zNhbrO3JjXj-qBa-CA0M9-EA@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 17, 2020 at 10:55 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Thu Feb 13, 2020 at 2:40 PM, Marcelo Diop-Gonzalez wrote:
> > If kref_get_unless_zero() fails, we should keep looking for the
> > next service, since the callers of this function expect that a NULL
> > return value means there are no more.
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
>
> Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

thanks for reviewing!

>
> Note that, as Dan says, picking up the Fixes tag would be nice.
>
> > ---
> > .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++++-----
> > 1 file changed, 9 insertions(+), 5 deletions(-)
> >
> > diff --git
> > a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > index d7d7f4d9d57f..edcd97373809 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> > @@ -252,11 +252,15 @@ next_service_by_instance(struct vchiq_state
> > *state,
> > struct vchiq_service *service;
> >
> > rcu_read_lock();
> > - service = __next_service_by_instance(state, instance, pidx);
> > - if (service && kref_get_unless_zero(&service->ref_count))
> > - service = rcu_pointer_handoff(service);
> > - else
> > - service = NULL;
> > + while (1) {
> > + service = __next_service_by_instance(state, instance, pidx);
> > + if (!service)
> > + break;
> > + if (kref_get_unless_zero(&service->ref_count)) {
> > + service = rcu_pointer_handoff(service);
> > + break;
> > + }
> > + }
> > rcu_read_unlock();
> > return service;
> > }
> > --
> > 2.25.0.225.g125e21ebc7-goog
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
