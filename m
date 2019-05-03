Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6C6133E6
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 21:09:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03F8E86A42;
	Fri,  3 May 2019 19:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MjzqnqmVB0HW; Fri,  3 May 2019 19:09:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FE97869D1;
	Fri,  3 May 2019 19:09:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD8D01BF3D1
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 19:09:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D80BE8842C
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 19:09:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S+-bzsCGZTHU for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 19:09:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE607883E9
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 19:09:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i21so3135761pgi.12
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 12:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=DJspiaZHM1eoI//z/IQNEAGE75iQh7sdAPJ/FVbwZFU=;
 b=M6cuPuCDvNmhcGIQFQabatAFjIynz+LAQZQr1chqfzSAlbZNMfzIfPMX/3yyM2TptN
 E5kWnY0BtFqtfuY9iYGTPp/DmCJzcNz8hixAG5RmQqf11/bve2Y4R/Pehmoy29bDhlfM
 oK1PjpTV1e2A01l0rwxlLDMEe5lVrq8T14SD+ZUB4T/ZhXCYV3pjDm2HQYxAxF0kQR2M
 tUEBT+12Uaq6nWFB9hQZJGVEp1BH/cO3bgl6tro/dbvDPQDXM+Z9ygIBhRtuJsNvfVQM
 M7RPVih8WlTyf3hKj71HZHnX4lbPRxRu4hmLBeg2B2ujprwGZdFARtnjHFrwfYEHMWD+
 ETFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=DJspiaZHM1eoI//z/IQNEAGE75iQh7sdAPJ/FVbwZFU=;
 b=tbtU+FkKp4CHeoV6hO2AwNKSLvOHsgK0o8Vm0z+LDCQ6w/4hwWX+rHE5QRBkMhsq+b
 7yiV1u6V7hhZc3xKnb+b9OcKE3+mjICvEFmUk7xVxKZ4IcJ9+EsOYhKY6L2WPWwtGVkx
 oUQcyMAoDgNyeKcvfWGUL7FvrZSIlFuB03GxYCl8U3odCn8S/VpHNhu9wukClVTWtrRI
 hahqi5XkgSgfo4L+TbyeIqsuiw6q+AbALtETtAm7keSW8rVugLFMoakpteBiditfURYN
 w8AB97OVLMK2Gf3nFNTt93vCnEhx2aUK0N48SY5yx3BtEVYtctDYLwuEtpdOFm/61Uek
 mc5A==
X-Gm-Message-State: APjAAAX1HQmoSwUP3CyGINQlQduFq3hJGYoJzHoYZdPCPNFKB4rYHZwX
 OLkjk4+4TEqzQFqEsZ8M+c0=
X-Google-Smtp-Source: APXvYqy9UL6Vs1DtKbd6M6eYemQERJiwvw8Zb32g19SyevRJ742v0dr1AQhEninMjmo4mcIGAW0ksA==
X-Received: by 2002:a65:5181:: with SMTP id h1mr12756143pgq.167.1556910584339; 
 Fri, 03 May 2019 12:09:44 -0700 (PDT)
Received: from arch ([2405:204:7146:e2c2:c5d6:dc33:fb4d:9617])
 by smtp.gmail.com with ESMTPSA id n15sm8332317pfb.111.2019.05.03.12.09.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 12:09:43 -0700 (PDT)
