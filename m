Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2048A2C828C
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Nov 2020 11:48:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B9B786B55;
	Mon, 30 Nov 2020 10:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LtjFIqk+pGQE; Mon, 30 Nov 2020 10:48:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6C0DC86BF5;
	Mon, 30 Nov 2020 10:48:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 675D21BF30F
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 10:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63DD686241
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 10:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z2O6mLhUtyeA for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 10:48:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40BE0861FE
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 10:48:47 +0000 (UTC)
Received: from localhost (unknown [122.171.214.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B32C7206B7;
 Mon, 30 Nov 2020 10:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606733326;
 bh=t4+Yw1to2e7xKgHNLaIR4ydZHUYF8sCvmH3H7OvgUYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q6ABZ3ILaOWWixyG25jTCRyYw/uqAHD9dELum8N03AlcBEwYd8gq9fdQHnsBzaylV
 bGU9UyYOpsWAfD3puDwururN+Tzl0434GJ4LlgBMz9u0FXWwKbuHTeHmzJtlAytemB
 mMZyT19WvoNPT3aaiswPrSSMzSzw3/uN+AvIf2gY=
Date: Mon, 30 Nov 2020 16:18:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v6 0/4] MT7621 PCIe PHY
Message-ID: <20201130104837.GO8403@vkoul-mobl>
References: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 robh+dt@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 21-11-20, 16:50, Sergio Paracuellos wrote:
> This series adds support for the PCIe PHY found in the Mediatek
> MT7621 SoC.
> 
> There is also a 'mt7621-pci' driver which is the controller part
> which is still in staging and is a client of this phy.
> 
> Both drivers have been tested together in a gnubee1 board.
> 
> This series are rebased on the top of linux-phy:
> commit 768a711e2d4b ("phy: samsung: phy-exynos-pcie: fix typo 'tunning'")

Applied, thanks

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
