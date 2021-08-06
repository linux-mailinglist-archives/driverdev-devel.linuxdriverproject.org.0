Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BA53E3027
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 22:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE63783C01;
	Fri,  6 Aug 2021 20:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iFilyeAKc1VW; Fri,  6 Aug 2021 20:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12C84834F1;
	Fri,  6 Aug 2021 20:11:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB9EF1BF3AF
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 20:11:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB3A383518
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 20:11:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cCq52Rbc_S96 for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 20:11:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0944834F1
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 20:11:09 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id ca5so18323688pjb.5
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 13:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gpGUNpqaMwJIuNRGIK+xHtD3dfRYpLdOSmeYpAjk4As=;
 b=gxIeRcJxCZIci1imgPh3HefMMPsMa7l1IDF147l4OvpZJ16310WFcXitrTS3pF4NlO
 ihOzo0HSwuY907fZHrUOcRvgn16CsjpbI/lyJdxwunJ4Kz+dW79kLN9PnMoU2brM/zJn
 EKQ8STv2trrWOV7ac3NnGXZUFyZSfLz0EC8S8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gpGUNpqaMwJIuNRGIK+xHtD3dfRYpLdOSmeYpAjk4As=;
 b=SRsbiGkdK18wbJgigWEmNXhX3NeocAp/SxXAFULE1UaDtXrGqZj87zWu4/Gb4C2BmQ
 rTwfdeOECFOqf9ygny2FBXOf1HWdb15+2NGAUmHY5i+0yS6KbF3wzFTeKv3RE2MTdaaH
 IQbmWVqqHrSU0SNjE2Wmz3gCPrgxB0QENDP9Ga+l+IkUzpELn2UQQXdHTISe81p5mYfh
 rfCwwRfTMFgPf5S1u6KTxQKdzzfHQD16NGcv+tzgQ3vs98P3zf0X91GuseFqBAUZu57v
 y4RzpDmZqhL0CaS3LCilRlvuKerC9JiVvE8cm7cvN58t2rcDyl0H+Uxh9C89/3ZcpOY5
 5ovw==
X-Gm-Message-State: AOAM531tucPFDK/nj8i7Snm/nnfDw9WrMTS+CE/Eg/Z83FsMKG9qEt+p
 ZAFBqOIeykYGlEqYXCV+DLIKlw==
X-Google-Smtp-Source: ABdhPJzQ2oJGAQd19amp1TcwZOtSrOVz0z6mNU1pON5r8p22K8f8ttDUf/3+lU1blSd4m20mIN3mmA==
X-Received: by 2002:aa7:9f06:0:b029:3c6:c469:9135 with SMTP id
 g6-20020aa79f060000b02903c6c4699135mr11173133pfr.27.1628280669205; 
 Fri, 06 Aug 2021 13:11:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n7sm9459191pjh.8.2021.08.06.13.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 13:11:08 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192e: Avoid field-overflowing memcpy()
Date: Fri,  6 Aug 2021 13:11:06 -0700
Message-Id: <20210806201106.2871169-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5450; h=from:subject;
 bh=XdWtU0QlBv+CyPMrf/+gxW3AgNWEVeuoXd7jX5geTiY=;
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhDZdZ4M3etk3VpPvtJ2JqMyhAzZac4Stz/siA0xuI
 tU850aOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQ2XWQAKCRCJcvTf3G3AJgW8D/
 4jhwB/XMprURgY5FIwIP1KaJAjpdjsAOTkjgYlpc8eDWi6yUDxtJzRqVPmBzWGF4LdXfS9vTG/XTpV
 cEwJqMNc5K+3V44w0sdFXTy8Rm3etPMMsmisj9Lqug+rRdybA4p2M0M9ZXnoiMTQ1Vh6eQQlPFprIv
 0LHf4navVhJ9GtguTLanVsFlYMCMKocAEEiL+jeo24+FvkntUdiwIKwsbKAvCfRlFze7dp2qhWyTZO
 JnihYF/4SGZvc1G4jDX1R0gb1O1YHuGzapY3GgwFfhhR4wavUwfMjzSSmNJIhrMQRDjig45yOCX5Gj
 ysvH7GDzhmfEtWxQIAh8xNRHXnrveUzMdVrN5JOPQRuqAfongSy4402FlwbRbP/8VQ9VTrrRtOYNxQ
 EySs6prL/iYzXu7tADKIZbRH9swJuP5bT4n+JOXqNMrb+slMPYAxHLho4120eZzB3kfZOzjga41Bxh
 2Pe2rY9v7LWwmn1PweYGCJBiT7yFAfhxs+KWkWllbZx+AdLGOaH8fFvfsuR9iuQWW07nRnvIahLAmH
 vGjrMrtustDmiFKbmHAefQvRRPNBPfQD0rBlfFwrPxPzIHoxsWdBE+1bA7bJ4/ww5ckPAnYvaL/S61
 4Ciq2feJ2zloRNHZ+3aMTMLRc6TOEXfz+3y2gU+/ZajcFdqHzbu2BAQWuDdw==
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
Cc: devel@driverdev.osuosl.org, Darshan D V <darshandv10@gmail.com>,
 Kees Cook <keescook@chromium.org>, Aditya Srivastava <yashsri421@gmail.com>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
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

