Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0FF36AD80
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 09:39:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C79914028C;
	Mon, 26 Apr 2021 07:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rf-lQJy0AEDy; Mon, 26 Apr 2021 07:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B82654023D;
	Mon, 26 Apr 2021 07:38:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED9BD1BF27C
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 07:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E82CC402DF
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 07:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 18E18QTi1Lzy for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 07:38:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2A6F04029F
 for <devel@driverdev.osuosl.org>; Mon, 26 Apr 2021 07:38:44 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id avpClOeeRvTEDavpGlmTlZ; Mon, 26 Apr 2021 09:38:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1619422722; bh=elDvNl7MRGhnSaMeTRabVZr6W4+83sF0w7OYgrADlDA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=GciWVuAzaYg3te3C6QKiIYoXXxwdA1u7ZKr3Zc5HRzDPVmRYr9EdhZfkLEgya+whn
 iahJlfuCbYfLpwjnTCqp48xdsqZbxVfONEIVpBDD92l67GIZAmUbyCCFDSK4STvvM8
 5DtBDhxa4ib8KdsNKxOACOWjJz9A5ZW3K9b73Hn1yGQqXjwSQvao6f6BBU9DuG7uGs
 6eWbIRadkdiss7/R3QUDzOQ7YGJbFf3iczkvkiXAR191xvS5LEEYXXMKHg4X/QuhwS
 nuoFOkSailehnjkU54CMTxit5EEycXWk0eVOhAO3PkBeCB6XIT56q5k2XVsg18QjDg
 KPCn6w/cnlk7w==
Subject: Re: [RFC RESEND 0/3] vp9 v4l2 stateless uapi
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-media@vger.kernel.org
References: <20210421100035.13571-1-andrzej.p@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <23a4ed00-0993-3567-2664-1fcc643915ab@xs4all.nl>
Date: Mon, 26 Apr 2021 09:38:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210421100035.13571-1-andrzej.p@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfP2oPiPAfvVijrBC5AwtSUwdtPowUOisD20CQdXB+cIrY43Cd7ZU9hT18AO5hx/1FZEjGf6cmMkCfL5cjhE95Bo2BhR0Ue3BBHTYJeBTn4f32xfTGxR4
 aOaEdreDM5vDK4AVQmtIsOcpL5N5RYxV11OWSJxmejrz1ixlqJfpjKA/hR02ER8q4pN9R8yoHAOyBXg08tPwyCg/Q9vQZeHCOYplpwvqBUpnIm6xymjOprk7
 OXX/7fIpoCkxa8aZnf7TKL3UKlgK9johnd3zVOoLWBNy1pBjyW2KSL1bufIwsRXFqYK90m6zikWStHfx+ORD5BBSw6GL+4B13JsFNJcLthnzrDLBPMs/kbAj
 +981iciMsaRbpmT/GOP9oqakWWzxioRlCN9qOAvcbLv/SYbDdoQxiTQYWeBiJQpuXNgDHPnjYpirUQRETKACFWFsK/QrdSCt+Tnq2HHnuKdyKYkxHkk=
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andrzej,

Thank you for working on this!

On 21/04/2021 12:00, Andrzej Pietrasiewicz wrote:
> Dear All,
> 
> This is an RFC on stateless uapi for vp9 decoding with v4l2. This work is based on https://lkml.org/lkml/2020/11/2/1043, but has been substantially reworked. The important change is that the v4l2 control used to pass boolean decoder probabilities has been made unidirectional, and is now called V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS.
> 
> In the previous proposal, to queue a frame the userspace must fully dequeue the previous one, which effectively results in a forced lockstep behavior and defeats vb2's capability to enqueue multiple buffers. Such a design was a consequence of backward probability updates being performed by the kernel driver (which has direct access to appropriate counter values) but forward probability updates being coupled with compressed header parsing performed by the userspace.
> 
> In vp9 the boolean decoder used to decode the bitstream needs certain parameters to work. Those are probabilities, which change with each frame. After each frame is decoded it is known how many times a given symbol occured in the frame, so the probabilities can be adapted. This process is known as backward probabilities update. A next frame header can also contain information which modifies probabilities resulting from backward update. The said modification is called forward probabilities update. The data for backward update is generated by the decoder hardware, while the data for forward update is prepared by reading the compressed frame header. The natural place to parse something is userspace, while the natural place to access hardware-provided counters is the kernel. Such responsibilties assignment was used in the original work.
> 
> To overcome the lockstep, we moved forward probability updates to the kernel, while leaving parsing them in userspace. This way the v4l2 control which is used to pass the probs becomes unidirectional (user->kernel) and the userspace can keep parsing and enqueueing succeeding frames.
> 
> If a particular driver parses the compressed header and does backward probability updates on its own then V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS does not need to be used.
> 
> This series adds vp9 uapi in proper locations, which means it is a proper, "official" uapi, as opposed to staging uapi which was proposed in the above mentioned lkml thread.

Why? I rather liked the way that the other codec APIs started life in a private header
(like include/media/vp8-ctrls.h) and were given time to mature before moving them to
the uAPI. Is there a reason why you think that VP9 doesn't need that?

> 
> The series adds vp9 support to rkvdec driver.
> 
> Rebased onto media_tree.
> 
> I kindly ask for your comments.
> 
> TODO:
> 
> - potentially fine-tune the uAPI (add/remove fields, move between structs)
> - write another driver (intended g2 @ iMX8)
> - verify the added documentation
> 
> Regards,
> 
> Andrzej
> 
> Andrzej Pietrasiewicz (1):
>   media: uapi: Add VP9 stateless decoder controls
> 
> Boris Brezillon (1):
>   media: rkvdec: Add the VP9 backend
> 
> Ezequiel Garcia (1):
>   media: rkvdec: Fix .buf_prepare

Isn't this just a bug fix? Should it be part of this series at all?

If it is just a bug fix, then please post it separately and let me know if it is
a fix that should go to 5.13 (i.e. the current mainline) or if 5.14 is fine.

Regards,

	Hans

> 
>  .../userspace-api/media/v4l/biblio.rst        |   10 +
>  .../media/v4l/ext-ctrls-codec-stateless.rst   |  523 +++
>  .../media/v4l/pixfmt-compressed.rst           |   15 +
>  .../media/v4l/vidioc-g-ext-ctrls.rst          |    8 +
>  .../media/v4l/vidioc-queryctrl.rst            |   12 +
>  .../media/videodev2.h.rst.exceptions          |    2 +
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  244 ++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 2846 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c         |   62 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |    6 +
>  include/media/v4l2-ctrls.h                    |    4 +
>  include/uapi/linux/v4l2-controls.h            |  455 +++
>  include/uapi/linux/videodev2.h                |    6 +
>  15 files changed, 4190 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
