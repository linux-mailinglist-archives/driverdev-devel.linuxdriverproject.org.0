Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E04D415B2E2
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 22:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D76185427;
	Wed, 12 Feb 2020 21:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MoYBcE64yXTN; Wed, 12 Feb 2020 21:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4D5685EB4;
	Wed, 12 Feb 2020 21:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C91F01BF32E
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:40:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C60E685C12
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B0UpZXkK1wLs for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 21:40:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C37F285AE2
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 21:40:03 +0000 (UTC)
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 724472173E;
 Wed, 12 Feb 2020 21:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581543603;
 bh=j2a8ETyjtwqkfH/qJi0dFXJ8ENewfGejLIXoBDwaapc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UW9o/UmqJJQOL2Kb9b8j8FJjEnVO0k5z3GfHxFsw02xvZ4peLbIepeFnGG3pAzA4p
 +2bA/6J5k1wpG2JUBsJQLSyEHoXQR/2/dxlTD3wxtPzfuH4IewnG+7bVOslEd/UAfT
 EN3pARz8Ftc90sMsHHzwkVKLiEHmZoRs8FdQFS5k=
Date: Wed, 12 Feb 2020 13:40:02 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 4/5] staging: vc04_services: use kref + RCU to reference
 count services
Message-ID: <20200212214002.GB2297906@kroah.com>
References: <cover.1581532523.git.marcgonzalez@google.com>
 <3bf6f1ec6ace64d7072025505e165b8dd18b25ca.1581532523.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bf6f1ec6ace64d7072025505e165b8dd18b25ca.1581532523.git.marcgonzalez@google.com>
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 12, 2020 at 01:43:32PM -0500, Marcelo Diop-Gonzalez wrote:
> Currently reference counts are implemented by locking service_spinlock
> and then incrementing the service's ->ref_count field, calling
> kfree() when the last reference has been dropped. But at the same
> time, there's code in multiple places that dereferences pointers
> to services without having a reference, so there could be a race there.
> 
> It should be possible to avoid taking any lock in unlock_service()
> or service_release() because we are setting a single array element
> to NULL, and on service creation, a mutex is locked before looking
> for a NULL spot to put the new service in.
> 
> Using a struct kref and RCU-delaying the freeing of services fixes
> this race condition while still making it possible to skip
> grabbing a reference in many places. Also it avoids the need to
> acquire a single spinlock when e.g. taking a reference on
> state->services[i] when somebody else is in the middle of taking
> a reference on state->services[j].
> 
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---
>  .../interface/vchiq_arm/vchiq_arm.c           |  25 +-
>  .../interface/vchiq_arm/vchiq_core.c          | 222 +++++++++---------
>  .../interface/vchiq_arm/vchiq_core.h          |  12 +-
>  3 files changed, 140 insertions(+), 119 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index c456ced431af..3ed0e4ea7f5c 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -22,6 +22,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/compat.h>
>  #include <linux/dma-mapping.h>
> +#include <linux/rcupdate.h>
>  #include <soc/bcm2835/raspberrypi-firmware.h>
>  
>  #include "vchiq_core.h"
> @@ -2096,10 +2097,12 @@ int vchiq_dump_platform_instances(void *dump_context)
>  	/* There is no list of instances, so instead scan all services,
>  		marking those that have been dumped. */
>  
> +	rcu_read_lock();
>  	for (i = 0; i < state->unused_service; i++) {
> -		struct vchiq_service *service = state->services[i];
> +		struct vchiq_service *service;
>  		struct vchiq_instance *instance;
>  
> +		service = rcu_dereference(state->services[i]);
>  		if (!service || service->base.callback != service_callback)
>  			continue;
>  
> @@ -2107,18 +2110,26 @@ int vchiq_dump_platform_instances(void *dump_context)
>  		if (instance)
>  			instance->mark = 0;
>  	}
> +	rcu_read_unlock();
>  
>  	for (i = 0; i < state->unused_service; i++) {
> -		struct vchiq_service *service = state->services[i];
> +		struct vchiq_service *service;
>  		struct vchiq_instance *instance;
>  		int err;
>  
> -		if (!service || service->base.callback != service_callback)
> +		rcu_read_lock();
> +		service = rcu_dereference(state->services[i]);
> +		if (!service || service->base.callback != service_callback) {
> +			rcu_read_unlock();
>  			continue;
> +		}
>  
>  		instance = service->instance;
> -		if (!instance || instance->mark)
> +		if (!instance || instance->mark) {
> +			rcu_read_unlock();
>  			continue;
> +		}
> +		rcu_read_unlock();
>  
>  		len = snprintf(buf, sizeof(buf),
>  			       "Instance %pK: pid %d,%s completions %d/%d",
> @@ -2128,7 +2139,6 @@ int vchiq_dump_platform_instances(void *dump_context)
>  			       instance->completion_insert -
>  			       instance->completion_remove,
>  			       MAX_COMPLETIONS);
> -
>  		err = vchiq_dump(dump_context, buf, len + 1);
>  		if (err)
>  			return err;
> @@ -2585,8 +2595,10 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
>  	if (active_services > MAX_SERVICES)
>  		only_nonzero = 1;
>  
> +	rcu_read_lock();
>  	for (i = 0; i < active_services; i++) {
> -		struct vchiq_service *service_ptr = state->services[i];
> +		struct vchiq_service *service_ptr =
> +			rcu_dereference(state->services[i]);
>  
>  		if (!service_ptr)
>  			continue;
> @@ -2604,6 +2616,7 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
>  		if (found >= MAX_SERVICES)
>  			break;
>  	}
> +	rcu_read_unlock();
>  
>  	read_unlock_bh(&arm_state->susp_res_lock);
>  
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index b2d9013b7f79..65270a5b29db 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -1,6 +1,9 @@
>  // SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
>  /* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
>  
> +#include <linux/kref.h>
> +#include <linux/rcupdate.h>
> +
>  #include "vchiq_core.h"
>  
>  #define VCHIQ_SLOT_HANDLER_STACK 8192
> @@ -54,7 +57,6 @@ int vchiq_core_log_level = VCHIQ_LOG_DEFAULT;
>  int vchiq_core_msg_log_level = VCHIQ_LOG_DEFAULT;
>  int vchiq_sync_log_level = VCHIQ_LOG_DEFAULT;
>  
> -static DEFINE_SPINLOCK(service_spinlock);
>  DEFINE_SPINLOCK(bulk_waiter_spinlock);
>  static DEFINE_SPINLOCK(quota_spinlock);
>  
> @@ -136,44 +138,41 @@ find_service_by_handle(unsigned int handle)
>  {
>  	struct vchiq_service *service;
>  
> -	spin_lock(&service_spinlock);
> +	rcu_read_lock();
>  	service = handle_to_service(handle);
>  	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> -	    service->handle == handle) {
> -		WARN_ON(service->ref_count == 0);
> -		service->ref_count++;
> -	} else
> -		service = NULL;
> -	spin_unlock(&service_spinlock);
> -
> -	if (!service)
> -		vchiq_log_info(vchiq_core_log_level,
> -			"Invalid service handle 0x%x", handle);
> -
> -	return service;
> +	    service->handle == handle &&
> +	    kref_get_unless_zero(&service->ref_count)) {
> +		service = rcu_pointer_handoff(service);
> +		rcu_read_unlock();
> +		return service;
> +	}
> +	rcu_read_unlock();
> +	vchiq_log_info(vchiq_core_log_level,
> +		       "Invalid service handle 0x%x", handle);
> +	return NULL;
>  }
>  
>  struct vchiq_service *
>  find_service_by_port(struct vchiq_state *state, int localport)
>  {
> -	struct vchiq_service *service = NULL;
>  
>  	if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
> -		spin_lock(&service_spinlock);
> -		service = state->services[localport];
> -		if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
> -			WARN_ON(service->ref_count == 0);
> -			service->ref_count++;
> -		} else
> -			service = NULL;
> -		spin_unlock(&service_spinlock);
> -	}
> -
> -	if (!service)
> -		vchiq_log_info(vchiq_core_log_level,
> -			"Invalid port %d", localport);
> +		struct vchiq_service *service;
>  
> -	return service;
> +		rcu_read_lock();
> +		service = rcu_dereference(state->services[localport]);
> +		if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
> +		    kref_get_unless_zero(&service->ref_count)) {
> +			service = rcu_pointer_handoff(service);
> +			rcu_read_unlock();
> +			return service;
> +		}
> +		rcu_read_unlock();
> +	}
> +	vchiq_log_info(vchiq_core_log_level,
> +		       "Invalid port %d", localport);
> +	return NULL;
>  }
>  
>  struct vchiq_service *
> @@ -182,22 +181,20 @@ find_service_for_instance(struct vchiq_instance *instance,
>  {
>  	struct vchiq_service *service;
>  
> -	spin_lock(&service_spinlock);
> +	rcu_read_lock();
>  	service = handle_to_service(handle);
>  	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
>  	    service->handle == handle &&
> -	    service->instance == instance) {
> -		WARN_ON(service->ref_count == 0);
> -		service->ref_count++;
> -	} else
> -		service = NULL;
> -	spin_unlock(&service_spinlock);
> -
> -	if (!service)
> -		vchiq_log_info(vchiq_core_log_level,
> -			"Invalid service handle 0x%x", handle);
> -
> -	return service;
> +	    service->instance == instance &&
> +	    kref_get_unless_zero(&service->ref_count)) {
> +		service = rcu_pointer_handoff(service);
> +		rcu_read_unlock();
> +		return service;
> +	}
> +	rcu_read_unlock();
> +	vchiq_log_info(vchiq_core_log_level,
> +		       "Invalid service handle 0x%x", handle);
> +	return NULL;
>  }
>  
>  struct vchiq_service *
> @@ -206,23 +203,21 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
>  {
>  	struct vchiq_service *service;
>  
> -	spin_lock(&service_spinlock);
> +	rcu_read_lock();
>  	service = handle_to_service(handle);
>  	if (service &&
>  	    (service->srvstate == VCHIQ_SRVSTATE_FREE ||
>  	     service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
>  	    service->handle == handle &&
> -	    service->instance == instance) {
> -		WARN_ON(service->ref_count == 0);
> -		service->ref_count++;
> -	} else
> -		service = NULL;
> -	spin_unlock(&service_spinlock);
> -
> -	if (!service)
> -		vchiq_log_info(vchiq_core_log_level,
> -			"Invalid service handle 0x%x", handle);
> -
> +	    service->instance == instance &&
> +	    kref_get_unless_zero(&service->ref_count)) {
> +		service = rcu_pointer_handoff(service);
> +		rcu_read_unlock();
> +		return service;
> +	}
> +	rcu_read_unlock();
> +	vchiq_log_info(vchiq_core_log_level,
> +		       "Invalid service handle 0x%x", handle);
>  	return service;
>  }
>  
> @@ -233,19 +228,19 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
>  	struct vchiq_service *service = NULL;
>  	int idx = *pidx;
>  
> -	spin_lock(&service_spinlock);
> +	rcu_read_lock();
>  	while (idx < state->unused_service) {
> -		struct vchiq_service *srv = state->services[idx++];
> +		struct vchiq_service *srv;
>  
> +		srv = rcu_dereference(state->services[idx++]);
>  		if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
> -		    srv->instance == instance) {
> -			service = srv;
> -			WARN_ON(service->ref_count == 0);
> -			service->ref_count++;
> +		    srv->instance == instance &&
> +		    kref_get_unless_zero(&srv->ref_count)) {
> +			service = rcu_pointer_handoff(srv);
>  			break;
>  		}
>  	}
> -	spin_unlock(&service_spinlock);
> +	rcu_read_unlock();
>  
>  	*pidx = idx;
>  
> @@ -255,43 +250,34 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
>  void
>  lock_service(struct vchiq_service *service)
>  {
> -	spin_lock(&service_spinlock);
> -	WARN_ON(!service);
> -	if (service) {
> -		WARN_ON(service->ref_count == 0);
> -		service->ref_count++;
> +	if (!service) {
> +		WARN(1, "%s service is NULL\n", __func__);
> +		return;
>  	}
> -	spin_unlock(&service_spinlock);
> +	kref_get(&service->ref_count);
> +}
> +
> +static void service_release(struct kref *kref)
> +{
> +	struct vchiq_service *service =
> +		container_of(kref, struct vchiq_service, ref_count);
> +	struct vchiq_state *state = service->state;
> +
> +	WARN_ON(service->srvstate != VCHIQ_SRVSTATE_FREE);
> +	rcu_assign_pointer(state->services[service->localport], NULL);
> +	if (service->userdata_term)
> +		service->userdata_term(service->base.userdata);
> +	kfree_rcu(service, rcu);
>  }

I think that's the first time I've seen krefs used with rcu.

It looks sane at first glance, but it's a lot of tricky changes, so I'll
assume you tested this and go merge it to see what breaks :)

thanks for doing this,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
