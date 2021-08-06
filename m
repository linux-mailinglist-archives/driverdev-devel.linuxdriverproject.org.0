Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C04113E302C
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 22:12:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2A06406A0;
	Fri,  6 Aug 2021 20:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id thDYSaJ6KjYa; Fri,  6 Aug 2021 20:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D739E4059F;
	Fri,  6 Aug 2021 20:12:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7681BF3AF
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 20:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 493B6403B0
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 20:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cAq3TJe7MmGD for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 20:12:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4011840148
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 20:12:11 +0000 (UTC)
Received: by mail-pj1-x1033.google.com with SMTP id j1so18352143pjv.3
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 13:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7FziyHfi8si4yXc9IV9s6vDx9c4opp9/BY2GTt8z4Vg=;
 b=Sm7z7bJL+8X0FCidoC6pSlPzC2I1M0MRW2tzTnuESE/r1VbxML2DkUOzK7xmvXU+da
 LFAMBkH8ax7JS3ucMie6Rr163ppYKr/OUKZhpB68vu3aWgVY5j+TSzip9VOziOjF46Od
 o1QVwXWJdpJeYGhU8cgGwyzXWWEY4ihfojzds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7FziyHfi8si4yXc9IV9s6vDx9c4opp9/BY2GTt8z4Vg=;
 b=paS9tkyye84EM3o8hA+LvlJXYniRzc0+W3cYVWW4hQEhBgwaDlx+MWl+0Ix9aQdjPT
 JEjgupK1n8V6FhQ6eTXK59J/FN4P6BMoM+lIQ5Xzho96Ngz6fzUYL9Lo2Y9H+5oWjc8x
 j92ajMqos4i2RR6i453+P7O2SmgVwUnwL+aowUH0NNCAw3fVOsP88c7+wVqozBzqyAAD
 IfBDwDzTqO0JiKVbZoLl2WjrZS/OXE+Ee1z93RM2Tyx8+nnywmYoGQHQ24+kzTww+1jw
 cO62nczgR6Ycj7S/YZO1MdazPMyzwDQe3YaDmY7TYbBGH+nMhAc0F3kop5XwsFazIZgE
 A75w==
X-Gm-Message-State: AOAM530Eq/b8rUZ1kj5pH9Ns5e5y01lgwG21O3elTrnfeyBlwLCWmski
 erZi/DkmPq2CrdN6xSSWgTzMfg==
X-Google-Smtp-Source: ABdhPJwgZjhvrlmuYtFWjKST9yBtwJJEGBg0/E1hLkIG2GFkU5tP6hoDMs6HEHvv9eFCsHI4ugmIRg==
X-Received: by 2002:a63:4205:: with SMTP id p5mr696537pga.286.1628280730715;
 Fri, 06 Aug 2021 13:12:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u21sm10954080pfh.163.2021.08.06.13.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 13:12:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192u: Avoid field-overflowing memcpy()
Date: Fri,  6 Aug 2021 13:12:07 -0700
Message-Id: <20210806201208.2871467-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6231; h=from:subject;
 bh=YF5YnwAVI8O0ogo9cYn9B0+8gVtT71FifNy1P7QEAcY=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhDZeXN1ieB44CAeYV6j6EBwB7MRK6Q8DoGNIpVsIq
 fm6h8n+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQ2XlwAKCRCJcvTf3G3AJkyJD/
 9iL0yi1GNSyHmqpXgUu61bd/O7OjaKqC0ylJZLijG8LLxlh2dDMwyisy8Nx3z4RdtUHVT3Jfx0wn7y
 nCvplYAIccGAMBbRHilg9RaCK886oJA7y5CIeImgbYH5jWGiJ69H6a6qqU+q3WlXAxv298qyQ2Ku1W
 mKNANW6mfHCs4tjhHxJimUrVt4Qj9lrYHNRNaNkq48nafmHVSuKFkJW62SC9D5jPcolGSoywROaqbu
 z/3yRu+af0dq/hIjiY7+3XjWo3kWwleMKDu99wOQthxiEE6NxTniknpRsgMpkt0R7fQA8ClEAUhd/N
 nUJuxXXCiFO3XsSnI07CCtbySqtiaG71lUWoyad/2xOi9hMfSPJWA54e57Cn2UIBU1S/Xw13ZJ00Fz
 6Rv7Ybo9kCIqaLpHv45mqnDid4Jvqe/w1TtC/VMTTe36GeUqjrNpjLmbltBbn72UWAc9BGp5NtvCir
 YMlocRWLV5VQCQm7hoshsqtfnRtJFq/cqj7pMVlnxrygrO9qLyfriRDuBye2KdNVCcg688WUIQzGXj
 hkx+5FNshsXRaWbE6/6bjGYU0uDpqk7MOL6hdA3GuuD0m5HUM7FNOcbzZx4Gni+0v3MtDCu4bY+XKb
 56w1g4yx8KPmfFfiGLTZY/hVW6+LVPEwtgYaiUxSTJIQ/C/e7ES9pUN7KMhA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
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
Cc: devel@driverdev.osuosl.org, Kees Cook <keescook@chromium.org>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Atul Gopinathan <atulgopinathan@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-hardening@vger.kernel.org, Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Split the 3 addr memcpy() into 3 memcpy() calls so the compiler doesn't
think an overflowing memcpy() happens against the addr1 field (the
neighbors are intended to be copied as well).

ieee80211_read_qos_param_element() copies a struct ieee80211_info_element
into a struct ieee80211_qos_information_element, but is actually wanting to
copy into the larger struct ieee80211_qos_parameter_info (the contents of
ac_params_record[] is later examined). Refactor the routine to perform
centralized checks, and copy the entire contents directly (since the id
and len members match the elementID and length members):

