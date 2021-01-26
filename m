Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 288103045E0
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 19:02:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 369EA204FC;
	Tue, 26 Jan 2021 18:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y7muX617Bopj; Tue, 26 Jan 2021 18:02:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63A16204A5;
	Tue, 26 Jan 2021 18:02:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 47A041BF2EF
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 18:02:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4464085773
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 18:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtiuZMYk-nuB for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 18:02:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE19F85722
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 18:02:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB63A22228;
 Tue, 26 Jan 2021 18:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611684161;
 bh=BK2ao5kYzXCxcy1D2owWU3STiedR0YeC1K9uvhJ1CYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SppsyU7c8vQ/1xjj/G04Hcb9QmODrvXvXO7Xm2grGJWu3FKtlbOQ7sKdV14Wy8T33
 nJu0RdiUqBSUxLBdudClYd5m8qdNlalWax5AiHlHbgTWDMdDxPNARrQVxT4ZKj9rt0
 xcINjm9FJjkOPzGSNK3rDZpppSBm3nK1aFvdZgIo=
Date: Tue, 26 Jan 2021 19:02:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Message-ID: <YBBZP9LjXPi/rzfP@kroah.com>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <YBBXcdLbj92yMJhw@kroah.com> <20210126175752.GF4839@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126175752.GF4839@sirena.org.uk>
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
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-arm-msm@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 linux-kernel@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 26, 2021 at 05:57:52PM +0000, Mark Brown wrote:
> On Tue, Jan 26, 2021 at 06:54:57PM +0100, Greg Kroah-Hartman wrote:
> 
> > I've applied the first 13 patches, except for patch 3, as that did not
> > apply, to my tree, thanks.
> 
> Is there a branch we can pull from?

Once 0-day passes, you can pull from my staging-testing branch from
staging.git on git.kernel.org if you want.  Give it 24 hours to pass
before it hits that location.

Do you need a tag to pull from?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
