Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1433330EDA8
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 08:48:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C2BE226D4;
	Thu,  4 Feb 2021 07:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XsLDC7ERe8aZ; Thu,  4 Feb 2021 07:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AAA220408;
	Thu,  4 Feb 2021 07:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4F4C1BF3BF
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 07:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B131787108
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 07:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJOykEGu8THS for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 07:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 35F7787103
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 07:48:42 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B91E764F41;
 Thu,  4 Feb 2021 07:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612424921;
 bh=jZ5VkMV+yvTTGTBLPJwWZjNdJ6FEI+yUk1SW6gkvJFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T1cr0T0Bb8YdSuQS558nTlBpWsKr7YkV33KoyplTR3JJB3LUpUg5VVdirp2ZtZCen
 QfNIK9zqj1YPoR8dPqLhpdlxcNIeCKf0FwgGUdUFyx5vaCHVI2mxHiszs++o3ilJQo
 hnlyUiPcBK0Lu8V5ycceAOYS6iJ8aCnh7xJSUUiHpTu59fWfieXPPGGWpGwpJWLONR
 Yn9QSylE+IZTbJt2u6MfxFnd78PoqhTtZWgHp2CSotQvjf7aHv0I7JMemXuDYPRLLb
 Bb6HZeLSYUu6m8+JIkixO5EtcWCCvtFT5zCpiPA/BYJibxamgXUO+jPwQWtFpXCFY+
 wAPc3ou2MiguQ==
Date: Thu, 4 Feb 2021 13:18:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 5/5] phy: phy-hi3670-usb3: move driver from staging
 into phy
Message-ID: <20210204074837.GE3079@vkoul-mobl.Dlink>
References: <cover.1611052729.git.mchehab+huawei@kernel.org>
 <82ce73ac9a383f0cae0faded5ec6fef2d3417d3c.1611052729.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82ce73ac9a383f0cae0faded5ec6fef2d3417d3c.1611052729.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 19-01-21, 11:44, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.

Acked-By: Vinod Koul <vkoul@kernel.org>

I think it makes sense if Greg applies this as well

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
