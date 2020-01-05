Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 349F41309AF
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A9DA420421;
	Sun,  5 Jan 2020 19:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tFEzn-Xwmxp; Sun,  5 Jan 2020 19:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6E41B20023;
	Sun,  5 Jan 2020 19:48:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E56E1BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:48:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 78D3187360
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MMzAhkTy94Fh for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:48:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2CD158731E
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:48:08 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E50FD206E6;
 Sun,  5 Jan 2020 19:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578253688;
 bh=bK8BeYLfzpQmd0AwksiZZHKDK2SOLa9gpbO+s9vIMfo=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=K3jUHHJo4xT+L7JtFEna5T2ofEBB8T1DwKQ9roazsV8XJIFhD27SzLIU7+cHxeXHz
 tv5aM/2GBSHz4OE2O9m1XJyxK35jbVycwE0feSajj3OrR8AfdeGP88MNnZF7DezwdF
 P3uyPrMrVD3NEn6ZV4zuQYdyGAEYNQT1a6aZGa/0=
MIME-Version: 1.0
In-Reply-To: <5f8a1c4fee04db1c01abfba88bec223c1c6b76f5.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <5f8a1c4fee04db1c01abfba88bec223c1c6b76f5.1574922435.git.shubhrajyoti.datta@xilinx.com>
To: devel@driverdev.osuosl.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 03/10] clk: clock-wizard: Fix kernel-doc warning
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 11:48:07 -0800
Message-Id: <20200105194807.E50FD206E6@mail.kernel.org>
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

Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:10)
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Update description for the clocking wizard structure
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
