Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0038DD8FA
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 786D185F0F;
	Sat, 19 Oct 2019 14:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dNsUNmkBLQaO; Sat, 19 Oct 2019 14:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D94585EAF;
	Sat, 19 Oct 2019 14:08:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 505981BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1177D87BD3
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86b-KaWYMQig for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8705C87CDD
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:54 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id q13so4113554wrs.12
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 07:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4oUvDhII8vHajj9ZiQGmAkvxzCNzCrUqcLrW308wtI8=;
 b=OTlhg+47jcB5gxIcILG5r1UG97FdYGTVDsDnYGGZzjNvG7bjVyaqz7jPqyXCAghaa3
 LPi48tzw2hDyfkJrpTf8k4P0ElQgwXzrX4OReDd0ltxCXyToQTTrF5JXgYNV6PeI0F22
 bx1KPArFHLdDDVfqmRDKt1PTpNa4oC9B7knY+yo2+W9/tFK4PJccfZf4YkRWrGkY7d0P
 FaUflFfKc2jwnPyrE5SAd8sdn7GvQY9m12+tyUbRReLoy1Xt9AbotZtxIhsA02FH6E5g
 M2+ddw4Ev4EMGIF48SQBBFdvJFC6O1cMV/uz6K1IRW3ciuqXsijFtYc2Seyyw3bYBnPD
 70zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4oUvDhII8vHajj9ZiQGmAkvxzCNzCrUqcLrW308wtI8=;
 b=nYQGA7wC8og5EmBAGKhmxUMRIQIpCVOkfSicXknaVFneosZ+IR+YoEVI8wUTbp2Wgo
 2nyABxmJUwl+bW3fKB8cE/U791GjhYcTl+K/hPaVW2xlD93tmtv123BQrJmjOi4tVzjE
 do3IHw7MQ1lZuS3f9CR/FJoZBtnBE3SQjoGDm0qpnq4HtF4B5IEv1kDde1xR6s8u8OFD
 b0/dJaonRYIfPKsNPGHD3u77RBHeDwXUGIBC0gxJpKSiaFY0SBGlvOoaILf6ZhuExjBx
 m+Y+EweYVQghH7bifQDO95dJRZe8pwJkKY2cCeIQFB2S/seMaet0tEm8THG9tZUIi+1m
 58jg==
X-Gm-Message-State: APjAAAUhLLqdGbDB6j5Oyr2RBNOtKTTWHiJH3rEWrrEViGm5ZZ6BVqLf
 skVlNZdtzy4PcU0H3yLPuw==
X-Google-Smtp-Source: APXvYqxE4GeJX/ZROGt0CXiJsmc0ZNTDAM07dTSILyQQIQcj3WZUbVCgaiSa15PgD61gFKs78uaSbg==
X-Received: by 2002:adf:f7c6:: with SMTP id a6mr11513756wrq.272.1571494072579; 
 Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 07:07:52 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 5/5] staging: wfx: fix warnings of alignment should match
 open parenthesis
Date: Sat, 19 Oct 2019 15:07:19 +0100
Message-Id: <20191019140719.2542-6-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191019140719.2542-1-jbi.octave@gmail.com>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

: Fix warnings of alignment should match open parenthesis.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_rx.c |  2 +-
 drivers/staging/wfx/data_tx.c |  2 +-
 drivers/staging/wfx/debug.c   | 14 ++++++++------
 3 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 52fb0f255dcd..e7fcce8d0cc4 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -77,7 +77,7 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev, struct hif_ind_rx *arg, s
 		break;
 	default:
 		dev_err(wdev->dev, "unknown encryption type %d\n",
-			 arg->rx_flags.encryp);
+			arg->rx_flags.encryp);
 		return -EIO;
 	}
 
diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index a02692f3210d..ea4205ac2149 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -40,7 +40,7 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 /* TX policy cache implementation */
 
 static void wfx_tx_policy_build(struct wfx_vif *wvif, struct tx_policy *policy,
-			    struct ieee80211_tx_rate *rates)
+				struct ieee80211_tx_rate *rates)
 {
 	int i;
 	size_t count;
diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
index 761ad9b4f27e..0a9ca109039c 100644
--- a/drivers/staging/wfx/debug.c
+++ b/drivers/staging/wfx/debug.c
@@ -141,10 +141,11 @@ static int wfx_rx_stats_show(struct seq_file *seq, void *v)
 	mutex_lock(&wdev->rx_stats_lock);
 	seq_printf(seq, "Timestamp: %dus\n", st->date);
 	seq_printf(seq, "Low power clock: frequency %uHz, external %s\n",
-		st->pwr_clk_freq,
-		st->is_ext_pwr_clk ? "yes" : "no");
-	seq_printf(seq, "Num. of frames: %d, PER (x10e4): %d, Throughput: %dKbps/s\n",
-		st->nb_rx_frame, st->per_total, st->throughput);
+		   st->pwr_clk_freq,
+		   st->is_ext_pwr_clk ? "yes" : "no");
+	seq_printf(seq,
+		   "N. of frames: %d, PER (x10e4): %d, Throughput: %dKbps/s\n",
+		   st->nb_rx_frame, st->per_total, st->throughput);
 	seq_puts(seq, "       Num. of      PER     RSSI      SNR      CFO\n");
 	seq_puts(seq, "        frames  (x10e4)    (dBm)     (dB)    (kHz)\n");
 	for (i = 0; i < ARRAY_SIZE(channel_names); i++) {
@@ -160,8 +161,9 @@ static int wfx_rx_stats_show(struct seq_file *seq, void *v)
 }
 DEFINE_SHOW_ATTRIBUTE(wfx_rx_stats);
 
-static ssize_t wfx_send_pds_write(struct file *file, const char __user *user_buf,
-			     size_t count, loff_t *ppos)
+static ssize_t wfx_send_pds_write(struct file *file,
+				  const char __user *user_buf,
+				  size_t count, loff_t *ppos)
 {
 	struct wfx_dev *wdev = file->private_data;
 	char *buf;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
