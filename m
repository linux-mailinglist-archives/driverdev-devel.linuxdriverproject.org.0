Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D06DA346F
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 11:49:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D932D204C4;
	Fri, 30 Aug 2019 09:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xPYvrBG-I3eh; Fri, 30 Aug 2019 09:48:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBA9520491;
	Fri, 30 Aug 2019 09:48:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B157C1BF369
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 09:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A7F0B203FE
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 09:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wi+DxaEPINRA for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 09:48:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 79F8C203FB
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 09:48:52 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a127so4906164oii.2
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 02:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=opPJo7Zv4ht/hnWpVSpz0d5Vp3/hOswmpsE3zretzJE=;
 b=EoqZX1Vsy9Szxp+b2Sg//tUs6kcL4ZoTGUwdLa+NeVeQfQf7IVynklZrNliG7NbW3c
 BqTTvlkqs6KgPDc2/MsnL7jzP3HCSBgEPj3iAcwf3MaoLg8C9MgHhZhnJloMTNHx7gHf
 ehsnc475CaxsOCW2n9iAALHDplUCtX23vexks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=opPJo7Zv4ht/hnWpVSpz0d5Vp3/hOswmpsE3zretzJE=;
 b=qUKOnZpH9IOhJlPkY7hBBSW9olE4x2O1uuPFSerh5dmyWGRdefo10ge0fZCmCutQS6
 UwHRGrez+5wvGuKJ8Zo54FxXBlCRks24+84Mkkj88xGpxiuy1FVblUc6FWnzlex4xCyj
 6xGVq7Edt5ZpaQTsTL8JPFDKZHq6PBdODyNhZMNSuOSrL1RGEThMtN5Myl8ENSdD2jjM
 NeZFPT5DXA1y18BJJZnUhUxoN9FOdUfIxiEU8zlMvIs3qP0L7vmGoGFOLtCaijNsi9rk
 oPGyfXf/PVuE0M9nAkuc905jagpVu8/4etJC/86Exc6EJ9bjBtroPbyrFBvCBQS4zdIX
 egMg==
X-Gm-Message-State: APjAAAVooKACn8KMOCjstLjFN4yTjo0DJdHSulQbv0wgqMct1l6OEtw7
 EpcbENzGZ+w+2CFyvd+Y8BBiNDcWMlA=
X-Google-Smtp-Source: APXvYqyISVX0Pju42XINpk9h9jF/CKQFMezjvBX9EdXipxiXSnU84XNfK1rXokZE2MuHRGPOmnDV4A==
X-Received: by 2002:aca:da08:: with SMTP id r8mr8943100oig.101.1567158531213; 
 Fri, 30 Aug 2019 02:48:51 -0700 (PDT)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com.
 [209.85.210.48])
 by smtp.gmail.com with ESMTPSA id b65sm1932469otc.40.2019.08.30.02.48.49
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 02:48:50 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id r20so6370142ota.5
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 02:48:49 -0700 (PDT)
X-Received: by 2002:a9d:4817:: with SMTP id c23mr10736054otf.97.1567158529318; 
 Fri, 30 Aug 2019 02:48:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-3-jernej.skrabec@siol.net>
 <CAPBb6MUChtZcNSTa2uT50k6uPU9T68wofLYGUFRJntDhjH8+iw@mail.gmail.com>
 <907f3c43-b994-f1c7-a15b-116566e19003@xs4all.nl>
