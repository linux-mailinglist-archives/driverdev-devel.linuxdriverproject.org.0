Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DA03905AC
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 May 2021 17:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1477E60B16;
	Tue, 25 May 2021 15:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C2GMHa1CBq2x; Tue, 25 May 2021 15:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E682860B08;
	Tue, 25 May 2021 15:39:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 196C61BF990
 for <devel@linuxdriverproject.org>; Tue, 25 May 2021 15:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 158C8401C2
 for <devel@linuxdriverproject.org>; Tue, 25 May 2021 15:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Mp-R9-aTz62 for <devel@linuxdriverproject.org>;
 Tue, 25 May 2021 15:39:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EF2AA40106
 for <devel@driverdev.osuosl.org>; Tue, 25 May 2021 15:39:35 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id lZ9PlOkMIVN4klZ9SlJuZq; Tue, 25 May 2021 17:39:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1621957173; bh=Hfe8o8742VlQkvN1GSgK9eez5ya6FGRo6vix5hRSezo=;
 h=Subject:From:To:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=WmRk/iwGtXebwaIV1/t363hxuW27CsgDN0D5zw8m6mcS8po4uwG5NlW6rP/zD3SGN
 H3Lv5bwoK6HUhnj84Y49P7e5SJX89FI4Ii8HKXbqz2E2+33lwNCbPiD8REcP4JmeEG
 JYucL/vwvEiJdw3AJYEzFQWTPBx/+1+ZGi3ZISiPAS+aKuP9Q1jjf2RQ0u6EPAZb13
 gXQ0X6PQIf+hNllt+CVVnqIZGigqoVOl4v8zpsHE2P+WILVF8TxjIazawZp3ZUi24C
 DFhQ2vehpdKitkEMNskhVhb8ATFQuprix6nV5Kmialu9QQrq4utsjcIdv9JOWGgUkN
 7EyMGv9zcwhXg==
Subject: Re: [PATCH v10 0/9] Add HANTRO G2/HEVC decoder support for IMX8MQ
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <57dd758d-07b6-abbe-ab0d-2cc165b650db@xs4all.nl>
Message-ID: <7ce18309-fcb2-b7cd-0b22-5a8efb237f6a@xs4all.nl>
Date: Tue, 25 May 2021 17:39:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <57dd758d-07b6-abbe-ab0d-2cc165b650db@xs4all.nl>
Content-Language: en-US
X-CMAE-Envelope: MS4xfHTJs18f/1CiuX+5c2cwFFafk/vIVKat97cWIgT5yj6ziM2I4I4lSTjFN+L/upUObo2l444X40X9ILjR1lYTckgIB+ZNwLz18lLpkijk5bsbQhL6POOb
 diEtkuq09gM8q3YedjIKKPrefKXzqkF5EDk0Aqepuh7bjXhSUQbucZpbOm6LfNjk81UOwyD+JXxtgf4OD+4yCeyDdvj2R0dJ5iy+8axb139PYP8dJ23y+8La
 iy6Qsz9cAKgIDu7KZ0f1bafNM8k7OMJP1FBPRL4WNl1n8sd+b8cLgcFnvBo92ZZMzbddkzeZdBmpGaFJngSOuqMyFN6LEUDUR+0gvkn5l5EbXkfcyKQHAed6
 t42ak/3e5HFOEcm6KDqowHCdtHOKGX7M2fkvEv6Fkq3++dzQUSo4+0JPwv2iSi02MMzQuz3SXRXtrNjjFqIQINkpLqdLjgv71tUC4d2hkeCKjNWnHLhvitx5
 hi/fsMV2MKqVOlBZqvaozbxkmjDWMMjPAHh/9x9bCnDtjGFgL9sNyxMdndfOKh+CHMltRTvr8hDwQoaEzwW6s1f2KortUwDO3SB0emd+DUTW2+WJWJnT2Mpj
 +ZtiTiHbjncU08aFmwIgd1kjDvPh5r3FaAJoxodiPOYXKyLARGIRLyG4rFaUlS0D8VQL2Y2j0dstjDrPmN2Kg/Z7Ua4DAc3hglPXDprA4KmOkv/M8SPrQFQv
 yg9JlFBcTxOVMTAquw2uocuK9HRCDIC5HsvZDVbas4wBnaQl123umg84muPrDKzhBLqOjUy4u416swzx1+em/LxrLTVKYXNqrGBV960E7PI7N+jvr/v8TBwq
 4jZclZZNjEd3K2KnOn03CIWjXV8VuIDUCUWG5i08ZC36ZZssF6a6TwE96yzSgbdn2SPR4K1zYO7QURcmBxzwiP4cOS1v/6M79yee2DdQM6x9W4jNmoDDIYZL
 MSXC83moaupN6VJWq6xTh1VnKOjQB9XYJ7MoPsIL/KLYZMql+10DjsQpR937Z7vEG0ltxjR0Qpysf4j8lyDpbmqebS9BXLvm8CuhjJNtsKA8/etY
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05/05/2021 16:42, Hans Verkuil wrote:
> Hi Benjamin,
> 
> On 20/04/2021 14:10, Benjamin Gaignard wrote:
>> The IMX8MQ got two VPUs but until now only G1 has been enabled.
>> This series aim to add the second VPU (aka G2) and provide basic 
>> HEVC decoding support.
>>
>> To be able to decode HEVC it is needed to add/update some of the
>> structures in the uapi. In addition of them one HANTRO dedicated
>> control is required to inform the driver of the number of bits to skip
>> at the beginning of the slice header.
>> The hardware require to allocate few auxiliary buffers to store the
>> references frame or tile size data.
> 
> This series clashes with this patch:
> 
> https://patchwork.linuxtv.org/project/linux-media/patch/20210427071554.2222625-1-jernej.skrabec@siol.net/
> 
> and this patch series:
> 
> https://patchwork.linuxtv.org/project/linux-media/cover/20210401144336.2495479-1-emil.l.velikov@gmail.com/
> 
> For both PRs are pending.
> 
> It's probably better to wait until this is merged before rebasing this series.

