Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B94318583
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 08:04:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0132486CFD;
	Thu, 11 Feb 2021 07:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oC9Wpbt1yhVo; Thu, 11 Feb 2021 07:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C700786AD3;
	Thu, 11 Feb 2021 07:04:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64CD51BF406
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 07:04:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61CDF86E89
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 07:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xjfRqaBUq07u for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 07:04:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4558186E6E
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 07:04:34 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 5B415E7C;
 Thu, 11 Feb 2021 02:04:33 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Feb 2021 02:04:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=DCcgFMgcnWe0b3n7gUu7gegWnjY
 hU1mEarM0bMR6WWw=; b=XioEDuT4MOt3Gg34B4pyeRQuqZTfg+DxuC9nxhDLOvk
 gt+oyhH4slJ5ZFI/uA6zPuypTCpMnuvWuxLPXt13pXQTYlSWDS/skukCUp4/c1z/
 j3CPa2g/0xykVkYLRSFr9w8P322ULLIZEWqfxGK8VqVMo08U+Wlix7zVCNBofhdm
 yqst21A0M4vtTEARkuRTJatjefWovE/7cYKcO/hXjSLN/TZ4vUU3kvxuEoxKmPbB
 vHlXqoAoD89C3dkPRlCokwmtYqQ4VtPB+4/+kiN9thXbr+5219CLv3XD4IArWcF6
 3v8LWnXWXZgsPdqbUsigUn5OhTkT24pK5B5BnuO2AYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=DCcgFM
 gcnWe0b3n7gUu7gegWnjYhU1mEarM0bMR6WWw=; b=fpFNsanD4OJI+kjK9JjzAP
 klHfF7NxGddcAFl/QW3LPIT3cdmYi8q/Fej+DqmzOGeZdMe5yKVQb8wSiXYkFaAh
 fqFnYmEc1wh0R7bOXHPZdSChnFXyCdfvCwxGUHIpCE6/56oIq3PDDq7AdsefoAro
 84+dbAeu8FhXoxI19hNTcHJ+nWYperQEztBJQD+QpVk6V9dX6RTDPKtKDxIvlzXA
 rihel+p8/qIx5GLU+3YQ65Y22qUvPlDGq+C21WOXdRBhnt0fduiog7HGArW6CgUJ
 L9849coq2U19u+i+N2yS5BwVwxv2P2ccAJez8ntqCMw/BxcRuCs/nP3BBWSUS3Tw
 ==
X-ME-Sender: <xms:_9YkYPg2KM_y9jC_DvnsHWPLoxiUOvZXm4KW_Zqb_y7B2jt4aYmrpA>
 <xme:_9YkYMBTGFqz0eOS5y9gN42TycGWf4p1tuxOLWajZiuIffnlcBh-OdwZ8Upbu3aeR
 PSTa43V7w0rqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrheekgddutddvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mfhrohgrhhdqjfgrrhhtmhgrnhcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrf
 grthhtvghrnhephfevffettdehudfhueefvefgueduveekleekhfeffefgfffgkefgveeh
 vefgueevnecuffhomhgrihhnpehlihhnuhigughrihhvvghrphhrohhjvggtthdrohhrgh
 enucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgr
 rhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:_9YkYPGA-uP3qIrJnX1mssornon7m2sCHWx9HUjK_mOlsmuMu5ZzKw>
 <xmx:_9YkYMTYkEL68xSME6_KEEuk8hmie57c6cnfRr88gsOEXo_AEeK77A>
 <xmx:_9YkYMwnYIOjMKMn5E5aUiWrPUsESD64Xgfl_XW7MBqcIMIjZjDvlA>
 <xmx:AdckYJq4-LYrKsCwjkYBPokqAXlh8fPQkdCAXz1libY2ppdZtz6tbA>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id 990D11080057;
 Thu, 11 Feb 2021 02:04:31 -0500 (EST)
Date: Thu, 11 Feb 2021 08:04:29 +0100
From: Greg Kroah-Hartman <greg@kroah.com>
To: Aakash Hemadri <aakashhemadri123@gmail.com>
Subject: Re: [PATCH] Staging: vt6655: Replace a camel case variable name
Message-ID: <YCTW/Q6xQOH92t74@kroah.com>
References: <tencent_30203B4B4D63EBA1A5083C4AB110C9243C08@qq.com>
 <YCQc0iBNqqkr/KK/@kroah.com>
 <20210211064645.3csilr2bosr7hu6a@xps.yggdrail>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210211064645.3csilr2bosr7hu6a@xps.yggdrail>
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
Cc: devel@driverdev.osuosl.org, Forest Bond <forest@alittletooquiet.net>,
 Yujia Qiao <rapiz@foxmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 12:16:45PM +0530, Aakash Hemadri wrote:
> On 21/02/10 06:50PM, Greg Kroah-Hartman wrote:
> > On Wed, Feb 10, 2021 at 06:42:07PM +0800, Yujia Qiao wrote:
> > > Replace camel case variable names with snake case in baseband.c.
> > >
> > > Signed-off-by: Yujia Qiao <rapiz@foxmail.com>
> > > ---
> > >  drivers/staging/vt6655/baseband.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > This doesn't apply cleanly to my staging-next branch, can you please
> > rebase it and resend?
> >
> > thanks,
> >
> > greg k-h
> > _______________________________________________
> > devel mailing list
> > devel@linuxdriverproject.org
> > http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
> 
> When I first encountered the CamelCase check I believed that
> making such changes would only cause trouble for others.

Nope.

> Are such changes to API welcome in the kernel?

There is no "stable api" within the kernel, so fixing up incorrect names
is acceptable and required.

> I presume it is as long it doesn't break building the kernel

Of course, no patch can break the kernel build.

> If I do decide to fix such checks what must I look out for?

That everything continues to work as before?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
