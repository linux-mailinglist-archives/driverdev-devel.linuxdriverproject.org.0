Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2F012BC07
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Dec 2019 01:38:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 462432014A;
	Sat, 28 Dec 2019 00:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iaaEDuIkcDDA; Sat, 28 Dec 2019 00:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCC67203C2;
	Sat, 28 Dec 2019 00:38:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98C2D1BF9C1
 for <devel@linuxdriverproject.org>; Sat, 28 Dec 2019 00:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 675FF81E8A
 for <devel@linuxdriverproject.org>; Sat, 28 Dec 2019 00:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPfERqaUJe57 for <devel@linuxdriverproject.org>;
 Sat, 28 Dec 2019 00:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9C8F870F6
 for <devel@driverdev.osuosl.org>; Sat, 28 Dec 2019 00:38:43 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id t129so22604421qke.10
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 16:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=JokR98mpMX2t19KA/jRz5XKT2QWfvS7MbhYAnmjFc1g=;
 b=jmgCNUS5CIBG4UBhnZqxjWdm/0ndqIQ1fis+IpWTsE+raxFCwTkr9QyZz6rSoCr1ZI
 AmCnv/vrPiU5sSM+FC6AU0/ZRxx/pcz3rctfAEvBUxN7Qb0HdivLO4AbBJ80PQbtZXFz
 2kgFu/K1upl3kYXDCG/og3JKeWPdQECMytfPXd1SYKF9DtEs9lBn3/k3areyq7wjtZB2
 0iATf96O4liYC7HfVu8h85y940oheFHVTMvoMZF06Z9Quo20bgMSqDtj5jQ+ZJvhTw5n
 Eug7GO6m0hDObeic7dXdfNKIUwENSqqKkadcD/ok42zwuv/HMfjt7e1cjOrN6dxQGlbn
 UdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=JokR98mpMX2t19KA/jRz5XKT2QWfvS7MbhYAnmjFc1g=;
 b=jRtxDS6z1/27eamnspEGcAtgfUQzk1Vcd9YPX2ROq4u2RD1/NeRpN635+rhnNqE6kc
 FxkeXnExTNs2WYJkWp6VzUfADRx2d6sM/IuB0g9bd7j0Xv0EuzskmfFQgkPP9vpP0EWw
 vyaS76XfDQWCOXQt5tJVFQDZ3qbJ3/q819FyafMfETDsB3YaG/iKn3SzLX90bW3Mpu4R
 nBNswDB1C8B+vjChgu9ShuPz0FyfYPxKzPGd8m3FfpVYDC0qpo9Pittk3irEarSLwATh
 jZVTxmR0vTjDntN4e2dbnaLPHMWKaG4rGr1Y/8BKU2xluRXiYqxtfew6mA980fBlZihN
 aJcQ==
X-Gm-Message-State: APjAAAXAuJHrP4c6NC5BCkSUGoMZHmuCnhuZmm0CaGa67KfACWgxKPlw
 vCKnR+NSs8J9/dgi3UUsB1I=
X-Google-Smtp-Source: APXvYqyX9Z0x7UmNaQO5kVWzPsy4PjlEEEjioKxgKqVqUdp41hAGvb037wOoai/sVZF5R8RmVghnNw==
X-Received: by 2002:a05:620a:8cc:: with SMTP id
 z12mr42143135qkz.48.1577493522901; 
 Fri, 27 Dec 2019 16:38:42 -0800 (PST)
Received: from mandalore.localdomain
 (pool-71-244-100-50.phlapa.fios.verizon.net. [71.244.100.50])
 by smtp.gmail.com with ESMTPSA id l85sm10153378qke.103.2019.12.27.16.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 16:38:42 -0800 (PST)
Date: Fri, 27 Dec 2019 19:38:24 -0500
From: Matthew Hanzelik <mrhanzelik@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: wfx: Fix style issues with hif_rx.c
Message-ID: <20191228003818.mmcf4aasks5mqcnr@mandalore.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the 80 character line limit warning on line 79 of hif_rx.c.

Also fixes the missing blank line warning on line 305 of hif_rx.c after
the declaration of size_t len.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
Changes in v2:
 - Make the commit message less vague.

 drivers/staging/wfx/hif_rx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/hif_rx.c b/drivers/staging/wfx/hif_rx.c
index 820de216be0c..1da9a153dda0 100644
--- a/drivers/staging/wfx/hif_rx.c
+++ b/drivers/staging/wfx/hif_rx.c
@@ -76,7 +76,8 @@ static int hif_multi_tx_confirm(struct wfx_dev *wdev, struct hif_msg *hif,
 				void *buf)
 {
 	struct hif_cnf_multi_transmit *body = buf;
-	struct hif_cnf_tx *buf_loc = (struct hif_cnf_tx *) &body->tx_conf_payload;
+	struct hif_cnf_tx *buf_loc = (struct hif_cnf_tx *)
+				      &body->tx_conf_payload;
 	struct wfx_vif *wvif = wdev_to_wvif(wdev, hif->interface);
 	int count = body->num_tx_confs;
 	int i;
@@ -302,6 +303,7 @@ static int hif_exception_indication(struct wfx_dev *wdev,
 				    struct hif_msg *hif, void *buf)
 {
 	size_t len = hif->len - 4; // drop header
+
 	dev_err(wdev->dev, "firmware exception\n");
 	print_hex_dump_bytes("Dump: ", DUMP_PREFIX_NONE, buf, len);
 	wdev->chip_frozen = 1;
--
2.24.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
