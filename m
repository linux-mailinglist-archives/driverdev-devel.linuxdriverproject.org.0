Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D2A1A51A1
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 14:27:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1468E85D78;
	Sat, 11 Apr 2020 12:27:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-bYzBG30tlg; Sat, 11 Apr 2020 12:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA1FD85CB8;
	Sat, 11 Apr 2020 12:27:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1AC1BF5DE
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C21086786
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ok7NvdOOL3Aa for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 12:26:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0AA2586793
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586608011;
 bh=srZpBeRis2/6y/kg+tlgDeL20N0J/abMsBYWWU6lnrA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=X3YKhTzk8NChTYYOZUv7F1IE7poNZrjHUlQaNFINc6ZW6U7UElAa/SOy9cGBFZks+
 QxWYAvk13Y564c1yznMQdQ7ftRNwupAUMWKiP3IQlHpLUp7wm6kp/01U/XHK7/r8TD
 mqHowLHg6CoZZ7Jr5s0kBVC/07Or02d2GHTlISAU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1Mgeo8-1imnPa2tie-00h6FI; Sat, 11 Apr 2020 14:26:50 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] staging: vt6656: Remove duplicate code for the
 phy->service assignment
Date: Sat, 11 Apr 2020 14:26:10 +0200
Message-Id: <20200411122610.7901-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411122610.7901-1-oscar.carter@gmx.com>
References: <20200411122610.7901-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AGbfPJ4dTYtyjWLjOEMr+meLDN5FRKKzT/A2cHztiQSul6SZqpA
 uDCUSutE6GN23yAgkqoQHJ7Fwcw+UOIkK45NTQk6ZWggMdgYbsIYZykvhZqSdV/Lx9tpE5z
 8K0oQBOWRNTxb8BZP6yBV9irZaEIcRgyKfMVlhVMbemnYxmEBn8Ha2sEkRusGzNtRkwlGC2
 sm4CvBzIWOp3VveiMMzVw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:P+bExj3+xiY=:35Oe3zYzGb+QfZo4BX74Du
 DeoKOVUXTkCqohT789Z4uolod1EGTwT8RlYB4NsBXl22/JzYhCumLkx3wR6ayedVS9tN4MPCR
 1KjQLSOkWCfA+8C4HsS7aHno3atP3JigmNMPstNGJYh+89kwYCxpt4kbEMSwctJ6j3EzBDemi
 skMeFXMTtO+sLxPsbmULz6Z9qw/41ULDMKfFaMfPrchbV5hAOzPDlskDaJKdjW8lIQ5pe5j86
 qEVFCMa4LS9CSKx9gKc79K+H755wdOoYDc1mghdxQtGTMwAz3uOY+fsUVwKbOrRr0morltfBU
 WXdW5z8QbvTlNhLnAwOrypm0G1l9wf+o+Mu5hgHVH1aHa04ld0hb2tonZ/K+gEXAE2Elr4nP8
 7qFP4ecvl9LrXDc1QdYRVFp9RfdaMa6X8UcLl2qnPUuZpgegdYx4Iu4EVgwr7OuLo3UWz7ZF8
 x9n/yKRskzF8ztEU2Yi2CkXvVxoMhoSAQGWmZN7jF2VULD+7mL2/oYzYqCXc1ZFg6Ln38EODN
 cI2Pp3gLQxx4faiEFMv9VSArZpViAApN80EX5QOzfP7qQGcPTJ5i2UZCu7UO50VCQ67Ow7zvq
 3Q/478LYVIpNukOJSFUDtqcLWq1S8x5pTOSzOCWZQqkfSYC3QOu7ZisVoANBFB/xV1jGu+E8X
 9tzcoMqAbYRyIZZ/yB778iQDgyS74wGPIc713Y5s/9OI8Qms1qlK9YG4lgiYrL/58aQMRwq0C
 Ae8i4pWXuNr594HFq6SjPmVtjMAXK0LDH221RPAF3ok3IL0uI8N1L6el3gNBE0o4f2ECldICr
 Eqrf2QsYDzEcjKcmHxNZMpHAWOjEZ47YZu50DTKZ9LRf8W/IsrMsBBTqSr0B6TmNFd0nerj2F
 2cNPIpqfa6Lj28pSBDH4a2ylcTtWSZOX4Fxh9/nP1ULbnwvjsz0PwhXFJM4CpPUooD0UbeCNg
 lOx9WhIcVjvwdTMjusoX2DepAheq0bHCw4AfgyOok5Fk1ETkmAkfasLhX+68FPiKdNN6A4sWv
 E9YN3EgsRO8EWTTRBizy0vKfYRN0ovirt2Lbzy04bpkC4KiCah1rhyCUy67gJMsUPWtPJlTjH
 2o0zX3yu03xN032Sc86JEWkpW+/51mMdAAickZol4W4BbFRuXItUhWF1+OKQ+bmUb5C8YB1CO
 oKm8j+UuZChHrYDIEaKnKx0XKmprRb5BltTWUm9VgDS1Y3xvSEfUPUyAYdmZM/y4x9Ee7pZLG
 WFIWssTUtUB3VajnU
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Take out the "phy->service" assignment from the if-else statement due to
it's the same for the two branches.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 05cc4797df52..c8b3cc84da6c 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -239,14 +239,13 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,

 	i = tx_rate > RATE_54M ? RATE_54M : tx_rate;
 	phy->signal = vnt_phy_signal[i] | mask;
+	phy->service = 0x00;

 	if (pkt_type == PK_TYPE_11B) {
-		phy->service = 0x00;
 		if (ext_bit)
 			phy->service |= 0x80;
 		phy->len = cpu_to_le16((u16)count);
 	} else {
-		phy->service = 0x00;
 		phy->len = cpu_to_le16((u16)frame_length);
 	}
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
