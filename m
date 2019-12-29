Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AF712CB27
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Dec 2019 23:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 527F182D5F;
	Sun, 29 Dec 2019 22:32:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UtMJph5SgHb; Sun, 29 Dec 2019 22:32:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D88B482404;
	Sun, 29 Dec 2019 22:32:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9573E1BF429
 for <devel@linuxdriverproject.org>; Sun, 29 Dec 2019 22:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F56B20013
 for <devel@linuxdriverproject.org>; Sun, 29 Dec 2019 22:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3zRu5iX-SBcW for <devel@linuxdriverproject.org>;
 Sun, 29 Dec 2019 22:32:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id DED531FEE0
 for <devel@driverdev.osuosl.org>; Sun, 29 Dec 2019 22:32:03 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id d18so25891691qtj.10
 for <devel@driverdev.osuosl.org>; Sun, 29 Dec 2019 14:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=f0XyFhJxaSBsnLc48u6S2zxUb8AEk9qkcHvQljdmaTU=;
 b=AEzg80a4E/lCAAF6qfluK2eflndpb9glCkRlugCIji4phnCLE+0W2wIJ02plJqYent
 Jo6nvfIBtX6sJO1WlPmf25BoARnvJL02Y85423L9EGtRGWEDnlpvSXe4Qv7cgt3Lw8tb
 82/+A/IdCZ4gizrtBYmbcDFzOhBAEOfrfgpL4VaehSFZ9IRtyV36xLGGmBKYR71S3C6F
 qawZPxmfhLWHkS32iBgCDhRk2X5MvyIpj4ta1qCmN8XIQaxy/d1FD1q/IfmWBzYdXRHh
 HCiO7xWpa3o5KE/7+NFlC6Mt1mJF6RsMbcedZxgMGbG5khDb6s7nowKOcYxT+6cWHTAj
 tscQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=f0XyFhJxaSBsnLc48u6S2zxUb8AEk9qkcHvQljdmaTU=;
 b=BD9k6sXd/pgqIip9WXM3ILp3HP8AS28TdTFtDoPiHIbiEPcwe3adI/oQVswxQMkDcs
 sdIqV8wrpwV0KPfnGxJHhmpT5R28cTTi5W1OPSeqBQwJNWeCTiNaDJ3D53jWyvnHJ1pD
 b6gjN+Ydl6RJmdl+/Qgwx+HnIUx0h8ExPK+DXAY0GDvQYHnmkJRKz2ymDMetezodbBx2
 nMp/VERk4EGi8ojf5CFNKPmUJOAs6laY/2r01nxP253N485sNUEmEQFewVMw58wZa3BD
 GegoTll3lBiyM4xFm0iykg1PbOaqQEDkl04KXzNK8NblhGLXjjwPaU6zpWh1IRhkNllL
 0y1g==
X-Gm-Message-State: APjAAAXVl1MsmuTatEp/SaG7PbkrZ6p555RVA3SPL6UTq6MH4jw0LyWO
 E60Lrlojh7hfxJwGnrZKrSk=
X-Google-Smtp-Source: APXvYqxpO+UY6xVlvhzPdiabPUnPbh8CPhFUncrdCpDDSKhobmLc9XNWrPctZmFvwn7U0eUKlvgoCg==
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr47149306qtb.235.1577658723029; 
 Sun, 29 Dec 2019 14:32:03 -0800 (PST)
Received: from mandalore.localdomain
 (pool-71-244-100-50.phlapa.fios.verizon.net. [71.244.100.50])
 by smtp.gmail.com with ESMTPSA id p185sm11897433qkd.126.2019.12.29.14.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 14:32:02 -0800 (PST)
Date: Sun, 29 Dec 2019 17:31:42 -0500
From: Matthew Hanzelik <mrhanzelik@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org
Subject: [PATCH v3] Staging: wfx: Fix style issues with hif_rx.c
Message-ID: <20191229223142.5pxmmu7sfwdtcn7d@mandalore.localdomain>
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

Fix the 80 line limit warning on line 79 of hif_rx.c.

Also fixes the missing blank line warning on line 305 of hif_rx.c after
the declaration of size_t len.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
Changes in v2
 - Make the commit message less vague.

Changes in v3
 - Place the break after the cast operator instead of breaking the line up.

 drivers/staging/wfx/hif_rx.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/hif_rx.c b/drivers/staging/wfx/hif_rx.c
index 820de216be0c..b31ef02ea5d4 100644
--- a/drivers/staging/wfx/hif_rx.c
+++ b/drivers/staging/wfx/hif_rx.c
@@ -76,7 +76,8 @@ static int hif_multi_tx_confirm(struct wfx_dev *wdev, struct hif_msg *hif,
 				void *buf)
 {
 	struct hif_cnf_multi_transmit *body = buf;
-	struct hif_cnf_tx *buf_loc = (struct hif_cnf_tx *) &body->tx_conf_payload;
+	struct hif_cnf_tx *buf_loc =
+		(struct hif_cnf_tx *) &body->tx_conf_payload;
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
