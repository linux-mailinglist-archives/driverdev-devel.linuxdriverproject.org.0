Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9352213ED
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 20:05:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DA17F23119;
	Wed, 15 Jul 2020 18:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6MYA04cPtATK; Wed, 15 Jul 2020 18:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9CB320440;
	Wed, 15 Jul 2020 18:05:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D09E21BF380
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 18:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BCAA92052F
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 18:05:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dh3s1dh3O2dM for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 18:05:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
 [216.40.44.214])
 by silver.osuosl.org (Postfix) with ESMTPS id 5659220440
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 18:05:45 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave06.hostedemail.com (Postfix) with ESMTP id 84B6E80073C7
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 17:29:44 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 0E7EF182CF666;
 Wed, 15 Jul 2020 17:29:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3354:3870:3876:4321:5007:10004:10400:10848:11026:11657:11658:11914:12043:12297:12555:12683:12760:12986:13439:14181:14394:14659:14721:21080:21451:21611:21627:30054,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:11, LUA_SUMMARY:none
X-HE-Tag: talk52_34038dd26efb
X-Filterd-Recvd-Size: 3501
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Wed, 15 Jul 2020 17:29:41 +0000 (UTC)
Message-ID: <818bbd25924f0c733a4a39d426fd30392d4eae80.camel@perches.com>
Subject: [PATCH] staging: rtl*/security: Use static const in array declarations
From: Joe Perches <joe@perches.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Date: Wed, 15 Jul 2020 10:29:37 -0700
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Cc: devel <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use static const in declarations where appropriate.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 4 ++--
 drivers/staging/rtl8712/rtl871x_security.c    | 2 +-
 drivers/staging/rtl8723bs/core/rtw_security.c | 6 +++---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index f9139f72b3a7..3483c3d9cb56 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -734,7 +734,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 /******** SBOX Table *********/
 /*****************************/
 
-static  u8 sbox_table[256] = {
+static const u8 sbox_table[256] = {
 	0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5,
 	0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
 	0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
@@ -817,7 +817,7 @@ static void next_key(u8 *key, int round)
 {
 	u8 rcon;
 	u8 sbox_key[4];
-	u8 rcon_table[12] = {
+	static const u8 rcon_table[12] = {
 		0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80,
 		0x1b, 0x36, 0x36, 0x36
 	};
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index 73e3d5ef3af2..c05010d85212 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -762,7 +762,7 @@ static void next_key(u8 *key, sint round)
 {
 	u8 rcon;
 	u8 sbox_key[4];
-	u8 rcon_table[12] = {
+	static const u8 rcon_table[12] = {
 		0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80,
 		0x1b, 0x36, 0x36, 0x36
 	};
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index ec9122070e58..7f74e1d05b3a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -10,7 +10,7 @@
 #include <drv_types.h>
 #include <rtw_debug.h>
 
-static const char *_security_type_str[] = {
+static const char * const _security_type_str[] = {
 	"N/A",
 	"WEP40",
 	"TKIP",
@@ -842,7 +842,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 /******** SBOX Table *********/
 /*****************************/
 
-	static  u8 sbox_table[256] = {
+	static const u8 sbox_table[256] = {
 			0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5,
 			0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
 			0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0,
@@ -957,7 +957,7 @@ static void next_key(u8 *key, sint round)
 {
 		u8 rcon;
 		u8 sbox_key[4];
-		u8 rcon_table[12] = {
+		static const u8 rcon_table[12] = {
 			0x01, 0x02, 0x04, 0x08,
 			0x10, 0x20, 0x40, 0x80,
 			0x1b, 0x36, 0x36, 0x36


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
