Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B78A3452
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 11:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05487880C6;
	Fri, 30 Aug 2019 09:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IyuA92dYy0qT; Fri, 30 Aug 2019 09:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0080C88086;
	Fri, 30 Aug 2019 09:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EFE11BF369
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 09:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9AF5F86B98
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 09:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a2wxJi4dLxNZ for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 09:44:40 +0000 (UTC)
X-Greylist: delayed 00:05:52 by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9D5686B93
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 09:44:40 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id h21so4882814oie.7
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 02:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hfIr0oG7zkjfTylZRL1EmDdcoClxx4OzN+k3Fa69QOk=;
 b=JZSzfjCV+OzEP0NKiy064AMNbZCphzNNPFXwQYxpUoxKno8taFSuAONsfm81PEzvhQ
 qaCbe4ObT5UHEJBtWQSMdiRygC0gFb4piQ27RfDvbgjt1MFHx4FUZYcXKDJ16XhUnr/e
 s1OWlBpt4sKcZVLl+qYpSVUn0vbanGsamHLos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hfIr0oG7zkjfTylZRL1EmDdcoClxx4OzN+k3Fa69QOk=;
 b=szd/NF72C1F80Y7OYRlHs0/tWTF9kwdddYfFvPN7M1IQRY6Vlc1I9ormBcNBv6wf0K
 J+aRlNia586Qo/BaIuntkPou+BCkMm1O3beN6eVuPUjafyHzFoGelDIOd+jutYyXu35B
 48EdkaIUhv2f1f52sy/j9qAacU1YjaLNZluIPraK3yapQibIaJH/i1RgckhUZ1dTcYkm
 YXfiSRs10/Htw9gJndCt4J8At64CE0W+4p6QFPaZMasSVhlOjGo89CxtcWcLl9LkFAOR
 SSsfQIAnQKp27R8iz/a1tck1DKGPHs4u1p9mD45ozb+exLngnIDtjMPZG9TmMLoNMT0G
 f5lA==
X-Gm-Message-State: APjAAAWsLg+6+BqHe/dO3kidoLIvKBo8rww05YIIKHBkJ//DSegtXgS9
 6PWHgIX0aGRIxzZvuwCNx2KkSoupqG4=
X-Google-Smtp-Source: APXvYqyFKPAaRt65E4wyGN4NiKnkEDdnmSUcCm4LGU7fQaX+hVFPyKpESC0xRbpQI5ZkYRhGQvV6xQ==
X-Received: by 2002:aca:5f46:: with SMTP id t67mr9601800oib.42.1567157926599; 
 Fri, 30 Aug 2019 02:38:46 -0700 (PDT)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com.
 [209.85.210.42])
 by smtp.gmail.com with ESMTPSA id y62sm1888485otb.69.2019.08.30.02.38.45
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:38:45 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id g111so3290874otg.9
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 02:38:45 -0700 (PDT)
X-Received: by 2002:a9d:c67:: with SMTP id 94mr11849012otr.33.1567157924626;
 Fri, 30 Aug 2019 02:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-3-jernej.skrabec@siol.net>
In-Reply-To: <20190822194500.2071-3-jernej.skrabec@siol.net>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 30 Aug 2019 18:38:32 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
Message-ID: <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
Subject: Re: [PATCH 2/8] videodev2.h: add V4L2_DEC_CMD_FLUSH
To: Jernej Skrabec <jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Osciak <pawel@osciak.com>, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 Chen-Yu Tsai <wens@csie.org>, mripard@kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, LKML <linux-kernel@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 23, 2019 at 4:45 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
>
> Add this new V4L2_DEC_CMD_FLUSH decoder command and document it.
>
> Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst | 11 ++++++++++-
>  Documentation/media/videodev2.h.rst.exceptions      |  1 +
>  include/uapi/linux/videodev2.h                      |  1 +
>  3 files changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> index 57f0066f4cff..0bffef6058f7 100644
> --- a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> +++ b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> @@ -208,7 +208,16 @@ introduced in Linux 3.3. They are, however, mandatory for stateful mem2mem decod
>         been started yet, the driver will return an ``EPERM`` error code. When
>         the decoder is already running, this command does nothing. No
>         flags are defined for this command.
> -
> +    * - ``V4L2_DEC_CMD_FLUSH``
> +      - 4
> +      - Flush any held capture buffers. Only valid for stateless decoders,
> +        and only if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` was set.
> +       This command is typically used when the application reached the
> +       end of the stream and the last output buffer had the
> +       ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
> +       dequeueing the last capture buffer containing the last decoded frame.
> +       So this command can be used to explicitly flush that last decoded
> +       frame.

Just for safety, can we also specify that it is valid to call this
command even if no buffer was held (in which case it is a no-op), as
this can help make user-space code simpler?

>
>  Return Value
>  ============
> diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
> index adeb6b7a15cb..a79028e4d929 100644
> --- a/Documentation/media/videodev2.h.rst.exceptions
> +++ b/Documentation/media/videodev2.h.rst.exceptions
> @@ -434,6 +434,7 @@ replace define V4L2_DEC_CMD_START decoder-cmds
>  replace define V4L2_DEC_CMD_STOP decoder-cmds
>  replace define V4L2_DEC_CMD_PAUSE decoder-cmds
>  replace define V4L2_DEC_CMD_RESUME decoder-cmds
> +replace define V4L2_DEC_CMD_FLUSH decoder-cmds
>
>  replace define V4L2_DEC_CMD_START_MUTE_AUDIO decoder-cmds
>  replace define V4L2_DEC_CMD_PAUSE_TO_BLACK decoder-cmds
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 4fa9f543742d..91a79e16089c 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -1978,6 +1978,7 @@ struct v4l2_encoder_cmd {
>  #define V4L2_DEC_CMD_STOP        (1)
>  #define V4L2_DEC_CMD_PAUSE       (2)
>  #define V4L2_DEC_CMD_RESUME      (3)
> +#define V4L2_DEC_CMD_FLUSH       (4)
>
>  /* Flags for V4L2_DEC_CMD_START */
>  #define V4L2_DEC_CMD_START_MUTE_AUDIO  (1 << 0)
> --
> 2.22.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
