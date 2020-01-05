Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1631309A7
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jan 2020 20:45:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DE4B5859CC;
	Sun,  5 Jan 2020 19:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HVLf2s8I4170; Sun,  5 Jan 2020 19:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B68A385785;
	Sun,  5 Jan 2020 19:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AAC6D1BF405
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:45:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A373A85785
 for <devel@linuxdriverproject.org>; Sun,  5 Jan 2020 19:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vONA5nGgGVzV for <devel@linuxdriverproject.org>;
 Sun,  5 Jan 2020 19:45:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CADB856E9
 for <devel@driverdev.osuosl.org>; Sun,  5 Jan 2020 19:45:45 +0000 (UTC)
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA1E4207FD;
 Sun,  5 Jan 2020 19:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578253545;
 bh=a2DYDSKJQ5NN4MoqXJFvtIJW4KgdLPd/k5EjqG4ijyE=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=fb7pKj1Zw0roOSixtCX/Nwgey01QuXJqB1o2revTKOwo4wmTRzWv/bwAfqHa9ndvG
 snwrlQJGNXzz6OYNsQOPMwhVs/O65Utk9ypuuKe7gNMPRFRyEhKqmP6AFVvQ2uQ5mH
 QD6ulUJpIznTJfwGrCAA6jk56k9DmFQYWYwQD/fg=
MIME-Version: 1.0
In-Reply-To: <9d8288380a387418b01396147a98b9d197a3992b.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <9d8288380a387418b01396147a98b9d197a3992b.1574922435.git.shubhrajyoti.datta@xilinx.com>
To: devel@driverdev.osuosl.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, shubhrajyoti.datta@gmail.com
Subject: Re: [PATCH v3 09/10] staging: clocking-wizard: Delete the driver from
 the staging
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 11:45:44 -0800
Message-Id: <20200105194544.EA1E4207FD@mail.kernel.org>
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

Quoting shubhrajyoti.datta@gmail.com (2019-11-27 22:36:16)
> From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> 
> Delete the driver from the staging as it is in drivers/clk.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Can all these patches in this series apply to the staging paths and be
picked up by Greg? Then when the driver is ready to be moved out of
staging I would like to see one patch that removes the driver from
staging and adds it to drivers/clk/ so we can be certain the diff is
minimal.

Feel free to add me and linux-clk to the review of the clocking-wizard
driver patches. I will review the driver patches that way.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
