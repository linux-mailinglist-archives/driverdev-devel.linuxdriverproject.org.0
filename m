Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7641C2CBB
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 15:29:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A8EB87126;
	Sun,  3 May 2020 13:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RtoLVs8YAoP2; Sun,  3 May 2020 13:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E58D870F9;
	Sun,  3 May 2020 13:29:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 17FE11BF414
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F52687E79
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 13:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WY0f0yCEkc7t for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 13:29:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kocurkovo.cz (mail.kocurkovo.cz [185.8.236.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9278487E71
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 13:29:25 +0000 (UTC)
Received: by mail.kocurkovo.cz (Postfix, from userid 1000)
 id 2F14618CB; Sun,  3 May 2020 15:29:21 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.kocurkovo.cz 2F14618CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kocurkovo.cz;
 s=mail; t=1588512561;
 bh=sFGicPa3iLNjtjg478e1D/ADKIbqHmDGGrFqDiMuM28=;
 h=From:To:Cc:Subject:Date:From;
 b=J5YZ98QNwPOE7zMGAJcdy0+zJ+4wM6lDHfap69Pv1uE9FX9ZYPKebsXY9AQykWEPx
 +TcX4PicRyyxpAw+3ADw/MXgeXtuD1qgzvWRHIvR22EZ+AzNM6sp3KTcBnPjzmgAG5
 E8OSxswCPgpKi9w4I3csq09kV6Iz9rS9mUwc9c9s=
From: Matej Dujava <mdujava@kocurkovo.cz>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] Cleaning s_uGetDataDuration function
Date: Sun,  3 May 2020 15:29:07 +0200
Message-Id: <1588512552-12297-1-git-send-email-mdujava@kocurkovo.cz>
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
Cc: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>,
 Stefano Brivio <sbrivio@redhat.com>, Briana Oursler <briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch set will eliminate few checkpatch LONG_LINE errors.
Simplify code paths by:
  - returning at the end of case body
  - removing unnecessary else branches

Matej Dujava (5):
  staging: vt6655: merge two switch cases in s_uGetDataDuration
  staging: vt6655: do calculation of uAckTime first
  staging: vt6655: remove else after return and invert condition
  staging: vt6655: return at the ond of case body
  staging: vt6655: extract index manupulation out of function call

 drivers/staging/vt6655/rxtx.c | 140 ++++++++++++----------------------
 1 file changed, 48 insertions(+), 92 deletions(-)

--
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
