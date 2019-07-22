Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 518646FC2B
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B944203F8;
	Mon, 22 Jul 2019 09:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIjEptCdmc2J; Mon, 22 Jul 2019 09:29:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8E3BF203CE;
	Mon, 22 Jul 2019 09:29:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 486941BF302
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 459232037B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:29:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ApiRUXDukG6h
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:29:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D3C220116
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:29:28 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 5BE1721F69;
 Mon, 22 Jul 2019 05:29:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 22 Jul 2019 05:29:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=u1Fi+KEsy/QE/eTCnAaqcmKU8UK
 C318aakT4IQidMVw=; b=i82YRqu3G4EBUWNr9DVvNixJcJLQc0Tz37zoMOqewNR
 NE/ulGGorzaatp2a+6NqRvDX1g+o39dLSG/zgwXWkLknlu2dGmgPMSmXqh42mtcG
 8tKWdAmckyP+fplBeZ+x3kB/cLSWmQusbSx+IXQF0h6IlOOaUnuTv/4VqxUTc3oo
 6oOREl3D7zz8PrYtlmIW49kg2R7ijqXRa9iFWFuqEllKUDIVwg8E85afkfkbTmSN
 8ODEHc9dCAMX07Gn26heiGxbL1IEmeRwM9ELf7V0hKZeHyX+1/un8tJ0KvLnCb6S
 pw8HAPKoJ8pBLC5VYwETCbUNgkVp8hUi3+5zN1OUVAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=u1Fi+K
 Esy/QE/eTCnAaqcmKU8UKC318aakT4IQidMVw=; b=U3DEKFcvxlu4QaLDDBntPD
 N/HXe6Qa93ENK7W3JVHQ/EAsZHAg75O7wa7/OQAiQK6FTaK/qtWaf+bet9I4LXKU
 RWYqkEO9jFIL7G3JiXEVF0FKlFDHg8pbEED7stiAX255r+9ql/CGGpKpnHc6ALSx
 lWG9a+fgu6MvUHulyIuKgvnW51o70J0huMHC8X4US1N8aRN6SS7wn3kP/JT+HH5K
 rAsdajN9EbwKUsU2X8L9aydoIFQWC2/kDZFpoBa0NjD5Zty1Qiz0VOB5LS+v3Twv
 3Kk/99Bduv3G+ENxhQ2tU2rEn82fGa+n0o2kUJOGO2UjDLPAd4Ytz+oDRT3lHd/Q
 ==
X-ME-Sender: <xms:9oE1XbcAahsaAjdFFmXfLMlrhDWKlopUuCrrMV3vxkiM1S0bwMtX4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrjeeggdduhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfg
 hrlhcuvffnffculdeftddmnecujfgurhepfffhvffukfhfgggtuggjofgfsehttdertdfo
 redvnecuhfhrohhmpedfvfhosghinhcuvedrucfjrghrughinhhgfdcuoehmvgesthhosg
 hinhdrtggtqeenucfkphepuddvgedrudelrdefuddrgeenucfrrghrrghmpehmrghilhhf
 rhhomhepmhgvsehtohgsihhnrdgttgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:9oE1XTCGRsU-x5YuHnWxbDspIhI7Oz2TL7R0fpbVWiydqN_D-vnL8A>
 <xmx:9oE1XTpg28agX1G9uiN4nZVbZEjvuKMRZDufFPBCE901ntUxL0R9Lg>
 <xmx:9oE1XQSeLZndPlvP-MvkCqlt4E-qX5th43I2FBrFOjPpU21qkQe3Sg>
 <xmx:94E1XeDra_LTzKic2c6x2OSYo1cdO2ZA1cKTatGIbvXN6YF8LnQleA>
Received: from localhost (unknown [124.19.31.4])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3492980061;
 Mon, 22 Jul 2019 05:29:25 -0400 (EDT)
Date: Mon, 22 Jul 2019 19:29:23 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
Message-ID: <20190722092923.GB22763@ares>
References: <20190705025055.GA7037@ares>
 <20190719093658.GF3111@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719093658.GF3111@kadam>
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
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 19, 2019 at 12:36:58PM +0300, Dan Carpenter wrote:
> On Fri, Jul 05, 2019 at 12:50:55PM +1000, Tobin C. Harding wrote:
> > Outcome will (hopefully) be a small patch set into drivers/staging/.
> > (Don't worry Greg only one group got to this stage last time, you
> > won't get flooded with patches :)
> 
> We're good at reviewing floods of patches.  Send away.
> 
> In the end what we want is people who will take over a driver and
> understand it completely and become the maintainer.  We've had a few
> people that did appointed themselves to become the maintainer of a
> random driver and move it out of staging.  But even if people don't make
> it all the way to become a maintainer, it's nice when they start down
> that path by focusing on one driver and trying to understand it as much
> as possible.
> 
> Most of the time when you look at a new staging driver, then you do want
> to clean up the white space just because it's hard to look at
> non-standard code.  So that's the first step.  But then maybe start at
> the probe and release functions and clean it up.  Keep your eyes open
> to any other mistakes or bugs you see.  Write them down.  Then the
> ioctls.  Etc.  Look at the TODO too.
> 
> The other thing I wish people knew was about the relationship with
> maintainers.  When you start out, you're virtually anonymous for the
> first couple patchsets.  We get so many and they blend together so we
> don't remember your name.  So don't think that we mean anything
> personally if we don't apply your patch.  We have forgotten about the
> patch as soon as we reply to it.  Don't panic and resend quickly.  You
> will be too stressed.  Wait until the next day.
> 
> In staging we really want to apply patches (unless it's in staging
> because we're going to remove the code).  I get annoyed with other
> staging reviewers who NAK patches because "I don't like churn" or
> whatever.
> 
> On the other hand, patches just "silencing checkpatch.pl" is not a valid
> justification for sending a patch.  Patches should make the code more
> readable.
> 
> Anyway, maintainers are not monsters.  Very few people have made me
> annoyed to the point where I refuse to review their code.  And everyone
> else is in my good books so that's fine.

Cool, points noted.  Thanks Dan


	Tobin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
