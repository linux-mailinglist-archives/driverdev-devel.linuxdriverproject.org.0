Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58652CBFCE
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 15:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 982218794A;
	Wed,  2 Dec 2020 14:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnPAgbCIeJTs; Wed,  2 Dec 2020 14:35:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E7FB87951;
	Wed,  2 Dec 2020 14:35:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 001531BF281
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0F2E86E65
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IRs8KrQIr6RU for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 14:35:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud7.xs4all.net (lb1-smtp-cloud7.xs4all.net
 [194.109.24.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E870C86E5C
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 14:35:08 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id kTDhkEkxiN7XgkTDkktWZQ; Wed, 02 Dec 2020 15:35:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1606919706; bh=fh8vXt7wHNbCxu6ykXYAavndPHeJvk9VILjQnHShEFA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=KgbqiPCRbb4OHX60zqLwum0x/0xSyjmCDHD46BaaZI0hm3+Wv9QNp+oKmkSvyNzSP
 IaDrHmWP1boiXe1KenIZjH+4KlUHyRHJo4D874h5hyRnapFOlFfI9MM9PIR0Zthwru
 ndNPsBuUCvP7jdLWMVdrMPYlPqfcIalV3/PtNwikZxG9t+XO9pfC/NbzsfRvJReexm
 iBddXCKoiTKWATFLJgy+p+jpgUnCziVLQ/KBiIuLyjcl7A1ki/0naJ2bVtTMCsOy3g
 pLcpJsNIxxq67jakaeZQqdALVHY5v74HHewICefF6CBCnkuyn4qA//fzYKFHGsGAzj
 yQR3krgjWr0ZQ==
Subject: Re: [PATCH v3 0/6] ARM: dts: sun8i: v3s: Enable video decoder
To: Martin Cerveny <m.cerveny@computer.org>, Maxime Ripard <mripard@kernel.org>
References: <20201116125617.7597-1-m.cerveny@computer.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <1266873e-fe8f-d021-9d45-0baa38e32d31@xs4all.nl>
Date: Wed, 2 Dec 2020 15:35:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201116125617.7597-1-m.cerveny@computer.org>
Content-Language: en-US
X-CMAE-Envelope: MS4xfKR+fVSTqZQ9ETYlJsohtz44JkYTfKbMjH4fxpTnpM4lRtLIPUmpUyH43J8Y6tdt4a6CFI9TQe4YqZpf2OvrmjuoH14gdj6mjhFaRn1iyasnjc0vQuXC
 GYJY5etmYjhxjxBl0MIbHFoePwaCbr4gd6f9il5k9DK7D/SregCzz2q+8Sd3jdr3LhoqQ19E5U186vp8kam4zDdErEMxdqG9oyIfu/Q5uoef+knX5ms4Lzpt
 myl14X96sBTogHjL75oPC0XwFYfBa9qD724PSHOHNp2CGggDJYLTscPzPYVuOFLRRYB4lWFIqxLpW7mr34BoE6jMiZWCT1kpLts/z8b44or+1E9Qg0RI/E2m
 k337RuaaKaoB2+fiNtKSc4wsohixuZoRilBJ5NmkITSyWpRB+o73Of2KSgI7XMhD6eXC+IAwn0o+pwrqOhkIH45371j+6GVvdszzIdlhA/Pcs6jDEym1SR/P
 2aYu1xPiHsap+xvgOc2mKP6O1iT1/6/MW/VqWjEk2P/f+MdZmbjJMYAtdjv98BfJYr++MLXM01HbHKGMGFxiKWwP/gF0p01GZI0hQ/eDmaHQ08udrJLDmiyr
 rB8DKxSE0kyClfHBS9Q+c9XpTNb/m5lZ65waecVEhVWzoDOL2GxeI5EKMgzI4XquqxZY41DXlFUV75/5bY5hkjPttH6HORjDG6bYPhXq9ehTkiTtzSFOe+MH
 bo2h+SVYO9s=
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-media@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Martin, Maxime,

On 16/11/2020 13:56, Martin Cerveny wrote:
> First patch extends cedrus capability to all decoders
> because V3s missing MPEG2 decoder.
> 
> Next two patches add system control node (SRAM C1) and 
> next three patches add support for Cedrus VPU.

I've picked up patches 1, 4 and 5 for the media subsystem.
Maxime, can you pick up the other three?

Thanks!

	Hans

> 
> Tested on "Lichee Zero" V3s platform with testing LCD patch
> ( https://github.com/mcerveny/linux/tree/media_tree_for-v5.11e )
> and V4L2 raw API testing utility (updated to v5.10)
> ( https://github.com/mcerveny/v4l2-request-test ):
> - enabled LCD (DRM dual VI and sigle UI planes)
> - added RGB panel
> - enabled PWM
> - need additional patch https://git.linuxtv.org/media_tree.git/commit/?h=fixes&id=9ac924b98728c3733c91c6c59fc410827d0da49f
> 
> There is low memory on V3s (64MB) and maximum must be available to CMA:
> - CONFIG_CMA_SIZE_MBYTES=28
> - add swap to swapout other processes
> - decrease buffers in v4l2-request-test (.buffers_count from 16 to 8)
> 
> Only H.264 decoder working - MPEG and H.265 unsupported by V3s,
> JPEG/MJPEG still unimplemented, encoder unimplemented
> 
> best regards,
> Martin
> 
> Changes since v2:
> - updated/rebased to https://git.linuxtv.org/hverkuil/media_tree.git/?h=for-v5.11e
> - some parts of patches implemeted by others
> - updated R40
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
>  .../allwinner,sun4i-a10-system-control.yaml   |  3 ++
>  arch/arm/boot/dts/sun8i-v3s.dtsi              | 24 ++++++++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus.c   | 32 +++++++++++++++++--
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  2 ++
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  2 ++
>  6 files changed, 62 insertions(+), 2 deletions(-)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
