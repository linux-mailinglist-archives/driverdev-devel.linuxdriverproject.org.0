Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA482CF0F1
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 16:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3629F87B73;
	Fri,  4 Dec 2020 15:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7XhSnX-EYXTX; Fri,  4 Dec 2020 15:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D901F87AF9;
	Fri,  4 Dec 2020 15:46:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C94551BF30D
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 15:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB624204DF
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 15:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8PhcHDJyqJB6 for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 15:46:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by silver.osuosl.org (Postfix) with ESMTPS id 6F426204C6
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 15:46:34 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9982A580144;
 Fri,  4 Dec 2020 10:46:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 04 Dec 2020 10:46:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=0e7pP2gtmRQ29hprbKu2oy4kdew
 zAhRmyRinSUbFXGI=; b=ZqOkCU/Elo9/DT91sFqoy4VDx/hJNiSyNsU2qc8PyT2
 l16vgpTu3T+wSQ1hQzcH9FtxzkLK9LXd2DzAFjC1PXrkCB8xaq0zX6exxxmqT9Cf
 TEmd4yVvVjSrgeO7mxOxPwlaCu0Lyc1quCfbWtaAqsy5u9D4a5EHeP2ps9iY8Hvj
 EksqeAmlET0KyrUTbCXVT1IPJHJWHkukpmPS9f/FTQIY60fqzoDfZd0gcBy3dzWh
 9Xb7/Xz9HsIClfQCtD+ibO0CrnQjcrP5q48qzmhFAh4HbPD3th9qX1mfbWGDT0pB
 YNhiDdx2CiQwAByCXTGzir900BEeUNJoJh26a1xp50w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=0e7pP2
 gtmRQ29hprbKu2oy4kdewzAhRmyRinSUbFXGI=; b=k6H8oTSs6ROTEyzgDLjEKi
 2lAZr2+iu5gtcm3wQSwiHZKUBW80StyHcmzxfkOmBay+hU0qjmoqGOf2YLZE8LbR
 jYODpeYwaG/brVh0Jvqqj6DHZrxAcLk2s5qvZm3uN6BURRrBqtapu4C/693rHkmO
 c68oCvTLIf2pBoLWj19FW8tNisTVrfyFGE+I57LsEfPI5Fc84EC1FMknBRV8OQuZ
 uAE4gcfdRQ4d0NzorJQbGoKlyyaNdiCEnuMPw/Z8QWUf51nDCpTnKjBTcVXlMazR
 tRAotxJBpxHYLftkoFGXCGQDT3EymOJYmidDiNSNv7ssd0g87ntgzMacdEYyg45w
 ==
X-ME-Sender: <xms:11nKXx5EFci9Q17YW9szG0v0H8Z-OSzOqUI2Qj-8LV00u7odRUSaKg>
 <xme:11nKXyvJnWMTX-1UFfAPDhySw4RAITDEa03fUQSthB4gwbyGmi22GCexd7rhlgSw_
 h_L0mSppfLFcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgkeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
 necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
 eggeevueduudekvdetnecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
 hm
X-ME-Proxy: <xmx:11nKXxip3DyQYkY2WZKFwWZU2JejKDs6RREPa9XpmB5LHscX2OpScQ>
 <xmx:11nKX9rq2U8zSxgENDMmoi5XXFOlHAfQQRa8j7ny06kac5cIRGkdzg>
 <xmx:11nKX-vVKeR2uvsEI9RSvKLLdy5SupdUDp8hJ8ch-jgaGWBcKc9Qzw>
 <xmx:2FnKX9wqPWg4zTQCCL6d_pNIsIS_Y-RGvrNQDjVEFooGMRmPEl-7Cg>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id DD5E124005E;
 Fri,  4 Dec 2020 10:46:30 -0500 (EST)
Date: Fri, 4 Dec 2020 16:47:48 +0100
From: Greg KH <greg@kroah.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Subject: Re: [PATCH 04/11] drivers: staging: goldfish: remove unneeded
 MODULE_VERSION() call
Message-ID: <X8paJN2bDNFZppr1@kroah.com>
References: <20201203124803.23390-1-info@metux.net>
 <20201203124803.23390-4-info@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201203124803.23390-4-info@metux.net>
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 rjui@broadcom.com, mchehab@kernel.org, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, rcy@google.com, rspringer@google.com,
 laurent.pinchart@ideasonboard.com, netdev@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, toddpoynor@google.com,
 nsaenzjulienne@suse.de, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 03, 2020 at 01:47:56PM +0100, Enrico Weigelt, metux IT consult wrote:
> Remove MODULE_VERSION(), as it doesn't seem to have much practical purpose.
> For in-kernel drivers, the kernel version matters. The driver received lots
> of changes, but version number has remained the same since it's introducing
> into mainline, seven years ago. So, it doesn't seem to have much practical
> meaning anymore.
> 
> Signed-off-by: Enrico Weigelt <info@metux.net>
> ---
>  drivers/staging/goldfish/goldfish_audio.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/goldfish/goldfish_audio.c b/drivers/staging/goldfish/goldfish_audio.c
> index 0c65a0121dde..4a23f40e549a 100644
> --- a/drivers/staging/goldfish/goldfish_audio.c
> +++ b/drivers/staging/goldfish/goldfish_audio.c
> @@ -24,7 +24,6 @@
>  MODULE_AUTHOR("Google, Inc.");
>  MODULE_DESCRIPTION("Android QEMU Audio Driver");
>  MODULE_LICENSE("GPL");
> -MODULE_VERSION("1.0");
>  
>  struct goldfish_audio {
>  	char __iomem *reg_base;

This file isn't even in my tree, are you sure you made this patch series
against the correct branch/tree?

Please fix this series up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
