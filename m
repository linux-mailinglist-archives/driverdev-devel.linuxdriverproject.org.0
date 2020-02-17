Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E59B1616CD
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Feb 2020 16:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3530E2045D;
	Mon, 17 Feb 2020 15:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id maia7dH-0hKZ; Mon, 17 Feb 2020 15:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C2CD52001D;
	Mon, 17 Feb 2020 15:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69C691BF355
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 15:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66E8C84475
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 15:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9uDaes1cIN9o for <devel@linuxdriverproject.org>;
 Mon, 17 Feb 2020 15:55:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B980809D8
 for <devel@driverdev.osuosl.org>; Mon, 17 Feb 2020 15:55:35 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5D12CB147;
 Mon, 17 Feb 2020 15:55:33 +0000 (UTC)
In-Reply-To: <20200213194001.130110-1-marcgonzalez@google.com>
Date: Mon, 17 Feb 2020 16:49:36 +0100
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Marcelo Diop-Gonzalez" <marcgonzalez@google.com>,
 <gregkh@linuxfoundation.org>
Message-Id: <C0OK3FSV7XIN.MMMEHI9F14QG@linux-9qgx>
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
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu Feb 13, 2020 at 2:40 PM, Marcelo Diop-Gonzalez wrote:
> If kref_get_unless_zero() fails, we should keep looking for the
> next service, since the callers of this function expect that a NULL
> return value means there are no more.
>
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Note that, as Dan says, picking up the Fixes tag would be nice.

> ---
> .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++++-----
> 1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git
> a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index d7d7f4d9d57f..edcd97373809 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -252,11 +252,15 @@ next_service_by_instance(struct vchiq_state
> *state,
> struct vchiq_service *service;
>  
> rcu_read_lock();
> - service = __next_service_by_instance(state, instance, pidx);
> - if (service && kref_get_unless_zero(&service->ref_count))
> - service = rcu_pointer_handoff(service);
> - else
> - service = NULL;
> + while (1) {
> + service = __next_service_by_instance(state, instance, pidx);
> + if (!service)
> + break;
> + if (kref_get_unless_zero(&service->ref_count)) {
> + service = rcu_pointer_handoff(service);
> + break;
> + }
> + }
> rcu_read_unlock();
> return service;
> }
> --
> 2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
