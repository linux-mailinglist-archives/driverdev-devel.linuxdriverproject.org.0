Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B5324ACBD
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 03:53:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 727D722720;
	Thu, 20 Aug 2020 01:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiYR-WvbVgGq; Thu, 20 Aug 2020 01:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5C1A922270;
	Thu, 20 Aug 2020 01:53:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CF241BF311
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 01:53:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 099468688F
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 01:53:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXD4y9YPVuKJ for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 01:53:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C043867BD
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 01:53:20 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id a24so708702oia.6
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 18:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=95vglf64Vq/O/1I3tuau6vIlhCDn5C32IVrNU3ul3Rs=;
 b=qN6Z+7A+Lbqvnw/Y3D/+sTqCsXSHZNFofii9Sv7TAGxZTT4nzYugE0dv9WTjhy2Ach
 +bhLMdQLy50q5omf+RBQ7ttymA4E2wnLpegiXS6qkD0jOwznXKg6Uhanq75UdpRrSZ66
 OM5P1bIQaiyp+S+D5AsSGvF1RLWV0iyMOLjSPXcJJ5W4N8NQvko9tn0H8YwE5EYRDUYh
 5bltJlJRMt+4kkGWuQZZd1tFeESB9OagrslJBjw8flAHuV7E+cA49b+f4QZ+Ys+qKJzf
 yt9Du/YLUFEDZvS0GWAkjnup+G5NgTLBJdMf5qwxqk3iQE1wPRWq6d8GTvx0sLSy1P6D
 aTtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=95vglf64Vq/O/1I3tuau6vIlhCDn5C32IVrNU3ul3Rs=;
 b=qD3mDFVZPHjwM+/OZ5uurcSGMJgPGNr125rrsRFHat/PuP0KHzrMcrfQQjDrfFx8Wr
 CLtFJSRzynEGYpM8DSjP6scQDZ4aBsmDSk1tf+5bHgfh8xtNVrqnyjFKeH0GnBC+LmiR
 JJ61zLlcMFGltI5K0jFGUcP3Ar+Mh2F0fW5t3FBQYNcsjxKK1l/4RK9KA7D7tr++Amog
 a4kWf8AmtPU2ggvQc0vutb9LSKdzART3WvPaL5DQh5ECbhoJnN2bVFGacKIiRKUjAi5+
 sOsKkY8g9oIzWlxDGg27yfHWA6Gu82vTKzTyYKmoSLLqbccOb9DK26pnyz9/DoJ6MoI+
 kZ6Q==
X-Gm-Message-State: AOAM533sSvVthrBO65QfLnFG9MCGkwWEDcM92F9bmO4kiHqsaefpflh7
 XQp9u1O7577OZ4jEfV3103HMxTRpZTPWn72Z8iv1Lw==
X-Google-Smtp-Source: ABdhPJySRF2+7apSZAyGDFV0x5mhrt3OKJXKRRGDgyzVeBsX16AotO12+Vzd0RVSZAnZmVjb8g7Vq+nZj9NHf4LQsIU=
X-Received: by 2002:aca:1014:: with SMTP id 20mr557719oiq.169.1597888399467;
 Wed, 19 Aug 2020 18:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
 <9fa944021373ec5b82c2c1e118c15d9effe7f964.1597833138.git.mchehab+huawei@kernel.org>
In-Reply-To: <9fa944021373ec5b82c2c1e118c15d9effe7f964.1597833138.git.mchehab+huawei@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 19 Aug 2020 18:53:06 -0700
Message-ID: <CALAqxLV-LaMPKD-ddRM1EehFh+JZfh1eUsKobXgVG9R+q0EF2w@mail.gmail.com>
Subject: Re: [PATCH 25/49] staging: hikey9xx/gpu: do some code cleanups
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Liwei Cai <cailiwei@hisilicon.com>, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chen Feng <puck.chen@hisilicon.com>, mauro.chehab@huawei.com,
 lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 19, 2020 at 4:46 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
> @@ -376,7 +355,7 @@ static int kirin_drm_platform_resume(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id kirin_drm_dt_ids[] = {
> -       { .compatible = "hisilicon,hi3660-dpe",
> +       { .compatible = "hisilicon,kirin960-dpe",


One issue, elsewhere in your patch stack you still refer to the
hisilicon,hi3660-dpe compatible string. This should probably be
consistent one way or the other.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
