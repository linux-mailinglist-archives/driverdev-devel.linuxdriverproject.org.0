Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CD05FF9E
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 05:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CCFF2262F;
	Fri,  5 Jul 2019 03:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuQRW3sRp-rw; Fri,  5 Jul 2019 03:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 01C022262B;
	Fri,  5 Jul 2019 03:00:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CA411BF34E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 051BD859C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 43oEi07gzszR
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:00:54 +0000 (UTC)
X-Greylist: delayed 00:09:53 by SQLgrey-1.7.6
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 81718856E9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 03:00:54 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id CD18F5B8;
 Thu,  4 Jul 2019 22:51:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 04 Jul 2019 22:51:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:mime-version:content-type; s=fm3;
 bh=pisfZxbnODV8h6hIVpOHfRIYWobLpRGIPKeEM0fJvhI=; b=jSWGJfNVqlau
 OTHrtFDJqJuK0IqYaeWcZuOxr2gQslu2GlV+JwVS4pWIFD8WXSDxHK4D3/5AjLY4
 tKlWU2ZdkXHZi2TrGIzFJqs7Aabkp2vRJBcNpePbyDN9boO2TNsOgYSaaIMobt1Z
 VHJytmlaLO9LEXneFPzBwgzLtoY6D1fliUI0YKWVhGsyqYEHm9xHLmMmF6ZyQuqS
 +4RQ6R/k/DVXAglklMMABNBEPk3Wj5ugBBYG7R+koPdhivfGtCqeOUx1F3/EoiqR
 d8wj5/rdEcI3py4Iieg9jv2048h9MlCDSXK7D3vsp55vj2txNc35AWGaGdQC75Qq
 PPlXRFTLEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=pisfZxbnODV8h6hIVpOHfRIYWobLp
 RGIPKeEM0fJvhI=; b=m70cV4fUzCaw0QnYNcTVcKIeY4y4NfbtZvh1A763DbPYs
 zkgOuKA5+BuYYVomAg9dmt3w0PsHkPgl3cSjWgn8tZWTHo9Lho9hwWEu2+p/Rep+
 21uUzJjBlBG/9O4xeQQT3wlYFL/yJrjatrXIagl2uvPqG0Ay7w5YSieBAyKbqz8c
 WhitUJNP3CU/v+nrw7uqcOQLMhMpkmT7F8p/wJqffNxT+S8BN1TkbHDjEP6HYOec
 9MBG30pnIQUg27UvKY33ts0nbaMwk44eFkldv/k73evvUzDQPz9I3tWOR4Wgx/lA
 KsbvBRT4tKnAON9SkCRBHVS637oJkRKV8jmGaLxfg==
X-ME-Sender: <xms:E7seXV8ou_rFFo80GkNW1OJtyWXQsKiXndT1hochH8YG1708WZ1K2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrfeefgdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfg
 hrlhcuvffnffculdeftddmnecujfgurhepfffhvffukfggtgguofgfsehttdertdforedv
 necuhfhrohhmpedfvfhosghinhcuvedrucfjrghrughinhhgfdcuoehmvgesthhosghinh
 drtggtqeenucffohhmrghinhepkhgvrhhnvghlnhgvfigsihgvshdrohhrghenucfkphep
 uddvgedrudelrdefuddrgeenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehtohgsih
 hnrdgttgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:E7seXd9_riKERxcR7M6p1T7xTFvxD70nB4cH_HRsfWjZQCHgdv6Sig>
 <xmx:E7seXeC4bZCNRXHcI3Nb2zPb_Z_JUKb8Rf02tu7TlWJMJrf2DnDZuA>
 <xmx:E7seXdwAUNBRHJAT1cf8-C7ZXRvDbm341VQ8dMr6kbRN1qG18I7e1g>
 <xmx:FLseXWw9iU-rSewKBdSzyOg3jKUnrT1pxGSQWmUWZ4NC1CJObyuRxA>
Received: from localhost (unknown [124.19.31.4])
 by mail.messagingengine.com (Postfix) with ESMTPA id 19DB6380075;
 Thu,  4 Jul 2019 22:50:58 -0400 (EDT)
Date: Fri, 5 Jul 2019 12:50:55 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Kernelnewbies <kernelnewbies@kernelnewbies.org>
Subject: [OSSNA] Intro to kernel hacking tutorial
Message-ID: <20190705025055.GA7037@ares>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: Mutt 1.9.4 (2018-02-28)
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

I am doing a tutorial at OSSNA in San Diego on getting into kernel
hacking.  I'm only a couple of years deep into kernel hacking so I
wanted to reach out to those more experienced than myself (and those
less experienced).

Is there any thing that you would really like to see covered in this
tutorial?

If you are a grey beard is there anything that you have been lamenting
us newbies not knowing/doing?

If you are a newbie is there anything that you are struggling with that
you really want to learn?

Current format/content: the tutorial will attempt to bridge the gap in
the learning process between the 'first patch' page on kernelnewbies.org
wiki and being 'comfortable' patching the kernel via LKML.  Outcome will
(hopefully) be a small patch set into drivers/staging/.  (Don't worry
Greg only one group got to this stage last time, you won't get flooded
with patches :)

Thanks,
Tobin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
