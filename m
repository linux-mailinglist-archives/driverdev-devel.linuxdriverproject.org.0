Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9580930EDEC
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 09:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D14685EC6;
	Thu,  4 Feb 2021 08:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRAhYJN-IltP; Thu,  4 Feb 2021 08:03:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F29D85EF1;
	Thu,  4 Feb 2021 08:03:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A84271BF844
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 08:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7029287123
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 08:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q85XVzqSnVwh for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 08:03:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D13068712C
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 08:03:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 80F7F64E31;
 Thu,  4 Feb 2021 08:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612425833;
 bh=l9ZMtxaWdlJ1HbbmtjUwxdoQZJ9SJ+NLgrPaOz9k7aY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ezlazHLvCAOyaozx0y2isxj4ErAbPbIVApegzjf/SLS9X5vRKNabzavRgeLvnNWgh
 tjH6TMNmy3m6HcvF1L+nFvh80zgOaYfyduYGxx2XtTyebBIGVFmv63oXtI2rKB7xo8
 l7iCJUCrGj+8J7XfDsBEifXKI9/5Fvdv/+gOZIEZ1cqQaaPKff7VnmNTc0otT5Nbsr
 wnu30TQUHoY//+wfuUNPYuKpNDadKOmHpqCw6atnNirzZxnUjmDIflN3bH2sVDaCXT
 9dX8/4sJJ8tOd7slEAd8A6RU7p/zF5itofJ2jZ2r3C6nC+9jKkn18+87rNkVIRPJlm
 53e423qQDwHiQ==
Date: Thu, 4 Feb 2021 13:33:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v7 10/14] phy: phy-hi3670-usb3: move driver from staging
 into phy
Message-ID: <20210204080349.GL3079@vkoul-mobl.Dlink>
References: <cover.1611932194.git.mchehab+huawei@kernel.org>
 <810f286cade454acda418b9e5f39bb3a595e871a.1611932194.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <810f286cade454acda418b9e5f39bb3a595e871a.1611932194.git.mchehab+huawei@kernel.org>
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
 Rob Herring <robh+dt@kernel.org>, David Gow <davidgow@google.com>,
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 29-01-21, 16:03, Mauro Carvalho Chehab wrote:
> The phy USB3 driver for Hisilicon 970 (hi3670) is ready
> for mainstream. Mode it from staging into the main driver's
> phy/ directory.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
