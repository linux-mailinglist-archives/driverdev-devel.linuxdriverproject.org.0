Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 421CC1591AE
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 15:17:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B27B785725;
	Tue, 11 Feb 2020 14:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nrgAvDc4_SYK; Tue, 11 Feb 2020 14:17:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C292485633;
	Tue, 11 Feb 2020 14:17:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00FF81BF3E6
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E5D73863B7
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J+izAc5RWT5R for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 14:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5007D85802
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 14:17:15 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E4B48214DB;
 Tue, 11 Feb 2020 14:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581430635;
 bh=8AiWK3/ZfEIkWFam/qRaf6+N2UhHRoGAg2EyoUapjb8=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=ovLIzx+baaiH3k9vMpUeBYA9eW6g+p/tf3d5kx0z3eRYO5ocwZyzQ/3D3mkzHrADh
 reTWRueH6fCyv++IYRhyFWdPDligNO1CgB/3kSrXmi0afXNSzNeMqiNmScaIB01hmx
 6+OHFpvCE52Bte2uKHl1sSY24z4oEWnO+usRePF0=
Date: Tue, 11 Feb 2020 14:17:14 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH 2/6] staging: rtl8723bs: Fix potential security hole
In-Reply-To: <20200210180235.21691-3-Larry.Finger@lwfinger.net>
References: <20200210180235.21691-3-Larry.Finger@lwfinger.net>
Message-Id: <20200211141714.E4B48214DB@mail.kernel.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org, stable@vger.kernel.org,
 Pietro Oliva <pietroliva@gmail.com>, 
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.5.2, v5.4.18, v4.19.102, v4.14.170, v4.9.213, v4.4.213.

v5.5.2: Build OK!
v4.19.102: Build OK!
v4.14.170: Build OK!
v4.9.213: Failed to apply! Possible dependencies:
    554c0a3abf21 ("staging: Add rtl8723bs sdio wifi driver")

v4.4.213: Failed to apply! Possible dependencies:
    554c0a3abf21 ("staging: Add rtl8723bs sdio wifi driver")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
