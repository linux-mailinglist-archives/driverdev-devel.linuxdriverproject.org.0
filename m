Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B89C22DB44B
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 20:10:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F80B86DD0;
	Tue, 15 Dec 2020 19:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id okaacGMb7j9R; Tue, 15 Dec 2020 19:10:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3826B86987;
	Tue, 15 Dec 2020 19:10:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6F041BF399
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 19:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A24B086987
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 19:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WGMTjfWfG1R4 for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 19:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4889F8694B
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 19:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608059416;
 bh=08j5OFmhFrBxQpYjYcINPCo8BIUzpe98ZwKfkBs/CYI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=iCfai7ARBGrUkLWj33cBTcA6lcuobxURhLv++fsmgyTXikXSBEZO/3T5Qc6f+H6c8
 iL9OOCjkS3i3HL/9SXHcLS52gkAT7vJcXh95oe0Oek5ZMlevSA9gKmDPh30PN3Ee7/
 7ljaydsQiBDdAoD36CoEEBm3wcGabmfYYO0yHd8nVpvDuZTRVBmO3i5pLyLrbtoaDE
 o8qr25vZwfckPvkdqC7zLk1KVyewHg0MCWnyODk1B0ye6EK9bYD9glOq2DZ3Imswo3
 lD/WcCgBuLnJUiFmDqPh2aYM7zO9uLtFfWEo1E7SmlYAkHDL8pme5xnuKTGJOMwz8n
 UNM9ffh0qGE9Q==
MIME-Version: 1.0
In-Reply-To: <a62e0871-d6bd-d233-fdea-014ba638e782@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <a62e0871-d6bd-d233-fdea-014ba638e782@xilinx.com>
Subject: Re: [PATCH v7 0/7] clk: clk-wizard: clock-wizard: Driver updates
From: Stephen Boyd <sboyd@kernel.org>
To: Michal Simek <michal.simek@xilinx.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, linux-clk@vger.kernel.org
Date: Tue, 15 Dec 2020 11:10:15 -0800
Message-ID: <160805941555.1580929.8450497692646172781@swboyd.mtv.corp.google.com>
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
 mturquette@baylibre.com, git@xilinx.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Michal Simek (2020-12-15 01:13:46)
> 
> Can you please take a look at this series?
> 

I did, see https://lore.kernel.org/r/160783777786.1580929.1950826106627397616@swboyd.mtv.corp.google.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
