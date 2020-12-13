Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF6D2D8B9A
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 06:36:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C577887163;
	Sun, 13 Dec 2020 05:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RVrkUBhfQ3rq; Sun, 13 Dec 2020 05:36:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40A5787114;
	Sun, 13 Dec 2020 05:36:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0EF961BF4DD
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 05:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0906486E1B
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 05:36:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kX5KQ1P3XweJ for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 05:36:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85B4B86E59
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 05:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607837779;
 bh=t/n1tspDQdnKbiymnbRa69RsP87wuaQJFxpNY2WLfDY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=YLXW46D5IratvVVN0wvVSIWmUTmDUT4AsoTzm84dv6/1PbG8AFpQjawrzc89Fh0l9
 eQMfSj7QTOHZKPKFq/Ypd8iVLB3Dj4f/H2V0ZUxBTF5IZ8r1LEhPZG8mRQokS11PYQ
 +erVhTxe5Z10Lae541yGoPlPMnQ8fjd77hwUz9lefCd97iUMupIExg+CoXJFWP5h+I
 5bPzoxJclEoUPaP1rPOp3AT1TKxXfNwiDXRvalOmX+olRCKN9FYxxcVD/vjiZpVBS6
 c2iDW9eCvnF1/fpQ8tYs4Sy6/27nqmwjy+36roP2a5JsVBNJvHFgMUcS43AFow+fPn
 TFYV1cWZ6G/Yw==
MIME-Version: 1.0
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v7 0/7] clk: clk-wizard: clock-wizard: Driver updates
From: Stephen Boyd <sboyd@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-clk@vger.kernel.org
Date: Sat, 12 Dec 2020 21:36:17 -0800
Message-ID: <160783777786.1580929.1950826106627397616@swboyd.mtv.corp.google.com>
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
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Shubhrajyoti Datta (2020-11-04 07:06:40)
> 
> Shubhrajyoti Datta (7):
>   dt-bindings: add documentation of xilinx clocking wizard

Any chance to respond to Robs comments?

>   clk: clock-wizard: Add the clockwizard to clk directory

Is it called 'wizard' anywhere in the documentation? I wonder if there
is a better name that could be found for this.

>   clk: clock-wizard: Fix kernel-doc warning
>   clk: clock-wizard: Add support for dynamic reconfiguration
>   clk: clock-wizard: Add support for fractional support
>   clk: clock-wizard: Remove the hardcoding of the clock outputs
>   clk: clock-wizard: Update the fixed factor divisors
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