These two have been merged today.

You find them in the master branch of https://git.linuxtv.org/media_stage.git/

In a few days they should be merged as well into our main media tree master, but
if you don't want to wait for that you can base your work on top of the media_stage
git repo, that should be perfectly fine.

Regards,

	Hans

> 
> And if drivers are going to be moved out of staging, leaving only HEVC support
> in staging, then I'd wait until that is done as well.
> 
> Regards,
> 
> 	Hans
> 
>>
>> The driver has been tested with fluster test suite stream.
>> For example with this command: ./fluster.py run -ts JCT-VC-HEVC_V1 -d GStreamer-H.265-V4L2SL-Gst1.0
>>
>> version 10:
>>  - Shorter version of the previous series without ctrl block patches
>>    and no DT modifications.
>>    The scope of this series is limited to HEVC support.
>>
>> version 9:
>>  - Corrections in commits messages.
>>  - Define the dedicated control in hevc-controls.h
>>  - Add note in documentation.
>>  - Change max value of the dedicated control.
>>  - Rebased on media_tree/master branch.
>>
>> version 8:
>>  - Add reviewed-by and ack-by tags 
>>  - Fix the warnings reported by kernel test robot
>>  - Only patch 9 (adding dedicated control), patch 11 (HEVC support) and
>>    patch 13 (DT changes) are still missing of review/ack tag.
>>
>> version 7:
>>  - Remove 'q' from syscon phandle name to make usable for iMX8MM too.
>>    Update the bindings documentation.
>>  - Add review/ack tags.
>>  - Rebase on top of media_tree/master
>>  - Be more accurate when computing the size of the memory needed motion
>>    vectors.
>>  - Explain why the all clocks need to set in the both DT node.
>>
>> version 6:
>>  - fix the errors reported by kernel test robot
>>
>> version 5:
>>  - use syscon instead of VPU reset driver.
>>  - Do not break kernel/DT backward compatibility.
>>  - Add documentation for dedicated Hantro control.
>>  - Fix the remarks done by Ezequeil (typo, comments, unused function)
>>  - Run v4l2-compliance without errors (see below).
>>  - Do not add field to distinguish version, check postproc reg instead
>>
>> version 4:
>> - Split the changes in hevc controls in 2 commits to make them easier to
>>   review.
>> - Change hantro_codec_ops run() prototype to return errors   
>> - Hantro v4l2 dedicated control is now only an integer
>> - rebase on top of VPU reset changes posted here:
>>   https://www.spinics.net/lists/arm-kernel/msg878440.html
>> - Various fix from previous remarks
>> - Limit the modifications in API to what the driver needs
>>
>> version 3:
>> - Fix typo in Hantro v4l2 dedicated control
>> - Add documentation for the new structures and fields
>> - Rebased on top of media_tree for-linus-5.12-rc1 tag
>>
>> version 2:
>> - remove all change related to scaling
>> - squash commits to a coherent split
>> - be more verbose about the added fields
>> - fix the comments done by Ezequiel about dma_alloc_coherent usage
>> - fix Dan's comments about control copy, reverse the test logic
>> in tile_buffer_reallocate, rework some goto and return cases.
>> - be more verbose about why I change the bindings
>> - remove all sign-off expect mime since it is confusing
>> - remove useless clocks in VPUs nodes
>>
>> Benjamin Gaignard (9):
>>   media: hevc: Add fields and flags for hevc PPS
>>   media: hevc: Add decode params control
>>   media: hantro: change hantro_codec_ops run prototype to return errors
>>   media: hantro: Define HEVC codec profiles and supported features
>>   media: hantro: Only use postproc when post processed formats are
>>     defined
>>   media: uapi: Add a control for HANTRO driver
>>   media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE control
>>   media: hantro: Introduce G2/HEVC decoder
>>   media: hantro: IMX8M: add variant for G2/HEVC codec
>>
>>  .../userspace-api/media/drivers/hantro.rst    |  19 +
>>  .../userspace-api/media/drivers/index.rst     |   1 +
>>  .../media/v4l/ext-ctrls-codec.rst             | 108 +++-
>>  .../media/v4l/vidioc-queryctrl.rst            |   6 +
>>  drivers/media/v4l2-core/v4l2-ctrls.c          |  28 +-
>>  drivers/staging/media/hantro/Makefile         |   2 +
>>  drivers/staging/media/hantro/hantro.h         |  13 +-
>>  drivers/staging/media/hantro/hantro_drv.c     |  99 ++-
>>  .../staging/media/hantro/hantro_g1_h264_dec.c |  10 +-
>>  .../media/hantro/hantro_g1_mpeg2_dec.c        |   4 +-
>>  .../staging/media/hantro/hantro_g1_vp8_dec.c  |   6 +-
>>  .../staging/media/hantro/hantro_g2_hevc_dec.c | 587 ++++++++++++++++++
>>  drivers/staging/media/hantro/hantro_g2_regs.h | 198 ++++++
>>  .../staging/media/hantro/hantro_h1_jpeg_enc.c |   4 +-
>>  drivers/staging/media/hantro/hantro_hevc.c    | 327 ++++++++++
>>  drivers/staging/media/hantro/hantro_hw.h      |  69 +-
>>  .../staging/media/hantro/hantro_postproc.c    |  14 +
>>  drivers/staging/media/hantro/hantro_v4l2.c    |   5 +-
>>  drivers/staging/media/hantro/imx8m_vpu_hw.c   |  74 ++-
>>  .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |   4 +-
>>  .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |   4 +-
>>  .../media/hantro/rk3399_vpu_hw_vp8_dec.c      |   6 +-
>>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   6 +
>>  drivers/staging/media/sunxi/cedrus/cedrus.h   |   1 +
>>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +
>>  .../staging/media/sunxi/cedrus/cedrus_h265.c  |  12 +-
>>  include/media/hevc-ctrls.h                    |  46 +-
>>  27 files changed, 1586 insertions(+), 69 deletions(-)
>>  create mode 100644 Documentation/userspace-api/media/drivers/hantro.rst
>>  create mode 100644 drivers/staging/media/hantro/hantro_g2_hevc_dec.c
>>  create mode 100644 drivers/staging/media/hantro/hantro_g2_regs.h
>>  create mode 100644 drivers/staging/media/hantro/hantro_hevc.c
>>
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
