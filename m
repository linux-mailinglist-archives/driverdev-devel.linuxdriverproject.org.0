Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B17BA3045C5
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 18:55:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70FF98558A;
	Tue, 26 Jan 2021 17:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y9YgpIGntmB8; Tue, 26 Jan 2021 17:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CDF184BAF;
	Tue, 26 Jan 2021 17:55:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 34F411BF2EF
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 23A5A20481
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 17:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rck3Ug9WvSKw for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 17:54:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 990862026D
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 17:54:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A7EE222210;
 Tue, 26 Jan 2021 17:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611683699;
 bh=sWdJkC0XV13qzG3cgYLFyf1qRUk6OlIgEZOFy1MdMrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YPgYpVMXj6hKPm4YzKQvuYAr3i+s5n8xqAxzJjpH8Hs0NDADyx3v4tMhoi82ajkWo
 ILg7eNmfjEzCSlHo6DSL3j5tX0omyvqQdRTIhen1MbywJ0F7fFc+cFaQJEiAx+jG13
 dOFjyNNANY3dxyB6XqprCEnCS62KeqbiDwEO7fWg=
Date: Tue, 26 Jan 2021 18:54:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <YBBXcdLbj92yMJhw@kroah.com>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1611212783.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 21, 2021 at 08:18:02AM +0100, Mauro Carvalho Chehab wrote:
> Hi Mark/Lee,
> 
> This patch series finish addressing support for Hikey 970
> SPMI controller, PMIC and regulators.
> 
> This version was generated with -M, in order to make easier
> to merge upstream.  Also, rebased on the top of v5.10,
> without any dependencies from the other patch series
> I'm submitting for this board.
> 
> Yet,  patch 18 to 20 modifies drivers/staging/hikey9xx/Kconfig
> and drivers/staging/hikey9xx/Makefile. So, trivial conflicts
> will rise if they're applied via different trees, as they all
> remove some lines from such files. 

I've applied the first 13 patches, except for patch 3, as that did not
apply, to my tree, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
