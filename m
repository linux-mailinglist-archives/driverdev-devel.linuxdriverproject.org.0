Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC28A316D49
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:51:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71C556F7AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 17:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZYnyzH2WAcM for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 17:50:59 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 036C46F655; Wed, 10 Feb 2021 17:50:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F10136F69E;
	Wed, 10 Feb 2021 17:50:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E412A1BF860
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E13E286AC9
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:50:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mCnJVWR5JmGG for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:50:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6626A8693F
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:50:14 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A4EDE5C0222;
 Wed, 10 Feb 2021 12:50:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 10 Feb 2021 12:50:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=2KiaYljnLbMw401GGxte1DwjG79
 QKTgtQggzO4yjkfI=; b=BOwHgy343rT/CqiWDyeOqs/CXVsAlXpWjS+IRqAWkMF
 s9XWjJEvh1ooydYuWMaexjiu+qWj/tsrWR4ap5Ydjw1GD0UMyiS9obtEawyhBqRR
 0P7mYP2Q0kYODJKyoTdP//hEl83VXe3OXcA1mMd9cuTSTBjJM9caTHt60AXz7hVP
 uAw/qEGAUGt/4T7vuITDv6UZUMaCDPWTmHOBaeW2l+n1QeFRdg3AGRmQYkylwn9I
 9rUB8kcA72Vx6mCqhaHgG/0EB8R6DjDOgqN+r6KQzn6R/Vgs1YhGNnO43e7aeWeN
 6fhYkU/lrlV+0WFzZ6VgN5o/spcBtNrhK/Xxt1aU4lQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2KiaYl
 jnLbMw401GGxte1DwjG79QKTgtQggzO4yjkfI=; b=Qj76Yol+M4wfmCWusTe6/H
 46GN62KXYBgwrcsP+xVXlvRsoPY2d8XO08aM0FV4KkQUSkXlt1+SXzj6KYHChh1k
 Nohr2muym9e4FQu4vPfZ1ArOd722m4ClkDN46OE/DiS3oVr+7Ka5dGbmTCAneFMM
 qC6vVnx0SwVdopTNvh5vtSkU/dkXkxRsjtNmXc2EKGeo3gNlW/9c1KJyYAfXacNx
 jS/g3F4wABDMGLUreBh/hUzIpNerxiWV7ACN6HWUEOrCBErxRRFd3T0DGfpWYMp+
 UprG4jKCnFkYwFOdfy2zdHQWBXQx1m/Kq7QpoWwVCzbQI3sLC7hNLqKOmYazbsYA
 ==
X-ME-Sender: <xms:1RwkYGaE7PABfl4eoAcmN1nb8ub0Ew79XJdLB1JjguVluhbmzW-xGw>
 <xme:1RwkYGjAxcoYBgG9rBKmAhtoVqXps8wJ74O-T8IqyIe2YArGDfUy7p17ackiEhHLe
 PtmVPL6w9479g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheejgddutdefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mfhrohgrhhdqjfgrrhhtmhgrnhcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrf
 grthhtvghrnhepfeeuveektddutdduiedukeeufedtjeekhefhieevhefhleduffehfffh
 vefhtdfhnecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:1RwkYP-17JS756yhH67QJla1OEBfkM2YkJEkM8mnf3WMa0dEQpOw2Q>
 <xmx:1RwkYJrfmVPUJym6g8fN6WJmiKHerTArVw_-7Qczjiw0ejZZAjLMVw>
 <xmx:1RwkYPXR0Xx92ww7z0MILUhPmgeXpfH_000zLgF2N-xw1Q4HnabJOQ>
 <xmx:1RwkYBJKktT5g4teAROlSRJ30-eq31vb4HWIR-bdM5p6j2BsCwwCFw>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id B63B21080059;
 Wed, 10 Feb 2021 12:50:12 -0500 (EST)
Date: Wed, 10 Feb 2021 18:50:10 +0100
From: Greg Kroah-Hartman <greg@kroah.com>
To: Yujia Qiao <rapiz@foxmail.com>
Subject: Re: [PATCH] Staging: vt6655: Replace a camel case variable name
Message-ID: <YCQc0iBNqqkr/KK/@kroah.com>
References: <tencent_30203B4B4D63EBA1A5083C4AB110C9243C08@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_30203B4B4D63EBA1A5083C4AB110C9243C08@qq.com>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 06:42:07PM +0800, Yujia Qiao wrote:
> Replace camel case variable names with snake case in baseband.c.
> 
> Signed-off-by: Yujia Qiao <rapiz@foxmail.com>
> ---
>  drivers/staging/vt6655/baseband.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This doesn't apply cleanly to my staging-next branch, can you please
rebase it and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
