Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5013631ADED
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 21:20:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 87C0385FD4;
	Sat, 13 Feb 2021 20:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hgD0l-ukSbDL; Sat, 13 Feb 2021 20:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1726285FA0;
	Sat, 13 Feb 2021 20:20:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AABB71BF301
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 20:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6C5D85F9B
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 20:20:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id htoSiqVhsWzu for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 20:20:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic315-48.consmr.mail.ne1.yahoo.com
 (sonic315-48.consmr.mail.ne1.yahoo.com [66.163.190.174])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42BA785F8B
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 20:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613247613; bh=L9kggMVw5uumo6cGCl/dU+x2QnGqPYS8RMLhNQtQcuI=;
 h=From:Subject:To:Cc:Date:References:From:Subject:Reply-To;
 b=Xh1Ljnyq89Nt79jns6A+aJtyny+8kwy4FOrPeINkriXYOWWKWN65fSXHO6dh1JlpCrBXOI6CKonPlZlItLrJ5RXdzcTknEUenELoJWCcJd/u6KFUNv/hf2GWF58Xho9TbxQQUa3br3/8rt5h6X0z3J7o1RfK13Xgi/f4kc+dEJoP0h906lUXdX1Dkr06DHU25qTR1NSfAIwe8aQ+BYELIFFXPhXXP8MkGV1VOQ5t6qOT2VkRLpe4B1u3Zn/EqmQnZvWOLE5aq+kMepkV5eLcW1NOofPcFOPNzzZeMAC/W3c1I3KruhgiCKDpwU9rS51Hh/XbuJO3KIyEjZPZWleLFw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1613247613; bh=QyD67cIGKd5s76f2zTug+BLK5nKTnq7Kv+EKkHao46k=;
 h=X-Sonic-MF:From:Subject:To:Date:From:Subject;
 b=cxwmA5jpIt0FzAMPrr1nSVaTNcf12w74baS0wCbiPOvAD7J9WTkDDb1t+cQz9tE36lDJVCnCjoAAAtZaWdXoNU365JCNGo5oADDe6Mt8vIEDODY0mDeoL/IuS43+y2XTmELO5oNCIwcZf5D70W4VP0FQykddD25FYmT1AtrgrpioaAmPh2U1lB4H70c7+52+f/3bNS2Enf00HniieWxWdfLDb9nxAwKt/z5fjsNyiGsQODj2ql+88EziYw/Dmfh2hTrnA9RDsO6+V7r141pWBPq5lylIKZQKfyLxpxhzXYfB4KF4d44UZvtI8OaLVPlKetuWfi8j+xoUCQsu+6nYew==
