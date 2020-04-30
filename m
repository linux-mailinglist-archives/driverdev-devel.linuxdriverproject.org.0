Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 015511C07B3
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 22:19:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B1BF881B3;
	Thu, 30 Apr 2020 20:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l9eYiVrcRfNV; Thu, 30 Apr 2020 20:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A771C87EA6;
	Thu, 30 Apr 2020 20:19:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0ABE81BF3A0
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 20:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0494087FDA
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 20:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4qVyyUrTTsa for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 20:19:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF38187EB0
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 20:19:31 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 2D1F6954; Thu, 30 Apr 2020 22:10:06 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 2D1F6954
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588277406;
 bh=GRiqx3S89pnK7y7w7UBxwGrz8iZUSDLvCma5su5DnY8=;
 h=From:To:Cc:Subject:Date:From;
 b=OzZrNtkdl+Tr4LsizEOjPoSKbwnO+sLyLOuLT+FGPu9wluqS6K+eYdfijsaeurXth
 1Uqw+iNr2KC0JhrWN8HfiRMZC2rbOp4RxuX8wtW4xRS+1Lxay/50MFJe9pJP62Sl43
 4h1CKo6sJi0ZVis0vVwfSAlGHYY3ayV5jPZlX5iU=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Refactor reused code for updating fb_info
Date: Thu, 30 Apr 2020 22:09:23 +0200
Message-Id: <1588277366-19354-1-git-send-email-mdujava@kocurkovo.cz>
X-Mailer: git-send-email 1.8.3.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set will unify reused switch statement updating fb_info by
creating inline functions.

Tested only by compilation.

Matej Dujava (3):
  staging: sm750fb: add missing case while setting FB_VISUAL
  staging: sm750fb: add common function to set color offsets and visual
    mode
  staging: sm750fb: print error message with actual value

 drivers/staging/sm750fb/sm750.c | 150 +++++++++++++++-----------------
 1 file changed, 68 insertions(+), 82 deletions(-)

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
