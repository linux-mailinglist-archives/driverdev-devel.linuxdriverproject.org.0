Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7326612E34D
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 08:30:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2394387818;
	Thu,  2 Jan 2020 07:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-JYaYVOJybK; Thu,  2 Jan 2020 07:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA6EF877E9;
	Thu,  2 Jan 2020 07:29:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 663371BF5DA
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 07:29:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 627B78073A
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 07:29:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PiDZ4tLq_1Xh for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 07:29:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic307-20.consmr.mail.sg3.yahoo.com
 (sonic307-20.consmr.mail.sg3.yahoo.com [106.10.241.37])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 40FC8835AF
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 07:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1577950187; bh=2RrTiDZEPcDvKOLMvxu7IPun6og3vZY9fQ/HUM3FSRA=;
 h=From:To:Cc:Subject:Date:References:From:Subject;
 b=NENyKAZt4uCu63WqtmRVusivBAAWRCmREbGbIMhzAIUWQgo2FKDF5j36wzgD5Bhk44DJpXK173bc0uudpAQiQ3uJXkTHuDsZ+W/g1wFo3jlBd8PLK9scv4EKwU+FHrlUdiiZfMMxBAfNbPICMTxvCm1PuOZQ/lLCs14OHwf//0HTYH17lCqVKSJ5AI5KbPiCbFLf9bnybd9hy6y7+27Yq4epPhb7xLi/q8dhfXRmQ+SwvknO+2a/Wlug1WClfH8aVCIgH7DaslTucJfi+8ubMEul5EDy4O1H1L7a4go879fIAWTSgeA5LKwWGNXglse0ZG0brVK9UwCXDmCQIOQWqA==
X-YMail-OSG: hVfU9CkVM1kBhSFPqe9_pxxOjkb42YY1Wa23yd9kjeeMINDA9Sk2ly_aqI2yem5
 qjQIqGBIdP0FnkDSdqnOArtxkFniqnDnzAffyX7utnFLGTz6GMC.WBty3x_tkRZAhcgQGOyrs9f5
 l66oouSTb7FddKfMZb5ur61HOKS3Dd2x44bkVFMR8sp0aoPFBxrNM549gwGioVEhG_gkUvz1W0Am
 3tmobdBX7vqNAKO3aWLrwkaUCh9gA3.XVvzWhQ0M5_N0F5aa8sizYQANX3TmbGgaK75lpPBG7mNj
 L88xoAwmUPFP_d.mvOsMO8eZalRqrJvkw7BKySVzWNQbj7XMOr2bQMS5kcrGv5LOSiatUySHZ8_T
 EXmUSVS9FxB8IETHZMlP7DCwFneIC.jXdk978Kj1hcJszvk6OE_lS4mUHof.6iZOh8.itdMj.ZF2
 J7fUA_kapTp7DwIHuelVuBiLnWq5VC3_PH5g1ll.T76dcQny5buIAqeygB0TUzK9QdJTYMZH9UNg
 ZjO2d_YNKgfWTvuiiCVSTMaCW0n1aiIsQVbPZwQc6BnFRRCiR4hH9sPazyS8RvVG9zC1ucGovuTf
 dCjEFkMghnzXWYOqT.MvfAl653B4fHF4tXy8akmI7HZ7Gm8Rdf65cdgrURrgpIIPpENJSRXnFdH2
 mDlBoNCt..WPXHcNWpRT.stPA8WH1hAsnvB3lApmu.zKb.tOWslCXSo.xwrAjmM.LwpbUuFHOveP
 7dpQ9pqUalZDLd4rKJFUrvD84gQJarobcI24Y.evG3vJk.O8W8nA6frOSpb_0RlnP0D299ynT05l
 TLAV7Y9rlkHoFfTDD_qXvvSkFsZrLk_Bo4I_62A2vahm9S0jHQJy6YVjNJu5rZ1nW7Oa55QSxyg6
 3eJqI7vH8jmE6jviwegVBT.QlTUFuK15o7Sd6n1WYRLHhjadI1j.WjAlifQMffmGHowCUMMsbcBx
 bfYxasSILSeXDcr.E1h79MfBLND4lWodhodJ4ouyZJ0Ag.PdSHIJ4Ji2qxkS6JJLqUCb0l1PzqWm
 _e3ZUCJZqJAR.1xomcRqC3yWzYY4_lhtZN3vtWA2ovwcGYlwwFpcpATGV_3dp6xPxvZPiXeNYE7M
 laFGBcJl_Q8d37.fZZnoioJnATlYXacesFRdpm03yqXeyAyHS7PEgOZjZ7IIxEyAs3clxM4pHADZ
 6Me3jifBfDy1Hhi.8szR6k0MgEeQGBb1m8bJfpmW3f75AlwXrV6IEz2.H.2GwYYLk03EKAj1zZGz
 t7ffMOTjDuq9Jl7ldE_muQLS.MxcuCoMeha41o2ZBGyF2Z5YJHzkJwZ1hiJF33tS.olpW_acJX.i
 bgR28JgP_3eQrPz2d2psmLwESeG2bChNuwWLw5DcKK0PIL1djz7U9Hs_MTmvqf1lvgZ9NaUcraTy
 D2LKR4xU-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.sg3.yahoo.com with HTTP; Thu, 2 Jan 2020 07:29:47 +0000
Received: by smtp410.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID d0e26f1bee45f475fda6b1363860c559; 
 Thu, 02 Jan 2020 07:29:42 +0000 (UTC)
From: Amrita Patole <longlivelinux@yahoo.com>
To: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 gregkh@linuxfoundation.org, netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Fixing coding style. Signed-off-by: amritapatole@gmail.com
Date: Thu,  2 Jan 2020 12:59:29 +0530
Message-Id: <20200102072929.21636-1-longlivelinux@yahoo.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
References: <20200102072929.21636-1-longlivelinux.ref@yahoo.com>
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
Cc: Amrita Patole <amritapatole@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Amrita Patole <amritapatole@gmail.com>

---
 drivers/staging/qlge/qlge_mpi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 9e422bbbb6ab..f63db2c79fac 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -136,7 +136,8 @@ static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
 		    ql_read_mpi_reg(qdev, qdev->mailbox_out + i,
 				     &mbcp->mbox_out[i]);
 		if (status) {
-			netif_err(qdev, drv, qdev->ndev, "Failed mailbox read.\n");
+			netif_err(qdev, drv, qdev->ndev,
+                                  "Failed mailbox read. \n");
 			break;
 		}
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
