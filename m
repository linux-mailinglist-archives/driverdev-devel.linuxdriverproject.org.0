Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2DC2734C2
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:20:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BD6D620789;
	Mon, 21 Sep 2020 21:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVWSrwHvo31r; Mon, 21 Sep 2020 21:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4643A20530;
	Mon, 21 Sep 2020 21:20:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9AFC1BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAEA120530
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zOnEHdUTjoDO for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:20:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 47BB020523
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:20:01 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB40823A5C;
 Mon, 21 Sep 2020 21:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600723200;
 bh=S5rXMAPkeuI72fevPfth+hRY+RVoyHNtw2jeQyry0IE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=rYwfyLO9v0Ap+xhu7KqfsfQovdwzpNLc7X1FlqsjAPc8V1ZSW1/KDtGeM+4qqUeRD
 1v4WH9COGraNN2uEuLPzOBBKaSaFaUogCAWKVde0eEje+5ghp+gH1izbFg3G3zxNLu
 9qQokqOX20lO5Kpt94UtSFnwN+8KUxPQ+oDfhsL8=
MIME-Version: 1.0
In-Reply-To: <1598621996-31040-3-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-3-git-send-email-shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v6 2/8] clk: clock-wizard: Add the clockwizard to clk
 directory
From: Stephen Boyd <sboyd@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-clk@vger.kernel.org
Date: Mon, 21 Sep 2020 14:19:59 -0700
Message-ID: <160072319955.310579.4256832010356165092@swboyd.mtv.corp.google.com>
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

Quoting Shubhrajyoti Datta (2020-08-28 06:39:50)
> Add clocking wizard driver to clk.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---

Can this be combined with patch #6? And then use git format-patch -C -M
when generating patches? I'm trying to see if anything changed from the
file in the staging tree or if this is just a copy from staging to clk
directory. Would also be useful if that was stated in the commit text.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
