Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7271309AB
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:46:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F024203F2;
	Sun,  5 Jan 2020 19:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 32mt7EM1VAid; Sun,  5 Jan 2020 19:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 116D2203AF;
	Sun,  5 Jan 2020 19:46:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D8881BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:46:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 07D2E87397
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:46:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0Rnm6iEq42B for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:46:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 98F768738A
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:46:50 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52B8A206E6;
 Sun,  5 Jan 2020 19:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578253610;
 bh=2qzC2UMI2DIxIBRnPl5K9OcJa0SeoY/dfiK9tSsqfdE=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=AGOf4Vmz9GJc4lYsYQ/Z/o6wpzbxi/IJLhVTqvmTgq16nxRHSJw4t8nPCvD/jQEgR
 uSy8Jx1jqyZgO4xLa7M3G4lwRtRXo6+y0MX/QOCKkWVy6Dt+C7pV9GSZbeycVxoqSR
 gaskqhV9OuCbxr0K0XGW0HopVi+9cKrtexEzfgMk=
MIME-Version: 1.0
In-Reply-To: <a0880cfbbcc729171a37e2a3bc27680efb06e398.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <a0880cfbbcc729171a37e2a3bc27680efb06e398.1574922435.git.shubhrajyoti.datta@xilinx.com>
To: devel@driverdev.osuosl.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 10/10] clk: clock-wizard: Fix the compilation failure
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 11:46:49 -0800
Message-Id: <20200105194650.52B8A206E6@mail.kernel.org>
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, robh+dt@kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:17)
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> After 90b6c5c73 (clk: Remove CLK_IS_BASIC clk flag)
> The CLK_IS_BASIC is deleted. Adapt the driver for the same.

I don't see any CLK_IS_BASIC in the tree right now, so did it get
reintroduced by this patch series? Can you squash this into whatever
patch introduces CLK_IS_BASIC usage?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
