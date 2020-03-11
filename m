Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C85411814B6
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:25:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0403187FF6;
	Wed, 11 Mar 2020 09:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IwjVLiIjHahW; Wed, 11 Mar 2020 09:24:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB8F387E8E;
	Wed, 11 Mar 2020 09:24:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EF9C1BF5DB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B7D087E5E
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQgigmd4f0fD for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AF6987D55
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 73FD2AD26;
 Wed, 11 Mar 2020 09:24:53 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 2/3] staging: rtl8192e: Use scnprintf() for avoiding potential
 buffer overflow
Date: Wed, 11 Mar 2020 10:24:50 +0100
Message-Id: <20200311092451.23933-3-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200311092451.23933-1-tiwai@suse.de>
References: <20200311092451.23933-1-tiwai@suse.de>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/staging/rtl8192e/rtllib_rx.c | 4 ++--
 drivers/staging/rtl8192e/rtllib_wx.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index 0bae0a0a4cbe..d31b5e1c8df4 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -2092,7 +2092,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 						 MAX_RATES_LENGTH);
 			for (i = 0; i < network->rates_len; i++) {
 				network->rates[i] = info_element->data[i];
-				p += snprintf(p, sizeof(rates_str) -
+				p += scnprintf(p, sizeof(rates_str) -
 					      (p - rates_str), "%02X ",
 					      network->rates[i]);
 				if (rtllib_is_ofdm_rate
@@ -2120,7 +2120,7 @@ int rtllib_parse_info_param(struct rtllib_device *ieee,
 						    MAX_RATES_EX_LENGTH);
 			for (i = 0; i < network->rates_ex_len; i++) {
 				network->rates_ex[i] = info_element->data[i];
-				p += snprintf(p, sizeof(rates_str) -
+				p += scnprintf(p, sizeof(rates_str) -
 					      (p - rates_str), "%02X ",
 					      network->rates_ex[i]);
 				if (rtllib_is_ofdm_rate
diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index beb40967936a..7e7df50164fb 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -114,7 +114,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	/* Add basic and extended rates */
 	max_rate = 0;
 	p = custom;
-	p += snprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
+	p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
 	for (i = 0, j = 0; i < network->rates_len;) {
 		if (j < network->rates_ex_len &&
 		    ((network->rates_ex[j] & 0x7F) <
@@ -124,12 +124,12 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 			rate = network->rates[i++] & 0x7F;
 		if (rate > max_rate)
 			max_rate = rate;
-		p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+		p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 			      "%d%s ", rate >> 1, (rate & 1) ? ".5" : "");
 	}
 	for (; j < network->rates_ex_len; j++) {
 		rate = network->rates_ex[j] & 0x7F;
-		p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+		p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 			      "%d%s ", rate >> 1, (rate & 1) ? ".5" : "");
 		if (rate > max_rate)
 			max_rate = rate;
@@ -226,7 +226,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	 */
 	iwe.cmd = IWEVCUSTOM;
 	p = custom;
-	p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+	p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 		      " Last beacon: %lums ago",
 		      (jiffies - network->last_scanned) / (HZ / 100));
 	iwe.u.data.length = p - custom;
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
