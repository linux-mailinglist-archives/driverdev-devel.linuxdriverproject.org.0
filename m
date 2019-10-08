Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CD9CF23C
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 07:45:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1E6C847D5;
	Tue,  8 Oct 2019 05:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mXaEQfvrIxo; Tue,  8 Oct 2019 05:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E94F8480D;
	Tue,  8 Oct 2019 05:45:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 905531BF2A4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C7AB87592
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id psyCJtmkFzpG for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 05:45:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3-relais-sop.national.inria.fr
 (mail3-relais-sop.national.inria.fr [192.134.164.104])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 73E6C87591
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 05:45:49 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; d="scan'208";a="321940414"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 07:45:46 +0200
Date: Tue, 8 Oct 2019 07:45:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Avoid NULL
 comparison
In-Reply-To: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910080745260.2638@hadrien>
References: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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



On Mon, 7 Oct 2019, Nachammai Karuppiah wrote:

> Remove NULL comparison. Issue found using checkpatch.pl

This introduces compiler warnings, which you should try very hard not to
do.

julia

>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
>
> ---
>
> Changes in V2
>    - Remove all NULL comparisons in vc04_services/interface directory.
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
>  .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 28 +++++++++++-----------
>  .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
>  .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
>  4 files changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 8dc730c..7cdb21e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -526,11 +526,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
>  			return NULL;
>  		}
>
> -		WARN_ON(g_free_fragments == NULL);
> +		WARN_ON(!g_free_fragments);
>
>  		down(&g_free_fragments_mutex);
>  		fragments = g_free_fragments;
> -		WARN_ON(fragments == NULL);
> +		WARN_ON(!fragments);
>  		g_free_fragments = *(char **) g_free_fragments;
>  		up(&g_free_fragments_mutex);
>  		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index b1595b1..b930148 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -826,8 +826,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  		/* Remove all services */
>  		i = 0;
> -		while ((service = next_service_by_instance(instance->state,
> -			instance, &i)) != NULL) {
> +		while (service = next_service_by_instance(instance->state,
> +			instance, &i)) {
>  			status = vchiq_remove_service(service->handle);
>  			unlock_service(service);
>  			if (status != VCHIQ_SUCCESS)
> @@ -907,7 +907,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  				&args.params, srvstate,
>  				instance, user_service_free);
>
> -		if (service != NULL) {
> +		if (service) {
>  			user_service->service = service;
>  			user_service->userdata = userdata;
>  			user_service->instance = instance;
> @@ -988,7 +988,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
>
>  		service = find_service_for_instance(instance, handle);
> -		if (service != NULL) {
> +		if (service) {
>  			status = (cmd == VCHIQ_IOC_USE_SERVICE)	?
>  				vchiq_use_service_internal(service) :
>  				vchiq_release_service_internal(service);
> @@ -1021,7 +1021,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  		service = find_service_for_instance(instance, args.handle);
>
> -		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
> +		if (service && (args.count <= MAX_ELEMENTS)) {
>  			/* Copy elements into kernel space */
>  			struct vchiq_element elements[MAX_ELEMENTS];
>
> @@ -1343,11 +1343,11 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		spin_unlock(&msg_queue_spinlock);
>
>  		complete(&user_service->remove_event);
> -		if (header == NULL)
> +		if (!header)
>  			ret = -ENOTCONN;
>  		else if (header->size <= args.bufsize) {
>  			/* Copy to user space if msgbuf is not NULL */
> -			if ((args.buf == NULL) ||
> +			if (!args.buf ||
>  				(copy_to_user((void __user *)args.buf,
>  				header->data,
>  				header->size) == 0)) {
> @@ -1426,7 +1426,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
>
>  		service = find_closed_service_for_instance(instance, handle);
> -		if (service != NULL) {
> +		if (service) {
>  			struct user_service *user_service =
>  				(struct user_service *)service->base.userdata;
>  			close_delivered(user_service);
> @@ -2223,13 +2223,13 @@ struct vchiq_state *
>  vchiq_get_state(void)
>  {
>
> -	if (g_state.remote == NULL)
> +	if (!g_state.remote)
>  		printk(KERN_ERR "%s: g_state.remote == NULL\n", __func__);
>  	else if (g_state.remote->initialised != 1)
>  		printk(KERN_NOTICE "%s: g_state.remote->initialised != 1 (%d)\n",
>  			__func__, g_state.remote->initialised);
>
> -	return ((g_state.remote != NULL) &&
> +	return (g_state.remote &&
>  		(g_state.remote->initialised == 1)) ? &g_state : NULL;
>  }
>
> @@ -2923,8 +2923,8 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
>  	int use_count = 0, i;
>
>  	i = 0;
> -	while ((service = next_service_by_instance(instance->state,
> -		instance, &i)) != NULL) {
> +	while (service = next_service_by_instance(instance->state,
> +		instance, &i)) {
>  		use_count += service->service_use_count;
>  		unlock_service(service);
>  	}
> @@ -2950,8 +2950,8 @@ vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
>  	int i;
>
>  	i = 0;
> -	while ((service = next_service_by_instance(instance->state,
> -		instance, &i)) != NULL) {
> +	while (service = next_service_by_instance(instance->state,
> +		instance, &i)) {
>  		service->trace = trace;
>  		unlock_service(service);
>  	}
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 56a23a2..4c375cd 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -542,7 +542,7 @@ reserve_space(struct vchiq_state *state, size_t space, int is_blocking)
>  	if (space > slot_space) {
>  		struct vchiq_header *header;
>  		/* Fill the remaining space with padding */
> -		WARN_ON(state->tx_data == NULL);
> +		WARN_ON(!state->tx_data);
>  		header = (struct vchiq_header *)
>  			(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
>  		header->msgid = VCHIQ_MSGID_PADDING;
> @@ -3578,7 +3578,7 @@ void vchiq_log_dump_mem(const char *label, u32 addr, const void *void_mem,
>  		}
>  		*s++ = '\0';
>
> -		if ((label != NULL) && (*label != '\0'))
> +		if (label && (*label != '\0'))
>  			vchiq_log_trace(VCHIQ_LOG_TRACE,
>  				"%s: %08x: %s", label, addr, line_buf);
>  		else
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 17a4f2c..10be23e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
>  		}
>  	}
>
> -	return (service != NULL) ? 0 : -1;
> +	return service ? 0 : -1;
>  }
>  EXPORT_SYMBOL(vchi_service_open);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570487369-35454-1-git-send-email-nachukannan%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
