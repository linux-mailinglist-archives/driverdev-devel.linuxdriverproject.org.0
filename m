Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3732D239D78
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 04:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 685D587BD4;
	Mon,  3 Aug 2020 02:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1BYP44qqfSnI; Mon,  3 Aug 2020 02:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80C2087B59;
	Mon,  3 Aug 2020 02:20:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1C0F1BF402
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 02:20:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BEAC985BD5
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 02:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rk2kCzamlaKi for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 02:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D7A885BD1
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 02:20:43 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id g26so34000270qka.3
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 19:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cetzUKXtme91v22asNs+2tSRT7pQwpfybhfcV6WixOY=;
 b=pgGnXNccoDXAEQ+C8LHTeLNeKs93SjbAaDPZvfstWlo/G1zOxuCPxH+5RwkrMKj7+w
 LTM+xea7OF5Hj4mMVu6C/WxFTfRWnX6R/hlLR5wR1N6cFAZbazMPU3KB7U+hs0CCovnU
 v9W8MC3T2ZTaqr9bQGdDk5Svj1Nkawsa/7HLPkHs2EOr7fS3MCvW8QkCnaQsLD18rAXe
 CMVu4tLru08Fh6541tvKXA2jC5f7H6HSyBMYerqLO6xxDbanXlMwMuzC4ZMP7+SjWdWb
 Fco3a8KfiS/l9k4Dyqiu9KIxnTK4dS5kUqgHpINnbBtKIdTDXiV5HjQhohRhhFoj0Z+d
 cu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cetzUKXtme91v22asNs+2tSRT7pQwpfybhfcV6WixOY=;
 b=rm/DGj/bknelfdlfDyYh3SQKrAOvr0DpnfADByWk6yFebQCUoJuzKjqm/Cgq5Z+e4O
 NorhkOoVEvaRHJ1PLvcPoIY/gBSTlrF6zWnnM81Q+LdBl/qrSrTMKQNt5d1uhRKRzpvo
 JnEL94O6dxHv9mmTXKtv9EGbholMZyRYCli0brcVKB1c4qeVh7r6ppD7R4qSfj/A0pTZ
 vPEMxH5Fe+7tusyKsoGQcsLWwJ4vwOpLDAqBvm7lDdIOO7u3kOUXVrdKtAdBvAINSGls
 eYlhNhLhzMsZOpDqjWCEvtTWhYweH8JolbVP37GPRNPcW+HV5O//qyJh+rbdyEdoFJi2
 YC3A==
X-Gm-Message-State: AOAM531iLwWcs8YR7icatFHEbIQTXkp+INSe7bzTjxSylw92oeIZETWV
 jiNtF9jUOMCE3hQM1iQop3Y=
X-Google-Smtp-Source: ABdhPJxv7dass7gytP1WrwXpJSzxnkRQ2jqaDkC+AMxQoOHYxjJNH4L8zhBw+IFXeDyenm48OtS0QA==
X-Received: by 2002:a05:620a:65d:: with SMTP id
 a29mr14824360qka.167.1596421242062; 
 Sun, 02 Aug 2020 19:20:42 -0700 (PDT)
Received: from localhost.localdomain ([201.82.33.19])
 by smtp.googlemail.com with ESMTPSA id
 x137sm18749297qkb.47.2020.08.02.19.20.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Aug 2020 19:20:41 -0700 (PDT)
From: Igor Matheus Andrade Torrente <igormtorrente@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: wlan-ng: Remove repeated words in comments
Date: Sun,  2 Aug 2020 23:20:22 -0300
Message-Id: <20200803022022.501-1-igormtorrente@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: Igor Matheus Andrade Torrente <igormtorrente@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove duplicate words in comments at prism2mib and prism2sta files.

Signed-off-by: Igor Matheus Andrade Torrente <igormtorrente@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 2 +-
 drivers/staging/wlan-ng/prism2sta.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 7d7d77b04255..875812a391c9 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -292,7 +292,7 @@ int prism2mgmt_mibset_mibget(struct wlandevice *wlandev, void *msgp)
 	/*
 	 ** Determine if this is a "mibget" or a "mibset".  If this is a
 	 ** "mibget", then make sure that the MIB may be read.  Otherwise,
-	 ** this is a "mibset" so make make sure that the MIB may be written.
+	 ** this is a "mibset" so make sure that the MIB may be written.
 	 */
 
 	isget = (msg->msgcode == DIDMSG_DOT11REQ_MIBGET);
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 8f25496188aa..e6dcb687e7a1 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -461,7 +461,7 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 		case WLAN_MSD_FWLOAD:
 			wlandev->msdstate = WLAN_MSD_RUNNING_PENDING;
 			/* Initialize the device+driver for full
-			 * operation. Note that this might me an FWLOAD to
+			 * operation. Note that this might me an FWLOAD
 			 * to RUNNING transition so we must not do a chip
 			 * or board level reset.  Note that on failure,
 			 * the MSD state is set to HWPRESENT because we
@@ -1352,7 +1352,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		 * we get back in range.  We should block transmits and
 		 * receives in this state.  Do we need an indication here?
 		 * Probably not since a polling user-mode element would
-		 * get this status from from p2PortStatus(FD40). What about
+		 * get this status from p2PortStatus(FD40). What about
 		 * p80211?
 		 * Response:
 		 * Block Transmits, Ignore receives of data frames
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
