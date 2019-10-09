Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC751D191D
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 21:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D250787BAE;
	Wed,  9 Oct 2019 19:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-jDYhm6tGi7; Wed,  9 Oct 2019 19:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB4F987A79;
	Wed,  9 Oct 2019 19:41:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C9A71BF3BB
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 19:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 198EC85AA2
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 19:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxHVttD-QlxK for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 19:41:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52B5385A67
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 19:41:33 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w12so4461693wro.5
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 12:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
 b=LwKsNBbUjphzvxLVVmv4VzwfwtPcZvTdS5KjCiLe4++bOSZD2bOs2Ec8NvYA4sJATt
 5bTyZZEynuXgqk9X3svjHdfNbkQ/YTzF8MnSOBMJmXqGXb2LznE3jsq0aC1rasDsIqTg
 YMQele48ovAMzUrz2Qe/Atjyp0/Wi6lSufvNt5UexqedsGf/CFaxrZfqBpuOTnCEWN3b
 02gKCRE4TaRRZX1OlzOGbFjBh5qxg2fJozhqqWt8DdtojE+XOFxVAgfYEixG+abptIfZ
 a64nfpB8/lCRaDFqL4NftVPnqJPqNOgIfhbDXth5yyWY6j4CpXKeNNHifS9cTkY5yZdO
 ARGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y7r5Z69fE1yE+XsafCfc/oZ4rs1PL76oFBNneE1EVE8=;
 b=HRf15X+2p030jx4EFu/aiUMoMw/oVmvQmxEbJKDJFSyYxl+ftHBxJgKE0Zcsdz+rA3
 G91nanl/3trIUrXS5rAGe2wtFhcuw+6xujdJBWFhs4KXK0NAp7FUWrvWd3MKOpSzOCDD
 qPwd71mReVqkzqiSxHd4lmT1LF/QogoIrzd2Ndx1cm7OIf1LKCoqLXGZxoRsP6iodZNN
 WjIT/lt2knajSKUaQj1Jy9UGO9JS85+w/ro+QI7RoQdMmLBnnzsfJ9KeJqnXeh5h7p9L
 P/iuqdAlEH/Lgk88wDufSurSdx1yfAPJ4eiLkPHOzfApxr/piL3BGumGw3n3dHB6g2Pc
 TSyw==
X-Gm-Message-State: APjAAAVTdbfXBVstIi7t3Pty2x0DoCHl5N5PFLX0lz/cfHXbGnuv3u72
 Wh/dCAHoAXJ0HqIhl6o2sw==
X-Google-Smtp-Source: APXvYqz53OW3mcjZgAtNIrgZhpJ2FXyoW9+7LUP1QsPRWht3yuwrafL+fAqC3uj0C56yDq+Q2EEAZQ==
X-Received: by 2002:adf:f40d:: with SMTP id g13mr4103031wro.368.1570650091469; 
 Wed, 09 Oct 2019 12:41:31 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id t18sm3685646wmi.44.2019.10.09.12.41.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 12:41:31 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: qlge: correct misspelled word
Date: Wed,  9 Oct 2019 20:41:15 +0100
Message-Id: <20191009194115.5513-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Correct misspelled word " check
 issued by checkpatch.pl tool:
"CHECK: serveral may be misspelled - perhaps several?".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 086f067fd899..097fab7b4287 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -354,7 +354,7 @@ static int ql_get_xgmac_regs(struct ql_adapter *qdev, u32 *buf,
 
 	for (i = PAUSE_SRC_LO; i < XGMAC_REGISTER_END; i += 4, buf++) {
 		/* We're reading 400 xgmac registers, but we filter out
-		 * serveral locations that are non-responsive to reads.
+		 * several locations that are non-responsive to reads.
 		 */
 		if ((i == 0x00000114) ||
 			(i == 0x00000118) ||
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
