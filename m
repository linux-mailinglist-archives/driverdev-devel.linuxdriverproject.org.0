Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7228231B0AE
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 15:17:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49CA385E1A;
	Sun, 14 Feb 2021 14:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id li_Md3Iuevnj; Sun, 14 Feb 2021 14:17:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47DF585DF2;
	Sun, 14 Feb 2021 14:17:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D5751BF417
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 14:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0884387006
 for <devel@linuxdriverproject.org>; Sun, 14 Feb 2021 14:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 78fueJnwenca for <devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 14:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic312-50.consmr.mail.ne1.yahoo.com
 (sonic312-50.consmr.mail.ne1.yahoo.com [66.163.191.231])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 83A6F87003
 for <devel@driverdev.osuosl.org>; Sun, 14 Feb 2021 14:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613312225; bh=NnlRH6FMRGMN6i7a7LVqzJ9aU7fAN4yoseAtKlK5ZMs=;
 h=From:Subject:To:Cc:Date:References:From:Subject:Reply-To;
 b=E2KTiwcptEEAVSRvm89GR2WNeDFQliWPijmkO1K4/hIZ77temsWF5PyS3eTovPBanTW07DCNZ9ZOQQ71yhdj1DAOQahbz6rgCh06T9Tb6OdD4KfKty+K+07yjVFf6bL8i2KYaiI9N/oc1jt2PdiBSnoo5kP3dIoMqn4hW0rHVsLyA04jzC3zRalrRWobS8PQeSQlP7I3ijv7yQ+bi4Ga0tPT8sRC6ZERDr9PG8TeMx0FbxQyQ5rj0OCXWGYD6xYANo0veoEde3oI3LDtxvbH9LEaDxfnRO3xUPI3Mj3KId6bqoj2VpWhvyRuBKnZE/RbrGnF0WgHJEabBDGT1TPCeQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613312225; bh=8zr3AuG9BYYCVL1mM4hFz89sAmGvjWtKYo3PPlXKvay=;
 h=X-Sonic-MF:From:Subject:To:Date:From:Subject;
 b=nuxe65ABD7gKAbVfBmXwMuXnHqJSd7SbBpKQJBqMm2p4CNm2fAKm0Jeev+Y+QeEMorsySifnZ0q1mbruDg7809aG3NVWO7eS7JXPLIWn8P+K1VSTCCpPTdkNpCUPhv+e0zoBXcWs1ckyZxaV0UZpf74sjfn31XI3nwYpnGt5iVAY3BaOuFByKzJPyffCXi3UMgXGP7+Q8aVVMQJ89lR8Ie7282Yc9eahPo9XlHTgUbMgwi0W/umRCQW41HTNsmD29uOxD0t7tN8X2oEOy7rljrLNDeUqr6YaKTE/M3Qc4oSTlR9m5D+4rRlvHi/VWB9KYGIe7QSbtMMHWT9y7ptbtw==
