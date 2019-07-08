Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC0862CD5
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 01:56:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B7BE6879A6;
	Mon,  8 Jul 2019 23:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vrqmD1-g6exY; Mon,  8 Jul 2019 23:56:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FED987935;
	Mon,  8 Jul 2019 23:56:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 502831BF46A
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 23:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C9C5214E4
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 23:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ga6hG-y0uv3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 23:56:08 +0000 (UTC)
X-Greylist: delayed 00:10:01 by SQLgrey-1.7.6
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A81020002
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 23:56:08 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id E3A5022015;
 Mon,  8 Jul 2019 19:46:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 08 Jul 2019 19:46:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=ZnKD5eEIZYJ1VFL2/A7bDU3TYvJ
 FCV7a1EZg2QT3PtI=; b=CrGAtSBzEjy593sG/TOOPQCz9eo1QukLCCjkUZ97s22
 X9/ZfmK0gUpgcoD/cc/Og8GVXHDbDvS60STTgO1pAjoz9VdwUra4nkEDPZLIDauX
 6AGTLj2Vo/oiJFUTA664TLvptiha9UA7Jf7p8m8f8FzoGVnTEETA78FC6gY4OC3p
 C2IQmDxxy2qCA31z5UiTYiKR95bq2XHWe1b3HnE+dASjRYRNCi06CDwf20R4hS+L
 GqE2HeXiIpaK2m+FgaVlJdSDSCmUJ3lypXYz1rOQuQ2y4L6Oi2/tZiXxXQbV4c62
 XbB+P+WW3eFfIRi3VGku/xWSOUIrw0EmCqNmDLucv0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ZnKD5e
 EIZYJ1VFL2/A7bDU3TYvJFCV7a1EZg2QT3PtI=; b=dT5s0caU4YuBdKseVnBi9z
 feK7P5y0dJPGVj0RRCgvwKOftTMv6QefbWt71BQ+WOTD62W1b5K68FZjM7s1Sq7e
 SFbrTDr4oxLxGH57m8TlkB2l5E2SaVSmKdyIdFNO5RjezODguT88S3nWPughlemG
 a0iHwOJP9b4tvrRDwHICsZagVo8nswG/BQZvG4u1V++MZfX8upDkm8vhXe4OwSLq
 61B9TBjPcOK+Dn5HcwoU1dTjBOU+fYEhERDGF5HVgG9dTtV5EJ87wSQ8avJx3Opz
 fJW2IYGSzXKSwvpQhRFcLGLI8vT8vzQVazdDdbatXJye99nQL99+bpQm4r2BBRxg
 ==
X-ME-Sender: <xms:vdUjXYAPKdX0mrHo_600XEaZSLuHv8coO7qu2qPtG0HdwaF9brsJyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgedugddvhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfg
 hrlhcuvffnffculdduhedmnecujfgurhepfffhvffukfhfgggtuggjofgfsehttdertdfo
 redvnecuhfhrohhmpedfvfhosghinhcuvedrucfjrghrughinhhgfdcuoehmvgesthhosg
 hinhdrtggtqeenucfkphepuddvgedrudelrdefuddrgeenucfrrghrrghmpehmrghilhhf
 rhhomhepmhgvsehtohgsihhnrdgttgenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:vdUjXQp98-3YKsDVJvVgbf_V-4RSHQw5QlTLcLwRa21BQUS3daCTDQ>
 <xmx:vdUjXSHrbM5wC4TQdvtMoiYmTrFaKNpplhWW0gRsBumFO1nPM3DmfQ>
 <xmx:vdUjXYxYpPC6HhEQ5d43EZaBWrsqxIDW88_bXAbzlSzmAxvP3NFT6g>
 <xmx:vdUjXRtxnat58em3SNttcr4PqXrCNygcxxexuOaYXmgxr8hZN_B4pw>
Received: from localhost (unknown [124.19.31.4])
 by mail.messagingengine.com (Postfix) with ESMTPA id A32C98005A;
 Mon,  8 Jul 2019 19:46:04 -0400 (EDT)
Date: Tue, 9 Jul 2019 09:46:01 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Amit Kumar <free.amit.kumar@gmail.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
Message-ID: <20190708234601.GB18120@ares>
References: <20190705025055.GA7037@ares>
 <CAPTh4OuL5k8YAbkcnDLQQ4YRFkeaYZ6PwqWPisLtST7oz2+haQ@mail.gmail.com>
 <CAPTh4OuKv4Fx2DOWygCO0oXAm8xLw2f47igrnvhDEf2HWWyuEA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPTh4OuKv4Fx2DOWygCO0oXAm8xLw2f47igrnvhDEf2HWWyuEA@mail.gmail.com>
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
 Dan Carpenter <dan.carpenter@oracle.com>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 05, 2019 at 10:40:43AM +0530, Amit Kumar wrote:
> On Fri, Jul 5, 2019 at 9:02 AM Amit Kumar <free.amit.kumar@gmail.com> wrote:
> >
> > On Fri, Jul 5, 2019 at 8:21 AM Tobin C. Harding <me@tobin.cc> wrote:
> > >
> > > Hi,
> > >
> > > I am doing a tutorial at OSSNA in San Diego on getting into kernel
> > > hacking.  I'm only a couple of years deep into kernel hacking so I
> > > wanted to reach out to those more experienced than myself (and those
> > > less experienced).
> > >
> > > Is there any thing that you would really like to see covered in this
> > > tutorial?
> > >
> > > If you are a grey beard is there anything that you have been lamenting
> > > us newbies not knowing/doing?
> > >
> > > If you are a newbie is there anything that you are struggling with that
> > > you really want to learn?
> > Thank you.
> > Where can I find your tutorial?

It's not written yet :)

> I forget to tell, merely creating and sending patches is not important.
> Also I would like to know how to manage patches, using git, mutt, quilt
> and so on.
> Sending patch through git-email is good. But different versions of patch.
> Applying patch from mutt. Replying to patch recipients.

Nice suggestions thanks, will work this in.

thanks,
Tobin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
