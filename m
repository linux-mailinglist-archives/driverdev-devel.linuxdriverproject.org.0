Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7CC3045AF
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 18:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BC0E867CD;
	Tue, 26 Jan 2021 17:50:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H4YMN6HEJ5tl; Tue, 26 Jan 2021 17:50:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9613886755;
	Tue, 26 Jan 2021 17:50:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B61671BF96B
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1FE72049F
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMzB86S1Bg5Y for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 17:49:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D12D2049A
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 17:49:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF4BD2224C;
 Tue, 26 Jan 2021 17:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611683398;
 bh=ix5zJ6JWxdoag7Pi/sGk5niBB/BRtMgouJs8I7834qI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QlmBe9gDOtXQz1sz7N3XMxwQGKMs/kj/5q94ltAL+JYThZi2SOYOO/qoDyHa5+qIr
 JE56dqfoBYM7SOGJj1LFEGSI5KdlbEsJ1OGvB+asxu+UzpPRMyQS7HCEl9ZC9EWHK3
 qdcDshfRJ7tGjJ2edO1Aw8EDjHUUgKxBPkG1eAKs=
Date: Tue, 26 Jan 2021 18:49:53 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 0/5] Promote Hikey 970 USB phy out of staging
Message-ID: <YBBWQeglmuDn1g11@kroah.com>
References: <cover.1611052729.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1611052729.git.mchehab+huawei@kernel.org>
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
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 19, 2021 at 11:44:38AM +0100, Mauro Carvalho Chehab wrote:
> Hi Vinod/Rob,
> 
> This series moves  the Hikey 970 USB PHY driver out of staging.
> 
> Patches 1 to 4 contain the fixes from staging. Patch 5 moves the
> driver from staging:
> 
> 	$ git show 82ce73ac9a38 --summary
> 	...
> 	 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (100%)
> 	 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)
> 
> I opted to use --no-renames on this series in order to make easier to
> review via e-mail, as the entire driver and DT bindings will be seen
> at the last patch on this series.

First 4 patches applied to my tree, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
