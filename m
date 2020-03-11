Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937C61814B8
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:25:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C63D880C1;
	Wed, 11 Mar 2020 09:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dO-JsxYJB0Vb; Wed, 11 Mar 2020 09:25:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9A2288081;
	Wed, 11 Mar 2020 09:24:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05C0B1BF5DB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 01DDD87D55
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAA8MD4le0k3 for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CAD387DF2
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 878C3AD43;
 Wed, 11 Mar 2020 09:24:53 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 3/3] staging: rtl8723bs: Use scnprintf() for avoiding
 potential buffer overflow
Date: Wed, 11 Mar 2020 10:24:51 +0100
Message-Id: <20200311092451.23933-4-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200311092451.23933-1-tiwai@suse.de>
References: <20200311092451.23933-1-tiwai@suse.de>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 14 +++++++-------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c |  4 ++--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 9590e6f351c1..49807d865e32 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -326,20 +326,20 @@ inline void rtw_set_oper_ch(struct adapter *adapter, u8 ch)
 		dvobj->on_oper_ch_time = jiffies;
 
 #ifdef DBG_CH_SWITCH
-		cnt += snprintf(msg+cnt, len-cnt, "switch to ch %3u", ch);
+		cnt += scnprintf(msg+cnt, len-cnt, "switch to ch %3u", ch);
 
 		for (i = 0; i < dvobj->iface_nums; i++) {
 			struct adapter *iface = dvobj->padapters[i];
-			cnt += snprintf(msg+cnt, len-cnt, " ["ADPT_FMT":", ADPT_ARG(iface));
+			cnt += scnprintf(msg+cnt, len-cnt, " ["ADPT_FMT":", ADPT_ARG(iface));
 			if (iface->mlmeextpriv.cur_channel == ch)
-				cnt += snprintf(msg+cnt, len-cnt, "C");
+				cnt += scnprintf(msg+cnt, len-cnt, "C");
 			else
-				cnt += snprintf(msg+cnt, len-cnt, "_");
+				cnt += scnprintf(msg+cnt, len-cnt, "_");
 			if (iface->wdinfo.listen_channel == ch && !rtw_p2p_chk_state(&iface->wdinfo, P2P_STATE_NONE))
-				cnt += snprintf(msg+cnt, len-cnt, "L");
+				cnt += scnprintf(msg+cnt, len-cnt, "L");
 			else
-				cnt += snprintf(msg+cnt, len-cnt, "_");
-			cnt += snprintf(msg+cnt, len-cnt, "]");
+				cnt += scnprintf(msg+cnt, len-cnt, "_");
+			cnt += scnprintf(msg+cnt, len-cnt, "]");
 		}
 
 		DBG_871X(FUNC_ADPT_FMT" %s\n", FUNC_ADPT_ARG(adapter), msg);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index c145f629488a..29f36cca3972 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -197,12 +197,12 @@ static char *translate_scan(struct adapter *padapter,
 	if (!custom)
 		return start;
 	p = custom;
-	p += snprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
+	p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
 	while (pnetwork->network.SupportedRates[i] != 0) {
 		rate = pnetwork->network.SupportedRates[i]&0x7F;
 		if (rate > max_rate)
 			max_rate = rate;
-		p += snprintf(p, MAX_CUSTOM_LEN - (p - custom),
+		p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
 			      "%d%s ", rate >> 1, (rate & 1) ? ".5" : "");
 		i++;
 	}
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