Date: Sat, 4 May 2019 00:39:32 +0530
From: Puranjay Mohan <puranjay12@gmail.com>
To: greg@kroah.com
Subject: [PATCH] Staging: rtl8723bs: os_dep: Fix switch-case indentation error
Message-ID: <20190503190932.GA29791@arch>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix indentation for switch-case statements to fix following
checkpatch.pl Error:
ERROR: switch and case should be at the same indent

Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 442 +++++++++---------
 1 file changed, 221 insertions(+), 221 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e3d356952875..9a1192e10e13 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -1671,45 +1671,45 @@ static int rtw_wx_set_rate(struct net_device *dev,
 	target_rate = target_rate/100000;
 
 	switch (target_rate) {
-		case 10:
-			ratevalue = 0;
-			break;
-		case 20:
-			ratevalue = 1;
-			break;
-		case 55:
-			ratevalue = 2;
-			break;
-		case 60:
-			ratevalue = 3;
-			break;
-		case 90:
-			ratevalue = 4;
-			break;
-		case 110:
-			ratevalue = 5;
-			break;
-		case 120:
-			ratevalue = 6;
-			break;
-		case 180:
-			ratevalue = 7;
-			break;
-		case 240:
-			ratevalue = 8;
-			break;
-		case 360:
-			ratevalue = 9;
-			break;
-		case 480:
-			ratevalue = 10;
-			break;
-		case 540:
-			ratevalue = 11;
-			break;
-		default:
-			ratevalue = 11;
-			break;
+	case 10:
+		ratevalue = 0;
+		break;
+	case 20:
+		ratevalue = 1;
+		break;
+	case 55:
+		ratevalue = 2;
+		break;
+	case 60:
+		ratevalue = 3;
+		break;
+	case 90:
+		ratevalue = 4;
+		break;
+	case 110:
+		ratevalue = 5;
+		break;
+	case 120:
+		ratevalue = 6;
+		break;
+	case 180:
+		ratevalue = 7;
+		break;
+	case 240:
+		ratevalue = 8;
+		break;
+	case 360:
+		ratevalue = 9;
+		break;
+	case 480:
+		ratevalue = 10;
+		break;
+	case 540:
+		ratevalue = 11;
+		break;
+	default:
+		ratevalue = 11;
+		break;
 	}
 
 set_rate:
@@ -2267,22 +2267,22 @@ static int rtw_wx_read32(struct net_device *dev,
 	sscanf(ptmp, "%d,%x", &bytes, &addr);
 
 	switch (bytes) {
-		case 1:
-			data32 = rtw_read8(padapter, addr);
-			sprintf(extra, "0x%02X", data32);
-			break;
-		case 2:
-			data32 = rtw_read16(padapter, addr);
-			sprintf(extra, "0x%04X", data32);
-			break;
-		case 4:
-			data32 = rtw_read32(padapter, addr);
-			sprintf(extra, "0x%08X", data32);
-			break;
-		default:
-			DBG_871X(KERN_INFO "%s: usage> read [bytes],[address(hex)]\n", __func__);
-			ret = -EINVAL;
-			goto exit;
+	case 1:
+		data32 = rtw_read8(padapter, addr);
+		sprintf(extra, "0x%02X", data32);
+		break;
+	case 2:
+		data32 = rtw_read16(padapter, addr);
+		sprintf(extra, "0x%04X", data32);
+		break;
+	case 4:
+		data32 = rtw_read32(padapter, addr);
+		sprintf(extra, "0x%08X", data32);
+		break;
+	default:
+		DBG_871X(KERN_INFO "%s: usage> read [bytes],[address(hex)]\n", __func__);
+		ret = -EINVAL;
+		goto exit;
 	}
 	DBG_871X(KERN_INFO "%s: addr = 0x%08X data =%s\n", __func__, addr, extra);
 
@@ -2309,21 +2309,21 @@ static int rtw_wx_write32(struct net_device *dev,
 	sscanf(extra, "%d,%x,%x", &bytes, &addr, &data32);
 
 	switch (bytes) {
-		case 1:
-			rtw_write8(padapter, addr, (u8)data32);
-			DBG_871X(KERN_INFO "%s: addr = 0x%08X data = 0x%02X\n", __func__, addr, (u8)data32);
-			break;
-		case 2:
-			rtw_write16(padapter, addr, (u16)data32);
-			DBG_871X(KERN_INFO "%s: addr = 0x%08X data = 0x%04X\n", __func__, addr, (u16)data32);
-			break;
-		case 4:
-			rtw_write32(padapter, addr, data32);
-			DBG_871X(KERN_INFO "%s: addr = 0x%08X data = 0x%08X\n", __func__, addr, data32);
-			break;
-		default:
-			DBG_871X(KERN_INFO "%s: usage> write [bytes],[address(hex)],[data(hex)]\n", __func__);
-			return -EINVAL;
+	case 1:
+		rtw_write8(padapter, addr, (u8)data32);
+		DBG_871X(KERN_INFO "%s: addr = 0x%08X data = 0x%02X\n", __func__, addr, (u8)data32);
+		break;
+	case 2:
+		rtw_write16(padapter, addr, (u16)data32);
+		DBG_871X(KERN_INFO "%s: addr = 0x%08X data = 0x%04X\n", __func__, addr, (u16)data32);
+		break;
+	case 4:
+		rtw_write32(padapter, addr, data32);
+		DBG_871X(KERN_INFO "%s: addr = 0x%08X data = 0x%08X\n", __func__, addr, data32);
+		break;
+	default:
+		DBG_871X(KERN_INFO "%s: usage> write [bytes],[address(hex)],[data(hex)]\n", __func__);
+		return -EINVAL;
 	}
 
 	return 0;
@@ -3366,23 +3366,23 @@ static int wpa_mlme(struct net_device *dev, u32 command, u32 reason)
 	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 
 	switch (command) {
-		case IEEE_MLME_STA_DEAUTH:
+	case IEEE_MLME_STA_DEAUTH:
 
-			if (!rtw_set_802_11_disassociate(padapter))
-				ret = -1;
+		if (!rtw_set_802_11_disassociate(padapter))
+			ret = -1;
 
-			break;
+		break;
 
-		case IEEE_MLME_STA_DISASSOC:
+	case IEEE_MLME_STA_DISASSOC:
 
-			if (!rtw_set_802_11_disassociate(padapter))
-				ret = -1;
+		if (!rtw_set_802_11_disassociate(padapter))
+			ret = -1;
 
-			break;
+		break;
 
-		default:
-			ret = -EOPNOTSUPP;
-			break;
+	default:
+		ret = -EOPNOTSUPP;
+		break;
 	}
 
 	return ret;
@@ -4252,94 +4252,94 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	/* DBG_871X("%s, cmd =%d\n", __func__, param->cmd); */
 
 	switch (param->cmd) {
-		case RTL871X_HOSTAPD_FLUSH:
+	case RTL871X_HOSTAPD_FLUSH:
 
-			ret = rtw_hostapd_sta_flush(dev);
+		ret = rtw_hostapd_sta_flush(dev);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_ADD_STA:
+	case RTL871X_HOSTAPD_ADD_STA:
 
-			ret = rtw_add_sta(dev, param);
+		ret = rtw_add_sta(dev, param);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_REMOVE_STA:
+	case RTL871X_HOSTAPD_REMOVE_STA:
 
-			ret = rtw_del_sta(dev, param);
+		ret = rtw_del_sta(dev, param);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_SET_BEACON:
+	case RTL871X_HOSTAPD_SET_BEACON:
 
-			ret = rtw_set_beacon(dev, param, p->length);
+		ret = rtw_set_beacon(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_SET_ENCRYPTION:
+	case RTL871X_SET_ENCRYPTION:
 
-			ret = rtw_set_encryption(dev, param, p->length);
+		ret = rtw_set_encryption(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_GET_WPAIE_STA:
+	case RTL871X_HOSTAPD_GET_WPAIE_STA:
 
-			ret = rtw_get_sta_wpaie(dev, param);
+		ret = rtw_get_sta_wpaie(dev, param);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_SET_WPS_BEACON:
+	case RTL871X_HOSTAPD_SET_WPS_BEACON:
 
-			ret = rtw_set_wps_beacon(dev, param, p->length);
+		ret = rtw_set_wps_beacon(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_SET_WPS_PROBE_RESP:
+	case RTL871X_HOSTAPD_SET_WPS_PROBE_RESP:
 
-			ret = rtw_set_wps_probe_resp(dev, param, p->length);
+		ret = rtw_set_wps_probe_resp(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_SET_WPS_ASSOC_RESP:
+	case RTL871X_HOSTAPD_SET_WPS_ASSOC_RESP:
 
-			ret = rtw_set_wps_assoc_resp(dev, param, p->length);
+		ret = rtw_set_wps_assoc_resp(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_SET_HIDDEN_SSID:
+	case RTL871X_HOSTAPD_SET_HIDDEN_SSID:
 
-			ret = rtw_set_hidden_ssid(dev, param, p->length);
+		ret = rtw_set_hidden_ssid(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_GET_INFO_STA:
+	case RTL871X_HOSTAPD_GET_INFO_STA:
 
-			ret = rtw_ioctl_get_sta_data(dev, param, p->length);
+		ret = rtw_ioctl_get_sta_data(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_SET_MACADDR_ACL:
+	case RTL871X_HOSTAPD_SET_MACADDR_ACL:
 
-			ret = rtw_ioctl_set_macaddr_acl(dev, param, p->length);
+		ret = rtw_ioctl_set_macaddr_acl(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_ACL_ADD_STA:
+	case RTL871X_HOSTAPD_ACL_ADD_STA:
 
-			ret = rtw_ioctl_acl_add_sta(dev, param, p->length);
+		ret = rtw_ioctl_acl_add_sta(dev, param, p->length);
 
-			break;
+		break;
 
-		case RTL871X_HOSTAPD_ACL_REMOVE_STA:
+	case RTL871X_HOSTAPD_ACL_REMOVE_STA:
 
-			ret = rtw_ioctl_acl_remove_sta(dev, param, p->length);
+		ret = rtw_ioctl_acl_remove_sta(dev, param, p->length);
 
-			break;
+		break;
 
-		default:
-			DBG_871X("Unknown hostapd request: %d\n", param->cmd);
-			ret = -EOPNOTSUPP;
-			break;
+	default:
+		DBG_871X("Unknown hostapd request: %d\n", param->cmd);
+		ret = -EOPNOTSUPP;
+		break;
 
 	}
 
@@ -5015,62 +5015,62 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		u8 *str;
 
 		switch (priv_args[k].set_args & IW_PRIV_TYPE_MASK) {
-			case IW_PRIV_TYPE_BYTE:
-				/* Fetch args */
-				count = 0;
-				do {
-					str = strsep(&ptr, delim);
-					if (NULL == str) break;
-					sscanf(str, "%i", &temp);
-					buffer[count++] = (u8)temp;
-				} while (1);
-				buffer_len = count;
-
-				/* Number of args to fetch */
-				wdata.data.length = count;
-				if (wdata.data.length > (priv_args[k].set_args & IW_PRIV_SIZE_MASK))
-					wdata.data.length = priv_args[k].set_args & IW_PRIV_SIZE_MASK;
+		case IW_PRIV_TYPE_BYTE:
+			/* Fetch args */
+			count = 0;
+			do {
+				str = strsep(&ptr, delim);
+				if (NULL == str) break;
+				sscanf(str, "%i", &temp);
+				buffer[count++] = (u8)temp;
+			} while (1);
+			buffer_len = count;
+
+			/* Number of args to fetch */
+			wdata.data.length = count;
+			if (wdata.data.length > (priv_args[k].set_args & IW_PRIV_SIZE_MASK))
+				wdata.data.length = priv_args[k].set_args & IW_PRIV_SIZE_MASK;
 
-				break;
+			break;
 
-			case IW_PRIV_TYPE_INT:
-				/* Fetch args */
-				count = 0;
-				do {
-					str = strsep(&ptr, delim);
-					if (NULL == str) break;
-					sscanf(str, "%i", &temp);
-					((s32*)buffer)[count++] = (s32)temp;
-				} while (1);
-				buffer_len = count * sizeof(s32);
-
-				/* Number of args to fetch */
-				wdata.data.length = count;
-				if (wdata.data.length > (priv_args[k].set_args & IW_PRIV_SIZE_MASK))
-					wdata.data.length = priv_args[k].set_args & IW_PRIV_SIZE_MASK;
+		case IW_PRIV_TYPE_INT:
+			/* Fetch args */
+			count = 0;
+			do {
+				str = strsep(&ptr, delim);
+				if (NULL == str) break;
+				sscanf(str, "%i", &temp);
+				((s32*)buffer)[count++] = (s32)temp;
+			} while (1);
+			buffer_len = count * sizeof(s32);
+
+			/* Number of args to fetch */
+			wdata.data.length = count;
+			if (wdata.data.length > (priv_args[k].set_args & IW_PRIV_SIZE_MASK))
+				wdata.data.length = priv_args[k].set_args & IW_PRIV_SIZE_MASK;
 
-				break;
+			break;
 
-			case IW_PRIV_TYPE_CHAR:
-				if (len > 0) {
-					/* Size of the string to fetch */
-					wdata.data.length = len;
-					if (wdata.data.length > (priv_args[k].set_args & IW_PRIV_SIZE_MASK))
-						wdata.data.length = priv_args[k].set_args & IW_PRIV_SIZE_MASK;
+		case IW_PRIV_TYPE_CHAR:
+			if (len > 0) {
+				/* Size of the string to fetch */
+				wdata.data.length = len;
+				if (wdata.data.length > (priv_args[k].set_args & IW_PRIV_SIZE_MASK))
+					wdata.data.length = priv_args[k].set_args & IW_PRIV_SIZE_MASK;
 
-					/* Fetch string */
-					memcpy(buffer, ptr, wdata.data.length);
-				} else {
-					wdata.data.length = 1;
-					buffer[0] = '\0';
-				}
-				buffer_len = wdata.data.length;
-				break;
+				/* Fetch string */
+				memcpy(buffer, ptr, wdata.data.length);
+			} else {
+				wdata.data.length = 1;
+				buffer[0] = '\0';
+			}
+			buffer_len = wdata.data.length;
+			break;
 
-			default:
-				DBG_8192C("%s: Not yet implemented...\n", __func__);
-				err = -1;
-				goto exit;
+		default:
+			DBG_8192C("%s: Not yet implemented...\n", __func__);
+			err = -1;
+			goto exit;
 		}
 
 		if ((priv_args[k].set_args & IW_PRIV_SIZE_FIXED) &&
@@ -5162,43 +5162,43 @@ static int rtw_ioctl_wext_private(struct net_device *dev, union iwreq_data *wrq_
 		}
 
 		switch (priv_args[k].get_args & IW_PRIV_TYPE_MASK) {
-			case IW_PRIV_TYPE_BYTE:
-				/* Display args */
-				for (j = 0; j < n; j++) {
-					sprintf(str, "%d  ", extra[j]);
-					len = strlen(str);
-					output_len = strlen(output);
-					if ((output_len + len + 1) > 4096) {
-						err = -E2BIG;
-						goto exit;
-					}
-					memcpy(output+output_len, str, len);
+		case IW_PRIV_TYPE_BYTE:
+			/* Display args */
+			for (j = 0; j < n; j++) {
+				sprintf(str, "%d  ", extra[j]);
+				len = strlen(str);
+				output_len = strlen(output);
+				if ((output_len + len + 1) > 4096) {
+					err = -E2BIG;
+					goto exit;
 				}
-				break;
+				memcpy(output+output_len, str, len);
+			}
+			break;
 
-			case IW_PRIV_TYPE_INT:
-				/* Display args */
-				for (j = 0; j < n; j++) {
-					sprintf(str, "%d  ", ((__s32*)extra)[j]);
-					len = strlen(str);
-					output_len = strlen(output);
-					if ((output_len + len + 1) > 4096) {
-						err = -E2BIG;
-						goto exit;
-					}
-					memcpy(output+output_len, str, len);
+		case IW_PRIV_TYPE_INT:
+			/* Display args */
+			for (j = 0; j < n; j++) {
+				sprintf(str, "%d  ", ((__s32*)extra)[j]);
+				len = strlen(str);
+				output_len = strlen(output);
+				if ((output_len + len + 1) > 4096) {
+					err = -E2BIG;
+					goto exit;
 				}
-				break;
+				memcpy(output+output_len, str, len);
+			}
+			break;
 
-			case IW_PRIV_TYPE_CHAR:
-				/* Display args */
-				memcpy(output, extra, n);
-				break;
+		case IW_PRIV_TYPE_CHAR:
+			/* Display args */
+			memcpy(output, extra, n);
+			break;
 
-			default:
-				DBG_8192C("%s: Not yet implemented...\n", __func__);
-				err = -1;
-				goto exit;
+		default:
+			DBG_8192C("%s: Not yet implemented...\n", __func__);
+			err = -1;
+			goto exit;
 		}
 
 		output_len = strlen(output) + 1;
@@ -5225,18 +5225,18 @@ int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 	int ret = 0;
 
 	switch (cmd) {
-		case RTL_IOCTL_WPA_SUPPLICANT:
-			ret = wpa_supplicant_ioctl(dev, &wrq->u.data);
-			break;
-		case RTL_IOCTL_HOSTAPD:
-			ret = rtw_hostapd_ioctl(dev, &wrq->u.data);
-			break;
-		case SIOCDEVPRIVATE:
-			ret = rtw_ioctl_wext_private(dev, &wrq->u);
-			break;
-		default:
-			ret = -EOPNOTSUPP;
-			break;
+	case RTL_IOCTL_WPA_SUPPLICANT:
+		ret = wpa_supplicant_ioctl(dev, &wrq->u.data);
+		break;
+	case RTL_IOCTL_HOSTAPD:
+		ret = rtw_hostapd_ioctl(dev, &wrq->u.data);
+		break;
+	case SIOCDEVPRIVATE:
+		ret = rtw_ioctl_wext_private(dev, &wrq->u);
+		break;
+	default:
+		ret = -EOPNOTSUPP;
+		break;
 	}
 
 	return ret;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
