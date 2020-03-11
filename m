Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D7C1814B9
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:25:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A7859880C5;
	Wed, 11 Mar 2020 09:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M2Io0jk+ZfVJ; Wed, 11 Mar 2020 09:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08FF387EC5;
	Wed, 11 Mar 2020 09:25:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8527E1BF5DB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 81EF287EC5
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hT7SJSeKGxEX for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6CE5B87F73
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:24:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 63A46AC5C;
 Wed, 11 Mar 2020 09:24:53 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 1/3] staging: rtl8188eu: Use scnprintf() for avoiding
 potential buffer overflow
Date: Wed, 11 Mar 2020 10:24:49 +0100
Message-Id: <20200311092451.23933-2-tiwai@suse.de>
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
 drivers/staging/rtl8188eu/core/rtw_debug.c     | 16 ++++++++--------
 drivers/staging/rtl8188eu/os_dep/ioctl_linux.c |  4 ++--
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_debug.c b/drivers/staging/rtl8188eu/core/rtw_debug.c
index 6c2fe1a112ac..d0e41f2ef1ce 100644
--- a/drivers/staging/rtl8188eu/core/rtw_debug.c
+++ b/drivers/staging/rtl8188eu/core/rtw_debug.c
@@ -15,7 +15,7 @@ int proc_get_drv_version(char *page, char **start,
 {
 	int len = 0;
 
-	len += snprintf(page + len, count - len, "%s\n", DRIVERVERSION);
+	len += scnprintf(page + len, count - len, "%s\n", DRIVERVERSION);
 
 	*eof = 1;
 	return len;
@@ -86,16 +86,16 @@ int proc_get_read_reg(char *page, char **start,
 
 	switch (proc_get_read_len) {
 	case 1:
-		len += snprintf(page + len, count - len, "usb_read8(0x%x)=0x%x\n", proc_get_read_addr, usb_read8(padapter, proc_get_read_addr));
+		len += scnprintf(page + len, count - len, "usb_read8(0x%x)=0x%x\n", proc_get_read_addr, usb_read8(padapter, proc_get_read_addr));
 		break;
 	case 2:
-		len += snprintf(page + len, count - len, "usb_read16(0x%x)=0x%x\n", proc_get_read_addr, usb_read16(padapter, proc_get_read_addr));
+		len += scnprintf(page + len, count - len, "usb_read16(0x%x)=0x%x\n", proc_get_read_addr, usb_read16(padapter, proc_get_read_addr));
 		break;
 	case 4:
-		len += snprintf(page + len, count - len, "usb_read32(0x%x)=0x%x\n", proc_get_read_addr, usb_read32(padapter, proc_get_read_addr));
+		len += scnprintf(page + len, count - len, "usb_read32(0x%x)=0x%x\n", proc_get_read_addr, usb_read32(padapter, proc_get_read_addr));
 		break;
 	default:
-		len += snprintf(page + len, count - len, "error read length=%d\n", proc_get_read_len);
+		len += scnprintf(page + len, count - len, "error read length=%d\n", proc_get_read_len);
 		break;
 	}
 
@@ -138,7 +138,7 @@ int proc_get_adapter_state(char *page, char **start,
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 	int len = 0;
 
-	len += snprintf(page + len, count - len, "bSurpriseRemoved=%d, bDriverStopped=%d\n",
+	len += scnprintf(page + len, count - len, "bSurpriseRemoved=%d, bDriverStopped=%d\n",
 						padapter->bSurpriseRemoved, padapter->bDriverStopped);
 
 	*eof = 1;
@@ -170,11 +170,11 @@ int proc_get_best_channel(char *page, char **start,
 		}
 
 		/*  debug */
-		len += snprintf(page + len, count - len, "The rx cnt of channel %3d = %d\n",
+		len += scnprintf(page + len, count - len, "The rx cnt of channel %3d = %d\n",
 					pmlmeext->channel_set[i].ChannelNum, pmlmeext->channel_set[i].rx_count);
 	}
 
-	len += snprintf(page + len, count - len, "best_channel_24G = %d\n", best_channel_24G);
+	len += scnprintf(page + len, count - len, "best_channel_24G = %d\n", best_channel_24G);
 
 	*eof = 1;
 	return len;
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index ba53959e1303..9a89791720e0 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -193,12 +193,12 @@ static char *translate_scan(struct adapter *padapter,
 	/*Add basic and extended rates */
 	max_rate = 0;
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
