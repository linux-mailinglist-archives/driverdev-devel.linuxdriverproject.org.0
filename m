Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7707F21C541
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 18:30:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2277E87E83;
	Sat, 11 Jul 2020 16:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7kY8aS53l_D; Sat, 11 Jul 2020 16:30:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2898C87E37;
	Sat, 11 Jul 2020 16:30:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 23C681BF57F
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 16:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2056987E37
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 16:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ab2zHVDbWila for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 16:30:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B3EE387E13
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 16:30:11 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 72057207D4;
 Sat, 11 Jul 2020 16:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594485011;
 bh=VHmLfWZcjJdPPZiAxjZ1DKqW0gocqhU2LJB6V29kFig=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=IJ1rPikHW/k4xBYin7EL35cOJ35HzmTbwEqTUUaXvftUCCSuEGlgcvddF86OKfmWm
 E1jIwPczDpiK8SeRo3o3ylnIJd340hrhAu9DjAPR68wfJ9CDpD+yQr9XsT4I58Ub9W
 Lz2Tb3kj7OoRBXdI8TUv8ljYrRUO7MSNqggDt7zQ=
MIME-Version: 1.0
In-Reply-To: <20200630044518.1084468-1-davidgow@google.com>
References: <20200630044518.1084468-1-davidgow@google.com>
Subject: Re: [PATCH] clk: staging: Specify IOMEM dependency for Xilinx
 Clocking Wizard driver
From: Stephen Boyd <sboyd@kernel.org>
To: David Gow <davidgow@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Soren Brinkmann <soren.brinkmann@xilinx.com>
Date: Sat, 11 Jul 2020 09:30:10 -0700
Message-ID: <159448501081.1987609.2376410636031633673@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
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
Cc: devel@driverdev.osuosl.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-clk@vger.kernel.org, David Gow <davidgow@google.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting David Gow (2020-06-29 21:45:17)
> The Xilinx Clocking Wizard driver uses the devm_ioremap_resource
> function, but does not specify a dependency on IOMEM in Kconfig. This
> causes a build failure on architectures without IOMEM, for example, UML
> (notably with make allyesconfig).
> 
> Fix this by making CONFIG_COMMON_CLK_XLNX_CLKWZRD depend on CONFIG_IOMEM.
> 
> Signed-off-by: David Gow <davidgow@google.com>
> ---

This driver is in the process of being destaged to drivers/clk/

Greg, should I pick this one up?

>  drivers/staging/clocking-wizard/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
