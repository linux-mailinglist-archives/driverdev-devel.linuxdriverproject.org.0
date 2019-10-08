Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CCDCF9EA
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:35:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B66587692;
	Tue,  8 Oct 2019 12:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1bInev6JW5FM; Tue,  8 Oct 2019 12:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D45A8569B;
	Tue,  8 Oct 2019 12:35:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 537711BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:35:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44BF184ECD
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:35:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xb7DldjEPIRR for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:35:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A17A840D2
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:35:22 +0000 (UTC)
Received: from localhost (unknown [89.205.136.155])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 300B520679;
 Tue,  8 Oct 2019 12:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570538121;
 bh=x89XuxCaWsC1Su850MEDVbN32v1ny2s8AIlMM9GY+ks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vZck+p7P+X9lm/umDkwfQ5CC4Ll9ifBVvtw925R9M5E6vYrlNZbnamN9O7dAOykbR
 LtBXbJLLZAu35WNKnpOeGB6TW0hyC6PuJzrMIxEu4EgBZFKU3pXc5fxGvooX3zgn4D
 QH/PBIjkorxkvM0nIZjIKLSf0XcXAm27M3DX2ipw=
Date: Tue, 8 Oct 2019 14:35:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Subject: Re: [PATCH v2] staging: vc04_services: Avoid NULL comparison
Message-ID: <20191008123518.GA2763989@kroah.com>
References: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 Stefan Wahren <wahrenst@gmx.net>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 07, 2019 at 03:29:28PM -0700, Nachammai Karuppiah wrote:
> Remove NULL comparison. Issue found using checkpatch.pl
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

As you can see, this added a build warning.  Please always be careful
about your patches to not have them do that :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
