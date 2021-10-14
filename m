Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F09F42E2E0
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Oct 2021 22:50:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B4896407C0;
	Thu, 14 Oct 2021 20:50:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GY5rf6ZS1zzz; Thu, 14 Oct 2021 20:50:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D07E403F3;
	Thu, 14 Oct 2021 20:50:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 166781BF343
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 20:50:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 11E8B403F3
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 20:50:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RSYQ4RC19ylS for <devel@linuxdriverproject.org>;
 Thu, 14 Oct 2021 20:50:38 +0000 (UTC)
X-Greylist: delayed 00:16:05 by SQLgrey-1.8.0
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 685A440333
 for <devel@linuxdriverproject.org>; Thu, 14 Oct 2021 20:50:38 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id 271d616c-2d2e-11ec-ac3c-0050568cd888;
 Thu, 14 Oct 2021 20:34:38 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id BE344194B5B;
 Thu, 14 Oct 2021 22:34:35 +0200 (CEST)
Date: Thu, 14 Oct 2021 22:34:26 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: lichenyang <lichenyang@loongson.cn>
Subject: Re: [PATCH v5 1/3] drm/loongson: Add DRM Driver for Loongson 7A1000
 bridge chip
Message-ID: <YWiUUmCRVdxpZrCz@ravnborg.org>
References: <20210911023133.851311-1-lichenyang@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210911023133.851311-1-lichenyang@loongson.cn>
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
On Sat, Sep 11, 2021 at 10:31:31AM +0800, lichenyang wrote:
> From: Chenyang Li <lichenyang@loongson.cn>
> 
> This patch adds an initial DRM driver for the Loongson LS7A1000
> bridge chip(LS7A). The LS7A bridge chip contains two display
> controllers, support dual display output. The maximum support for
> each channel display is to 1920x1080@60Hz.
> At present, DC device detection and DRM driver registration are
> completed, the crtc/plane/encoder/connector objects has been
> implemented.
> On Loongson 3A4000 CPU and 7A1000 system, we have achieved the use
> of dual screen, and support dual screen clone mode and expansion
> mode.
> 
> v11:
> - Remove a lot of useless code.
> - Add help information.
> - Delete unnecessary header files.
Looks much better now, thanks.

Can you provide some kind of overview of the HW?
It is confusing that you talk about a bridge for a display driver - is
this something from the HW?
And please look into usign the drm_bridge_connector - as this is what
any modern DRM display driver needs to use today.

Also the connector type needs to be specified - unknown is not
acceptable here.

The mail you sent did not show up at https://lore.kernel.org/dri-devel/
Please fix what is required to make it visible there.
This is where we point people to see the original mails.

Also a cover letter that explains what has been done - and what has not
been done - would be nice.

I look forward to v12,

	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