struct ieee80211_info_element {
        u8 id;
        u8 len;
        u8 data[];
} __packed;

struct ieee80211_qos_information_element {
        u8 elementID;
        u8 length;
        u8 qui[QOS_OUI_LEN];
        u8 qui_type;
        u8 qui_subtype;
        u8 version;
        u8 ac_info;
} __packed;

struct ieee80211_qos_parameter_info {
        struct ieee80211_qos_information_element info_element;
        u8 reserved;
        struct ieee80211_qos_ac_parameter ac_params_record[QOS_QUEUE_NUM];
} __packed;

Additionally replace old-style zero-element arrays with flexible arrays.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Pascal Terjan <pterjan@google.com>
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: devel@driverdev.osuosl.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 .../staging/rtl8192u/ieee80211/ieee80211.h    |  4 +-
 .../rtl8192u/ieee80211/ieee80211_crypt_ccmp.c |  4 +-
 .../staging/rtl8192u/ieee80211/ieee80211_rx.c | 49 ++++++-------------
 3 files changed, 19 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 7903c777a417..15207dc1f5c5 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -303,7 +303,7 @@ struct ieee_param {
 		struct {
 			u32 len;
 			u8 reserved[32];
-			u8 data[0];
+			u8 data[];
 		} wpa_ie;
 		struct{
 			int command;
@@ -316,7 +316,7 @@ struct ieee_param {
 			u8 idx;
 			u8 seq[8]; /* sequence counter (set: RX, get: TX) */
 			u16 key_len;
-			u8 key[0];
+			u8 key[];
 		} crypt;
 	} u;
 };
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
index c241cf484023..ccff385cf1f8 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c
@@ -141,7 +141,9 @@ static int ccmp_init_iv_and_aad(struct rtl_80211_hdr_4addr *hdr,
 	pos = (u8 *)hdr;
 	aad[0] = pos[0] & 0x8f;
 	aad[1] = pos[1] & 0xc7;
-	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
+	memcpy(&aad[2], &hdr->addr1, ETH_ALEN);
+	memcpy(&aad[8], &hdr->addr2, ETH_ALEN);
+	memcpy(&aad[14], &hdr->addr3, ETH_ALEN);
 	pos = (u8 *)&hdr->seq_ctl;
 	aad[20] = pos[0] & 0x0f;
 	aad[21] = 0; /* all bits masked */
diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index b0e01ee65f7f..b58e75932ecd 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -1310,7 +1310,8 @@ static u8 qos_oui[QOS_OUI_LEN] = { 0x00, 0x50, 0xF2 };
 static int ieee80211_verify_qos_info(struct ieee80211_qos_information_element
 				     *info_element, int sub_type)
 {
-
+	if (info_element->elementID != QOS_ELEMENT_ID)
+		return -1;
 	if (info_element->qui_subtype != sub_type)
 		return -1;
 	if (memcmp(info_element->qui, qos_oui, QOS_OUI_LEN))
@@ -1327,27 +1328,18 @@ static int ieee80211_verify_qos_info(struct ieee80211_qos_information_element
 /*
  * Parse a QoS parameter element
  */
-static int ieee80211_read_qos_param_element(struct ieee80211_qos_parameter_info
-					    *element_param, struct ieee80211_info_element
-					    *info_element)
+static int ieee80211_read_qos_param_element(
+		struct ieee80211_qos_parameter_info *element_param,
+		struct ieee80211_info_element *info_element)
 {
-	int ret = 0;
-	u16 size = sizeof(struct ieee80211_qos_parameter_info) - 2;
+	size_t size = sizeof(*element_param);
 
-	if (!info_element || !element_param)
+	if (!element_param || !info_element || info_element->len != size - 2)
 		return -1;
 
-	if (info_element->id == QOS_ELEMENT_ID && info_element->len == size) {
-		memcpy(element_param->info_element.qui, info_element->data,
-		       info_element->len);
-		element_param->info_element.elementID = info_element->id;
-		element_param->info_element.length = info_element->len;
-	} else
-		ret = -1;
-	if (ret == 0)
-		ret = ieee80211_verify_qos_info(&element_param->info_element,
-						QOS_OUI_PARAM_SUB_TYPE);
-	return ret;
+	memcpy(element_param, info_element, size);
+	return ieee80211_verify_qos_info(&element_param->info_element,
+					 QOS_OUI_PARAM_SUB_TYPE);
 }
 
 /*
@@ -1357,26 +1349,13 @@ static int ieee80211_read_qos_info_element(
 		struct ieee80211_qos_information_element *element_info,
 		struct ieee80211_info_element *info_element)
 {
-	int ret = 0;
-	u16 size = sizeof(struct ieee80211_qos_information_element) - 2;
+	size_t size = sizeof(*element_info);
 
-	if (!element_info)
+	if (!element_info || !info_element || info_element->len != size - 2)
 		return -1;
-	if (!info_element)
-		return -1;
-
-	if ((info_element->id == QOS_ELEMENT_ID) && (info_element->len == size)) {
-		memcpy(element_info->qui, info_element->data,
-		       info_element->len);
-		element_info->elementID = info_element->id;
-		element_info->length = info_element->len;
-	} else
-		ret = -1;
 
-	if (ret == 0)
-		ret = ieee80211_verify_qos_info(element_info,
-						QOS_OUI_INFO_SUB_TYPE);
-	return ret;
+	memcpy(element_info, info_element, size);
+	return ieee80211_verify_qos_info(element_info, QOS_OUI_INFO_SUB_TYPE);
 }
 
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
