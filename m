Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C1E2A800F
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 14:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94092871D2;
	Thu,  5 Nov 2020 13:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqf2a7BJAG+B; Thu,  5 Nov 2020 13:55:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03F34871AD;
	Thu,  5 Nov 2020 13:55:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D1BD91BF83C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 13:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE299871B3
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 13:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBri7ZGWzQcm for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 13:55:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net
 [194.109.24.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 586F0871AD
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 13:55:03 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id afj6kDNilNanzafj9kobEV; Thu, 05 Nov 2020 14:55:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604584501; bh=Os8Q6RoIFzpecz6IaKw3bDHhoVHVDp/wsU85OkcRmUY=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=wVbVNiKI1ni2WRTvKI7A1TOqQHSmAor2+Nr2aLT1NIe2Fc1ge7wnKhpnxbRNayXlA
 XIStbOZv/pHol/XIyMyhQsvsOkY1EJhG1VU54hiXtGdZMj24h0CloQ2zljt3R+jq7r
 9HHt7HZWGLPtF9VcZdO6Aa9SdRU11Sh34O/AgNlguJmmu+qtwW3KxT+ySOXpfZDJkN
 XVpwF03MOFVFceaBlHg5FF01e5g8/GGGN2bNp2ypa3toumFlAINuLgLnoOb+HnHT1Y
 qYz+1j/r3uOLOrjhIjjvHNYPvWK9IDs8oEEHc3TKvmeQsXgWUucMtsfJsAcW8+44Zq
 WlOe2T5g/AjEQ==
Subject: Re: [PATCH v2 0/6] ARM: dts: sun8i: v3s: Enable video decoder
To: Martin Cerveny <m.cerveny@computer.org>, Maxime Ripard <mripard@kernel.org>
References: <20200912143052.30952-1-m.cerveny@computer.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <c8cc3529-3e21-2a11-d258-bb03885a5c91@xs4all.nl>
Date: Thu, 5 Nov 2020 14:54:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200912143052.30952-1-m.cerveny@computer.org>
Content-Language: en-US
X-CMAE-Envelope: MS4xfKAnj7LQGDaYmCX296c3vrxWv5e/Ef2SUUKyJz1tzh8Hg7mcghn4UOMUtiDF15DbskEEobx/3GV3mKJD2QR/+BJvDWHqtiffPg+JqxWRCXdGkL4LKcAL
 b6V5jIRASp0YnUAjPXv8sTQ8ZicE5R4ThJApeNCQqCrczKLdML9AFoY+wfoHVpYtggLajoVCksU2K1jMfy33BCDILtJpgqt/rbRZBDLwaWwKeezaENCNlvVj
 rqwkrjSzFIGCluWZ57FtuUMXwvG4ZgpyETF8Sx2IhhyDDN3ZfS8CiExo8otjngEgSIJCONqGN8Yks14AFrI6hvlGUXxAHzYvDyIEJB4OkC8B6kOG6q98pzQi
 HJpOoIFNK+wzz5zkeif0O9rV+4nkXvLst2gX25uXjEiTaeAPHEq31/rcJAio7NuAGflbfD5ws+fjF6SbgppVOcdyjCf7GVmq2lt50iGtheq/rTgQ0lsTy2yl
 1XZ50JXtHleEL3YYTdwL5byb4JNnBec/rBzlZTCv6XRVnV7Sso9sMSPRhPhXTio4KNGI9yflco4KfQCDyJYmbn1BoOGzZ26+dXLKSljH5C+Ip10cN9/NKDr4
 niauSYp1j7DSffLElOjBPaP2
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

Hi Martin,

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

When I tried to merged these patches I got merge conflicts.

Possibly due to other 5.10 changes, but certainly because of conflicts
with patches from Jernej:

https://patchwork.linuxtv.org/project/linux-media/patch/20200825173523.1289379-4-jernej.skrabec@siol.net/
https://patchwork.linuxtv.org/project/linux-media/patch/20200825173523.1289379-5-jernej.skrabec@siol.net/

I've merged Jerne's patches and posted a PR for that:
https://patchwork.linuxtv.org/project/linux-media/patch/f3b8e5e2-5f0e-fb6f-e5b2-7f44f7e365e7@xs4all.nl/

Can you rebase your patches on top of my branch that contains Jernej's patches?

https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=for-v5.11e

Once my PR is merged into the media_tree master I can take your rebased
patches.

Regards,

	Hans

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
