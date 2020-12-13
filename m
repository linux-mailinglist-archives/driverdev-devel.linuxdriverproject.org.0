Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBD12D8DAF
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 15:05:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76C7385F81;
	Sun, 13 Dec 2020 14:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tOkcoBiMiplo; Sun, 13 Dec 2020 14:05:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8BF9785321;
	Sun, 13 Dec 2020 14:05:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12ADA1BF2C9
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 14:05:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A76687143
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 14:05:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ePa2NBkr5-zj for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 14:05:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DECCA8703C
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 14:05:50 +0000 (UTC)
Date: Sun, 13 Dec 2020 09:05:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607868350;
 bh=mcbojKX0rCRAglq8j0baJ+vgXce4rMTNLcaD/nWwNHs=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=rRFQLa9PCwMZs0lPKS99ktrsTgouLcbSl8Wem5V5bqvQpsD5VnSfXkjJkwDv6NpTP
 wYi8ROaa6VTvX1JMo/pD7EayF2ds/o4Bh2HD+DjRVHnRSTuWGz1+NY9VukNrnmOgBv
 zWlyg3DYQevPMBJ4qe9HX8IXTWiyLHK9C2CZ5CPIsSfXd+llpnf0rIXyXtJOMaLuJA
 FeEzDOO1d1pjE2yFrwqwrLLrNlh3LDvfPPRMltmi3ikLrvqqauzeiSmphedv+1IwEx
 uQYLBzXaoa0SF7zjUhhOfPMNx17/ZjnEUrvUhbTJWa+2k8Rp5NHeo4Zjgr/RJ5Dpcw
 3F+kzL1Linugg==
From: Sasha Levin <sashal@kernel.org>
To: Andrea Parri <parri.andrea@gmail.com>
Subject: Re: [PATCH AUTOSEL 5.9 15/23] scsi: storvsc: Validate length of
 incoming packet in storvsc_on_channel_callback()
Message-ID: <20201213140549.GP643756@sasha-vm>
References: <20201212160804.2334982-1-sashal@kernel.org>
 <20201212160804.2334982-15-sashal@kernel.org>
 <20201212180901.GA19225@andrea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201212180901.GA19225@andrea>
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 devel@linuxdriverproject.org, Saruhan Karademir <skarade@microsoft.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 12, 2020 at 07:09:01PM +0100, Andrea Parri wrote:
>Hi Sasha,
>
>On Sat, Dec 12, 2020 at 11:07:56AM -0500, Sasha Levin wrote:
>> From: "Andrea Parri (Microsoft)" <parri.andrea@gmail.com>
>>
>> [ Upstream commit 3b8c72d076c42bf27284cda7b2b2b522810686f8 ]
>
>FYI, we found that this commit introduced a regression and posted a
>revert:
>
>  https://lkml.kernel.org/r/20201211131404.21359-1-parri.andrea@gmail.com
>
>Same comment for the AUTOSEL 5.4, 4.19 and 4.14 you've just posted.

I'll drop those, thanks!

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
