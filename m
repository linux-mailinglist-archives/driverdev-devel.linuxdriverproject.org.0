Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1816DD8F9
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:08:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31B4387BD3;
	Sat, 19 Oct 2019 14:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COmpOxcXng1z; Sat, 19 Oct 2019 14:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C865F87B9B;
	Sat, 19 Oct 2019 14:08:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C88781BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF5F587B5E
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aOTHTqg5udwB for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6491787BD3
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id v17so8614300wml.4
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 07:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rzESKhvNCTT5RhFCFcaQxIFkB4Hb29h8Yzywkz7FpuM=;
 b=ZSfm+/fzTL4ZRtIdnUiIR1EvTUPJZO7WwqsR8jUvw3wGgIcIwQOTEjvTWJVI8IcOCk
 +ei9PZnUiNIA+avq6qq7Pl2oZdkxUhn6jfV0qApzlixXh2SAX8YZJjM1PFSwcDD3Em+J
 dV64V4W2ncc4XUJL+buTOeLqJIBzaYKrB5jTvp67/Ee2I0l2bgXLY6Wa+RTQipBGEnMQ
 hChNCc3U6+snFJka4AFt90jIV2DEJoHe/MikXtJJoZvOFeeDaYy99uexZAbFgQd4ayrH
 cMJj+zzNS3v3hmmz1ULZo5/KrrsicsjEayg6yM4PYZNeveC3d/QS3FeoVvkBgRzVwjS5
 eA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rzESKhvNCTT5RhFCFcaQxIFkB4Hb29h8Yzywkz7FpuM=;
 b=sFbsPqYENmcs+hKtdRgfx083A5q3suYE6uDQM/XGbruXJsPn636HsM5JLk7PCopHLc
 vQMTQrgvZkfWJE9JyRnnZLv/K32Ox77vfypwUdVktt2Io0hbSxGM6WtbMC9yWe8fXbmR
 GvD/lCK0xNnkoUG1c/BuOPU6HQxUXkgRXTOwQ++H+iYSaYAUzzJWyxsD02ecsjd+W7f7
 CyeDuKt/MtSfZ+vPorCjNCXZLn0E2cpw1ZhAv9v/l1KpUuF72NbYcWLI0+zcrmhbarJM
 exw7d0mOfd63OtpT3gxgdc+LVm+K5qjNejgZgMqFNqQK9p7fG/GdF2JugUd2nxH8+iDu
 l62w==
X-Gm-Message-State: APjAAAVVO0ltJD10zQW3tYEFdMYvkZThrmwf1ox6wp6BEt5X+FYetZzp
 z3waZEbbG82OLY4xP962Nw==
X-Google-Smtp-Source: APXvYqz26o6r1pVSl6JlbZf0CO9bG56M5BlJitbLvwW+UXmYOXO+4vdZpI+Yf8IfkmVVIyBHsNMErw==
X-Received: by 2002:a1c:dc83:: with SMTP id t125mr12384486wmg.50.1571494071661; 
 Sat, 19 Oct 2019 07:07:51 -0700 (PDT)
Received: from ninjahub.lan (host-92-23-80-57.as13285.net. [92.23.80.57])
 by smtp.googlemail.com with ESMTPSA id t4sm7893080wrm.13.2019.10.19.07.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 07:07:51 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 4/5] staging: wfx: correct misspelled words
Date: Sat, 19 Oct 2019 15:07:18 +0100
Message-Id: <20191019140719.2542-5-jbi.octave@gmail.com>
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

Correct misspelled words: retrieved and auxiliary.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/wfx/data_tx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/data_tx.c b/drivers/staging/wfx/data_tx.c
index 619ab2cac5fc..a02692f3210d 100644
--- a/drivers/staging/wfx/data_tx.c
+++ b/drivers/staging/wfx/data_tx.c
@@ -32,7 +32,7 @@ static int wfx_get_hw_rate(struct wfx_dev *wdev,
 		}
 		return rate->idx + 14;
 	}
-	// WFx only support 2GHz, else band information should be retreived
+	// WFx only support 2GHz, else band information should be retrieved
 	// from ieee80211_tx_info
 	return wdev->hw->wiphy->bands[NL80211_BAND_2GHZ]->bitrates[rate->idx].hw_value;
 }
@@ -664,7 +664,7 @@ static int wfx_tx_inner(struct wfx_vif *wvif, struct ieee80211_sta *sta,
 	req->ht_tx_parameters = wfx_tx_get_tx_parms(wvif->wdev, tx_info);
 	req->tx_flags.retry_policy_index = wfx_tx_get_rate_id(wvif, tx_info);
 
-	// Auxilliary operations
+	// Auxiliary operations
 	wfx_tx_manage_pm(wvif, hdr, tx_priv, sta);
 	wfx_tx_queue_put(wvif->wdev, &wvif->wdev->tx_queue[queue_id], skb);
 	wfx_bh_request_tx(wvif->wdev);
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
