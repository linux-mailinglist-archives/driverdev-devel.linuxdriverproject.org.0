Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDA620726E
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 13:47:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 181FC893F0;
	Wed, 24 Jun 2020 11:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5g7BKEDOA-rm; Wed, 24 Jun 2020 11:47:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 81B7A889D1;
	Wed, 24 Jun 2020 11:47:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA3941BF599
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 11:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D6D68886FB
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 11:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wB-8tXzQbORj for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 11:47:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net
 [194.109.24.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DEE9588705
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 11:47:04 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id o3rljtvnKx3Ajo3rojjFim; Wed, 24 Jun 2020 13:47:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1592999222; bh=0N5Pf8Y/JNRKBG/KjHTyL7Jl316+lteapCAvH0k5IAU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=wcDBGubuJirFwVCybDoTMNCTSSYLIqvHwwUt3h9tHhIDSKZ3o/yS7ZERA52WfwVXk
 wK9wnOfqaVrhrxssHMtaXBei++8oHpmCkE+t0+wnyZIpcP856qVZRs3Z+G2HTv6b75
 SPtqPMW9BtMJPDJNaI2bMTUF5hfh4u+vNXuILysSJ5/7BFzzg7xrnwFSNan9/I1iDx
 60QWgNfFq8KeRtbpI2HFiYQ79Wv2mzULwQudHWGb8AbH8lTPdwIryU/A1VVRBimQao
 z4YPDXcT+pRe/jbZ0e9cUYHzTnZO1jnzIVkvecbXAY42AiERx55SwopC0sZV/nCQuw
 uS/2n10J391Lg==
Subject: Re: [PATCH] staging: media: soc_camera: Enclose macro with parentheses
To: Guilherme Ricioli <guilherme.riciolic@gmail.com>,
 linux-media@vger.kernel.org
References: <1587758184-17867-1-git-send-email-guilherme.riciolic@gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <be40fdf1-b75d-bca0-f1eb-798f234df7ac@xs4all.nl>
Date: Wed, 24 Jun 2020 13:46:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <1587758184-17867-1-git-send-email-guilherme.riciolic@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAItO1RfSTL7qNqv6XXo3S3PnTFX5rVX8z5QJbSqlin67t3YYsAb6H8ofboI785WCy0Xvkpk1g3fknj5W7vDUzTgYA3ik86mkMHsn3vhnjxeWIA263+q
 u5CSl5mTXhgJCTXndmJh4FDSkcdkIIwJgFnbwy5W7fDQALrFQOpYQBhRrZg3J7EOLbk5JwWmQPXcI/6jPyV4hoOZVn8n+K1ebvncHCMxexOKoiF89FyP5Q+w
 4BhyzF/NsWsvFYDF3YvoO4itHNZMWvAPUcF/j3Jj6XAnhc2DnykLluy25ryB6WTCXgWkrfHwRruReKiD/nBsS8FHzxXkEtejkarjoQKjMp3P74HpTihxiJ1L
 C73lC3jBA3afnCjFr78wZkFf30s9VfCEYVEeWy+XpOOffeHjnH9/kDxfJ158S8FQca9VdKhy
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, mchehab@kernel.org,
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 24/04/2020 21:56, Guilherme Ricioli wrote:
> Fix checkpatch error "ERROR: Macros with complex values should be
> enclosed in parentheses" in soc_camera.c:241.
> 
> Signed-off-by: Guilherme Ricioli <guilherme.riciolic@gmail.com>
> ---
>  drivers/staging/media/soc_camera/soc_camera.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/soc_camera/soc_camera.c b/drivers/staging/media/soc_camera/soc_camera.c
> index 39f513f..c2f96ea 100644
> --- a/drivers/staging/media/soc_camera/soc_camera.c
> +++ b/drivers/staging/media/soc_camera/soc_camera.c
> @@ -238,8 +238,8 @@ unsigned long soc_camera_apply_board_flags(struct soc_camera_subdev_desc *ssdd,
>  }
>  EXPORT_SYMBOL(soc_camera_apply_board_flags);
>  
> -#define pixfmtstr(x) (x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
> -	((x) >> 24) & 0xff
> +#define pixfmtstr(x) ((x) & 0xff, ((x) >> 8) & 0xff, ((x) >> 16) & 0xff, \
> +	((x) >> 24) & 0xff)
>  
>  static int soc_camera_try_fmt(struct soc_camera_device *icd,
>  			      struct v4l2_format *f)
> 

Thank you for the patch, but this driver is deprecated and in fact depends on BROKEN
(so it is never build).

Because of that I'll drop this patch.

Regards,

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
