Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484B42D19CF
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:40:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67F7687875;
	Mon,  7 Dec 2020 19:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7RPuxFL+H3Wp; Mon,  7 Dec 2020 19:40:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AD8087853;
	Mon,  7 Dec 2020 19:40:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40F1E1BF83B
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DF90877B4
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dCJcTcIRpFhK for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:39:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 349558784A
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:39:54 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [IPv6:2001:638:a000:4130:131:188:30:90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 32456240F01;
 Mon,  7 Dec 2020 20:30:32 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 2F45E3280304; Mon,  7 Dec 2020 20:30:32 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 09/12] media: atomisp: Fix PARENTHESIS_ALIGNMENT
Date: Mon,  7 Dec 2020 20:26:36 +0100
Message-Id: <20201207192638.15219-10-Philipp.Gerlesberger@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
References: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, ij72uhux@stud.informatik.uni-erlangen.de,
 Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You can sum up the two lines, because the maximum line length of
100 columns is not exceeded.

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c b/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
index 753a99703f1e..38f86764ccfc 100644
--- a/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
+++ b/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
@@ -37,8 +37,7 @@ static struct spctrl_context_info spctrl_cofig_info[N_SP_ID];
 static bool spctrl_loaded[N_SP_ID] = {0};
 
 /* Load firmware */
-int ia_css_spctrl_load_fw(sp_ID_t sp_id,
-				      ia_css_spctrl_cfg *spctrl_cfg)
+int ia_css_spctrl_load_fw(sp_ID_t sp_id, ia_css_spctrl_cfg *spctrl_cfg)
 {
 	ia_css_ptr code_addr = mmgr_NULL;
 	struct ia_css_sp_init_dmem_cfg *init_dmem_cfg;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
