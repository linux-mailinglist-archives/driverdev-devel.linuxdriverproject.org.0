Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3449C3DCDB2
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Aug 2021 22:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53ABA404A6;
	Sun,  1 Aug 2021 20:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSmJGpNgTcpm; Sun,  1 Aug 2021 20:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB1FF40490;
	Sun,  1 Aug 2021 20:28:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 93A731BF5A2
 for <devel@linuxdriverproject.org>; Sun,  1 Aug 2021 20:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 85F3040132
 for <devel@linuxdriverproject.org>; Sun,  1 Aug 2021 20:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rn8lhthc2KVa for <devel@linuxdriverproject.org>;
 Sun,  1 Aug 2021 20:28:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com
 [91.221.196.228])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D874400DF
 for <devel@linuxdriverproject.org>; Sun,  1 Aug 2021 20:28:16 +0000 (UTC)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
 by mx2.smtp.larsendata.com (Halon) with ESMTPS
 id 09fff2bd-f307-11eb-8d1a-0050568cd888;
 Sun, 01 Aug 2021 20:28:32 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net
 [80.162.45.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sam@ravnborg.org)
 by mail01.mxhotel.dk (Postfix) with ESMTPSA id 0CCB5194B1A;
 Sun,  1 Aug 2021 22:28:36 +0200 (CEST)
Date: Sun, 1 Aug 2021 22:28:10 +0200
X-Report-Abuse-To: abuse@mxhotel.dk
From: Sam Ravnborg <sam@ravnborg.org>
To: lichenyang <lichenyang@loongson.cn>
Subject: Re: [PATCH v4 2/3] drm/loongson: Add GPIO and I2C driver for
 loongson drm.
Message-ID: <YQcD2q7+Dax65lv2@ravnborg.org>
References: <20210730094148.620768-1-lichenyang@loongson.cn>
 <20210730094148.620768-2-lichenyang@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210730094148.620768-2-lichenyang@loongson.cn>
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

On Fri, Jul 30, 2021 at 05:41:47PM +0800, lichenyang wrote:
> Implement use GPIO and I2C driver to detect connector
> and fetch EDID via DDC.
> 
> v3:
> - Change some driver log to the drm_ version.
> 
> v2:
> - Optimize the error handling process.
> - Delete loongson_i2c_bus_match and loongson_i2c_add function.
> - Optimize part of the code flow.
> 
> Signed-off-by: lichenyang <lichenyang@loongson.cn>

I will return later with more detailed feedback.

One high-level comment is that all the i2c support would be much better
modelled as a bridge. And then you could use the bridge_connector.

	Sam
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
