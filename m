Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AD62734D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B7E982094B;
	Mon, 21 Sep 2020 21:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VGzZGe8KsC94; Mon, 21 Sep 2020 21:21:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 01A2320785;
	Mon, 21 Sep 2020 21:21:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D093B1BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C9E4084CA5
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKDzcMX4yqrL for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:21:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E57C184C9F
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:21:44 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81E1B2067D;
 Mon, 21 Sep 2020 21:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600723304;
 bh=me2MwvSXd6QCYauBKe2+NNTCOKg4FSirkmBEwHjhjXw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=BvR0zWSLjvHlg/r4m/rO1KpCtEZUV7RXwJ5JfBD6YkW19xyMuXZfTuYUM+q/zyk/A
 MHXnAEw6yU6NNf0UDS1KVOulGCtzeUb/NlOo0t2MoGHnb0zmiqjMstkZxQwhDTT7Gp
 VbxakiPIelqCcGSVLFPUIQGyIz22pLPCOxqIAslA=
MIME-Version: 1.0
In-Reply-To: <160072319955.310579.4256832010356165092@swboyd.mtv.corp.google.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-3-git-send-email-shubhrajyoti.datta@xilinx.com>
 <160072319955.310579.4256832010356165092@swboyd.mtv.corp.google.com>
Subject: Re: [PATCH v6 2/8] clk: clock-wizard: Add the clockwizard to clk
 directory
From: Stephen Boyd <sboyd@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-clk@vger.kernel.org
Date: Mon, 21 Sep 2020 14:21:43 -0700
Message-ID: <160072330324.310579.14466423524100614935@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Stephen Boyd (2020-09-21 14:19:59)
> Quoting Shubhrajyoti Datta (2020-08-28 06:39:50)
> > Add clocking wizard driver to clk.
> > 
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > ---
> 
> Can this be combined with patch #6?

Sorry, I meant patch #8.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
