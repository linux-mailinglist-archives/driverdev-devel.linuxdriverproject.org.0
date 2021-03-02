Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BDB329E5E
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 13:29:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1067283E9E;
	Tue,  2 Mar 2021 12:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDf3k-SpL8hL; Tue,  2 Mar 2021 12:29:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4AA9C83CED;
	Tue,  2 Mar 2021 12:29:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 497BB1BF3DF
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 12:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4309C60612
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 12:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id soFSPyjteyRD for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 12:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C083E605D3
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 12:28:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 07BE764F7A;
 Tue,  2 Mar 2021 12:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614688129;
 bh=A5H4O3r7D9MypgFZD+4PBqBdA7HmqquEKOppYxkCEGY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PWj1pUq9VGpVf4Y4UgUVTLskdBcNVjdMJOlXR+n1OTowYT0cUtUO2JE3rqI7sBq/r
 ItRQJi5aM/l91SqdjSb+T80YJn2TFNT6VxLqoG14AtVIf0wpXfAZ5AwjmU3d3DBV9B
 KqLDJAD37E1EJqWp8VpiwlSN/pQ7A/MjVd8RLfUJG4zMNSwfOQSvHomOtf1cGywuHS
 /Z50Kr6obxVdSRQ9A4l6QNSR+K3wl5xbN7QSlt7OatwaIPHHOA2alk/S262QoniOtN
 mCPpxRPfwR5Ti6NNyy0s7Fmmnup1XWEfN3CDZaxZ0EQcqdMY/cNssIgKEWKCJyzD9c
 cSw/2xUiBvpLQ==
Date: Tue, 2 Mar 2021 17:58:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH] phy: ralink: phy-mt7621-pci: fix XTAL bitmask
Message-ID: <YD4vfDrvdlduVUQL@vkoul-mobl>
References: <20210302105412.16221-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302105412.16221-1-sergio.paracuellos@gmail.com>
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
Cc: linux-phy@lists.infradead.org, devel@driverdev.osuosl.org, neil@brown.name,
 linux-kernel@vger.kernel.org, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 02-03-21, 11:54, Sergio Paracuellos wrote:
> When this was rewriten to get mainlined and start to
> use 'linux/bitfield.h' headers, XTAL_MASK was wrong.
> It must mask three bits but only two were used. Hence
> properly fix it to make things work.

Applied, thanks

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
