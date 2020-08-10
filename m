Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547F12411CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Aug 2020 22:36:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C8F4287A6B;
	Mon, 10 Aug 2020 20:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Ge9QoePiuwB; Mon, 10 Aug 2020 20:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA3AF8783F;
	Mon, 10 Aug 2020 20:35:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 490FE1BF3B5
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 20:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 450B587048
 for <devel@linuxdriverproject.org>; Mon, 10 Aug 2020 20:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgqDKfiEokyr for <devel@linuxdriverproject.org>;
 Mon, 10 Aug 2020 20:35:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from asavdk3.altibox.net (asavdk3.altibox.net [109.247.116.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80DC986FEA
 for <devel@driverdev.osuosl.org>; Mon, 10 Aug 2020 20:35:53 +0000 (UTC)
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 176D920023;
 Mon, 10 Aug 2020 22:35:47 +0200 (CEST)
Date: Mon, 10 Aug 2020 22:35:46 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v14 0/2] Add initial support for slimport anx7625
Message-ID: <20200810203546.GA421906@ravnborg.org>
References: <cover.1594283160.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1594283160.git.xji@analogixsemi.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=f+hm+t6M c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=e5mUnYsNAAAA:8 a=Q7Y_AtYsOxiy2qtOLeEA:9
 a=CjuIK1q_8ugA:10 a=Vxmtnl_E_bksehYqCbjh:22
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
Cc: devel@driverdev.osuosl.org, Nicolas Boichat <drinkcat@google.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pi-Hsun Shih <pihsun@chromium.org>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xin Ji.

On Thu, Jul 09, 2020 at 04:31:09PM +0800, Xin Ji wrote:
> Hi all,
> 
> The following series add support for the Slimport ANX7625 transmitter, a
> ultra-low power Full-HD 4K MIPI to DP transmitter designed for portable device.
> 
> 
> This is the v14 version, any mistakes, please let me know, I will fix it in
> the next series.
> 
> Change history:
> v14: Fix comments from Sam and Nicolas
>  - Check flags at drm_bridge_attach
>  - Use panel_bridge instead of drm_panel
>  - Fix not correct return value

Sorry for ignoring this for so long time.
The patch applies but no longer builds.

I could fix it locally but wanted to know if you have a later version to
be applied?

	Sam


> 
> v13: Fix comments from Launrent Pinchart and Rob Herring
>  - Picked up Rob's Reviewed-By
>  - Add .detect and .get_edid interface in bridge funcs.
> 
> v12: Fix comments from Hsin-Yi Wang
>  - Rebase the code on kernel 5.7, fix DRM interface not match issue.
> 
> v11: Fix comments from Rob Herring
>  - Update commit message.
>  - Remove unused label.
> 
> v10: Fix comments from Rob Herring, Daniel.
>  - Fix dt_binding_check warning.
>  - Update description.
> 
> v9: Fix comments from Sam, Nicolas, Daniel
>  - Remove extcon interface.
>  - Remove DPI support.
>  - Fix dt_binding_check complains.
>  - Code clean up and update description.
> 
> v8: Fix comments from Nicolas.
>  - Fix several coding format.
>  - Update description.
> 
> v7:
>  - Fix critical timing(eg:odd hfp/hbp) in "mode_fixup" interface,
>    enhance MIPI RX tolerance by setting register MIPI_DIGITAL_ADJ_1 to 0x3D.
> 
> 
> Xin Ji (2):
>   dt-bindings: drm/bridge: anx7625: MIPI to DP transmitter DT schema
>   drm/bridge: anx7625: Add anx7625 MIPI DSI/DPI to DP
> 
>  .../bindings/display/bridge/analogix,anx7625.yaml  |   95 +
>  drivers/gpu/drm/bridge/analogix/Kconfig            |    9 +
>  drivers/gpu/drm/bridge/analogix/Makefile           |    1 +
>  drivers/gpu/drm/bridge/analogix/anx7625.c          | 1939 ++++++++++++++++++++
>  drivers/gpu/drm/bridge/analogix/anx7625.h          |  391 ++++
>  5 files changed, 2435 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.c
>  create mode 100644 drivers/gpu/drm/bridge/analogix/anx7625.h
> 
> -- 
> 2.7.4
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
