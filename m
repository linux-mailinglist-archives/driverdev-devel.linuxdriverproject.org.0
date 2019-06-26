Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF7C56215
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 08:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11B7F8680D;
	Wed, 26 Jun 2019 06:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfMlbKVqCAID; Wed, 26 Jun 2019 06:11:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 308C486838;
	Wed, 26 Jun 2019 06:11:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B1FF1BF3CC
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 277E487B08
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 06:10:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HPoaNO++SdOw for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 06:10:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 87E198798B
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 06:10:02 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s27so681880pgl.2
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 23:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aNua9VFN3Vg58rTCNTVPTANb/iFYB0YxVdEa/Eif4Vk=;
 b=aesiFGNsoGMAU/4ZmMvB9oAoUDrUQw5LSjhZqL5TCVjfKJ8HY42H9wprVAYXs2uXkN
 A73i31uYTlHYLy6N+IxLF+LmesqezFRAs3hyXIF3+oYPhsqIROWZSL0+sc0q9aISqras
 0/+gLYwP3I5jzC3wwjzSwhmrIbqA7MGRVglzYU8SWyRSmqXhSYBPsMoThgyv8RBhm+BT
 n+tPS5TR8TJFV33DSWM/IVSCiVrRtfdoNQTKNlU7oV4/Ntd/GFgGJTSf3uVEfINZPEW7
 ad/4gEF2JHWenQVhfuYRDQHJGFgsacJHV6WY284gkG+I7UtqkCjjA3MEETjuRkOTUEot
 35iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aNua9VFN3Vg58rTCNTVPTANb/iFYB0YxVdEa/Eif4Vk=;
 b=r0s9uHJbPkH8VfO/nR9mTMyAD8f6lYZa/zsb6BNpX2kCukonWIB6QRMQeETPfOyGnQ
 MaaL8wYfceyN7E78dG7n+c7efbernYkStSDuHIxaO3ZG+jJdxFgWklS+25o113r7gRXt
 I1bZpgqViOtZemyfzROS1fX6TctAx7nM+PBIwfyMuJGCZ9UFbnGuY5TXaKWhGnKKhF25
 1u7Iy8KCZK1ATkVSXxR+5pX1Qr30ik8DQ8w+eKFfWnWiK6w1GoC18KFvaeCgOugfsKvg
 7OdgWTPvSITmWLWaCxeyE5Zsx405c7MSmVWRE13AB9v0REZkl39rxfwpGDdl8KhGXw9O
 VezQ==
X-Gm-Message-State: APjAAAWGyGntCczL74lIBi2KowTBEQS4IQyD1XOY+0tUyAnlkDJAqBEu
 vS/T33jsq4FNzlROUP+Awg4=
X-Google-Smtp-Source: APXvYqyYNhDnj5yMtooDxY/GMyBLf7KBStiRoJOpxk17vryUP9Xyf+h3Q8PpdYCeuCpj2v09jrK+DQ==
X-Received: by 2002:a63:1322:: with SMTP id i34mr1234038pgl.424.1561529402191; 
 Tue, 25 Jun 2019 23:10:02 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id v13sm17613407pfe.105.2019.06.25.23.09.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 23:10:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, larry.finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, devel@driverdev.osuosl.org
Subject: [PATCH 3/9] staging: rtl8712: r8712_parse_wpa2_ie(): Change return
 values
Date: Wed, 26 Jun 2019 11:39:35 +0530
Message-Id: <20190626060941.2441-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190626060941.2441-1-nishkadg.linux@gmail.com>
References: <20190626060941.2441-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return values of function r8712_parse_wpa2_ie from
_SUCCESS/_FAIL to 0/-EINVAL.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c           | 12 ++++++------
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  2 +-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index 5821ccd3b50d..b4a099169c7c 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -327,11 +327,11 @@ int r8712_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher,
 
 	if (rsn_ie_len <= 0) {
 		/* No RSN IE - fail silently */
-		return _FAIL;
+		return -EINVAL;
 	}
 	if ((*rsn_ie != _WPA2_IE_ID_) ||
 	    (*(rsn_ie + 1) != (u8)(rsn_ie_len - 2)))
-		return _FAIL;
+		return -EINVAL;
 	pos = rsn_ie;
 	pos += 4;
 	left = rsn_ie_len - 4;
@@ -341,7 +341,7 @@ int r8712_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher,
 		pos += RSN_SELECTOR_LEN;
 		left -= RSN_SELECTOR_LEN;
 	} else if (left > 0) {
-		return _FAIL;
+		return -EINVAL;
 	}
 	/*pairwise_cipher*/
 	if (left >= 2) {
@@ -349,16 +349,16 @@ int r8712_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher,
 		pos += 2;
 		left -= 2;
 		if (count == 0 || left < count * RSN_SELECTOR_LEN)
-			return _FAIL;
+			return -EINVAL;
 		for (i = 0; i < count; i++) {
 			*pairwise_cipher |= r8712_get_wpa2_cipher_suite(pos);
 			pos += RSN_SELECTOR_LEN;
 			left -= RSN_SELECTOR_LEN;
 		}
 	} else if (left == 1) {
-		return _FAIL;
+		return -EINVAL;
 	}
-	return _SUCCESS;
+	return 0;
 }
 
 int r8712_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len,
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 615ac5c34a17..3444a865f36b 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -484,7 +484,7 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 				  Ndis802_11AuthModeWPAPSK;
 		}
 		if (r8712_parse_wpa2_ie(buf, ielen, &group_cipher,
-		    &pairwise_cipher) == _SUCCESS) {
+		    &pairwise_cipher) == 0) {
 			padapter->securitypriv.AuthAlgrthm = 2;
 			padapter->securitypriv.ndisauthtype =
 				  Ndis802_11AuthModeWPA2PSK;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
