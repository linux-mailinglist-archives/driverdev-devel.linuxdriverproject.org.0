Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8132464DA
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 12:53:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FD1087CB8;
	Mon, 17 Aug 2020 10:53:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kWnnrX-MbYuM; Mon, 17 Aug 2020 10:53:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF5EE87C7E;
	Mon, 17 Aug 2020 10:53:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E985D1BF364
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 10:53:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E09DC21519
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 10:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iBpvL17B6k1r for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 10:53:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4CFC920455
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 10:53:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D29B20758;
 Mon, 17 Aug 2020 10:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597661606;
 bh=/yg5CG5Pqlvxg6RARc2mE3qINPJ76LuMoK+3ZPUd37k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FJs7ih+8pOsI/ft0TcODZut2ndgo9ESSIIxrxt0ZRhkrBwTaEqicpHXLzaEHIp2po
 xTBAnvSRray/zbgtWWx7nVyQo4+83TA/yhFWR2XNsR7NX4GAR8WmgjsVnhbTj3IBJn
 auUSFIUTsuEwhGmVnLTZhzblSXZLR2lfwJTstKxM=
Date: Mon, 17 Aug 2020 12:53:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 00/16] IOMMU driver for Kirin 960/970
Message-ID: <20200817105345.GA3483231@kroah.com>
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
 <20200817082106.GA16296@infradead.org>
 <20200817112725.26f1b7d6@coco.lan>
 <20200817093703.GA2258686@kroah.com>
 <20200817124617.303bb4a9@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817124617.303bb4a9@coco.lan>
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
 Joerg Roedel <jroedel@suse.de>, Manivannan Sadhasivam <mani@kernel.org>,
 Chenfeng <puck.chen@hisilicon.com>, Joerg Roedel <joro@8bytes.org>,
 linuxarm@huawei.com, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 Suzhuangluan <suzhuangluan@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 17, 2020 at 12:46:17PM +0200, Mauro Carvalho Chehab wrote:
> The main reason of submitting via staging is that I need to preserve
> the patch that added this driver as-is, in order to preserve its
> SoB and not causing legal issues.
> 
> It it is OK for iommu to accept a submission like that, I can
> re-submit it, doing the changes at drivers/iommu.

You can always do this just fine, as one single patch.  You do know
about the co-developed-by: line, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
