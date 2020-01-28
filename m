Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB11414B75C
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jan 2020 15:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F18D18565B;
	Tue, 28 Jan 2020 14:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ruPMYgB3_360; Tue, 28 Jan 2020 14:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96DF8852DB;
	Tue, 28 Jan 2020 14:14:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 501C11BF39F
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 14:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C49820010
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 14:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZcCuBbf8xBeo for <devel@linuxdriverproject.org>;
 Tue, 28 Jan 2020 14:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic301-31.consmr.mail.ne1.yahoo.com
 (sonic301-31.consmr.mail.ne1.yahoo.com [66.163.184.200])
 by silver.osuosl.org (Postfix) with ESMTPS id 8F3421FFFE
 for <devel@driverdev.osuosl.org>; Tue, 28 Jan 2020 14:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1580220874; bh=gLms9mu7PNbJBhtHoGNHe6uMogrt+us1xhgJENgGuvQ=;
 h=From:To:Cc:Subject:Date:References:From:Subject;
 b=cq8Z6IwsHuUZ8bfK4dsO/jadVfZnqAmas+iL+CrfLWL27QO7eJSgYUn8t9bb/AYM03OyaWYBZWAx2JsSjp367EzIVkzRfIL2XHM3mefxXXaqoQBte/1LV99Zz9wrGg1BzJDLGsYDbu4COtM8zvlglwfsPXXiCF8RGTscQFe7867VXlathuw/s/WFKc934b/gS4N/Y98SIjvz7PJ6JaLlNTIsHO3+LxPBAU6VhjR0nYUykmCeLbxuwm0/vvFcaQwc0WNXLmBD6Pfqj26Ug5ZL+/j5spHU2jJun/I1Rh66rv6gx6gZO4Hnh2UKIDpHTYTpZI+XTxTj6sAkuL8JHqSkRg==
X-YMail-OSG: kfgSa6QVM1nbO.TRPVao4dh3wjE6GX2MJnHWJuxJUWMbgQ31uCoLH1YOa.3PlV3
 QouB_GH1xPNL4_3QilqosQDAKeVIvfjqU_vhYMxeKBQLskP_rnMv2.a9xth3RyVc.ELQbjM.2Hwj
 sz_k.oo02eDuhSurvYF_1U8JzOgBOscrV8fPLa6VJE5KsdbFvLK2e3PQ_b2aeFaqUOTLpjj89tpT
 xtMUJ6VSZDxvyklyx7CAKCcpomz6ZYdsc4uFAGFhoYNkP0LY_G1_XAVYShevbxS40Ju9AnIM6TCi
 onRObAvWcQ8cRChKhy01_cVexDu5uaHVvz7b4kRp4JzKhc49ao3VOy8uEhHIYWk0tPkwM8XX_IWN
 UeK3xW2IaxDwgFRh8AT24jsZORGhrNH.hQocRFeHrJI1fquDnFyzw2IGAMc.6QHdQy_YWIhhv7UF
 lmjPUXVSmvH0oVWhzRG8j_75eK0zQySsBzbezG4DHTj7ZzZ1b0nRf0S4ulorJ96ltW5KiFETgn5i
 _d2ws1G6elfMAU3MabBLA_6VdGC5lyZ1fQgvA0cP8BPE8wsVsW3_sA2KntbFjB.nZ4SFhRfB7K3u
 FWd.KDBUi..baFJL9qwYQqH6n3huMY0O2HynmiWy_KAIRafPETMBR_vPjytYCp8nns7DwLUvSGHT
 v4J3L4VRvO5J7VgBZ8r71tO16f0_vKZUYxwQq4GkSDYzwZmn33iQBw9iOJU1XN1rKznTuCbmW89U
 SLlOspSHH27hO3Et5iC1kniy7sBJRMU1XOF68_zzeqxB_6uinAdIdSN7dqyvLeGanIDkhalau3r.
 mFDsQBNJITLVCWDOCFS0.XPQfM2_xbY3XIxrP3IX4yAJB5HnQiQkcg_bWfi6GIh6RJrAwOyCDbUq
 j.oq2eAg5gymnuAJEiGappTSMXHlnICc9Se8iOWqSyLwR8dseHHLw1cym8NLu7hQ7Pq4vzdpy1Qg
 5yEqUU9fzu9Y22fFGqHZLIa_gwm.CB58WxKAjtChcGGlFxyUa1rEEJWv7BgyhrYc1lhh6VmmpTQX
 hqmP4B8dAVyUScaGMjTg4SQAZFJS0YCX_WuhkecVjhM3MlIukb5S5rPtYQNQdOJ5ATLoDQQUsymW
 gW1DwJxZCkBOG7pj5wB5iEYpG_UsvFktxfzQ5XjNGtA_E0m5KS06Md0VEGjoUEZcBXVEGU6651XG
 9tWZRe38lWte_1tPB9MBcjZPq_WSWFn_ItZIsAxDlU5PVXChjYwAArLra8LrCrV6Q_UbPumtMf4m
 ._nm6JrvSYosxszaTRjbIXQSdeSSxLwsd7OlGkpGsCYb6wyC10Xx0ME8woYrvpXFt.FEGiLKTMM4
 CpwXDCXN6JM6M.koCoUMovTAFPcq9S0lqBxK74N4vShKHanTR2tGCHuj7hSsZORtXF8CDlSf9FCV
 SV8CH5lBAYg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic301.consmr.mail.ne1.yahoo.com with HTTP; Tue, 28 Jan 2020 14:14:34 +0000
Received: by smtp430.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 6c8d88ca039b4e620fd3cb20cb3b9de4; 
 Tue, 28 Jan 2020 14:14:31 +0000 (UTC)
From: Simon Fong <simon.fongnt@yahoo.com>
To: forest@alittletooquiet.net
Subject: [PATCH] Staging: vt6655: device_main: cleanup long line
Date: Tue, 28 Jan 2020 22:14:26 +0800
Message-Id: <20200128141426.12230-1-simon.fongnt@yahoo.com>
X-Mailer: git-send-email 2.17.1
References: <20200128141426.12230-1-simon.fongnt.ref@yahoo.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Simon Fong <simon.fongnt@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

cleanup a long line coding style warning.

Signed-off-by: Simon Fong <simon.fongnt@yahoo.com>
---
 drivers/staging/vt6655/device_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index f69fc687d4c3..0442f71494b2 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -133,7 +133,8 @@ static int device_init_td1_ring(struct vnt_private *priv);
 static int  device_rx_srv(struct vnt_private *priv, unsigned int idx);
 static int  device_tx_srv(struct vnt_private *priv, unsigned int idx);
 static bool device_alloc_rx_buf(struct vnt_private *, struct vnt_rx_desc *);
-static void device_free_rx_buf(struct vnt_private *priv, struct vnt_rx_desc *rd);
+static void device_free_rx_buf(struct vnt_private *priv,
+			       struct vnt_rx_desc *rd);
 static void device_init_registers(struct vnt_private *priv);
 static void device_free_tx_buf(struct vnt_private *, struct vnt_tx_desc *);
 static void device_free_td0_ring(struct vnt_private *priv);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
