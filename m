Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 421B6D90AD
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 14:21:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E14EC23337;
	Wed, 16 Oct 2019 12:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id awRw-cw34jNx; Wed, 16 Oct 2019 12:21:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7ECFA231C8;
	Wed, 16 Oct 2019 12:21:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 886411BF3BC
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 12:21:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 84F53851CC
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 12:21:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mo3-W-G8N-Xp for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 12:21:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5C1585193
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 12:21:33 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id KiIuiHSeVPduvKiIxiquC1; Wed, 16 Oct 2019 14:21:31 +0200
Subject: Re: [PATCH] staging: meson: add space to fix check warning
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
References: <20191015223433.18784-1-jbi.octave@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f855f544-e546-eb3d-6346-242eb3435e35@xs4all.nl>
Date: Wed, 16 Oct 2019 14:21:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015223433.18784-1-jbi.octave@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfHsIZxW8/J7+DHm0y77EjQKA9TDKkipmz/iz2ou5vQkcABiVz0wD2N9hiUJUO5Qx9SjJqf18AoTsRI0bf0iJGgCmY6wDtzHNVBgUWcNqB6OL1/cbZbOP
 DcGNv3faNnW4Gs0IsWlHmeVwyzNThU2fpY4N6Tno5jU8R7clio/iJfTcV7LTojz1sYlUCTtj2MquZ805HHw5+UV2xeistkVER1JR/xWjYQi+KmQ6Xr7vElI5
 7xtYGyBG0DrC9jb4mcLXDjHZ24GlAZXssVO7m+nBFiWzh/9AGGUvgGV/Gs4htWUjbaYqXUXzN+Sz7R8jUywUtD/wBgQjptycUy0ZxzK/7dwbBLFTbsIenyvq
 7f+S9k/uBvl/Znh9Cy9icsI1A/bjqgDGdL4gN3xRlbcv1RKWDTFLxPbd+11BFJ8ddLjjz0T5JQM0rdUmirDgeXTyfunyBwIuze2Cf4VgMom1O4YGu8iW14uu
 ftTg44AK0vfCQvdp
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
Cc: mjourdan@baylibre.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, khilman@baylibre.com,
 linux-amlogic@lists.infradead.org, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 10/16/19 12:34 AM, Jules Irenge wrote:
> Fix "alignment should mactch open parenthesis" check.
> Issue detected by checkpatch tool
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> index 48869cc3d973..21e93a13356c 100644
> --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> @@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
>  	}
>  
>  	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> -					(u32[]){ 8, 0 });

This is clearly intended to be aligned with the (u32[]) prefix for readability.

So this is one checkpatch issue where I prefer to keep the original.

Regards,

	Hans

> +				  (u32[]){ 8, 0 });
>  	if (ret)
>  		goto free_workspace;
>  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
