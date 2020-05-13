Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 396F91D1C98
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 19:52:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 508D722636;
	Wed, 13 May 2020 17:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Lmxt-7fXja6; Wed, 13 May 2020 17:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E4F9221F0;
	Wed, 13 May 2020 17:52:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 390D31BF215
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 17:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 361B487D0D
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 17:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KgOJrJLa2T+B for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 17:52:30 +0000 (UTC)
X-Greylist: delayed 00:06:57 by SQLgrey-1.7.6
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6368287CEB
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 17:52:30 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 7A5187C6;
 Wed, 13 May 2020 13:45:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 13 May 2020 13:45:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=animalcreek.com;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=xZLKTP6SuAU2b/PNRLvKXDiRghb
 LAJbYlskK+OrvLV4=; b=UN+rcElJabEUoY417xGMlUTS0YmSpujr7WLSvuaN35b
 kVxTAJoY0uclFGlYCAWruoC//4GqH8QQzN9dD26y8KOn2cY9NSGtli6tOnOiV7nW
 /3TxXMCZBFSmnCLSp0hkm4kDb6qLfg9JyHfdnY5Trgm5aCKhDLm3xC6waafXn1Vl
 WxeaUsJp5WRwFlR8L3U+yxx3UuAO3HQYUGxK3ZQooJg/U19+tRV7DHtuUy+IkSXA
 w5adOAUgU6WbjgFyRZLoLiALe3V6tqN3tCxYqxmRq0CZ61sjNFVgYK1DqIN1LBJu
 BzFdjG84vR29GhNlOcp0lBB3iyuhXvby9mzdgantSXQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xZLKTP
 6SuAU2b/PNRLvKXDiRghbLAJbYlskK+OrvLV4=; b=FK/WjfGIQUh++ginhi6atC
 NC6dsTooU1rUXjU5Tom/GfmdDMkXSw7JG3XliFX+IKzy8+5XpVikfszaCvY78pdK
 ahklNeeqZA8xi+yAQz7okuiHGgtgZUNiZFOO9FGR6IeAeYd7wikjkO8bh5q9jj86
 MNcbr3ZV0goTdzYM1z3eu+n3G9sd2dEE17LmrOsMZYHCT8byVampHEJ44Tsd4XNC
 UfKCJ6GAgvH9E4HX1oN0Dp8DF/A52yGllXm6FdOYG+Fms860Szc4VbVaWQuCkQUz
 eHljigER6lDJGox2Nry5/3sKm2GlMTqqtWj9sZsvAYuXMppO7TPXywPljFeuwoHQ
 ==
X-ME-Sender: <xms:OzK8Xkvuw1T4NPdrAYzmREF7yFM_9jlkRJPPcAYK7_l0gmDNjoCLxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdduudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjohgfsehttdertddtredvnecuhfhrohhmpeforghr
 khcuifhrvggvrhcuoehmghhrvggvrhesrghnihhmrghltghrvggvkhdrtghomheqnecugg
 ftrfgrthhtvghrnhepfeekfeejkeegleduvdduveetteeuueeiveeujeeijeelvdeiveek
 ieevkedvtdegnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepieekrddvrd
 ekvddrudejudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmghhrvggvrhesrghnihhmrghltghrvggvkhdrtghomh
X-ME-Proxy: <xmx:OzK8Xhf0nR65uNaULO6efOwquN3A1Ah6ClhHaMT2kBvayvb2xtTMGA>
 <xmx:OzK8XvzvIeHSOlNITgSzP9NqG6m132Oqi5UikfgD1l-Q-7dKcAhtIg>
 <xmx:OzK8XnMCQ2LZQ4Wy61LleqOUCdxBmTJE_IpRiGk1Nn1GRoCnCElTlw>
 <xmx:PDK8XjlZkOstIWKTU1jRhu8y5LthaEmy9bsNpq_iELVujSWfjyGgNg>
Received: from blue.animalcreek.com (ip68-2-82-171.ph.ph.cox.net [68.2.82.171])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0F179328005A;
 Wed, 13 May 2020 13:45:31 -0400 (EDT)
Received: by blue.animalcreek.com (Postfix, from userid 1000)
 id 23EC5A21E97; Wed, 13 May 2020 10:45:30 -0700 (MST)
Date: Wed, 13 May 2020 10:45:30 -0700
From: Mark Greer <mgreer@animalcreek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] greybus: audio: remove unused code
Message-ID: <20200513174530.GA32096@animalcreek.com>
References: <20200507212912.599433-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507212912.599433-1-alexandre.belloni@bootlin.com>
Organization: Animal Creek Technologies, Inc.
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 07, 2020 at 11:29:11PM +0200, Alexandre Belloni wrote:
> GREYBUS_AUDIO_MSM8994 is not an existing configuration option and as
> reported in September 2016, it depends on an "out-of-tree qualcomm audio
> driver". This driver never made it upstream.
> 
> https://lore.kernel.org/lkml/20160921073905.GA31263@kroah.com/
> 
> Moreover, there doesn't seem to be any interest in actually fixing the
> driver as it uses ASoC APIs that have been removed from the kernel in 2018
> as shown by its use of snd_soc_register_codec and
> snd_soc_codec_get_drvdata, removed in commit 999f7f5af8eb ("ASoC: remove
> Codec related code").
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

Everything you say is true but it is still kinda sad to see this go.
But that is life...  If and when someone has the motivation to get this
working again they can take a look at the git history.

Thanks for this, Alexandre.

Acked-by: Mark Greer <mgreer@animalcreek.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