X-YMail-OSG: mCiD3JgVM1nTLLVZg.RRsZhW7WuJ2Uj1csdk.F.LcTGGzfklAGfPcto1jjxK1l.
 yrj.XcvDHilswk1sEsmexhci_7VO9RgsqqEMlIqYRoqpwT6.qY0PeUme70OUZzH580.kHZBQAi7c
 lFmAWzm.RWFiKWnfCj.NRTZr7HtQZbQq0WOxPtjgZhdYSSPs8zRQhMnLJV5aL8vxtjs6Bk1YCwZb
 j6UxQ7UYR4c.6iNtw_SR4gR2YjahceLlUgjQeK5lBRzphztF4noaqWGFYt0b6ULOmBiiiIARYKgu
 mD.Yyy9RID7f_AUBEwALV5rm0rln8FWoqmgvvz8AQop0wCTG_RgIVNNzCcek4Mne6tbUH0e8Jtso
 ftpvSgmdgIxIenmxx6CffsgTYL7KmVJFJf9ci2M.9ztbg5Xv0R8hVXz8D0EtSuirV7ma09ams1zu
 MWtXWiOg9xuCN8WEjrxRI89elrGPNXJNoXmavhnLMyZiV482_pMvRSDQllqI6g2VD7avlxhAulyL
 M86zt4LBIhRR9XZhoEjoN2aDIuvrj1MROyOHlZXi1F7SVz4py9Ujt4q0h2jJXyW1f0712UxrUQei
 m3ls4COKWHp0EvwkEfGEa.aQ4EahHa6_dZRJuDauiYkMEZa0SFNxRkJT3gonlGqv8WN21xQ.UfC5
 XfcjaWZ9U8iQJtHJewITZRiWAjCIQs3hc7VtmlcbnxD5FNDIq1VfIqDsWwb2K0FIsVlnasrsD133
 LPZxeCkDhxYGWEJ028hN.GGAGo1ddckfIqcLAVs6XyJutD0XVGTHthoXQ0RA3UedHJ79jNHXWLLw
 zC8miir72OktoRfd00nUFZQk_FtDH9SxtjUUiPuPr6fLcdaFFcBnRFYww84.ebSp._gVUWCzWXtj
 FqdOQAcNMRCGdEbNY8OAvjVJfbbaomCC6y8c0GUahnyYD78tjExLMYxNPBFlwlz7dyeEEdBK0ESy
 mEsr99uPY7r6Yyh_7bGiNQejtgoM6xKYe4Y..hzgeyyVMgVHR4HoW4not0m2syQCFZsQsEUWAox3
 vm6BxZslwfcL.bMrBfChyk5mqWIi8T4bM4xRnpgZz2N7r6HZHqMbkQTLW34SYGLMLLj0v_5q_OQT
 iaUmKSjJbSD9LJHts2d60WsrofthPUdtqrCtPUJejH_LWOesvCyzKz4czC1_J1n2MigGYxjov557
 pyop6bIDf5_jfhPuGjtpFOj.wERbMHUA5z3D37G7kxF77zCIXBUw.PpnqehJIXBMUezUQhnhhqRe
 tPtzjEV82iWLqmEeL4zRrakn8UWjrV7GKzS0WQH5QCdznYp24vGRgvnN5or4Pqzv.2Lvw.R_ZXEq
 Ia.vtrKfSd8oT1ydp37zhxu9ZbpCvtkuUMRH5mL_34yBkhTD_T1bw3cC5AN7jMVAY7Yt6sNAQfOH
 XUaNtoAZqUgsnTz9jyuKpWnnaH7I5pGU0I9j5Zm3.6kYmjrLvEzN72E2gO8FqTxNzVDNOeeP024e
 WlgKFi1jM1T0iwrouUwoUIvTmTXcQiM.NWoZu_BX91GT7chFZ2Ma5s.k_qlCvNo_hh6RDVksQLrr
 6v669mHzNEYgS_p9N3tjUgzbIbJ7xT4BVCEhN0_ZUzGf1cZ6WZDFJBI.dmRvYMGD20PQXdKQYOpc
 o4ZytgXRtM1I9Smo9uGAuy9d5kaYOwfBnZTcqBFtkXGAazKu4lqCjsyPm6wm.mHFPOVrGlbmXOTD
 I2LmQJ20CnUjKdA0yrXbZSIbQzSBFkgRcZ4mO6U0Hhj1nXS96ZQmPBNxnhWFDfOK1aKSMQuJb16k
 rmvfpIFS5ZB236xTs_MfwWXWUNJryPmRxH1FGTuKI8yfcCQYxw43fDfAo3VG5MqOed7zJhpu4p31
 SKRFmKN.ANllM4Hsn5K4hVFDLlbewvcqId0dND1enVXSYXfFAcy.HKICbKqviYd.G85gKYIwT5kl
 7qjTpaGmpG6wk3EMbU.BVteOZwrV21akHTJqQ5aP5FqfVTVkJvxl6YsOz1iLw_yglOhBDqUNh_wJ
 qDRgLevNPZNLyig5lNUtSMzS567YpbuHjpDBYcdpKIY2UgJmZNuOnERfbUWTAPlQnuACJi9hMg3B
 OtTQy8cEN483KIwC0halNl_diQvLL_aqNhvyfNEaDMeFAi3I8kfeCPoa8Yx9B8CToZFx9pnCkkJB
 nlL2qkSUFjjVve747MuG1dvSudGDjVxpb8D90nwCxO36oTiiO.obK8jYR1SY.3F59rf0Rz.JyRHd
 T2YgBvto_IMQZIGhmbX1aLlL7CU3oRpMdg4Wu4BJc9rRfhOgGoS_QPSouwQ9lWx.TPvrSmeGxvgI
 I0nH605YLsECqu51B_a_VEZrvR2jLgbx5bspgywzhpJk74Tw50Kd.kSy6I52g9kIhmVAZjbdABjZ
 8Z8vyVlefdxMVQrwhelPcBGj0xYILPqCfLDdxTiBmS6vzxlEP9R.LrpoxAfYkvASvl1zEhMqkw5z
 Nc39TKJIsvW3loOxy03vHNDTuJ3G1fsL9bbncxecdhi5SbHNB4pSJnoJ3Aw2spSOa238cO5ONJAU
 Gi3nUB9L79AT0Do4Sye8E3bFpmZFVbvF3Ev5HtM7NoZDSk1mrKiMJcPxsIdQ.dJhnKx0g8TV4VuW
 K7VLDKKFVsCMn4fb3wMo_HnyhW14L6zVzQMsogcV7nhqQMBJu7xDbss1EK0LR3A7bTNw0VYDO4pz
 rNPQl
X-Sonic-MF: <ashishvara89@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic315.consmr.mail.ne1.yahoo.com with HTTP; Sat, 13 Feb 2021 20:20:13 +0000
Received: by smtp421.mail.sg3.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 0600d05b219ef931815747aaeaa27d8b; 
 Sat, 13 Feb 2021 20:18:10 +0000 (UTC)
From: Ashish Vara <ashishvara89@yahoo.com>
Subject: [PATCH] fixed coding style warning
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 rcy@google.com, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <482ff5a0-9089-c05a-4763-e25e14f588b5@yahoo.com>
Date: Sun, 14 Feb 2021 01:48:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-US
References: <482ff5a0-9089-c05a-4763-e25e14f588b5.ref@yahoo.com>
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

removed unnecessary out of memory message

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
