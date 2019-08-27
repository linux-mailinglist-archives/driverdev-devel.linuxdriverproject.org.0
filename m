Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E84F19EF0B
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 17:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A5452313B;
	Tue, 27 Aug 2019 15:37:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jb7K+WI9DJGV; Tue, 27 Aug 2019 15:37:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B0D3A23067;
	Tue, 27 Aug 2019 15:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 341501BF576
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 15:37:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D5F1204E6
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 15:37:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I4GcIbzEDH+E for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 15:37:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from new1-smtp.messagingengine.com (new1-smtp.messagingengine.com
 [66.111.4.221])
 by silver.osuosl.org (Postfix) with ESMTPS id 75E1E204CD
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 15:37:05 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 60AD131CF;
 Tue, 27 Aug 2019 11:37:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 27 Aug 2019 11:37:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=animalcreek.com;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=mesmtp; bh=Ocl/spRCLJJ4sJasy54nTst2
 hWRYj8SLHoluWXe3Ys4=; b=ELSPeJuLzDF9hmHn1/OQ6mqihQ9qrXMKaq89b2/R
 Y1fxCbgDd2q5xWWUHpKMD6u5dq/dd5Iu0OrHOHRWEi0+HAtC1dR+XHZK3KOz5LIX
 eplUpM/ZSmSKLy2QeNfg3dniSr23XVqPm1BoyMfBX6G4EGlWpJDNMqLiYh5E33bW
 sJ8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Ocl/sp
 RCLJJ4sJasy54nTst2hWRYj8SLHoluWXe3Ys4=; b=02pah4ulicoaApqF2DGqFH
 doOBbC1V2YvZOH/3kCzA79De4geUsuat51JQc6H1CzB5v/vzPG6c+oKeG213yWHD
 yyJs0phXZOS2/AWgcCGV0vXgirrDChG2M9y4m9rvEtneCSyiKIlq8skexxH+BGN/
 Stz2d58p6F6m20IuABxON8M1t9zWziIS+Et/DqkHaqDX4E10SzBvaof87vk4OTDS
 RqeV776t+7dKhLjr7XMhoynx3uoRioEAW0JMmQrgKnHIl8arJllFuKLkZoIQPV/Q
 Vk3UghxZGTFewaEjQsfRbgx3q62tzmOqIKdSDa3QjrWEsjbagohA2WeUOe6D0zfg
 ==
X-ME-Sender: <xms:H05lXYnkQd8lwS2bE--rsSWqdnodWBByDJQB-N-IcBQuMzsABdWgmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudehkedggedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjohgfsehttdertddtredvnecuhfhrohhmpeforghr
 khcuifhrvggvrhcuoehmghhrvggvrhesrghnihhmrghltghrvggvkhdrtghomheqnecukf
 hppeeikedrvddrkedvrddujedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmghhrvggv
 rhesrghnihhmrghltghrvggvkhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:H05lXaAlMztUzYiTTKOCWRpljwzu_E8qxMgULqPo6Hk0O5s2htmgRA>
 <xmx:H05lXS2fkrWt6fRCTz9SfYyMXzsLLBOO0hKPnznqW_YFdxnuzd9X1g>
 <xmx:H05lXUJd_enQGTgYD64lMgO1FH4bYFFAhiESZB2UYqHP6qgTd_oyiA>
 <xmx:IE5lXfxNgmKDHoT7Nj6FPXGTRITOZMTiWX22bOfwt_tb4T4MGVe6Fg>
Received: from blue.animalcreek.com (ip68-2-82-171.ph.ph.cox.net [68.2.82.171])
 by mail.messagingengine.com (Postfix) with ESMTPA id CF7CD8005B;
 Tue, 27 Aug 2019 11:37:02 -0400 (EDT)
Received: by blue.animalcreek.com (Postfix, from userid 1000)
 id 12F9EA21E58; Tue, 27 Aug 2019 08:37:02 -0700 (MST)
Date: Tue, 27 Aug 2019 08:37:02 -0700
From: Mark Greer <mgreer@animalcreek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/9] staging: greybus: remove license "boilerplate"
Message-ID: <20190827153702.GA26138@animalcreek.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190825055429.18547-3-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825055429.18547-3-gregkh@linuxfoundation.org>
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
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 25, 2019 at 07:54:22AM +0200, Greg Kroah-Hartman wrote:
> When the greybus drivers were converted to SPDX identifiers for the
> license text, some license boilerplate was not removed.  Clean this up
> by removing this unneeded text now.
> 
> Cc: Johan Hovold <johan@kernel.org>
> Cc: Alex Elder <elder@kernel.org>
> Cc: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> Cc: Mark Greer <mgreer@animalcreek.com>
> Cc: Viresh Kumar <vireshk@kernel.org>
> Cc: "Bryan O'Donoghue" <pure.logic@nexus-software.ie>
> Cc: greybus-dev@lists.linaro.org
> Cc: devel@driverdev.osuosl.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---

Acked-by: Mark Greer <mgreer@animalcreekk.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
