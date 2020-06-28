Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9D320C6CA
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 09:33:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C265B86A33;
	Sun, 28 Jun 2020 07:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hznJFl9Hc2Sr; Sun, 28 Jun 2020 07:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FB9986A10;
	Sun, 28 Jun 2020 07:33:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0D521BF34B
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 07:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCE01881D9
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 07:33:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aw5cecftatL1 for <devel@linuxdriverproject.org>;
 Sun, 28 Jun 2020 07:33:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D542C881D0
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 07:33:35 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id h5so13325761wrc.7
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 00:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2d9c5rlwJyLS7VkfWg05Pa2UC7lC7fYcPBwq9WTwDEg=;
 b=C4AKnM80AOAfqzONrFQI2edJq1C+Qwf2g45W13kfjvXDYvbGLBJ+zfs5c9Xsupgsav
 P6UIQediDGH9L+twQJO3Zt0ni0EmTykxhzIPQIxzcK8g3ZJpkys0v7Y6Rh1ATKOQoGHK
 uCY3G/cacma7GbiM6KN29nlfObhGyoBbV+rrOseREMFdLmdw/W2+7QU4/Y10SvYKmxdW
 y5cosK/1Rh6k4sOgYDDHYzPNZtvAYd3M/gg+8qls8xoiRulmX+LbEn00u9P6s1zTJi6H
 1VpjdSh/XhBaCYEM52rZv2dxgCOY7Hr4n2gRY0U7imAzy/NR9GDcfVasSKSG+hm/RMLy
 qKeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2d9c5rlwJyLS7VkfWg05Pa2UC7lC7fYcPBwq9WTwDEg=;
 b=bsBQQkM85OJxmeyeSOxpdFB7HLRcLSaJ3Qrh/y2yvmWiBByM8GFG9Mh3kW77jUvW9+
 c8Wk9t48f8MdCBZ/NK1RM95UDC25OCH3ZsPjWSdHo8x82uC7v7XfJ/SR37/Rhb/CICA8
 eZOWfTDXVTR44HPYkjKLwFzmR1lAGoqVQJ+ZvLBz1VJ+TWG8+tXyL1raX8YalV8HKzW4
 GnrK6uCiPwCpqsG1XdjiRJmClqj275kNQkBuMtP7tm70huMuuTMly60GwC+q0ILAX5br
 76NeH4qtkftjNPNMKgd3HnP8e+bfWeJnko3bt3ULtzuxtwb1fwK5mAEBXj+LFfPddNhz
 X6aA==
X-Gm-Message-State: AOAM532ke1a1pgtw5MrR/yee6kI3gDAwUg30+2+ciGhkyTzyXW6Kn6Dr
 Hbgtue9JmkS5pAkTizjnZUo=
X-Google-Smtp-Source: ABdhPJwZWmGGl1pGY7mCaqScTqLa9a57i4c0tfj0De0ajVq6J+OxF0ndKhCSP3mx22AqqAGuXSj7Bg==
X-Received: by 2002:a5d:4ac3:: with SMTP id y3mr11295573wrs.133.1593329614017; 
 Sun, 28 Jun 2020 00:33:34 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-006-252-175.178.006.pools.vodafone-ip.de. [178.6.252.175])
 by smtp.gmail.com with ESMTPSA id j41sm45863734wre.12.2020.06.28.00.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Jun 2020 00:33:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8188eu: remove unnecessary comments in
 hal8188e_phy_cfg.h
Date: Sun, 28 Jun 2020 09:30:58 +0200
Message-Id: <20200628073058.11228-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary comments in hal8188e_phy_cfg.h to improve
readability and clear multiple blank lines checkpatch issues.

CHECK: Please don't use multiple blank lines

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
v1 -> v2
Remove one more line as suggested by Dan Carpenter.

 .../rtl8188eu/include/hal8188e_phy_cfg.h      | 25 -------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h b/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
index 0c5b2b0948f5..a1055ceb7206 100644
--- a/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
+++ b/drivers/staging/rtl8188eu/include/hal8188e_phy_cfg.h
@@ -7,8 +7,6 @@
 #ifndef __INC_HAL8188EPHYCFG_H__
 #define __INC_HAL8188EPHYCFG_H__
 
-
-/*--------------------------Define Parameters-------------------------------*/
 #define LOOP_LIMIT			5
 #define MAX_STALL_TIME			50		/* us */
 #define AntennaDiversityValue		0x80
@@ -17,11 +15,6 @@
 
 #define MAX_AGGR_NUM			0x07
 
-
-/*--------------------------Define Parameters-------------------------------*/
-
-
-/*------------------------------Define structure----------------------------*/
 enum sw_chnl_cmd_id {
 	CmdID_End,
 	CmdID_SetTxPowerLevel,
@@ -145,22 +138,6 @@ struct bb_reg_def {
 				 */
 };
 
-/*------------------------------Define structure----------------------------*/
-
-
-/*------------------------Export global variable----------------------------*/
-/*------------------------Export global variable----------------------------*/
-
-
-/*------------------------Export Marco Definition---------------------------*/
-/*------------------------Export Marco Definition---------------------------*/
-
-
-/*--------------------------Exported Function prototype---------------------*/
-/*  */
-/*  BB and RF register read/write */
-/*  */
-
 /* Read initi reg value for tx power setting. */
 void rtl8192c_PHY_GetHWRegOriginalValue(struct adapter *adapter);
 
@@ -181,8 +158,6 @@ void PHY_EnableHostClkReq(struct adapter *adapter);
 
 bool SetAntennaConfig92C(struct adapter *adapter, u8 defaultant);
 
-/*--------------------------Exported Function prototype---------------------*/
-
 #define PHY_SetMacReg	PHY_SetBBReg
 
 #define	SIC_HW_SUPPORT			0
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
