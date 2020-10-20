Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E344293F56
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 248A286D93;
	Tue, 20 Oct 2020 15:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n1hu7+uuS8aM; Tue, 20 Oct 2020 15:12:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34D0986D9F;
	Tue, 20 Oct 2020 15:12:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 84BAA1BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8108886C7E
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c13wFjJbmmgr for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:12:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C476C86C24
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:12:36 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id d24so2396760ljg.10
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EK3gcsHybVhWPEw7Y/gst/5psrELnXvW2wuD9XeQ/Ek=;
 b=RU4GYeA19RJeCXJb5rcbmbVwScuNz4WWR3dTxNC6LiEuIx8PKNNz2LsW/pVcELfX0k
 VP6gmY3gscsKdj527RPWGzU45TBNbLUqcWvM3wdLdIyh/XwqZGNDmm0puq0He2+qrph7
 NsPnjVL0N6ItTnc5mTvdSG2N6aTkqOXzB7xeiKmCe80Xbb/oz3xzE+9+CyJ/+NGsLQ1V
 qUevZV4WKyYWRAey5SjF0Ceyou5ZeBZ3W1s4biNj261pWI9hEZGRWtKQSBDl9nQ+SfUm
 aiIRGCixoyL5epRhLAdhkZ21tsUhNf9UYqRDdV0n5LJrslzR+mx4LOD71b8vnjB4Ibcl
 gdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EK3gcsHybVhWPEw7Y/gst/5psrELnXvW2wuD9XeQ/Ek=;
 b=aXad2HF3pXsCNL6ajWDEM/T8gC3BAEaATOcb08I6yNFbDG8By29xdDNJp4ujUYZSZk
 WOTb5NTn82h5XyBUe2y3I+wjYIy2yR+mHzc7/l8axhwEbKy22clU6cHtwHZGhorR7FoF
 WRMa8Tlmm+ZHuo4uqQ93ftNAQAiA68VK8f84MLm9OEydLNK133XS5jyJbKketXgpee0E
 6YaylkHltPUeU3VVL5IzS6chqPTWOqEiBkjRn4WhKZabB51tW15gaFJovdpog1Yrjmtf
 uVV/8N488N/hn6qCotui6+m3qrAfGJAh/1vyRZeHyHZBWIpC/iaG0xQpQD2ytqGpY/60
 Zd2g==
X-Gm-Message-State: AOAM530o5/iUj2npT74y9/sia4aR+/OdxJ26tCeap6W5FChk+XfCY9p+
 r2mqGgqT4rZnei4dRvUOF7E=
X-Google-Smtp-Source: ABdhPJx6czF99ha/HLuvZSBEKgR7tzpCVfp7aH7IPqLQLDQIER75BEr1T0aeB9njllwKf9evnu/Hmg==
X-Received: by 2002:a2e:94e:: with SMTP id 75mr1281460ljj.95.1603206754952;
 Tue, 20 Oct 2020 08:12:34 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id 73sm345864lff.125.2020.10.20.08.12.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 08:12:34 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8192u/ieee80211: fix line length exceeds 100
 columns
Date: Tue, 20 Oct 2020 08:11:11 -0700
Message-Id: <20201020151111.35848-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.h b/drivers/staging/rtl8192u/ieee80211/dot11d.h
index 8b485fa18089..e1d794d8ac69 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.h
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.h
@@ -17,14 +17,16 @@ enum dot11d_state {
 };
 
 struct rt_dot11d_info {
-	u16 country_ie_len; /* > 0 if country_ie_buf[] contains valid country information element. */
+	/* > 0 if country_ie_buf[] contains valid country information element. */
+	u16 country_ie_len;
 
 	/*  country_ie_src_addr u16 aligned for comparison and copy */
 	u8  country_ie_src_addr[ETH_ALEN]; /* Source AP of the country IE. */
 	u8  country_ie_buf[MAX_IE_LEN];
 	u8  country_ie_watchdog;
 
-	u8  channel_map[MAX_CHANNEL_NUMBER + 1];  /* !Value 0: Invalid, 1: Valid (active scan), 2: Valid (passive scan) */
+	/* !Value 0: Invalid, 1: Valid (active scan), 2: Valid (passive scan) */
+	u8  channel_map[MAX_CHANNEL_NUMBER + 1];
 	u8  max_tx_pwr_dbm_list[MAX_CHANNEL_NUMBER + 1];
 
 	enum dot11d_state state;
@@ -36,8 +38,10 @@ struct rt_dot11d_info {
 #define IS_DOT11D_ENABLE(ieee_dev) (GET_DOT11D_INFO(ieee_dev)->dot11d_enabled)
 #define IS_COUNTRY_IE_VALID(ieee_dev) (GET_DOT11D_INFO(ieee_dev)->country_ie_len > 0)
 
-#define IS_EQUAL_CIE_SRC(ieee_dev, addr) ether_addr_equal(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
-#define UPDATE_CIE_SRC(ieee_dev, addr) ether_addr_copy(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
+#define IS_EQUAL_CIE_SRC(ieee_dev, addr) \
+	ether_addr_equal(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
+#define UPDATE_CIE_SRC(ieee_dev, addr) \
+	ether_addr_copy(GET_DOT11D_INFO(ieee_dev)->country_ie_src_addr, addr)
 
 #define GET_CIE_WATCHDOG(ieee_dev) (GET_DOT11D_INFO(ieee_dev)->country_ie_watchdog)
 #define RESET_CIE_WATCHDOG(ieee_dev) (GET_CIE_WATCHDOG(ieee_dev) = 0)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