In-Reply-To: <907f3c43-b994-f1c7-a15b-116566e19003@xs4all.nl>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Fri, 30 Aug 2019 18:48:36 +0900
X-Gmail-Original-Message-ID: <CAPBb6MV979V4BpOyYRGr4oAJOeqSmn-w1V3TRRhWePtqpzzWeQ@mail.gmail.com>
Message-ID: <CAPBb6MV979V4BpOyYRGr4oAJOeqSmn-w1V3TRRhWePtqpzzWeQ@mail.gmail.com>
Subject: Re: [PATCH 2/8] videodev2.h: add V4L2_DEC_CMD_FLUSH
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Pawel Osciak <pawel@osciak.com>, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 Chen-Yu Tsai <wens@csie.org>, mripard@kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, LKML <linux-kernel@vger.kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 6:45 PM Hans Verkuil <hverkuil-cisco@xs4all.nl> wrote:
>
> On 8/30/19 11:38 AM, Alexandre Courbot wrote:
> > On Fri, Aug 23, 2019 at 4:45 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
> >>
> >> From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> >>
> >> Add this new V4L2_DEC_CMD_FLUSH decoder command and document it.
> >>
> >> Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
> >> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> >> ---
> >>  Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst | 11 ++++++++++-
> >>  Documentation/media/videodev2.h.rst.exceptions      |  1 +
> >>  include/uapi/linux/videodev2.h                      |  1 +
> >>  3 files changed, 12 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> >> index 57f0066f4cff..0bffef6058f7 100644
> >> --- a/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> >> +++ b/Documentation/media/uapi/v4l/vidioc-decoder-cmd.rst
> >> @@ -208,7 +208,16 @@ introduced in Linux 3.3. They are, however, mandatory for stateful mem2mem decod
> >>         been started yet, the driver will return an ``EPERM`` error code. When
> >>         the decoder is already running, this command does nothing. No
> >>         flags are defined for this command.
> >> -
> >> +    * - ``V4L2_DEC_CMD_FLUSH``
> >> +      - 4
> >> +      - Flush any held capture buffers. Only valid for stateless decoders,
> >> +        and only if ``V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF`` was set.
> >> +       This command is typically used when the application reached the
> >> +       end of the stream and the last output buffer had the
> >> +       ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
> >> +       dequeueing the last capture buffer containing the last decoded frame.
> >> +       So this command can be used to explicitly flush that last decoded
> >> +       frame.
> >
> > Just for safety, can we also specify that it is valid to call this
> > command even if no buffer was held (in which case it is a no-op), as
> > this can help make user-space code simpler?
>
> Ah yes, thanks for the reminder.
>
> Jernej, when you post the next version of this series, can you change the text
> above to:
>
> - Flush any held capture buffers. Only valid for stateless decoders.
>   This command is typically used when the application reached the
>   end of the stream and the last output buffer had the
>   ``V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF`` flag set. This would prevent
>   dequeueing the capture buffer containing the last decoded frame.
>   So this command can be used to explicitly flush that final decoded
>   frame. This command does nothing if there are no held capture buffers.

With the above,

Reviewed-by: Alexandre Courbot <acourbot@chromium.org>

Thanks!

>
> Regards,
>
>         Hans
>
> >
> >>
> >>  Return Value
> >>  ============
> >> diff --git a/Documentation/media/videodev2.h.rst.exceptions b/Documentation/media/videodev2.h.rst.exceptions
> >> index adeb6b7a15cb..a79028e4d929 100644
> >> --- a/Documentation/media/videodev2.h.rst.exceptions
> >> +++ b/Documentation/media/videodev2.h.rst.exceptions
> >> @@ -434,6 +434,7 @@ replace define V4L2_DEC_CMD_START decoder-cmds
> >>  replace define V4L2_DEC_CMD_STOP decoder-cmds
> >>  replace define V4L2_DEC_CMD_PAUSE decoder-cmds
> >>  replace define V4L2_DEC_CMD_RESUME decoder-cmds
> >> +replace define V4L2_DEC_CMD_FLUSH decoder-cmds
> >>
> >>  replace define V4L2_DEC_CMD_START_MUTE_AUDIO decoder-cmds
> >>  replace define V4L2_DEC_CMD_PAUSE_TO_BLACK decoder-cmds
> >> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> >> index 4fa9f543742d..91a79e16089c 100644
> >> --- a/include/uapi/linux/videodev2.h
> >> +++ b/include/uapi/linux/videodev2.h
> >> @@ -1978,6 +1978,7 @@ struct v4l2_encoder_cmd {
> >>  #define V4L2_DEC_CMD_STOP        (1)
> >>  #define V4L2_DEC_CMD_PAUSE       (2)
> >>  #define V4L2_DEC_CMD_RESUME      (3)
> >> +#define V4L2_DEC_CMD_FLUSH       (4)
> >>
> >>  /* Flags for V4L2_DEC_CMD_START */
> >>  #define V4L2_DEC_CMD_START_MUTE_AUDIO  (1 << 0)
> >> --
> >> 2.22.1
> >>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
