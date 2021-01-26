Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 265BF304D58
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 00:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 818FB8522B;
	Tue, 26 Jan 2021 23:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 29eggwgms-2C; Tue, 26 Jan 2021 23:30:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3ABAF852F8;
	Tue, 26 Jan 2021 23:30:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A38F1BF59C
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 23:30:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6166B86697
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 23:30:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5cJ6og6P+qYu for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 23:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C422C816D2
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 23:30:12 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 92A8C64D85;
 Tue, 26 Jan 2021 23:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611703811;
 bh=rR19SpKbng4O/m5hurHHL1TQQLw77agzg4H49OFmfSs=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=P4DldOK7SbD/uAVEmd6xBxG2liAbgVw1kL15W//tznEOoyFe5hGiFSrTgrLcuj30U
 YvRw353e/Dh8amJBVgQwK8bXkwSj0dSFIRlnYx0EEmUXhofLCXwI0pSQ4DUu7wVdkN
 iSjvGdqAI9P5XR12IXYDgvZ9tpKVIdZNl/M04jMXAGqGSyo7SLEcyi71gP05sSf4Ss
 2utto15CBb8KCiWYMTSfzxoKLZFqru3v5ArxeWuklH5aMeFpWcrXhnL9bZuAOfPZ6z
 Jv/ku6scImtiORDPZvDOGHGXlEMKtJgtlxuDYOxLYXfmmdsJsKd+12NNVHuhKz27A2
 ML3/FdSClbtcA==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 8601665209;
 Tue, 26 Jan 2021 23:30:11 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH] staging: rtl8723bs: fix wireless regulatory API misuse
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <161170381154.29376.422652736680366832.git-patchwork-notify@kernel.org>
Date: Tue, 26 Jan 2021 23:30:11 +0000
References: <20210126115409.d5fd6f8fe042.Ib5823a6feb2e2aa01ca1a565d2505367f38ad246@changeid>
In-Reply-To: <20210126115409.d5fd6f8fe042.Ib5823a6feb2e2aa01ca1a565d2505367f38ad246@changeid>
To: Johannes Berg <johannes@sipsolutions.net>
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
Cc: devel@driverdev.osuosl.org, johannes.berg@intel.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 ilan.peer@intel.com, hdegoede@redhat.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello:

This patch was applied to netdev/net.git (refs/heads/master):

On Tue, 26 Jan 2021 11:54:09 +0100 you wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> This code ends up calling wiphy_apply_custom_regulatory(), for which
> we document that it should be called before wiphy_register(). This
> driver doesn't do that, but calls it from ndo_open() with the RTNL
> held, which caused deadlocks.
> 
> [...]

Here is the summary with links:
  - staging: rtl8723bs: fix wireless regulatory API misuse
    https://git.kernel.org/netdev/net/c/81f153faacd0

You are awesome, thank you!
--
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
