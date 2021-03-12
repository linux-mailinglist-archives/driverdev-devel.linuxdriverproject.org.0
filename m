Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B5933876C
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:32:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8486B6FADC;
	Fri, 12 Mar 2021 08:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tNKGUiRswzE3; Fri, 12 Mar 2021 08:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F8FA6F593;
	Fri, 12 Mar 2021 08:32:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2631B1BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 15DBA8451C
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zUDOU_vfIzOW for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 50FD18450D
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:11 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id x16so1278428wrn.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O1oNS/2NFH1MdMvEInJZVi6CgcfHfKMStI+k/1er7ow=;
 b=iLYdkfcVxmko8zhAoNDPgZ35rXh3Gp51zafz5aPTBskGFizJmedK6/k3qUVQUS7axp
 h3lGEYp0IIhvIKfqxYm4dP8QrUMIeRlVFKrUKPLmyiO6nzxzh/xPNVlORgSfE/KHIysQ
 V30htB1xG0gZp2P7ylroNT1wd50NJrFR5sN1DIqZNaTckuHMtGay5nz1UeO6Rz039oaC
 uOjkORKCbgAD6sMeTBvawbtJeNszBbO1NUBmVHkJZOYU2HkXly1VD8DYvkNKUFVMxt1P
 uVcptyApkVZhEx2DT//YWjQs2g8W/XUJOGeJ+FVvWOvO7zIojaGn0Z9x+hAH9i3QeP15
 BkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O1oNS/2NFH1MdMvEInJZVi6CgcfHfKMStI+k/1er7ow=;
 b=As/z6IwKxKxPqrrmZCIQVf4CgBa4hcUxJSB6GfGQ4aeRkL2+vcxlJueS2qn8PLqllb
 ugXzHah2KFmJ9q9f7dQZdbQsWKGTT+Wqr/o68z+E+f3b8l3P/ZQFgp03rV3vkoqI3zXd
 7ey5vWpP+5zOCZMMp7S4gBIA5t+BpM5zMDkzWP54uIkapZOJKlKDbazngotxD/9vlUUt
 EEDC6gb0rWVJp0S7eAWMtoKjaRT/qzMp2Aw3LmjEH/f5JzWTvSAcJJIjfqQXz5RJ5wa7
 hRLGTsGj9jFbaaGGXvlUj058YjFWSLdpjYhN9yn84zEWeiEI8KI/EdFC4z8yYsYyAjbD
 chSw==
X-Gm-Message-State: AOAM5303UuRpoIzsZesgZgBLNBODyqXKZfgJyShq0dqtuJe+CQBetFUB
 E9OqZmiUKZQrc3deySv538Q=
X-Google-Smtp-Source: ABdhPJwOKD+dCAk3g8Hq2p2zbBTHc0PN+XcRFf1A8VDEK/WQX60pkvmU2/8/3Ur3lkrYwQL1hWd71w==
X-Received: by 2002:a5d:410b:: with SMTP id l11mr12920257wrp.16.1615537629632; 
 Fri, 12 Mar 2021 00:27:09 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:09 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 32/33] staging: rtl8723bs: remove typedefs in hal_btcoex.c
Date: Fri, 12 Mar 2021 09:26:37 +0100
Message-Id: <20210312082638.25512-33-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #23: FILE: hal/hal_btcoex.c:23:
    +typedef struct _btcoexdbginfo {

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_btcoex.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_btcoex.c b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
index c0dcde0c0f9d..267b93765fe8 100644
--- a/drivers/staging/rtl8723bs/hal/hal_btcoex.c
+++ b/drivers/staging/rtl8723bs/hal/hal_btcoex.c
@@ -20,22 +20,22 @@ static u8 GLBtcWiFiInIQKState;
 u32 GLBtcDbgType[BTC_MSG_MAX];
 static u8 GLBtcDbgBuf[BT_TMP_BUF_SIZE];
 
-typedef struct _btcoexdbginfo {
+struct BTCDBGINFO { /* _btcoexdbginfo */
 	u8 *info;
 	u32 size; /*  buffer total size */
 	u32 len; /*  now used length */
-} BTCDBGINFO, *PBTCDBGINFO;
+};
 
-static BTCDBGINFO GLBtcDbgInfo;
+static struct BTCDBGINFO GLBtcDbgInfo;
 
 #define	BT_Operation(Adapter)						false
 
-static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
+static void DBG_BT_INFO_INIT(struct BTCDBGINFO *pinfo, u8 *pbuf, u32 size)
 {
 	if (!pinfo)
 		return;
 
-	memset(pinfo, 0, sizeof(BTCDBGINFO));
+	memset(pinfo, 0, sizeof(struct BTCDBGINFO));
 
 	if (pbuf && size) {
 		pinfo->info = pbuf;
@@ -45,7 +45,7 @@ static void DBG_BT_INFO_INIT(PBTCDBGINFO pinfo, u8 *pbuf, u32 size)
 
 void DBG_BT_INFO(u8 *dbgmsg)
 {
-	PBTCDBGINFO pinfo;
+	struct BTCDBGINFO *pinfo;
 	u32 msglen;
 	u8 *pbuf;
 
@@ -1489,7 +1489,7 @@ void hal_btcoex_RecordPwrMode(struct adapter *padapter, u8 *pCmdBuf, u8 cmdLen)
 
 void hal_btcoex_DisplayBtCoexInfo(struct adapter *padapter, u8 *pbuf, u32 bufsize)
 {
-	PBTCDBGINFO pinfo;
+	struct BTCDBGINFO *pinfo;
 
 
 	pinfo = &GLBtcDbgInfo;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
