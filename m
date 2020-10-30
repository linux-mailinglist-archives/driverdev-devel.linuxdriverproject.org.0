Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC37A2A03AB
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 12:06:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 02AD822EC1;
	Fri, 30 Oct 2020 11:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qE52gpENTUDs; Fri, 30 Oct 2020 11:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89000228D1;
	Fri, 30 Oct 2020 11:06:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA1EB1BF34B
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 11:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A6B0786FBE
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 11:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DlQQ0cHydBqO for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 11:06:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8019486F7B
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 11:06:19 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id YSEUknz6cWvjMYSEXkHAQf; Fri, 30 Oct 2020 12:06:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604055977; bh=MPINL0x+YgE1zrfqIMBCjq16Ytw83Vxoo5XMTG3tTYM=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=e+vUNUgPZpLxrnDl+BVK9blSVoOJYn9lZMt595T4geL2DEc/Q/XRwGlwC06RMz1jk
 PWpR8nK7g6/bhVtxebFYbn38zr2RJnaFFhs3vjVF6BVW1QJIt83JpqN4YsN8fgH4lk
 gl5mYGoZmIpuRgvqgJTDE4h15vIHK+6ogqjEraGrO0eB2HU8y1iPRF4dXR2VsJ63a+
 lD0xbNkUo13Hmi1sVtdxBL73iwCyfwAXQof9yr1gY9JNvPJylAlesLa0FzUCUXl3Na
 camzeV1IfLpFSKXLvCx7jlOmEycgrFh9UKCOAaaaruMiWLqeix8Ev/NdSXwMi0HBJ3
 53uu3QNZvb9YA==
Subject: Re: [PATCH v2 0/6] ARM: dts: sun8i: v3s: Enable video decoder
To: Martin Cerveny <m.cerveny@computer.org>, Maxime Ripard <mripard@kernel.org>
References: <20200912143052.30952-1-m.cerveny@computer.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <034d8de1-bcf3-88e6-4d23-9a13e8b950c3@xs4all.nl>
Date: Fri, 30 Oct 2020 12:06:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200912143052.30952-1-m.cerveny@computer.org>
Content-Language: en-US
X-CMAE-Envelope: MS4xfPk/Quh1gIPsgZdoLL3OS0LA/MmvP72jK4Pqvra+hdcwDaWr2TPMHaJSa/g/6I1V58Bij9/ny2pUg53Amjmyg3aVILlbz3CyRPr9yS3jSMAgtJkiYuJs
 mGLSNfSQNPiuzhHVAOZ9pRpCjmgE8G8pMqOofn+u1InxcFjy9hskNgZlk3ELhCVe3eyEzAymQOZArl/ePtTVllzjcDM2VahpTJVxlTpgl1ufv6dmSQN7rlMF
 8GaNcO4srz611UC3uo1Vj56F/ItW/zy6RhqL1qEfK4QI4yKcP3LUsyE5pcQt3IGIqN1r1afA2wtvNGJaWNojcDh8R6BZjTQUNz1t2R1A9mHhbvhtakzKLxh8
 HP7QV7WtBK4IOczGKKRuRZRvVE6o47+Dqti4NTE8iezOok0c9MqphYs/XjGuNW0GDHZZNqs/wZdAVWd2AT9itQ3CqNJwuE862UDUqxV+wDeCYND4QCljne11
 CDWQa3nziKnDCcx68/YGo4lp4ykF9l82ExvE5LNHnlMAZxe0kMYS30a+2qfV8hhX0UrBN3XVk+9f0F9A/Fs79H/23OPec+fQl0oZUyZBZhGK4/oL2rrN8jVM
 hajsRByWqpLyL8JmeTX+w0+H
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Maxime,

Are you OK with this series? It looks good to me.

Regards,

	Hans

On 12/09/2020 16:30, Martin Cerveny wrote:
> First patch extends cedrus capability to all decoders
> because V3s missing MPEG2 decoder.
> 
> Next two patches add system control node (SRAM C1) and 
> next three patches add support for Cedrus VPU.
> 
> Tested on "Lichee Zero" V3s platform with testing LCD patch
> ( https://github.com/mcerveny/linux/tree/v3s_videocodec_v4 )
> and V4L2 raw API testing utility
> ( https://github.com/mcerveny/v4l2-request-test ):
> - enabled LCD (DRM dual VI and sigle UI planes)
> - added RGB panel
> - enabled PWM
> 
> There is low memory on V3s (64MB) and maximum must be available to CMA:
> - CONFIG_CMA_SIZE_MBYTES=28
> - add swap to swapout other processes
> - decrease buffers in v4l2-request-test (.buffers_count from 16 to 6)
> 
> Only H.264 decoder working - MPEG and H.265 unsupported by V3s,
> JPEG/MJPEG still unimplemented, encoder unimplemented
> 
> best regards,
> Martin
> 
> Changes since v1:
> - patch 0005 rename
> - added testing description
> 
> Martin Cerveny (6):
>   media: cedrus: Register all codecs as capability
>   dt-bindings: sram: allwinner,sun4i-a10-system-control: Add V3s
>     compatibles
>   ARM: dts: sun8i: v3s: Add node for system control
>   media: cedrus: Add support for V3s
>   dt-bindings: media: cedrus: Add V3s compatible
>   ARM: dts: sun8i: v3s: Add video engine node
> 
>  .../allwinner,sun4i-a10-video-engine.yaml     |  1 +
>  .../allwinner,sun4i-a10-system-control.yaml   |  6 ++++
>  arch/arm/boot/dts/sun8i-v3s.dtsi              | 33 +++++++++++++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus.c   | 28 +++++++++++++++-
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  2 ++
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  2 ++
>  6 files changed, 71 insertions(+), 1 deletion(-)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
