Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B0B1DFDF4
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 11:27:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79F70878BB;
	Sun, 24 May 2020 09:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nXCfMON3dDVf; Sun, 24 May 2020 09:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92C02877F8;
	Sun, 24 May 2020 09:27:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 385E61BF395
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 09:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 29D7088301
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 09:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLUuqFWhagAQ for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 09:27:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
 [216.40.44.214])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 10EB8881CC
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 09:27:46 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id 9978E1813C179
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 08:51:59 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 2FA4C52C1;
 Sun, 24 May 2020 08:51:57 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3355:3622:3865:3867:3868:3870:3874:4321:4605:5007:8957:9592:10004:10848:11026:11232:11473:11657:11658:11914:12043:12291:12297:12438:12555:12683:12740:12760:12895:13439:13972:14110:14659:14721:21080:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: run46_151812526d37
X-Filterd-Recvd-Size: 5163
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Sun, 24 May 2020 08:51:53 +0000 (UTC)
Message-ID: <cc610c7f97dfd5899ab8b751fdfb9670a0cc761e.camel@perches.com>
Subject: Re: [PATCH] staging: rtl8188eu: clean up some declarations
From: Joe Perches <joe@perches.com>
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
Date: Sun, 24 May 2020 01:51:50 -0700
In-Reply-To: <20200524082748.12901-1-straube.linux@gmail.com>
References: <20200524082748.12901-1-straube.linux@gmail.com>
User-Agent: Evolution 3.36.2-0ubuntu1 
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

On Sun, 2020-05-24 at 10:27 +0200, Michael Straube wrote:
> Clean up some array declarations in phy_iq_calibrate() to reduce
> indentation and clear line over 80 characters checkpatch warnings.

Better still would be to mark these as static const
and also mark the functions that use them to take
const pointers

Something like:
---
 drivers/staging/rtl8188eu/hal/phy.c | 52 ++++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 5eca3625d5a8..9a4f1b84fefc 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -786,7 +786,7 @@ static void pathb_fill_iqk(struct adapter *adapt, bool iqkok, s32 result[][8],
 	}
 }
 
-static void save_adda_registers(struct adapter *adapt, u32 *addareg,
+static void save_adda_registers(struct adapter *adapt, const u32 *addareg,
 				u32 *backup, u32 register_num)
 {
 	u32 i;
@@ -795,7 +795,7 @@ static void save_adda_registers(struct adapter *adapt, u32 *addareg,
 		backup[i] = phy_query_bb_reg(adapt, addareg[i], bMaskDWord);
 }
 
-static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
+static void save_mac_registers(struct adapter *adapt, const u32 *mac_reg,
 			       u32 *backup)
 {
 	u32 i;
@@ -806,7 +806,7 @@ static void save_mac_registers(struct adapter *adapt, u32 *mac_reg,
 	backup[i] = usb_read32(adapt, mac_reg[i]);
 }
 
-static void reload_adda_reg(struct adapter *adapt, u32 *adda_reg,
+static void reload_adda_reg(struct adapter *adapt, const u32 *adda_reg,
 			    u32 *backup, u32 regiester_num)
 {
 	u32 i;
@@ -816,7 +816,7 @@ static void reload_adda_reg(struct adapter *adapt, u32 *adda_reg,
 }
 
 static void reload_mac_registers(struct adapter *adapt,
-				 u32 *mac_reg, u32 *backup)
+				 const u32 *mac_reg, u32 *backup)
 {
 	u32 i;
 
@@ -826,7 +826,7 @@ static void reload_mac_registers(struct adapter *adapt,
 	usb_write32(adapt, mac_reg[i], backup[i]);
 }
 
-static void path_adda_on(struct adapter *adapt, u32 *adda_reg,
+static void path_adda_on(struct adapter *adapt, const u32 *adda_reg,
 			 bool is_path_a_on, bool is2t)
 {
 	u32 path_on;
@@ -844,7 +844,8 @@ static void path_adda_on(struct adapter *adapt, u32 *adda_reg,
 		phy_set_bb_reg(adapt, adda_reg[i], bMaskDWord, path_on);
 }
 
-static void mac_setting_calibration(struct adapter *adapt, u32 *mac_reg, u32 *backup)
+static void mac_setting_calibration(struct adapter *adapt, const u32 *mac_reg,
+				    u32 *backup)
 {
 	u32 i = 0;
 
@@ -952,26 +953,29 @@ static void phy_iq_calibrate(struct adapter *adapt, s32 result[][8],
 	struct odm_dm_struct *dm_odm = &adapt->HalData->odmpriv;
 	u32 i;
 	u8 path_a_ok, path_b_ok;
-	u32 adda_reg[IQK_ADDA_REG_NUM] = {
-					  rFPGA0_XCD_SwitchControl, rBlue_Tooth,
-					  rRx_Wait_CCA, rTx_CCK_RFON,
-					  rTx_CCK_BBON, rTx_OFDM_RFON,
-					  rTx_OFDM_BBON, rTx_To_Rx,
-					  rTx_To_Tx, rRx_CCK,
-					  rRx_OFDM, rRx_Wait_RIFS,
-					  rRx_TO_Rx, rStandby,
-					  rSleep, rPMPD_ANAEN};
-
-	u32 iqk_mac_reg[IQK_MAC_REG_NUM] = {
-					    REG_TXPAUSE, REG_BCN_CTRL,
-					    REG_BCN_CTRL_1, REG_GPIO_MUXCFG};
+	static const u32 adda_reg[IQK_ADDA_REG_NUM] = {
+		rFPGA0_XCD_SwitchControl, rBlue_Tooth,
+		rRx_Wait_CCA, rTx_CCK_RFON,
+		rTx_CCK_BBON, rTx_OFDM_RFON,
+		rTx_OFDM_BBON, rTx_To_Rx,
+		rTx_To_Tx, rRx_CCK,
+		rRx_OFDM, rRx_Wait_RIFS,
+		rRx_TO_Rx, rStandby,
+		rSleep, rPMPD_ANAEN
+	};
+
+	static const u32 iqk_mac_reg[IQK_MAC_REG_NUM] = {
+		REG_TXPAUSE, REG_BCN_CTRL,
+		REG_BCN_CTRL_1, REG_GPIO_MUXCFG
+	};
 
 	/* since 92C & 92D have the different define in IQK_BB_REG */
-	u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
-					      rOFDM0_TRxPathEnable, rOFDM0_TRMuxPar,
-					      rFPGA0_XCD_RFInterfaceSW, rConfig_AntA, rConfig_AntB,
-					      rFPGA0_XAB_RFInterfaceSW, rFPGA0_XA_RFInterfaceOE,
-					      rFPGA0_XB_RFInterfaceOE, rFPGA0_RFMOD};
+	static const u32 iqk_bb_reg_92c[IQK_BB_REG_NUM] = {
+		rOFDM0_TRxPathEnable, rOFDM0_TRMuxPar,
+		rFPGA0_XCD_RFInterfaceSW, rConfig_AntA, rConfig_AntB,
+		rFPGA0_XAB_RFInterfaceSW, rFPGA0_XA_RFInterfaceOE,
+		rFPGA0_XB_RFInterfaceOE, rFPGA0_RFMOD
+	};
 
 	u32 retry_count = 9;
 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
