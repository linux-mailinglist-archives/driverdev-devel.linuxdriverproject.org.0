Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4E61C220B
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 02:48:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 761F7893A1;
	Sat,  2 May 2020 00:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qqhtnM5WRtk0; Sat,  2 May 2020 00:48:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDB6789394;
	Sat,  2 May 2020 00:48:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5973D1BF9C6
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 00:48:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B05187244
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 00:48:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mpi8q72jfaiG for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 00:48:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 48A3C8723A
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 00:48:44 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id mq3so587141pjb.1
 for <devel@driverdev.osuosl.org>; Fri, 01 May 2020 17:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=uhO2zvJdUEjjA+Ad6DDoLPqccr/R1guurJGlpT0l+5c=;
 b=dD9Q9LUOXNANUJPiaxVQ0c32mWrZVLkhfx3N8EZtAetSkaTiDLsme27IupUpg0kruu
 mSTSaQ8U/Zqzob+r8U/hvIgFlFYsrXdng7ncFaW5WzNOjkEPkgEuEx5IuhWYkYVQiG2u
 hZDji/20MrnviVTN0G8dvxEStcDzjVxN7UPN/Y7Aj1gOMlmQBj6YKZvtTsTDhDgW/WiA
 wtWi722HcnXah4vVaiHjm6ubyaovERZQZtPpnV+IYyS1rAwLBaWjV9o1CQkkgvTU2QVu
 H1zW+HJK6erp4sPT8I3H2vgAC2oVsepE5+0jZnW0dbivH5KJzMMgkteNSK5yFqI9+Gye
 yatQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=uhO2zvJdUEjjA+Ad6DDoLPqccr/R1guurJGlpT0l+5c=;
 b=dTezB6GMOfHjiql3mbakd3Kzr4WQDTX27nsMKPLZ8jVQzdAuQ8d3FmG4rpEt5mmEo6
 vk5RljUS8ieDLfKsLhc9+Uavd8I0l6juc7XeVoKJ6MDkOcJHUOuOX7Y1U32Uc12GSD9W
 nfQASIf4g0m+i9CxEyaHatoehdGPiP2jpEgZ/56i50ccz1I0hyQMvdFF20s+1x8zYp1y
 8rGYFdubdVHjaEkd0vTk2YbCWMcG1JvJMyOTOxpZEB1+0a5/9HdX1Q+Oig9LYzpZRDDQ
 rXrYT2VIHPf4RFZG7Y/lMpSqy6cCsJey+CGYY+6XyYTW/e1hgtGe7NliZrKY0EsOEN41
 lOiQ==
X-Gm-Message-State: AGi0PubAuvvwZvbvD3I5FefLkF4aJugCu/VM7Ekna46n4gg07rf5X6FX
 LsmVJj7sT4SfdpJGjCgNLMjRCkqMk2w=
X-Google-Smtp-Source: APiQypJm1uQ7w1TNeg8jyLqg6FCvIV1sHfz2eFMh65zJsu6nuLVxmYoUJEaNK0auvlO1AbCe8pxapg==
X-Received: by 2002:a17:902:704a:: with SMTP id
 h10mr7031346plt.235.1588380523419; 
 Fri, 01 May 2020 17:48:43 -0700 (PDT)
Received: from amber ([116.88.148.100])
 by smtp.gmail.com with ESMTPSA id u3sm3219961pfb.105.2020.05.01.17.48.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 May 2020 17:48:42 -0700 (PDT)
Date: Sat, 2 May 2020 08:47:50 +0800
From: Yu Jian Wu <yujian.wu1@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Cleanup pointer casting code style
Message-ID: <20200502004747.GA16480@amber>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: hdegoede@redhat.com, yujian.wu1@gmail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup by adding a space between type and pointer, in accordance with
checkpatch.pl message "(foo*)" should be "(foo *)".

