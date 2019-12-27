Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CA612BB17
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Dec 2019 21:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF05E86430;
	Fri, 27 Dec 2019 20:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bm-x6fznbdjk; Fri, 27 Dec 2019 20:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4BFF8631D;
	Fri, 27 Dec 2019 20:17:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74C761BF32A
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 20:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F7AB84D42
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 20:17:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sTE4Uw6pYsdy for <devel@linuxdriverproject.org>;
 Fri, 27 Dec 2019 20:17:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C002282476
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 20:17:17 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id c17so22265145qkg.7
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 12:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=BWyuL8rMvPGveHbNWJIB/Df4e7UkYcywBoUb4DokUKQ=;
 b=DpwHAEhh6E0bmfwYkaHmBcV7RjNn3jctEXNY+dtWAvNF/3bQZ9vb8KbaMPufI+ceeW
 9UbgeD5DlUM0FSw55Vz3fCq051WE4BTCUFrm5fTc4BaEn92EDCyr6Jo6rlO6j3wKHNye
 MDXxol0R33a3oVphykSGgg15856HwQ0Eb26dBXJyfG3Wf1IG78BGVhpzzV6PTTETWZH1
 GRNavpguYVJVKOnjClQVQO7yYMFpIenz2R7QljJMhYo7eCz81Ym4h0F2De6oi3/nMOzm
 FIeTyHKMIC8Ue3LvmyMNj8MTiksIMhWRzoJg1zYM5IgHwFeGqV9S4y4kkrD/i8vZ/jJF
 KQTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=BWyuL8rMvPGveHbNWJIB/Df4e7UkYcywBoUb4DokUKQ=;
 b=WFyXK5ess3CsSjBPfZLZXrS+znR4TMzgBUk3q+TOFYNSWIprVkV6KPUD/sUvAajLF7
 Bq0eY7r2uIJbobyWrewwvVhaxe5MHg8Y2+keJTZFh+Xx8xF+KRBOJ2UIxaclZEymn+ef
 j4y6mL7SegU88iZVUty4kZaL/L2yLo6kx2iO3IvnqbTbRlR8Appfniae6dm+b+MRNDxi
 AY/UP26/+RnJnk87dDSWb7LUm+18+VgdfMUpuZ3VmIS0/rzDQBz/wVM6WnS/BwCwmQn4
 cr/SLJqYhQ4+a5IX95ShaMZj9kvQxsSlVUWp6Vs7dIfVThlXhZFyFhWedunUroS3uDwP
 RxzQ==
X-Gm-Message-State: APjAAAUB4RsqFP30HDvQV1wqBcNPKEHpsSHAOLNx2Uk4JoPT8qQpx5g6
 n9vtLJ08ISuYL0j1iWmB5sw=
X-Google-Smtp-Source: APXvYqyMUSvUCcQFJGLHfp0FVMQuuW0lDVISBgDTDGX/4SJ+6V251sy5BTN6yySpXPWN2niidSyr+Q==
X-Received: by 2002:a37:b783:: with SMTP id h125mr43101894qkf.75.1577477836754; 
 Fri, 27 Dec 2019 12:17:16 -0800 (PST)
Received: from mandalore.localdomain
 (pool-71-244-100-50.phlapa.fios.verizon.net. [71.244.100.50])
 by smtp.gmail.com with ESMTPSA id t2sm9957370qkc.31.2019.12.27.12.17.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 12:17:16 -0800 (PST)
Date: Fri, 27 Dec 2019 15:16:56 -0500
From: Matthew Hanzelik <mrhanzelik@gmail.com>
To: jerome.pouiller@silabs.com, gregkh@linuxfoundation.org
Subject: [PATCH] Staging: wfx: Fix style issues with hif_rx.c
Message-ID: <20191227201656.3g426wagfubit5zy@mandalore.localdomain>
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

Fixes style issues with hif_rx.c.

Signed-off-by: Matthew Hanzelik <mrhanzelik@gmail.com>
---
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
