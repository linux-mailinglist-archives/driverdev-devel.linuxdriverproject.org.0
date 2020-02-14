Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B08415E08D
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 17:14:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BD2E8665F;
	Fri, 14 Feb 2020 16:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id stjC-8Iq2pAN; Fri, 14 Feb 2020 16:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D803857D8;
	Fri, 14 Feb 2020 16:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3CE691BF5EA
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 16:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39F9A86292
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 16:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 46JqFLLAbJXQ for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 16:14:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A144886235
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 16:14:51 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B363C24690;
 Fri, 14 Feb 2020 16:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696891;
 bh=sVnxuLXbC0/c7u22TqpsUNlP8xJHaNjnGHR1lfIr40U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IquVBd4E/vTzfHISihL8jnXBTRtFMbdEuPK0EUz5UOU6WmxvtkVjkYGkaGTyUL4//
 fNKpmPQVbYyD/8aWPis9dsFH7PgtNcfTDirDojMKJkaRX+LGRimexoizjUWda15PfT
 KZNZd+/d5U7msNqwkut35uCmc/fPbLUrhwoJ00ts=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 144/252] staging: rtl8188: avoid excessive stack
 usage
Date: Fri, 14 Feb 2020 11:09:59 -0500
Message-Id: <20200214161147.15842-144-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit c497ae2077c055b85c1bf04f3d182a84bd8f365b ]

The rtl8188 copy of the os_dep support code causes a
warning about a very significant stack usage in the translate_scan()
function:

drivers/staging/rtl8188eu/os_dep/ioctl_linux.c: In function 'translate_scan':
drivers/staging/rtl8188eu/os_dep/ioctl_linux.c:306:1: error: the frame size of 1560 bytes is larger than 1400 bytes [-Werror=frame-larger-than=]

Use the same trick as in the rtl8723bs copy of the same function, and
allocate it dynamically.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/r/20200104214832.558198-1-arnd@arndb.de
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index bee3c3a7a7a99..2db4444267a74 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -229,18 +229,21 @@ static char *translate_scan(struct adapter *padapter,
 
 	/* parsing WPA/WPA2 IE */
 	{
-		u8 buf[MAX_WPA_IE_LEN];
+		u8 *buf;
 		u8 wpa_ie[255], rsn_ie[255];
 		u16 wpa_len = 0, rsn_len = 0;
 		u8 *p;
 
+		buf = kzalloc(MAX_WPA_IE_LEN, GFP_ATOMIC);
+		if (!buf)
+			return start;
+
 		rtw_get_sec_ie(pnetwork->network.ies, pnetwork->network.ie_length, rsn_ie, &rsn_len, wpa_ie, &wpa_len);
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: ssid =%s\n", pnetwork->network.Ssid.Ssid));
 		RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
 
 		if (wpa_len > 0) {
 			p = buf;
-			memset(buf, 0, MAX_WPA_IE_LEN);
 			p += sprintf(p, "wpa_ie=");
 			for (i = 0; i < wpa_len; i++)
 				p += sprintf(p, "%02x", wpa_ie[i]);
@@ -257,7 +260,6 @@ static char *translate_scan(struct adapter *padapter,
 		}
 		if (rsn_len > 0) {
 			p = buf;
-			memset(buf, 0, MAX_WPA_IE_LEN);
 			p += sprintf(p, "rsn_ie=");
 			for (i = 0; i < rsn_len; i++)
 				p += sprintf(p, "%02x", rsn_ie[i]);
@@ -271,6 +273,7 @@ static char *translate_scan(struct adapter *padapter,
 			iwe.u.data.length = rsn_len;
 			start = iwe_stream_add_point(info, start, stop, &iwe, rsn_ie);
 		}
+		kfree(buf);
 	}
 
 	{/* parsing WPS IE */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
