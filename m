Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F8B7EC63
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:09:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 577C288457;
	Fri,  2 Aug 2019 06:09:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D221kVWNFzFm; Fri,  2 Aug 2019 06:09:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BADC488415;
	Fri,  2 Aug 2019 06:09:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACE101BF3E1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A98B786224
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LiADrz2tBfxT for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:09:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC6378616A
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:09:31 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id t132so35507769pgb.9
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dR+aCAPOD09Fw22dIAPNuU9yfwSjjq3ESsSB8AH3iSc=;
 b=c/sFz1d4MgKrX1LBUJ6XpTlZH7QKBeW0OJNVnOlfS12uqPTZ/bAHoZKd0iqLrkS/K+
 mS3s+bLVthZVU25GTeieiCv3E1GTjfeOnJORpKXYxkmcYIpYCsHOmi6otcf4lozErUWw
 kz/K86HH40AHDAFk7ieHqpzhwZekN2s2hGKwjfTug86+wL4cR2bMvsA+WMcXmi8tyYH9
 odUAU1do/PFd/VKrJkSPHNUu/vOqACHh8tcgd/ikauWCOW8tsZw0h37zSRQuFN806Hl5
 hOYvcfvpzNrorzFxHQQqMSCgeL2h0sJOHKQv63CEve2GdqgLqZayBMw3JA6ZZ1lQnalx
 wQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dR+aCAPOD09Fw22dIAPNuU9yfwSjjq3ESsSB8AH3iSc=;
 b=o7x8g7W0hWU9AjjWiTPB20G9H1GQQGZWtSa8OquxsyHjtXbbpC6L8PW8KOpsH293Lh
 SPdFhzVfdqfwd6EEB3YHFOLGO/XMdRUfTXXixQjiEOGY3KarvoAw5zfG+z0IgoPi7j85
 XsIuENpqOrnnOTcyy9/o9ES8rlV+itxmxT91q83EmWeb2iPXF1mHDEh15lmp+CdwjVW1
 ltUW4cAK3r/rg40mU7npr5P907acVqsTbINAQSUSkccPfqk5TSKjsxZggq7Q9sZi68Se
 1Xfz36NSTYoKVuhZoNenDxIMbbWEDyMV6yzb1WzRuhSZZCNSIAIEY00ZQkq67GnYbQvd
 i4mA==
X-Gm-Message-State: APjAAAXmNXB5UDpX7stJsyGgUcsyhs+SGYkshgBrF+RtpGiU4SuEiM5m
 zynKZLbNtClvRtupZFtdsns=
X-Google-Smtp-Source: APXvYqwxUTIWsXDx3JrLMBaIP98HkQ0YvVcZwhAGMlZ8Tq4JbkAPa6rcZUCifr8Q0wTlGYOe6mkC1A==
X-Received: by 2002:a17:90a:cb97:: with SMTP id
 a23mr2636154pju.67.1564726171481; 
 Thu, 01 Aug 2019 23:09:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id e5sm3647294pgt.91.2019.08.01.23.09.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:09:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, osdevtc@gmail.com, devel@driverdev.osuosl.org
Subject: [PATCH] staging: wlan-ng: Remove function
 prism2mib_excludeunencrypted()
Date: Fri,  2 Aug 2019 11:39:13 +0530
Message-Id: <20190802060913.30241-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove function prism2mib_excludeunencrypted as all it does is call
prism2mib_flag.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 44 +----------------------------
 1 file changed, 1 insertion(+), 43 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 1eba5fa28d8f..7d7d77b04255 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -126,13 +126,6 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 				    struct p80211msg_dot11req_mibset *msg,
 				    void *data);
 
-static int prism2mib_excludeunencrypted(struct mibrec *mib,
-					int isget,
-					struct wlandevice *wlandev,
-					struct hfa384x *hw,
-					struct p80211msg_dot11req_mibset *msg,
-					void *data);
-
 static int
 prism2mib_fragmentationthreshold(struct mibrec *mib,
 				 int isget,
@@ -176,7 +169,7 @@ static struct mibrec mibtab[] = {
 	{DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
 	 F_STA | F_READ | F_WRITE,
 	 HFA384x_RID_CNFWEPFLAGS, HFA384x_WEPFLAGS_EXCLUDE, 0,
-	 prism2mib_excludeunencrypted},
+	 prism2mib_flag},
 
 	/* dot11mac MIB's */
 
@@ -593,41 +586,6 @@ static int prism2mib_privacyinvoked(struct mibrec *mib,
 	return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
 }
 
-/*
- * prism2mib_excludeunencrypted
- *
- * Get/set the dot11ExcludeUnencrypted value.
- *
- * MIB record parameters:
- *       parm1    Prism2 RID value.
- *       parm2    Bit value for ExcludeUnencrypted flag.
- *       parm3    Not used.
- *
- * Arguments:
- *       mib      MIB record.
- *       isget    MIBGET/MIBSET flag.
- *       wlandev  wlan device structure.
- *       priv     "priv" structure.
- *       hw       "hw" structure.
- *       msg      Message structure.
- *       data     Data buffer.
- *
- * Returns:
- *       0   - Success.
- *       ~0  - Error.
- *
- */
-
-static int prism2mib_excludeunencrypted(struct mibrec *mib,
-					int isget,
-					struct wlandevice *wlandev,
-					struct hfa384x *hw,
-					struct p80211msg_dot11req_mibset *msg,
-					void *data)
-{
-	return prism2mib_flag(mib, isget, wlandev, hw, msg, data);
-}
-
 /*
  * prism2mib_fragmentationthreshold
  *
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
