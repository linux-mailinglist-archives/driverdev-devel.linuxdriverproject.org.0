Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD3C3E3489
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Aug 2021 11:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 570E5607ED;
	Sat,  7 Aug 2021 09:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bwbp_8SJhzgN; Sat,  7 Aug 2021 09:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6E2860689;
	Sat,  7 Aug 2021 09:57:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1066E1BF5E0
 for <devel@linuxdriverproject.org>; Sat,  7 Aug 2021 09:57:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFF5A83A6D
 for <devel@linuxdriverproject.org>; Sat,  7 Aug 2021 09:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kzTrIrbMjM1w for <devel@linuxdriverproject.org>;
 Sat,  7 Aug 2021 09:57:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2150C83A4C
 for <devel@linuxdriverproject.org>; Sat,  7 Aug 2021 09:57:03 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id da9e078d-f765-11eb-8d1a-0050568cd888;
 Sat, 07 Aug 2021 09:57:19 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 04CDF194B7A;
 Sat,  7 Aug 2021 11:57:28 +0200 (CEST)
Date: Sat, 7 Aug 2021 11:56:59 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: lichenyang <lichenyang@loongson.cn>
Subject: Re: [PATCH v4 3/3] drm/loongson: Add interrupt driver for LS7A
Message-ID: <YQ5Y650wDABR5TAV@ravnborg.org>
References: <20210730094148.620768-1-lichenyang@loongson.cn>
 <20210730094148.620768-3-lichenyang@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210730094148.620768-3-lichenyang@loongson.cn>
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Huacai Chen <chenhuacai@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi lichenyang,

On Fri, Jul 30, 2021 at 05:41:48PM +0800, lichenyang wrote:
> Add LS7A DC vsync interrupt enable and close function, and
> register irq_handler function interface.
> Add vbrank event processing flow.
s/vbrank/vblank/

> 
> v4:
> - Replace drm_irq_install with devm_request_irq.
> - Delete the irq_ hooks in drm_driver.
> 
> v3:
> - Improve code readability.
> - Use the to_pci_dev function to get pci_dev.
> 
> v2:
> - Added error handling in the loongson_drm_load function.
> 
> Signed-off-by: lichenyang <lichenyang@loongson.cn>

Patch looks good,
Acked-by: Sam Ravnborg <sam@ravnborg.org>

But then I am not to fluent in the vblank stuff, so I hope someone else
takes a look too.

	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
