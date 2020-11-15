Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6812B3864
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Nov 2020 20:17:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2093B87232;
	Sun, 15 Nov 2020 19:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UKpjs5qgAJMk; Sun, 15 Nov 2020 19:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDD3487219;
	Sun, 15 Nov 2020 19:17:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E29A1BF2A6
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 19:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A79486194
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 19:17:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sGQavNB3rR1o for <devel@linuxdriverproject.org>;
 Sun, 15 Nov 2020 19:17:01 +0000 (UTC)
X-Greylist: delayed 00:17:19 by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED2F186191
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 19:17:00 +0000 (UTC)
Received: from dmz.c-home.cz (localhost [127.0.0.1])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 0AFIxRf9023820;
 Sun, 15 Nov 2020 19:59:32 +0100 (CET)
Received: from localhost (martin@localhost)
 by dmz.c-home.cz (8.14.4+Sun/8.14.4/Submit) with ESMTP id 0AFIxOBg023817;
 Sun, 15 Nov 2020 19:59:24 +0100 (CET)
X-Authentication-Warning: dmz.c-home.cz: martin owned process doing -bs
Date: Sun, 15 Nov 2020 19:59:24 +0100 (CET)
From: Martin Cerveny <martin@c-home.cz>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 0/6] ARM: dts: sun8i: v3s: Enable video decoder
In-Reply-To: <c8cc3529-3e21-2a11-d258-bb03885a5c91@xs4all.nl>
Message-ID: <alpine.GSO.2.00.2011151911340.21646@dmz.c-home.cz>
References: <20200912143052.30952-1-m.cerveny@computer.org>
 <c8cc3529-3e21-2a11-d258-bb03885a5c91@xs4all.nl>
User-Agent: Alpine 2.00 (GSO 1167 2008-08-23)
MIME-Version: 1.0
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
Reply-To: Martin Cerveny <M.Cerveny@computer.org>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Martin Cerveny <m.cerveny@computer.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello.

On Thu, 5 Nov 2020, Hans Verkuil wrote:

> Hi Martin,
>
> On 12/09/2020 16:30, Martin Cerveny wrote:
>> First patch extends cedrus capability to all decoders
>> because V3s missing MPEG2 decoder.
>>
>> Next two patches add system control node (SRAM C1) and
>> next three patches add support for Cedrus VPU.
>>
>> Tested on "Lichee Zero" V3s platform with testing LCD patch
>> ( https://github.com/mcerveny/linux/tree/v3s_videocodec_v4 )
>> and V4L2 raw API testing utility
>> ( https://github.com/mcerveny/v4l2-request-test ):
>> - enabled LCD (DRM dual VI and sigle UI planes)
>> - added RGB panel
>> - enabled PWM
>>
>> There is low memory on V3s (64MB) and maximum must be available to CMA:
>> - CONFIG_CMA_SIZE_MBYTES=28
>> - add swap to swapout other processes
>> - decrease buffers in v4l2-request-test (.buffers_count from 16 to 6)
>>
>> Only H.264 decoder working - MPEG and H.265 unsupported by V3s,
>> JPEG/MJPEG still unimplemented, encoder unimplemented
>
> When I tried to merged these patches I got merge conflicts.
>
> Possibly due to other 5.10 changes, but certainly because of conflicts
> with patches from Jernej:
>
> https://patchwork.linuxtv.org/project/linux-media/patch/20200825173523.1289379-4-jernej.skrabec@siol.net/
> https://patchwork.linuxtv.org/project/linux-media/patch/20200825173523.1289379-5-jernej.skrabec@siol.net/
>
> I've merged Jerne's patches and posted a PR for that:
> https://patchwork.linuxtv.org/project/linux-media/patch/f3b8e5e2-5f0e-fb6f-e5b2-7f44f7e365e7@xs4all.nl/
>
> Can you rebase your patches on top of my branch that contains Jernej's patches?
>
> https://git.linuxtv.org/hverkuil/media_tree.git/log/?h=for-v5.11e
>
> Once my PR is merged into the media_tree master I can take your rebased
> patches.

I updated patches:
https://github.com/mcerveny/linux/tree/media_tree_for-v5.11e

BUT, commit (555 commits) for v5.10-1
https://github.com/torvalds/linux/commit/fd5c32d80884268a381ed0e67cccef0b3d37750b
disrupts usability of Cedrus H.264 (at least for my Allwinner V3s):

1) colors are disrupted

There are missing some initialization now.

If I use "5.9" compatible code
(last bisect good point https://github.com/torvalds/linux/commit/647412daeb454b6dad12a6c6961ab90aac9e5d29 )
then reboot (not power-off!) and use new code 
( https://github.com/mcerveny/linux/tree/media_tree_for-v5.11e )
and colors are OK.

2) decoding of complex streams fails

( https://github.com/mcerveny/v4l2-request-test/tree/v5.10 )
- bbb-h264-all-i-32 - OK
- bbb-h264-32 - bad from frame 5
- bbb-h264-high-32 - bad from frame 6

best regards,
Martin

>> Changes since v1:
>> - patch 0005 rename
>> - added testing description
>>
>> Martin Cerveny (6):
>>   media: cedrus: Register all codecs as capability
>>   dt-bindings: sram: allwinner,sun4i-a10-system-control: Add V3s
>>     compatibles
>>   ARM: dts: sun8i: v3s: Add node for system control
>>   media: cedrus: Add support for V3s
>>   dt-bindings: media: cedrus: Add V3s compatible
>>   ARM: dts: sun8i: v3s: Add video engine node
>>
>>  .../allwinner,sun4i-a10-video-engine.yaml     |  1 +
>>  .../allwinner,sun4i-a10-system-control.yaml   |  6 ++++
>>  arch/arm/boot/dts/sun8i-v3s.dtsi              | 33 +++++++++++++++++++
>>  drivers/staging/media/sunxi/cedrus/cedrus.c   | 28 +++++++++++++++-
>>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  2 ++
>>  .../staging/media/sunxi/cedrus/cedrus_video.c |  2 ++
>>  6 files changed, 71 insertions(+), 1 deletion(-)
>>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
