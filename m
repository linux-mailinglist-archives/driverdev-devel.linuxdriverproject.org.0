Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDB129CE49
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 06:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 913238743E;
	Wed, 28 Oct 2020 05:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fR08W0ccAYjR; Wed, 28 Oct 2020 05:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DF044873B4;
	Wed, 28 Oct 2020 05:56:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 376011BF333
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 05:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3156787059
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 05:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BVAiGC-MLepU for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 05:56:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E68D86EA3
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 05:56:35 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1488222C8;
 Wed, 28 Oct 2020 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603864594;
 bh=gRejF2ll8OEp5JTX3hs4nwNi7qpEZn/Ri8YOjZpq59M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HSv007bm95x5QYWP2rdBK3O70AiNEpllgLGxddLb29tAlYw/MwPmZMaP8gQT09sIW
 4Od2e/41WSGCU56q5846xm5tFjxJlYx0iX8CivFB0oYNXbeVVYLgJXg3ua7lbj3p/F
 GnSxbDckG+k8EaOMN3SpouOl41IyXx8tOKxQF0wY=
Date: Wed, 28 Oct 2020 06:56:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [RFC] wimax: move out to staging
Message-ID: <20201028055628.GB244117@kroah.com>
References: <20201027212448.454129-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027212448.454129-1-arnd@kernel.org>
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
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 27, 2020 at 10:20:13PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> There are no known users of this driver as of October 2020, and it will
> be removed unless someone turns out to still need it in future releases.
> 
> According to https://en.wikipedia.org/wiki/List_of_WiMAX_networks, there
> have been many public wimax networks, but it appears that these entries
> are all stale, after everyone has migrated to LTE or discontinued their
> service altogether.
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

Is this ok for me to take through the staging tree?  If so, I need an
ack from the networking maintainers.

If not, feel free to send it through the networking tree and add:

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
