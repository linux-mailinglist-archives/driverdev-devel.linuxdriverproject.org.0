Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD741A8367
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 17:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE32821505;
	Tue, 14 Apr 2020 15:40:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ENVwdeWQgLSN; Tue, 14 Apr 2020 15:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C3712049F;
	Tue, 14 Apr 2020 15:40:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDF751BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8DF587CD6
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0SSxjhgdwi1b for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 15:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D3BA87A33
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 15:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586878778;
 bh=AHa4Q10JDOKLRlghJ1WsjdEYi8ByvokcX/zRyKSVffo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=IBNBwJTTBWNL201sLWo3pGdf1eKSZNtcaxcrh5wBIbXzndA0s7FG5Z3gOI+L8M+D3
 WKaScYlrXrtEFL/ddnSLPAn3YQ5TBpI/6WHQRO3rAIeP64xGU/V5SwHQ/mHXTh0rNQ
 yvEF0ovZAiunjEDdaV8qL75lnBJVY2s3Ld1LYxgk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MYeQr-1jkbUn1e7f-00Vdx9; Tue, 14 Apr 2020 17:39:38 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: vt6656: Use BIT() macro instead of bit shift
 operator
Date: Tue, 14 Apr 2020 17:38:46 +0200
Message-Id: <20200414153849.5785-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414153849.5785-1-oscar.carter@gmx.com>
References: <20200414153849.5785-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:hj50RiMhC57fIwjkP88TjST87uGtiICioi+9D6iF1LKxncuYvNo
 +5rBEPSYcPDQEVc6Nmhl7pOS+FPUkXtAncKXwtHqIECNZTnR5K7jUArK9pgr3B+sgt0O2j5
 AJ+ScEmwvAXvjsjS4n351mrX7/zxjXYA/06OYizTxGTiBkG3nj9YoYxhFJop+8vYAbyXzB1
 O3Z31u/K5VGTDr9w3vCdw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:OiIqfM/tpjg=:V1bSJlgAU3YcgWH/0IcNLb
 KMBrmJ5g8V2//ToAqQeLSt/oi71/cjteCcIYRyousXnjgwo9kYI7iKgCpGDtV/PU/xyE5s3LN
 Ftv3u3HB6btuQ/vJZcVwoXDP6dF4nbPBxeSmRuyPuCiKlvshoTYNillcBbObhgLWMfcru5pow
 ieh0n2wrsi4hA1EcG7nghZOiV2OzILdsMI/KHLaBte8+BwdXUI4KoGfLM6CmC1PS7jdHvcrgW
 //NJhyORuTfF6mdNaIE1hH/yjRJLUGfW745WqFtzHJk4RuWBesaQ4b/Io4lEeEKV6QsrLVJuL
 +Xm63GmmJ4iAw7IJxRUZuwo3IlQYA2ZfnMoSQ+ImJnfGtkH/TX/xsOWqvf5xm8rVTIHAIpimW
 FY/sAaMeJJcS9C/HDA0b6f2YYmunPluFKloUeJ9PVkkE+Q+IOjm0PAEA6ZuMaQFT7RDbxl5Rz
 IRURXlTKl8FR6/eefN6hAKxJX/usHGOqtPMfSikPNPz/tTdjlO9bxfrlQAEJZrFG5Rwe1a++n
 n5oculesh1Zy0JkvQV0srJVP9msTLcijxsvDALtfFp+kpCkfrYaMzC9J1WvUkw8amy5ukiT1h
 LvjIi+tEtFYNzt8MRyo6MWv+/4GuuKTspmimCV2/qbcPVpNQBeyNMghAhqGFoOY2wRlOiFbB0
 kH3Hkj3QaInEDh9I5krSYcYyfVRVGqXPvKAGyEZ/sJmRUY9PLNm9iQf9UCy/SRm96IXVcc/o1
 T5eHr/EE5tEdUDk7D8ULl8OgIjPnb3ZBfykhXVaALxl7e1ioI0jfokACJrVMdITN9gZfyZ+oW
 viMIG9YT1Qmp3Zq2C9A/IEJH1Wqy2tqVZcegSUcsg2ruugYJcuH+YoaOjdOluoyoNOwFT4Vxf
 INphGDK6nz/1OJYVEcsTEGDME7bC3NCv3aX0YbqeDo5GIDeTw8oaMBRAMg/F2z5eLXoIopaUg
 pg+2ZTkOB0/aSaQZ8YC1uaftPccWfqPiI0erOM/qomhfGDukONH5quFR+lNtQZYdrDpQ2tmkF
 VYXP0VmZpB5vANZfZ7Kw/11pixJRZfyHMCBT0ntx8TIWUUNZmB4SnOJDXkqZTCBoj9cZ0yo7H
 MKspyqGTNc+eiC8yi8nFg3sGffKuDVB2nzYLM3qOYDshQEr6mWMeO1vI6+M7w0y3s+hLqd4gB
 DgM4VyhRjgTlRRMicDRdtJ3OKn7p3iGJ3RzYA01xaW6PXud270DejvZugy/o6g5nnYXeIonJL
 Cr6aQDY3fFZ4CqYqO
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the BIT() macro instead of the bit left shift operator. So the code
is more clear.

It's safe to remove the casting to u16 type because the value obtained
never exceeds 16 bits. So the casting is unnecessary.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 9bd37e57c727..f8bfadd4b506 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -228,7 +228,7 @@ void vnt_update_top_rates(struct vnt_private *priv)

 	/*Determines the highest basic rate.*/
 	for (i = RATE_54M; i >= RATE_6M; i--) {
-		if (priv->basic_rates & (u16)(1 << i)) {
+		if (priv->basic_rates & BIT(i)) {
 			top_ofdm = i;
 			break;
 		}
@@ -237,7 +237,7 @@ void vnt_update_top_rates(struct vnt_private *priv)
 	priv->top_ofdm_basic_rate = top_ofdm;

 	for (i = RATE_11M;; i--) {
-		if (priv->basic_rates & (u16)(1 << i)) {
+		if (priv->basic_rates & BIT(i)) {
 			top_cck = i;
 			break;
 		}
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
