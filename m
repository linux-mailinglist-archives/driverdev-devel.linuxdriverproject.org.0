Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC15C343175
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 06:50:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4117F40240;
	Sun, 21 Mar 2021 05:50:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FGk6MLrCe-Ah; Sun, 21 Mar 2021 05:50:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92C134023F;
	Sun, 21 Mar 2021 05:50:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8776C1BF94B
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 05:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 83E206062B
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 05:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Improper folded header field made up
 entirely of whitespace (char 20 hex): X-Spam-Report: ...that system
 for details.  Content previ[...]
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5S_vxoQOP5a for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 05:50:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EE09605F4
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 05:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Type:MIME-Version:
 References:Message-ID:In-Reply-To:Subject:cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ADuYMBPpkte2ps5T45vIAIbddFgYXtwsn562Mtz/fh8=; b=Sf61kHtMeHdfPA1xhUMpYytohV
 7jp9NwrFQuSQ3FUvgiKZfo8fqpN+fc7hD2/XkYHuDpBeeBKrMGEC6d1mxQDXm7E6Q6VLTA98sXqzp
 N6lVJZLFTpUa4tIcttUSW6Gz2UnXdn71VElxmKCJu9lLfncXVymTrakI8A3zjVcHIuYbZvu1ck42Z
 bBuLgdAb5eOXq14ZeB82rAsuWcjX+aEchF9SIhS8J3zZ26J9W+in3MVmCsSsPh4b0pprYAGysbqdw
 b6XUAmnc5LDmMoU0SvNOfj4Gcw/aXrTGOk2cZLauyxFyvaMWDNpKGyEqxfhrHqtcSIiXQgrej3D/U
 lwpGRjdA==;
Received: from rdunlap (helo=localhost)
 by bombadil.infradead.org with local-esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lNqyV-002Ba6-AG; Sun, 21 Mar 2021 05:50:08 +0000
Date: Sat, 20 Mar 2021 22:50:07 -0700 (PDT)
From: Randy Dunlap <rdunlap@bombadil.infradead.org>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Subject: Re: [PATCH] staging: vchiq: Typo fixes
In-Reply-To: <20210321043629.585758-1-unixbhaskar@gmail.com>
Message-ID: <ee355953-3b45-405a-c0a5-95febb83a24c@bombadil.infradead.org>
References: <20210321043629.585758-1-unixbhaskar@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210320_225007_374817_E38FB371 
X-CRM114-Status: GOOD (  10.94  )
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 jacopo@jmondi.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 dave.stevenson@raspberrypi.org, nsaenzjulienne@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sun, 21 Mar 2021, Bhaskar Chowdhury wrote:

>
> s/sepecific/specific/
> s/comonent/component/
>
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>


> ---
> drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> index 9097bcbd67d8..06bca7be5203 100644
> --- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> @@ -432,7 +432,7 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
> 	m.u.buffer_from_host.buffer_header.pts = MMAL_TIME_UNKNOWN;
> 	m.u.buffer_from_host.buffer_header.dts = MMAL_TIME_UNKNOWN;
>
> -	/* clear buffer type sepecific data */
> +	/* clear buffer type specific data */
> 	memset(&m.u.buffer_from_host.buffer_header_type_specific, 0,
> 	       sizeof(m.u.buffer_from_host.buffer_header_type_specific));
>
> @@ -927,7 +927,7 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
> 	return ret;
> }
>
> -/* create comonent on vc */
> +/* create component on vc */
> static int create_component(struct vchiq_mmal_instance *instance,
> 			    struct vchiq_mmal_component *component,
> 			    const char *name)
> --
> 2.31.0
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
