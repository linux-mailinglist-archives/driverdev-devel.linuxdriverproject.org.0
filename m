Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 208EE15B057
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 19:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C84C85D7D;
	Wed, 12 Feb 2020 18:59:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aF7938n4ShC6; Wed, 12 Feb 2020 18:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9340885CAA;
	Wed, 12 Feb 2020 18:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D68B1BF23B
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 18:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A54F838D9
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 18:59:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmF-Ev3K6Mj0 for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 18:59:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48ED583775
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 18:59:15 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id l136so3106493oig.1
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 10:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fhG+w73Um4LRFx1y+IQP8p309R6bRu5uLfdD6UwelV0=;
 b=N1XXNwwDuJi2iQrSn7S1fTrbkcTowP8yJzUc4aEqH6J/Gcx4e35g8hmic0On8mFV3e
 WJ1vnNa2xOTFAumo3rUYeJE55S7QjRjzElXdhRG7XgSyyp8FJUX7cRDR0ITC20xqBxdz
 rRqLHA6fmmbgsjOnTCudG3pjdyflzIvPxZDFocdpTqafbSPiS30GWrPmP0o14a2ZCR9V
 /L77PYgI8D2V/LcHhNrXiU1y1yQF2PJ6xlJqhSCRj06oDliVX5I42e+mi4e7t76ITPDX
 EwlXy5ZXLii90d5GKsMqgvO+/egkwSN3gjgYC5CSjlN5AJE9h4SSZ5Q8CJ0qT2FQ/iB3
 Db6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fhG+w73Um4LRFx1y+IQP8p309R6bRu5uLfdD6UwelV0=;
 b=mTKWukp5xtqTbJyvqSVzZ4V3ioaa44zLtA6nWwoLVi0YDr16XQ+gJPeIUBqyFrsq/7
 uspk4Aqj6rDxl5pLfIdTTVAnmzTC6mI9ADDF4sCFM//vL0j1l7UCl3jCMtoJ5yHaBc5q
 jfcLSANLFEKVvTFjOJPhMNA551N7wGoUkFDG+d7rEVdqkSnRPunTDbmVKRGvTq4j7eMf
 cway8XyFCUPmzr4eER0vNxZZqoc/Uqk+urpuhdQTWPTS4+elok4VmtT70KE9K7+m6F97
 NEOOQXMpMBpYRr2qw5BcW+vnhyRvf5r0oO4nDtMqgAl/69E+by9MMzvtcC44u64SA5NC
 p76Q==
X-Gm-Message-State: APjAAAVtDGBAzWby+eoi3hbtE55/tjlD89CRSj+rXCuSeSeDZmvWWZvb
 kUS6RAVuvK5XDBwz49kq9yKSYDxkqwoWaOC0cy1Cc8QH
X-Google-Smtp-Source: APXvYqzkUxnHg6CvOHByBeQAqbneX++1ZWXENIJEAVxPur5dnVqS1hanHN6wo+UydZLYl6ASeOWL5RTKG1IKeX3V1Hw=
X-Received: by 2002:a17:90a:348a:: with SMTP id
 p10mr525547pjb.120.1581533487373; 
 Wed, 12 Feb 2020 10:51:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
 <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
In-Reply-To: <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 12 Feb 2020 13:51:15 -0500
Message-ID: <CAKvFj6obuHJgt1_ePLJ+Mba4k8RY2WLhutcsfNJk9ZFk4QcnPg@mail.gmail.com>
Subject: Re: [PATCH 2/5] staging: vc04_services: remove unneeded parentheses
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
> there are extra parentheses around many conditional statements
> that make things a little harder to read
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++----------
>  1 file changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 4f8b59deaec9..72bfa0f73958 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -138,8 +138,8 @@ find_service_by_handle(unsigned int handle)
>
>         spin_lock(&service_spinlock);
>         service = handle_to_service(handle);
> -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> -               (service->handle == handle)) {
> +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> +           service->handle == handle) {
>                 WARN_ON(service->ref_count == 0);
>                 service->ref_count++;
>         } else
> @@ -161,7 +161,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
>         if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
>                 spin_lock(&service_spinlock);
>                 service = state->services[localport];
> -               if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
> +               if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
>                         WARN_ON(service->ref_count == 0);
>                         service->ref_count++;
>                 } else
> @@ -184,9 +184,9 @@ find_service_for_instance(struct vchiq_instance *instance,
>
>         spin_lock(&service_spinlock);
>         service = handle_to_service(handle);
> -       if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
> -               (service->handle == handle) &&
> -               (service->instance == instance)) {
> +       if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> +           service->handle == handle &&
> +           service->instance == instance) {
>                 WARN_ON(service->ref_count == 0);
>                 service->ref_count++;
>         } else
> @@ -209,10 +209,10 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>         spin_lock(&service_spinlock);
>         service = handle_to_service(handle);
>         if (service &&
> -               ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
> -                (service->srvstate == VCHIQ_SRVSTATE_CLOSED)) &&
> -               (service->handle == handle) &&
> -               (service->instance == instance)) {
> +           (service->srvstate == VCHIQ_SRVSTATE_FREE ||
> +            service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
> +           service->handle == handle &&
> +           service->instance == instance) {
>                 WARN_ON(service->ref_count == 0);
>                 service->ref_count++;
>         } else
> @@ -237,8 +237,8 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
>         while (idx < state->unused_service) {
>                 struct vchiq_service *srv = state->services[idx++];
>
> -               if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
> -                       (srv->instance == instance)) {
> +               if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> +                   srv->instance == instance) {
>                         service = srv;
>                         WARN_ON(service->ref_count == 0);
>                         service->ref_count++;
> @@ -464,10 +464,10 @@ get_listening_service(struct vchiq_state *state, int fourcc)
>                 struct vchiq_service *service = state->services[i];
>
>                 if (service &&
> -                       (service->public_fourcc == fourcc) &&
> -                       ((service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
> -                       ((service->srvstate == VCHIQ_SRVSTATE_OPEN) &&
> -                       (service->remoteport == VCHIQ_PORT_FREE)))) {
> +                   service->public_fourcc == fourcc &&
> +                   (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
> +                    (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> +                     service->remoteport == VCHIQ_PORT_FREE))) {
>                         lock_service(service);
>                         return service;
>                 }
> @@ -485,8 +485,8 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
>         for (i = 0; i < state->unused_service; i++) {
>                 struct vchiq_service *service = state->services[i];
>
> -               if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
> -                       && (service->remoteport == port)) {
> +               if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
> +                   service->remoteport == port) {
>                         lock_service(service);
>                         return service;
>                 }
> --
> 2.25.0.225.g125e21ebc7-goog
>

I have to admit that this one trades one checkpatch warning for
another.... (line too long). It seemed like it looks better this way,
and getting rid of the long lines would have meant refactoring more
stuff, but if its a problem I can redo this one
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