rtllib_read_qos_param_element() copies a struct rtllib_info_element
into a struct rtllib_qos_information_element, but is actually wanting to
copy into the larger struct rtllib_qos_parameter_info (the contents of
ac_params_record[] is later examined). Refactor the routine to perform
centralized checks, and copy the entire contents directly (since the id
and len members match the elementID and length members):

struct rtllib_info_element {
        u8 id;
        u8 len;
        u8 data[];
} __packed;

struct rtllib_qos_information_element {
        u8 elementID;
        u8 length;
        u8 qui[QOS_OUI_LEN];
        u8 qui_type;
        u8 qui_subtype;
        u8 version;
        u8 ac_info;
} __packed;

struct rtllib_qos_parameter_info {
        struct rtllib_qos_information_element info_element;
        u8 reserved;
        struct rtllib_qos_ac_parameter ac_params_record[QOS_QUEUE_NUM];
} __packed;

Cc: Darshan D V <darshandv10@gmail.com>
Cc: Aditya Srivastava <yashsri421@gmail.com>
Cc: devel@driverdev.osuosl.org
Cc: Larry Finger <Larry.Finger@lwfinger.net>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c |  4 +-
 drivers/staging/rtl8192e/rtllib_rx.c         | 57 ++++++--------------
 2 files changed, 20 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index b60e2a109ce4..ed968c01c7ff 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -133,7 +133,9 @@ static int ccmp_init_iv_and_aad(struct rtllib_hdr_4addr *hdr,
 	pos = (u8 *) hdr;
 	aad[0] = pos[0] & 0x8f;
 	aad[1] = pos[1] & 0xc7;
-	memcpy(aad + 2, hdr->addr1, 3 * ETH_ALEN);
+	memcpy(&aad[2], &hdr->addr1, ETH_ALEN);
+	memcpy(&aad[8], &hdr->addr2, ETH_ALEN);
+	memcpy(&aad[14], &hdr->addr3, ETH_ALEN);
 	pos = (u8 *) &hdr->seq_ctl;
 	aad[20] = pos[0] & 0x0f;
 	aad[21] = 0; /* all bits masked */
diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
index c2209c033838..e3d0a361d370 100644
--- a/drivers/staging/rtl8192e/rtllib_rx.c
+++ b/drivers/staging/rtl8192e/rtllib_rx.c
@@ -1556,6 +1556,8 @@ static int rtllib_verify_qos_info(struct rtllib_qos_information_element
 				     *info_element, int sub_type)
 {
 
+	if (info_element->elementID != QOS_ELEMENT_ID)
+		return -1;
 	if (info_element->qui_subtype != sub_type)
 		return -1;
 	if (memcmp(info_element->qui, qos_oui, QOS_OUI_LEN))
@@ -1570,57 +1572,32 @@ static int rtllib_verify_qos_info(struct rtllib_qos_information_element
 
 
 /* Parse a QoS parameter element */
-static int rtllib_read_qos_param_element(struct rtllib_qos_parameter_info
-							*element_param,
-					 struct rtllib_info_element
-							*info_element)
+static int rtllib_read_qos_param_element(
+			struct rtllib_qos_parameter_info *element_param,
+			struct rtllib_info_element *info_element)
 {
-	int ret = 0;
-	u16 size = sizeof(struct rtllib_qos_parameter_info) - 2;
+	size_t size = sizeof(*element_param);
 
-	if ((info_element == NULL) || (element_param == NULL))
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
-		ret = rtllib_verify_qos_info(&element_param->info_element,
-						QOS_OUI_PARAM_SUB_TYPE);
-	return ret;
+	memcpy(element_param, info_element, size);
+	return rtllib_verify_qos_info(&element_param->info_element,
+				      QOS_OUI_PARAM_SUB_TYPE);
 }
 
 /* Parse a QoS information element */
-static int rtllib_read_qos_info_element(struct rtllib_qos_information_element
-							*element_info,
-					struct rtllib_info_element
-							*info_element)
+static int rtllib_read_qos_info_element(
+			struct rtllib_qos_information_element *element_info,
+			struct rtllib_info_element *info_element)
 {
-	int ret = 0;
-	u16 size = sizeof(struct rtllib_qos_information_element) - 2;
+	size_t size = sizeof(*element_info);
 
-	if (element_info == NULL)
+	if (!element_info || !info_element || info_element->len != size - 2)
 		return -1;
-	if (info_element == NULL)
-		return -1;
-
-	if ((info_element->id == QOS_ELEMENT_ID) &&
-	    (info_element->len == size)) {
-		memcpy(element_info->qui, info_element->data,
-		       info_element->len);
-		element_info->elementID = info_element->id;
-		element_info->length = info_element->len;
-	} else
-		ret = -1;
 
-	if (ret == 0)
-		ret = rtllib_verify_qos_info(element_info,
-					     QOS_OUI_INFO_SUB_TYPE);
-	return ret;
+	memcpy(element_info, info_element, size);
+	return rtllib_verify_qos_info(element_info, QOS_OUI_INFO_SUB_TYPE);
 }
 
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
