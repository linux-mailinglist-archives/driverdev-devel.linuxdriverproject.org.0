Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9001EDA0C
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 02:40:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67D7B8813F;
	Thu,  4 Jun 2020 00:40:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GomUh171uTHD; Thu,  4 Jun 2020 00:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D68E88093;
	Thu,  4 Jun 2020 00:40:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8471BF9B6
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 00:40:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 288368809D
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 00:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iq9eqGSQcrV4 for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 00:40:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A76EC88093
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 00:40:07 +0000 (UTC)
Subject: Re: [git pull] uaccess comedi compat
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591231207;
 bh=4A/Y77ldlhorBhFLx/InIGAQjVNif68g4+o79CFctVI=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=YatkLY9YmLEBrDi+i0aGM0mHY2dbRc+h77Gt8qAcIWFiVYzflMeTroBBtfNKU1+yi
 oJW8jDEFBrVyfmOAFUrunOQrgLDjklEMtm7IaZgoc5uf9YZi9BiugDESuSKu8XYsZX
 D/aIKXQOFf6cXzHLtfcLHPdhtaC0i87r6BOhfGis=
From: pr-tracker-bot@kernel.org
In-Reply-To: <20200603193127.GZ23230@ZenIV.linux.org.uk>
References: <20200603193127.GZ23230@ZenIV.linux.org.uk>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <20200603193127.GZ23230@ZenIV.linux.org.uk>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git uaccess.comedi
X-PR-Tracked-Commit-Id: bac42fb21259783cb748ae54227a5e755340a396
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 2e63f6ce7ed2c4ff83ba30ad9ccad422289a6c63
Message-Id: <159123120749.4554.5394403198787278653.pr-tracker-bot@kernel.org>
Date: Thu, 04 Jun 2020 00:40:07 +0000
To: Al Viro <viro@zeniv.linux.org.uk>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ian Abbott <abbotti@mev.co.uk>, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The pull request you sent on Wed, 3 Jun 2020 20:31:27 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git uaccess.comedi

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/2e63f6ce7ed2c4ff83ba30ad9ccad422289a6c63

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
