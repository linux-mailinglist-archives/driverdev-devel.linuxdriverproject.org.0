Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E458B1970FB
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 00:57:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8FC61204BE;
	Sun, 29 Mar 2020 22:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U8HksD7N8feH; Sun, 29 Mar 2020 22:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A889A2040F;
	Sun, 29 Mar 2020 22:57:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C909D1BF2C3
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 22:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF3E0861F0
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 22:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OVodp7kNqh-a for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 22:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E471184D0F
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 22:57:32 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g62so19579451wme.1
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 15:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QsgCSsuB4Lh94wSfvpEuEtMRFjpl1/aOPTILb/nR+i0=;
 b=IhfXMK9hkySJimYQVmic2APBwnthiNPncKeida0LhLJ4Lbse8jveY4CiKmXpDPLvnK
 24xKX4ygUsB4d2eSIWHCzc26N9GFGHVQJIIuASI1rsdCZMArnxTeqazM9P0j5eL87N5n
 YLmqSbvG6mgqlbZesV3gR3f98xotnbc3ETHC92mo58hctgoomXmXNDqqgfXj7oPzXhNu
 jqihRjHNRd6zoda4ZunhCztXHbn38VdqhwYM4Pli0AzpCe2HiTBecII0d5z27PdUaA2c
 RDSoGvs6/Tr+8/MN1aH1spuD4xIJ1HgaCRuaj9SaywoRoOG+7X03wzvTGeJlEixm7mFV
 F6Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QsgCSsuB4Lh94wSfvpEuEtMRFjpl1/aOPTILb/nR+i0=;
 b=QkMe7rFhVZk3F3akx+Rx200UIHsxWEeFI2+ITKdFv2kXKPRbrKKJ1AyeAKjx89bKMa
 OdtRUtsOjthMoHHbCcSIwpD7Y0loLLfrztFsysQ6wtIpQj7c4lSnfoF8/VHg9fPHXMqy
 g6jKB+87wjBgXVURX9guat89icvl1ImpJeM7p8Ry13gDleOorZ1wJa9GZ5QjlRqB8MKD
 vBzx9dVv2elfaLzu7hLYyZ5jTNEEcb8maVgxbAYz/SEZwrSBER2BjGWZoWt8C4W8sWt8
 ZRneDqjyAgY4IWgku7yt1HRG1cvQzuoFYcr53Di/GkspIUzWfVH7R0YBGxDZXcOlfejK
 93dg==
X-Gm-Message-State: ANhLgQ2WQmT5+AxIjiU83VWHU8tRmPB84DmMicMmFh4ESUJnTqfQAgIj
 mut1kLoYe7IUDYKkmd5IkoA=
X-Google-Smtp-Source: ADFU+vuOULPP2BrGsp5l0LDSjRRWlvdzItCSWN19rEWNH1CUZ/FIice4KTMuFOug6hI8n8BDaaG+mA==
X-Received: by 2002:a1c:a553:: with SMTP id o80mr8184848wme.159.1585522651201; 
 Sun, 29 Mar 2020 15:57:31 -0700 (PDT)
Received: from localhost.localdomain ([79.118.211.86])
 by smtp.gmail.com with ESMTPSA id d206sm18597712wmf.29.2020.03.29.15.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 15:57:30 -0700 (PDT)
From: Iulian Olaru <iulianolaru249@gmail.com>
X-Google-Original-From: Iulian Olaru <iulianolaru249@yahoo.com>
To: daniel.baluta@gmail.com, gregkh@linuxfoundation.org, allison@lohutok.net,
 info@metux.net, alexios.zavras@intel.com, tglx@linutronix.de
Subject: [PATCH] staging: uwb: Fix missing blank space coding style issue
Date: Mon, 30 Mar 2020 01:57:27 +0300
Message-Id: <20200329225727.9222-1-iulianolaru249@yahoo.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Iulian Olaru <iulianolaru249@yahoo.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds a blank space before the switch argument parenthesis to
silence checkpatch.pl errors.

Signed-off-by: Iulian Olaru <iulianolaru249@yahoo.com>
---
 drivers/staging/uwb/drp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/uwb/drp.c b/drivers/staging/uwb/drp.c
index 869987bede7b..4449220f618a 100644
--- a/drivers/staging/uwb/drp.c
+++ b/drivers/staging/uwb/drp.c
@@ -249,7 +249,7 @@ static void handle_conflict_normal(struct uwb_ie_drp *drp_ie,
 	action = evaluate_conflict_action(drp_ie, ext_beacon_slot, rsv, uwb_rsv_status(rsv));
 
 	if (uwb_rsv_is_owner(rsv)) {
-		switch(action) {
+		switch (action) {
 		case UWB_DRP_CONFLICT_ACT2:
 			/* try move */
 			uwb_rsv_set_state(rsv, UWB_RSV_STATE_O_TO_BE_MOVED);
@@ -267,7 +267,7 @@ static void handle_conflict_normal(struct uwb_ie_drp *drp_ie,
 			break;
 		}
 	} else {
-		switch(action) {
+		switch (action) {
 		case UWB_DRP_CONFLICT_ACT2:
 		case UWB_DRP_CONFLICT_ACT3:
 			uwb_rsv_set_state(rsv, UWB_RSV_STATE_T_CONFLICT);
@@ -292,7 +292,7 @@ static void handle_conflict_expanding(struct uwb_ie_drp *drp_ie, int ext_beacon_
 		/* status of companion is 0 at this point */
 		action = evaluate_conflict_action(drp_ie, ext_beacon_slot, rsv, 0);
 		if (uwb_rsv_is_owner(rsv)) {
-			switch(action) {
+			switch (action) {
 			case UWB_DRP_CONFLICT_ACT2:
 			case UWB_DRP_CONFLICT_ACT3:
 				uwb_rsv_set_state(rsv,
@@ -304,7 +304,7 @@ static void handle_conflict_expanding(struct uwb_ie_drp *drp_ie, int ext_beacon_
 						&rsv->mv.companion_mas);
 			}
 		} else { /* rsv is target */
-			switch(action) {
+			switch (action) {
 			case UWB_DRP_CONFLICT_ACT2:
 			case UWB_DRP_CONFLICT_ACT3:
 				uwb_rsv_set_state(rsv,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
