Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B7229EE24
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 15:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A587228AC;
	Thu, 29 Oct 2020 14:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bgfBUajaJAgl; Thu, 29 Oct 2020 14:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B4458204E5;
	Thu, 29 Oct 2020 14:26:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 346B51BF308
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 14:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2EB8885008
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 14:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 580KldCnYRwT for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 14:26:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BB6184ECD
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 14:26:10 +0000 (UTC)
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94) (envelope-from <johannes@sipsolutions.net>)
 id 1kY8s6-00EpZx-Ey; Thu, 29 Oct 2020 15:25:46 +0100
Message-ID: <bff39a3d645afc424478981cd7d9ad69c2b9b346.camel@sipsolutions.net>
Subject: Re: [PATCH, net -> staging, v2] wimax: move out to staging
From: Johannes Berg <johannes@sipsolutions.net>
To: Arnd Bergmann <arnd@kernel.org>, "David S. Miller"
 <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 29 Oct 2020 15:25:30 +0100
In-Reply-To: <20201029134722.3965095-1-arnd@kernel.org>
References: <20201029134722.3965095-1-arnd@kernel.org>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-10-29 at 14:43 +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> There are no known users of this driver as of October 2020, and it will
> be removed unless someone turns out to still need it in future releases.
> 
> According to https://en.wikipedia.org/wiki/List_of_WiMAX_networks, there
> have been many public wimax networks, but it appears that many of these
> have migrated to LTE or discontinued their service altogether.
> As most PCs and phones lack WiMAX hardware support, the remaining
> networks tend to use standalone routers. These almost certainly
> run Linux, but not a modern kernel or the mainline wimax driver stack.
> 
> NetworkManager appears to have dropped userspace support in 2015
> https://bugzilla.gnome.org/show_bug.cgi?id=747846, the
> www.linuxwimax.org
> site had already shut down earlier.
> 
> WiMax is apparently still being deployed on airport campus networks
> ("AeroMACS"), but in a frequency band that was not supported by the old
> Intel 2400m (used in Sandy Bridge laptops and earlier), which is the
> only driver using the kernel's wimax stack.
> 
> Move all files into drivers/staging/wimax, including the uapi header
> files and documentation, to make it easier to remove it when it gets
> to that. Only minimal changes are made to the source files, in order
> to make it possible to port patches across the move.
> 
> Also remove the MAINTAINERS entry that refers to a broken mailing
> list and website.
> 
> Suggested-by: Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> changes in v2:
> - fix a build regression
> - add more information about remaining networks (Dan Carpenter)_
> 
> For v1, Greg said he'd appply the patch when he gets an Ack
> from the maintainers.
> 
> Inaky, Johannes, Jakub: are you happy with this version?

Sure, looks fine to me.

Acked-by: Johannes Berg <johannes@sipsolutions.net>

Not that I have much relation to this code other than having fixed up
genetlink stuff over the years :)

johannes

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
