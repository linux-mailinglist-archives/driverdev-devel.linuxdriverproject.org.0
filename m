Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A0F9EF1D
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 17:38:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E24CD85AE2;
	Tue, 27 Aug 2019 15:38:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAvefpHwcXTm; Tue, 27 Aug 2019 15:38:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E643C85772;
	Tue, 27 Aug 2019 15:38:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A06BF1BF576
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 15:38:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9BA068696D
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 15:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IkJhNSvvrXE for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:38:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6E133868EF
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 15:38:31 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id BA06436D8;
 Tue, 27 Aug 2019 11:38:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 27 Aug 2019 11:38:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=animalcreek.com;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=mesmtp; bh=gHaKtllJNGmTopA+xkS0vfLF
 y3HD/TMPeBCAy1enc6Y=; b=VHLgrUBZADvRutTeTEkzbBUTw/QF8BF61HYNYnoW
 dRbFwJS9q3ZltD5Im5mzHewi630Peelwyp8e/iqrWbfP7/LheygLPaz2uEOCN/HC
 gsJkrtYnTsNkWduNLQsZq9r+wW2JfKefe6l7pntevVpAjFWakKyiCY7hn8GnUPrB
 1qE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=gHaKtl
 lJNGmTopA+xkS0vfLFy3HD/TMPeBCAy1enc6Y=; b=p5/dni8K8u25RiXSt8QIvy
 i+eSqD6/Azc54kgcJgI63Qu0UWA25x03f13ZT/7R3LmIJ1IxgfQolF3wPjbBciST
 A4XSOJTD38XGz61pMUb4uIoVQoNp96/hSfaKbOIKg5gq5G1LIwCyjAaUQY+Zoram
 U/q1dJ/rKRGrNXodopnIZeWE03iMMYpxe/rfUS7Fv5ViTtZDxVwUajNTxlsUSi+D
 VHFgSuM2blxYAzs9LyT/3StKiffd0P73C9eSGmlsL9CkoKEce61QFoDQ7iU8Hvxr
 UpXeAOMdblmbxdn/vcGUyfRq8H3dBKr5xBAdqHNMNGDaPhtn3rUutyWY3h1MoMVg
 ==
X-ME-Sender: <xms:dE5lXfh57OFmcA4zx2vnYh_HkDFbKhGEEthCk3OLmPtpSUpyIjezZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehkedggedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjohgfsehttdertddtredvnecuhfhrohhmpeforghr
 khcuifhrvggvrhcuoehmghhrvggvrhesrghnihhmrghltghrvggvkhdrtghomheqnecukf
 hppeeikedrvddrkedvrddujedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmghhrvggv
 rhesrghnihhmrghltghrvggvkhdrtghomhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:dE5lXXKvy54PRi81-ArXBqtrvBUVoKsk7aeOPqLOF6_30XnplahO6Q>
 <xmx:dE5lXZZP5gxalHX7Af02wPR2C5yEeF07eEZgKejF4PErgPqHx4aE3Q>
 <xmx:dE5lXY2eoXobTPyPO4KtvOl9L2IemykqDm2QCNafB9kpTYNXXJ2z7A>
 <xmx:dU5lXW_gmmLl6kqyQ660BbIKeeITqOvJf10hJPpCGYtdMhZF9c5SSBf6Sz0>
Received: from blue.animalcreek.com (ip68-2-82-171.ph.ph.cox.net [68.2.82.171])
 by mail.messagingengine.com (Postfix) with ESMTPA id 47DD980060;
 Tue, 27 Aug 2019 11:38:28 -0400 (EDT)
Received: by blue.animalcreek.com (Postfix, from userid 1000)
 id B2E0CA21E58; Tue, 27 Aug 2019 08:38:27 -0700 (MST)
Date: Tue, 27 Aug 2019 08:38:27 -0700
From: Mark Greer <mgreer@animalcreek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 7/9] staging: greybus: move core include files to
 include/linux/greybus/
Message-ID: <20190827153827.GB26138@animalcreek.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-8-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-8-gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Viresh Kumar <vireshk@kernel.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 25, 2019 at 07:54:27AM +0200, Greg Kroah-Hartman wrote:
> With the goal of moving the core of the greybus code out of staging, the
> include files need to be moved to include/linux/greybus.h and
> include/linux/greybus/
> 
> Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> Cc: Mark Greer <mgreer@animalcreek.com>
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: Rui Miguel Silva <rmfrfs@gmail.com>
> Cc: David Lin <dtwlin@gmail.com>
> Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---

Acked-by: Mark Greer <mgreer@animalcreek.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