Signed-off-by: Yu Jian Wu <yujian.wu1@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c    | 16 ++++++++--------
 drivers/staging/rtl8723bs/os_dep/recv_linux.c    |  2 +-
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index b037868fbf22..8377bc75e308 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -98,7 +98,7 @@ static struct ieee80211_channel rtw_2ghz_channels[] = {
 
 static void rtw_2g_channels_init(struct ieee80211_channel *channels)
 {
-	memcpy((void*)channels, (void*)rtw_2ghz_channels,
+	memcpy((void *)channels, (void *)rtw_2ghz_channels,
 		sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
 	);
 }
@@ -133,8 +133,8 @@ static struct ieee80211_supported_band *rtw_spt_band_alloc(
 	if (!spt_band)
 		goto exit;
 
-	spt_band->channels = (struct ieee80211_channel*)(((u8 *)spt_band)+sizeof(struct ieee80211_supported_band));
-	spt_band->bitrates = (struct ieee80211_rate*)(((u8 *)spt_band->channels)+sizeof(struct ieee80211_channel)*n_channels);
+	spt_band->channels = (struct ieee80211_channel *)(((u8 *)spt_band)+sizeof(struct ieee80211_supported_band));
+	spt_band->bitrates = (struct ieee80211_rate *)(((u8 *)spt_band->channels)+sizeof(struct ieee80211_channel)*n_channels);
 	spt_band->band = band;
 	spt_band->n_channels = n_channels;
 	spt_band->n_bitrates = n_bitrates;
@@ -347,7 +347,7 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 	memcpy(pbuf, pnetwork->network.IEs, pnetwork->network.IELength);
 	len += pnetwork->network.IELength;
 
-	*((__le64*)pbuf) = cpu_to_le64(notify_timestamp);
+	*((__le64 *)pbuf) = cpu_to_le64(notify_timestamp);
 
 	bss = cfg80211_inform_bss_frame(wiphy, notify_channel, (struct ieee80211_mgmt *)buf,
 		len, notify_signal, GFP_ATOMIC);
@@ -1118,7 +1118,7 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 	else if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
 	{
 		if (mac_addr)
-			memcpy(param->sta_addr, (void*)mac_addr, ETH_ALEN);
+			memcpy(param->sta_addr, (void *)mac_addr, ETH_ALEN);
 
 		ret = rtw_cfg80211_ap_set_encryption(ndev, param, param_len);
 	}
@@ -2474,7 +2474,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 		 * for two MAC addresses
 		 */
 		skb_pull(skb, dot11_hdr_len + qos_len + snap_len - sizeof(src_mac_addr) * 2);
-		pdata = (unsigned char*)skb->data;
+		pdata = (unsigned char *)skb->data;
 		memcpy(pdata, dst_mac_addr, sizeof(dst_mac_addr));
 		memcpy(pdata + sizeof(dst_mac_addr), src_mac_addr, sizeof(src_mac_addr));
 
@@ -2529,7 +2529,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 
 		pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
 
-		memcpy(pframe, (void*)buf, len);
+		memcpy(pframe, (void *)buf, len);
 		pattrib->pktlen = len;
 
 		pwlanhdr = (struct ieee80211_hdr *)pframe;
@@ -3019,7 +3019,7 @@ static int _cfg80211_rtw_mgmt_tx(struct adapter *padapter, u8 tx_ch, const u8 *b
 
 	pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
 
-	memcpy(pframe, (void*)buf, len);
+	memcpy(pframe, (void *)buf, len);
 	pattrib->pktlen = len;
 
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 60c35d92ba29..0535dabc1bf5 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -230,7 +230,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 
 		if (rx_pid == psta->pid) {
 			int i;
-			u16 len = *(u16*)(skb->data+ETH_HLEN+2);
+			u16 len = *(u16 *)(skb->data+ETH_HLEN+2);
 			DBG_871X("eth, RC: len = 0x%x\n", len);
 
 			for (i = 0; i < len; i++)
-- 
2.17.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