X-YMail-OSG: xBUB_S8VM1kT6_sQdWud9Lws_8B4k5vU0kihYcIm_8nf2yfy1xUpzQSS81xEoSA
 6ykIajG9W0MmkuU_P5fjSKcM4s2B1Axi_CJgn3gJMIiN4uCC1yWkVfi4FzSK8tqOnaPbtCELQVKh
 3KYPhKv268HCthOyqW0Lm8rSCWKWN7gTRwakxmore64QOaAsyMqlzVKumAkuuc8kN911ou0KhNAk
 swWfL.AOXtB.wkwx.6AKirZwiS.v_vlJaiCn3aq0...NnMYDDywEExfLXo7azQF95N1MRoE8V_wV
 O2YeZKcTzKApdReTBGGCpm2xIdfUg_Wu1TdiFYu6u4VGnCA_yf6.cZuckGUqwRAf_47wUQzW04oX
 _LmOuxiyutTfFLyc.VjdwPY.gSI0iz_3y4i1t9CPrXk8dJDDo0EOfVoL1FMCSkiNmR1eh.9ZfHgw
 3uBvEXIyQzS_m0C5xLF5q3CdvW_7z2TTPtr6.K5mPMfXHtvPfcwH.Y82EOUegUUn91WqB9Sb.kjP
 TZyazpurmwxByZ6GUU279MmCinlcYIWAgEA4KIN.bqFdB_4ZrOjLTijROiydgLkErd8VZTMePgVh
 7qnXZsPrVgxYu75XB5Lk2Mul6Uv5gOmgWd1TejP2K6NcMTarVZLTIG37_fSDnzQCRy0hp0fjOmdj
 Sm_Ht_yhXNSLSnycO1avJQ2EsLaIk4sW7GKP1NwQWExvb2BtK3BGGCSZa7ZDIFx3cD7tsP1p9.D8
 A.gVWUL89Mm9tOF72DP_J4V17YYe.W5Aq47mvQ16xNP_WbrvOKp9ewLelons5lM8Hdof6JX_oual
 Cy4tMJIIAJgDVGlsyYDZcsw4KwVN1NQBFMIzRPYP2dhRNl17TEehb6YO7mZMCBJP5XV_0GbS7baB
 OOvHrNLahT7919AlJqXF_kuNbkYFhuVgt5RF5hmdJN2PX_UN_PGms6HrWLn1Vjwf8cidPYuu3Y1G
 cjdIg7CHzJPt5gVI1J_UZjnQS2km_KLYJaEJB.HqRDOtKZ.1qTCsk4b.V5fAS6itawe5Dz9WPLos
 x91BjRadRvxrIJw.jWcw59mUD4K8QWT776Vz6pBSoOaqEJRYr1XuKLLiZOn6f7qSAyN6HgsCjO3q
 lctkimnrMlO1jNxMhfCCnWwCJcJ2h0qZyayOF9VeSc9SOS9uU_yM5DRDD378xKPIQpOjYAtT1OG_
 eOnUGvkayXOr3JwofG6HWVloqRRhF9qI_8fNmPaIM9FdgBMlIhouAzMFrQBtrQn6SC6.VP8RgKr4
 CR8SrpeHUaMTndWq6oWABwCc.yeRWkPmhcebPBeWT7cKgsFEElp_U7wEuKUljd4dsx6xmXQvwnw8
 3wHEBlDMKLBNRfA1X.3iNDtybY_2Q8Wi2JFz9395V1WqdziPxVwZmU9ZLe6Yi.Of2z9V3t.h_Nl9
 WmSqid5kl2EkaWDc9IiGWeR6X8XiW8m6wNvaGC.Ac9RHafmkvuo3eTghyCOn7aOFiVe2..8sva7Q
 s5OnxhX4D4VnSlFnvgtDTo1XlNoqxVZfzrQYVuyG.yVD3e2pk_7TIsm9QPVouyiCrT1gWnIpaAdW
 rPaWNodaUc2WRZMmVNSf.LVeJVMaiymVok6IpEPKQa9AMBffQvUlPm961udspdxNWs8v1kf5LJqC
 CBti4pZqitCJNv4zkUFBh2bt1WgQkWibTSwl.suljVUUs67zfIRtYBMv2sXNjPPiAmzZClqppiSb
 aAqA86SOk1DMxnQ3IzA1Y97Qx4_C3DqXPoyfVV0F9mCBhnbmhX2_A6h8Y8k_v1w00AiAMEIssWMy
 JxXYhVWsLw40JMS8_TXPApl_uJ4PS_F38Hliof18j15y1GJXGxFVqCPpiKMsjNVtc0_Pu277gpHj
 cZbqq_h7EMAcOnO4WU2k3_cS.4i9I3EBJzdFVKcMbU38EaJWA_XUNiNySDiUi1hnpJ8lib9fsX6h
 Y5KsjDMzeOytRxM17CIIFjfYUqVXHwzjk8l3XvpILPOzRLW8Xx4IKMuXh3KSvtAgUnTF7BKMwSsP
 LjtLSx.Pgw52nk4YoNvxEACYLtaIjox1hxq4dpMm8.OAasPbBas2uHOqzY.Vr43gvPkUQcdJzJfD
 _D1kIxJNFOVDHRFlACmLkoB9pgSHfOMEBOVyBFGC7a9.NA_PEHHJMmdmX.FdMPxW1zRcdKeU2PIt
 Ezgas8nJwalGXfucCM9jPa5uDzSqqQVjVql2kMcdmVn1YUKEArx8dk6EhzjuOvCWcgfog6r9TdYv
 qF4PqVAAfy4tdoK52t57w5b0Cncy67B1UhxlGT8.iUy3n2tAfAp0w8j0Qxn.yCADrY7KWkvakhBY
 yCU0ocOq_is8f1ReRM.OgbhRLMOddZtuLhYHYBB_vcj3l3fUKkXo3NQ8VJWZqeibZy8Z40yEUcdQ
 pWP3W.5IrWL_.5i0u4PEtQO.eFiDufH9lDcIkn84kqmkx4EQEEvNrcPsA1lsZ6bfOe6cqVJO9LoO
 7mDhhFnm8sCbsqcA8ZQEpn3KRN8KlE1Kov4e2YojF3b63r3JVmZUVObvr.26fiSXF3LKQ1rp3_ye
 xkK6PJycHFljl8c.0MYukbb9ZL72_0SUm3SbWkENNQ24jAEEtmt3kEkD8e2VtUdWP4U5L_DybUrc
 y_XfW78nWKafsVyDopTHwm.RvNpL_p2jp7p8Y3Ma8EJqC7ww0xb7sdzfcP3n4gdvg4VQsj9tdl3X
 Tn3bMXkvK.p_PPG5sIrv.QqLuPKpQTFpJMAba4mSl7zFTMoEg3YHBAQE-
X-Sonic-MF: <ashishvara89@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic312.consmr.mail.ne1.yahoo.com with HTTP; Sun, 14 Feb 2021 14:17:05 +0000
Received: by smtp419.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 7f0a2d9fee2e3fe663ab95e3c1eebfb0; 
 Sun, 14 Feb 2021 14:14:56 +0000 (UTC)
From: Ashish Vara <ashishvara89@yahoo.com>
Subject: [PATCH] staging: removed unnecessary debug message to fix coding
 style warning
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 rcy@google.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <9a866392-332a-8c0b-eb9b-08931adf316c@yahoo.com>
Date: Sun, 14 Feb 2021 19:44:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <9a866392-332a-8c0b-eb9b-08931adf316c.ref@yahoo.com>
X-Mailer: WebService/1.1.17712
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
 Apache-HttpAsyncClient/4.1.4 (Java/11.0.9.1)
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
Cc: ashishvara89@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ashish Vara <ashishvara89@yahoo.com>

removed unnecessary out of memory message to fix coding style warning.

Signed-off-by: Ashish Vara <ashishvara89@yahoo.com>
---
 drivers/staging/gasket/gasket_page_table.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index 6f6273c83822..2dbf3d9b8f34 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -262,8 +262,6 @@ int gasket_page_table_init(struct gasket_page_table **ppg_tbl,
 	if (bytes != 0) {
 		pg_tbl->entries = vzalloc(bytes);
 		if (!pg_tbl->entries) {
-			dev_dbg(device,
-				"No memory for address translation metadata\n");
 			kfree(pg_tbl);
 			*ppg_tbl = NULL;
 			return -ENOMEM;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
