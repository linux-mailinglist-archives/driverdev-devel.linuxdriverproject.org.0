Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E37630EDC6
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 08:54:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CB196204B6;
	Thu,  4 Feb 2021 07:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uzl4PjhbrizX; Thu,  4 Feb 2021 07:54:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A3F120400;
	Thu,  4 Feb 2021 07:54:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 415C11BF3BF
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 07:54:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E36482580
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 07:54:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FEyeZ5IeIYkA for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 07:54:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 181C084317
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 07:54:08 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B3B4664F41;
 Thu,  4 Feb 2021 07:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612425247;
 bh=qvleDJN7mq45Ln2tGXfhFUsthuAjXYBNdm2TsW6JbAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oKP35KI1iJmTZX6k2z7k/uaPZTRIcYXj1VV+lNItravJpuuiYBee+95xWm9yKJwxO
 tlhwCe2rHsya6abdlGaVYfuJOa74JefGMXtJnCDFob0Dtd1L2iLvCs3wHpQBjXpweT
 uPHORNF+S/vwJ/mCezI5CmR7NhDciweWfkmu9S/f6+PRn+8IAxTvKXCOSpSD9mBGtN
 HOooF9sUVQWlSgiB8KDZo0PrWYkQs5rSckoJ+R6lLBi18RfP5qCqZg0uJRMjZggfHk
 txVyz4kRjjbnI8drRtL2utNNob8H2hljPpCrwNDiSp20UCXumSILQEkA9tLJlOJfcn
 j3j7zp+p59rtw==
Date: Thu, 4 Feb 2021 13:24:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v6 3/7] phy: phy-hi3670-usb3: move driver from staging
 into phy
Message-ID: <20210204075402.GH3079@vkoul-mobl.Dlink>
References: <cover.1611773727.git.mchehab+huawei@kernel.org>
 <b74d127e45b586119dce5009b5630ddbd4a7f28d.1611773727.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b74d127e45b586119dce5009b5630ddbd4a7f28d.1611773727.git.mchehab+huawei@kernel.org>
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
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Mark Brown <broonie@kernel.org>,
 David Gow <davidgow@google.com>, Lee Jones <lee.jones@linaro.org>,
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 27-01-21, 20:08, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.

I guess Greg will pick this, so:

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
