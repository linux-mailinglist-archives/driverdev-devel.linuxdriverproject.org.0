Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 88983113CC4
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 09:06:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A270725265;
	Thu,  5 Dec 2019 08:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LEA7yyf3WuDu; Thu,  5 Dec 2019 08:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4153525014;
	Thu,  5 Dec 2019 08:06:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9554B1BF2F4
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 08:06:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8F456887CA
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 08:06:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ej8RCvWEUOIR for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 08:06:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DE38887C7
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 08:06:14 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 2so1230422pfx.6
 for <devel@driverdev.osuosl.org>; Thu, 05 Dec 2019 00:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sbOWUl/LYyug4BpNjD/sLnbb5ya8VzzTl8Cu9V2yvRY=;
 b=nmGXMlWXu2JCqHKwG7oK8kS1mCgH+HBN4/eM/NOEeCk2in3RGF5oWu656B48kWYzV4
 mY3bSWyZ30MR/SPNmvS/GgUUll2YMsfMQo4qX+RVLHY0NPjYtazSfiBM5ugleCHjtKdG
 /Pbz/f5x5rYSo2Hy4VnzwlqqGlLPdKzWeC6AtTnUUMau3dNCpKjv7aAy3QyOCwm8dRb9
 s41ylI9rrYu3yOGBb4X3BRQLyBLwUu77hjkAhn3AKb1ti3c9OPbwoPdLzlc1yuCbLZrO
 P8A/jaKiNBktktPIGGLu3Ewlo84+vLm4GxiQksazqDrPb7d4VxWAHjyWP95q5eFbVCuR
 KDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sbOWUl/LYyug4BpNjD/sLnbb5ya8VzzTl8Cu9V2yvRY=;
 b=s2hDr01uZ2wgJE/XhnMGmeaDcmyKgkaQFleMFqCK+9I36i4YBWWaEU4kXPsEk3NAob
 +PYoMf/SmzT2mBF4/md6LAXnN4/R9YxEQ2jTpBdSuCqKooWgJhBmk+UOzXNVjP/go0e6
 PSeTLjeRrJNGksn2svM5auc59Hz2YRoMn47AU9VLFVs3r5byWlbF5j5Kn1N3b977iCXL
 qMCDlkYE1jwBOXfjCf3Qjo99DVTuxwYVb4/8tfQAdZog//5cl2TY+cB3l9Q2r1oPm2Hi
 x9w6TjyVoQ3+JmV0hQzkTaDlCrOdRr6QOgFoKpcq0YtnJCUUnRuhqQZhCtRz1iSRwFLI
 JbUQ==
X-Gm-Message-State: APjAAAXdKEIjF/DyiuHKKuZ7wLGGjRyfkm50FDwWbop1cNG7e08Iz1gg
 vARRL0zG25J8xSgvtB7EyM0=
X-Google-Smtp-Source: APXvYqyk7FdG4hnofsNwSjWrXOupDwiMK/1MsIp6Jp00Uhte+xvNi4jEmcD2YJExVKTWuST0cGuFFg==
X-Received: by 2002:a63:3cb:: with SMTP id 194mr8219400pgd.123.1575533173934; 
 Thu, 05 Dec 2019 00:06:13 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id w4sm8996292pjt.21.2019.12.05.00.06.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 00:06:12 -0800 (PST)
Date: Thu, 5 Dec 2019 17:06:11 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] media: meson: add missing allocation failure check on
 new_buf
Message-ID: <20191205080611.GY93017@google.com>
References: <20191204141159.1432387-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204141159.1432387-1-colin.king@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Maxime Jourdan <mjourdan@baylibre.com>, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@baylibre.com>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On (19/12/04 14:11), Colin King wrote:
[..]
> diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
> index 0a1a04fd5d13..8dd1396909d7 100644
> --- a/drivers/staging/media/meson/vdec/vdec.c
> +++ b/drivers/staging/media/meson/vdec/vdec.c
> @@ -133,6 +133,8 @@ vdec_queue_recycle(struct amvdec_session *sess, struct vb2_buffer *vb)
>  	struct amvdec_buffer *new_buf;
>
>  	new_buf = kmalloc(sizeof(*new_buf), GFP_KERNEL);
> +	if (!new_buf)
> +		return;
>  	new_buf->vb = vb;

So the buffer is not getting recycled? IOW is leaked?

	-ss
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
