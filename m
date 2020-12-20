Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B332DF5D1
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 16:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E12886B74;
	Sun, 20 Dec 2020 15:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P44eS2h61qLC; Sun, 20 Dec 2020 15:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FD7386A56;
	Sun, 20 Dec 2020 15:18:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A369C1BF5A0
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 15:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9EFA087534
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 15:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4yme14+BpMD for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 15:17:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 31544820E4
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 15:17:57 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id y19so17537616lfa.13
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 07:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7e0LepHwj7nYia6u6S4PeKtDYxxlSlm1C6EG28R9AXI=;
 b=OLW1s/WNHCx7Jx2XhDZBCLncjTN1M868BCUTETZYtEmbOGMV4GQka4yNY824UAjZxZ
 eXG5B5Fdq9BZJze9x99gUBnftrIH41nRCcDK3QPfY9becL9rnXjGp6oz/n23zou8PuQF
 LPOl32382BayvGLvzMQ+DKkYxLcPIpOz/slNU3Qeczaar2j6yJTRcCgNd6bIcpIWsG0F
 /7XTk6uhpY9vnSuQ34L3HjJ3vD/J2rvCoynJpYNVWG/yiJOfMfBTvCCMiaEy9eaC58Kv
 kfk2aTp1irQUdHHbr9MMq0dTiIEqWuE+20cRYEyRFDRQF0gZIFfTziAvBeOnnRBLBF47
 Zn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7e0LepHwj7nYia6u6S4PeKtDYxxlSlm1C6EG28R9AXI=;
 b=tD1IvdgR1EOKPQPfEnUKz+FxZNShepkHscN4M9YEwMXn4HpbpWRwbBH4S4wi8oo/nt
 zkaZqQmoi9AlXr4p40/kU8GMC1o+5wAqavr2u1WNvHAMh+W45crvXysjopaTdIYEq/st
 /QrWduwMaYVeCkGMfcQivoyS5vKZdxbdazi1Vu4x1VDjZpK+3C62RCaR+2Obfbbp0giz
 92BxC/k9BV3RA//OGgykcoGzi2+Hq1nX0EcWpOXC0Ql43m/mOI2nwnVxLe63oTEFZ0JD
 yyyqrwNtHSagn61BD9+E35qL1IwxSQ3H1WzjORp+MaQVV2CT8r9MBd4zhwp1qROygChq
 4BCg==
X-Gm-Message-State: AOAM5304P9XzQMOF9J2Mh2aP9j5frKBzptdxdwMpPwgsfmNukRX3WgHk
 F7SYHGcvg4/Zjy7Omo5Rf1A=
X-Google-Smtp-Source: ABdhPJzs/+UvvfyXtHrDzeDFzBhxrpL4ml36osp+ANrMPr9W9VC0WNqRSW71t3rTQvu5DnFSdadFVg==
X-Received: by 2002:a19:58f:: with SMTP id 137mr5103258lff.0.1608477475198;
 Sun, 20 Dec 2020 07:17:55 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id u10sm1676173lfm.156.2020.12.20.07.17.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Dec 2020 07:17:54 -0800 (PST)
Date: Sun, 20 Dec 2020 17:17:52 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Daniel West <daniel.west.dev@gmail.com>
Subject: Re: [PATCH] staging: qlge: Removed duplicate word in comment.
Message-ID: <20201220151752.xadu24n57nocsfeg@kari-VirtualBox>
References: <20201219014829.362810-1-daniel.west.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201219014829.362810-1-daniel.west.dev@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Daniel West <daniel.s.west.dev@gmail.com>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 18, 2020 at 05:48:29PM -0800, Daniel West wrote:
> This patch fixes the checkpatch warning:
> 
> WARNING: Possible repeated word: 'and'
> 
> Signed-off-by: Daniel West <daniel.s.west.dev@gmail.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index e6b7baa12cd6..22167eca7c50 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -3186,7 +3186,7 @@ static void ql_enable_msix(struct ql_adapter *qdev)
>  		     "Running with legacy interrupts.\n");
>  }
>  
> -/* Each vector services 1 RSS ring and and 1 or more
> +/* Each vector services 1 RSS ring and 1 or more
>   * TX completion rings.  This function loops through
>   * the TX completion rings and assigns the vector that
>   * will service it.  An example would be if there are

Patch it self looks good. I nit pick a little bit because this is
staging and were here to learn mostly. You should use imperative mood
in subject line. So Removed -> Remove. Also no period in subject line.

I'm also confused by your email. Other patch which you send has sign of
is with daniel.s.west.dev and another is daniel.west.dev. So do you use
both? I also think that you made this email becouse you want to get all 
lkml mails. That is perfectly fine and many does this. But many does it
just for reading. That way if someone needs to send you email it wont be
lost because  you do not read that email anymore. Many does that they
still send  messages from they real email so that email do get so many
emails. This is ofcourse your decission I'm just telling you options.

--
Kari Argillander
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
