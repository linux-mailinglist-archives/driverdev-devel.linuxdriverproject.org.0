Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2931319B6B
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 09:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E5526F606
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VkSyH8Q56Qj4 for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 08:46:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id CEFD46F646; Fri, 12 Feb 2021 08:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4097D6F527;
	Fri, 12 Feb 2021 08:46:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE1031BF3F6
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CEFF6F527
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 08:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mm3Ty6pcyqRU for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:46:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 0F8EB6F595; Fri, 12 Feb 2021 08:46:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 035EC6F527
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 08:46:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B757764D73;
 Fri, 12 Feb 2021 08:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613119579;
 bh=63mjsAMMpQu6KoWo7n3wRfwrwyLH6TRv4ATBrN7lEGE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZmbPlAdn6VKR6AKQRAfW8o+aC3o6WMu6iqqUzzrnfJkhkLk60sd8onZcoOQGC7Kx3
 DHSZL+vt+NY6/feTsXl01rL6H1uZQsSIuk3pRDq6TIyqK/lbTwF7NOsamCU02MQYGj
 7XzWOcuHriPTJFr6fkVZyLtTU8a+ZfwAEtvpeD2k=
Date: Fri, 12 Feb 2021 09:46:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [RESEND PATCH v5 4/6] staging: mt7621-dts: make use of new
 'mt7621-clk'
Message-ID: <YCZAWM+wjuXzrHW/@kroah.com>
References: <20210212074330.4650-1-sergio.paracuellos@gmail.com>
 <20210212074330.4650-5-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210212074330.4650-5-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, sboyd@kernel.org, linux-mips@vger.kernel.org,
 robh+dt@kernel.org, john@phrozen.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 12, 2021 at 08:43:28AM +0100, Sergio Paracuellos wrote:
> Clocks for SoC mt7621 have been properly integrated so there is
> no need to declare fixed clocks at all in the device tree. Remove
> all of them, add new device tree nodes for mt7621-clk and update
> the rest of the nodes to use them.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
