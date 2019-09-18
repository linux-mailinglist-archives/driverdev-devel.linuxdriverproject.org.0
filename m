Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D57AAB6541
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 15:59:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63B2C864D4;
	Wed, 18 Sep 2019 13:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ejvzxiLyNjPX; Wed, 18 Sep 2019 13:59:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E33186214;
	Wed, 18 Sep 2019 13:59:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F7DE1BF20B
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 13:59:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C748203AA
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 13:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gaHHR+qXgB6p for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 13:59:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id BA4F220005
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 13:59:24 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id s17so3239570plp.2
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=H+au5zx8C+GgoklC0JgEovCrzbRj5aiF8zzfYCS8p30=;
 b=Jo2nda7Aaxq5OjEdJKtaJ2IGs7QKORsaoN8hVUIJfFuepjoPhARP4KN4yEXQzYAifg
 sgyQnu5mSwZwSRfVwPkQRtPp01Fn9SiwD4oFbw9LvOMEYxBcVWfIEatWTw8k+nxjZeDT
 n0X/y7+sfZ7v4IYfWog8t1sLdeykMBPLhGnnexC2ZFGSQSrEaVHvWu+nDBP+eGltGG6t
 BVW6sbXc3+KhBYk153coenssnJFhcPG0vNWGauo0MaLNmFcjgwc/aUWq6pnUeV5LwzEh
 s1pzSJnZa+8FqTgYkr2mTxSEZnR2mA5rqs0ly4sk6kotCphHfCTuF+OVLE+p0xXyi0rw
 wuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=H+au5zx8C+GgoklC0JgEovCrzbRj5aiF8zzfYCS8p30=;
 b=AZAGzxk6IwhiYoUju+mt9jpFOU9SW/NHz5G5AGifSEdRbef7ZpK+jYaFeeZweu2Mfl
 HvUqOPW/tuIh8sryaNX4zGjnQdDtNfaMfM6fO9tcQ2eSAl2uNv2hV84WoPiQkBmLIBRt
 reI+JO8uGgF9eaThq7fBfIiCXKKe9lI3cK1oRH02sARPonv4jTjaGejPPa/9h8fptrq0
 CaSNsdxUooPj6XjvwiCE/YaaVDVuicnQDbcnKnx2vf3houCO3jfh020W5n3BDvKiR02/
 goPtcAU1efaKqoTTBC/UJ1aax0SJfw3CmntHWgoHrohg8q8qklguD7x9GgmQU+4WLSIO
 yU9Q==
X-Gm-Message-State: APjAAAVa06Yt1pR1tsqkzHgDFayyY17MXCAocEWAX3OUhWqz5ZXo3A43
 M/UmHtFMvdQR/rk9pP8sj/EOoWhJ890cfw==
X-Google-Smtp-Source: APXvYqxbFVXkOKLiyu0EcYkwcCXfo2EJutl2885HXnmPoF4UzobNJ2yg25h0DzppEVFL4enZiXAhLA==
X-Received: by 2002:a17:902:7b94:: with SMTP id
 w20mr4219719pll.227.1568815164165; 
 Wed, 18 Sep 2019 06:59:24 -0700 (PDT)
Received: from localhost.localdomain ([2409:4062:87:7bed:5d92:5243:ac2d:ef16])
 by smtp.gmail.com with ESMTPSA id
 c125sm6594769pfa.107.2019.09.18.06.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 06:59:23 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8192u: Remove unnecessary blank lines
Date: Wed, 18 Sep 2019 19:27:42 +0530
Message-Id: <95ce1564a34ff65e51fd63a241713e23e12dac91.1568814125.git.sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568814125.git.sylphrenadin@gmail.com>
References: <cover.1568814125.git.sylphrenadin@gmail.com>
In-Reply-To: <cover.1568814125.git.sylphrenadin@gmail.com>
References: <cover.1568814125.git.sylphrenadin@gmail.com>
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

This patch fixes the file r8192U_core.c to avoid the chechpatch.pl
warnings:

	CHECK: Please don't use multiple blank lines
	CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 70 --------------------------
 1 file changed, 70 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 2821411878ce..ecdd4b1e95c5 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -98,8 +98,6 @@ static char *ifname = "wlan%d";
 static int hwwep = 1;  /* default use hw. set 0 to use software security */
 static int channels = 0x3fff;
 
-
-
 module_param(ifname, charp, 0644);
 module_param(hwwep, int, 0644);
 module_param(channels, int, 0644);
@@ -112,7 +110,6 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
 			     const struct usb_device_id *id);
 static void rtl8192_usb_disconnect(struct usb_interface *intf);
 
-
 static struct usb_driver rtl8192_usb_driver = {
 	.name		= RTL819XU_MODULE_NAME,		  /* Driver name   */
 	.id_table	= rtl8192_usb_id_tbl,		  /* PCI_ID table  */
@@ -122,7 +119,6 @@ static struct usb_driver rtl8192_usb_driver = {
 	.resume		= NULL,				  /* PM resume fn  */
 };
 
-
 struct CHANNEL_LIST {
 	u8	Channel[32];
 	u8	Len;
@@ -207,9 +203,6 @@ static void rtl819x_set_channel_map(u8 channel_plan, struct r8192_priv *priv)
 	}
 }
 
-
-
-
 static void CamResetAllEntry(struct net_device *dev)
 {
 	u32 ulcommand = 0;
@@ -297,7 +290,6 @@ int write_nic_byte(struct net_device *dev, int indx, u8 data)
 	return 0;
 }
 
-
 int write_nic_word(struct net_device *dev, int indx, u16 data)
 {
 	int status;
@@ -324,7 +316,6 @@ int write_nic_word(struct net_device *dev, int indx, u16 data)
 	return 0;
 }
 
-
 int write_nic_dword(struct net_device *dev, int indx, u32 data)
 {
 	int status;
@@ -343,7 +334,6 @@ int write_nic_dword(struct net_device *dev, int indx, u32 data)
 				 usbdata, 4, HZ / 2);
 	kfree(usbdata);
 
-
 	if (status < 0) {
 		netdev_err(dev, "%s TimeOut! status: %d\n", __func__, status);
 		return status;
@@ -352,8 +342,6 @@ int write_nic_dword(struct net_device *dev, int indx, u32 data)
 	return 0;
 }
 
-
-
 int read_nic_byte(struct net_device *dev, int indx, u8 *data)
 {
 	int status;
@@ -379,8 +367,6 @@ int read_nic_byte(struct net_device *dev, int indx, u8 *data)
 	return 0;
 }
 
-
-
 int read_nic_word(struct net_device *dev, int indx, u16 *data)
 {
 	int status;
@@ -788,7 +774,6 @@ void rtl8192_set_rxconf(struct net_device *dev)
 		rxconf = rxconf | RCR_CBSSID;
 	}
 
-
 	if (priv->ieee80211->iw_mode == IW_MODE_MONITOR) {
 		rxconf = rxconf | RCR_AICV;
 		rxconf = rxconf | RCR_APWRMGT;
@@ -797,7 +782,6 @@ void rtl8192_set_rxconf(struct net_device *dev)
 	if (priv->crcmon == 1 && priv->ieee80211->iw_mode == IW_MODE_MONITOR)
 		rxconf = rxconf | RCR_ACRC32;
 
-
 	rxconf = rxconf & ~RX_FIFO_THRESHOLD_MASK;
 	rxconf = rxconf | (RX_FIFO_THRESHOLD_NONE << RX_FIFO_THRESHOLD_SHIFT);
 	rxconf = rxconf & ~MAX_RX_DMA_MASK;
@@ -901,13 +885,11 @@ static u32 rtl819xusb_rx_command_packet(struct net_device *dev,
 	return status;
 }
 
-
 static void rtl8192_data_hard_stop(struct net_device *dev)
 {
 	/* FIXME !! */
 }
 
-
 static void rtl8192_data_hard_resume(struct net_device *dev)
 {
 	/* FIXME !! */
@@ -951,7 +933,6 @@ static int rtl8192_hard_start_xmit(struct sk_buff *skb, struct net_device *dev)
 	struct cb_desc *tcb_desc = (struct cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 	u8 queue_index = tcb_desc->queue_index;
 
-
 	spin_lock_irqsave(&priv->tx_lock, flags);
 
 	memcpy((unsigned char *)(skb->cb), &dev, sizeof(dev));
@@ -1123,7 +1104,6 @@ static void rtl8192_config_rate(struct net_device *dev, u16 *rate_config)
 	}
 }
 
-
 #define SHORT_SLOT_TIME 9
 #define NON_SHORT_SLOT_TIME 20
 
@@ -1188,7 +1168,6 @@ static void rtl8192_net_update(struct net_device *dev)
  */
 void rtl819xusb_beacon_tx(struct net_device *dev, u16  tx_rate)
 {
-
 }
 
 short rtl819xU_tx_cmd(struct net_device *dev, struct sk_buff *skb)
@@ -1389,7 +1368,6 @@ static u8 MRateToHwRate8190Pci(u8 rate)
 	return ret;
 }
 
-
 static u8 QueryIsShort(u8 TxHT, u8 TxRate, struct cb_desc *tcb_desc)
 {
 	u8   tmp_Short;
@@ -1742,7 +1720,6 @@ static const struct ieee80211_qos_parameters def_qos_parameters = {
 	{0, 0, 0, 0} /* tx_op_limit */
 };
 
-
 static void rtl8192_update_beacon(struct work_struct *work)
 {
 	struct r8192_priv *priv = container_of(work, struct r8192_priv,
@@ -1913,11 +1890,9 @@ static int rtl8192_qos_association_resp(struct r8192_priv *priv,
 	if (set_qos_param == 1)
 		schedule_work(&priv->qos_activate);
 
-
 	return 0;
 }
 
-
 static int rtl8192_handle_assoc_response(
 		struct net_device *dev,
 		struct ieee80211_assoc_response_frame *resp,
@@ -1929,7 +1904,6 @@ static int rtl8192_handle_assoc_response(
 	return 0;
 }
 
-
 static void rtl8192_update_ratr_table(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -2218,7 +2192,6 @@ static void rtl8192_init_priv_task(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
-
 	INIT_WORK(&priv->reset_wq, rtl8192_restart);
 
 	INIT_DELAYED_WORK(&priv->watch_dog_wq,
@@ -2515,7 +2488,6 @@ static int rtl8192_read_eeprom_info(struct net_device *dev)
 		break;
 	}
 
-
 	if (priv->rf_type == RF_1T2R)
 		RT_TRACE(COMP_EPROM, "\n1T2R config\n");
 	else
@@ -2668,7 +2640,6 @@ static void rtl8192_hwconfig(struct net_device *dev)
 	/* Set Auto Rate fallback control */
 }
 
-
 /* InitializeAdapter and PhyCfg */
 static bool rtl8192_adapter_start(struct net_device *dev)
 {
@@ -2803,14 +2774,12 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 		RT_TRACE(COMP_INIT, "%s():after phy RF config\n", __func__);
 	}
 
-
 	if (priv->ieee80211->FwRWRF)
 		/* We can force firmware to do RF-R/W */
 		priv->Rf_Mode = RF_OP_By_FW;
 	else
 		priv->Rf_Mode = RF_OP_By_SW_3wire;
 
-
 	rtl8192_phy_updateInitGain(dev);
 	/*--set CCK and OFDM Block "ON"--*/
 	rtl8192_setBBreg(dev, rFPGA0_RFMOD, bCCKEn, 0x1);
@@ -2865,7 +2834,6 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 	}
 	write_nic_byte(dev, 0x87, 0x0);
 
-
 	return init_status;
 }
 
@@ -2996,7 +2964,6 @@ static RESET_TYPE RxCheckStuck(struct net_device *dev)
 	return RESET_TYPE_NORESET;
 }
 
-
 /**
  * This function is called by Checkforhang to check whether we should
  * ask OS to reset driver
@@ -3052,8 +3019,6 @@ static void rtl8192_cancel_deferred_work(struct r8192_priv *priv);
 static int _rtl8192_up(struct net_device *dev);
 static int rtl8192_close(struct net_device *dev);
 
-
-
 static void CamRestoreAllEntry(struct net_device *dev)
 {
 	u8 EntryId = 0;
@@ -3070,7 +3035,6 @@ static void CamRestoreAllEntry(struct net_device *dev)
 
 	RT_TRACE(COMP_SEC, "%s:\n", __func__);
 
-
 	if ((priv->ieee80211->pairwise_key_type == KEY_TYPE_WEP40) ||
 	    (priv->ieee80211->pairwise_key_type == KEY_TYPE_WEP104)) {
 		for (EntryId = 0; EntryId < 4; EntryId++) {
@@ -3096,8 +3060,6 @@ static void CamRestoreAllEntry(struct net_device *dev)
 			       MacAddr, 0, NULL);
 	}
 
-
-
 	if (priv->ieee80211->group_key_type == KEY_TYPE_TKIP) {
 		MacAddr = CAM_CONST_BROAD;
 		for (EntryId = 1; EntryId < 4; EntryId++) {
@@ -3134,7 +3096,6 @@ static void rtl819x_ifsilentreset(struct net_device *dev)
 	int reset_status = 0;
 	struct ieee80211_device *ieee = priv->ieee80211;
 
-
 	/* If we need to check CCK stop, please uncomment this line. */
 	/* bStuck = Adapter->HalFunc.CheckHWStopHandler(Adapter); */
 
@@ -3258,7 +3219,6 @@ static void rtl819x_update_rxcounts(struct r8192_priv *priv, u32 *TotalRxBcnNum,
 	}
 }
 
-
 static void rtl819x_watchdog_wqcallback(struct work_struct *work)
 {
 	struct delayed_work *dwork = to_delayed_work(work);
@@ -3369,7 +3329,6 @@ static int _rtl8192_up(struct net_device *dev)
 	return 0;
 }
 
-
 static int rtl8192_open(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -3381,7 +3340,6 @@ static int rtl8192_open(struct net_device *dev)
 	return ret;
 }
 
-
 int rtl8192_up(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -3392,7 +3350,6 @@ int rtl8192_up(struct net_device *dev)
 	return _rtl8192_up(dev);
 }
 
-
 static int rtl8192_close(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -3440,7 +3397,6 @@ int rtl8192_down(struct net_device *dev)
 	deinit_hal_dm(dev);
 	del_timer_sync(&priv->watch_dog_timer);
 
-
 	ieee80211_softmac_stop_protocol(priv->ieee80211);
 	memset(&priv->ieee80211->current_network, 0,
 	       offsetof(struct ieee80211_network, list));
@@ -3449,7 +3405,6 @@ int rtl8192_down(struct net_device *dev)
 	return 0;
 }
 
-
 void rtl8192_commit(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -3495,7 +3450,6 @@ static void r8192_set_multicast(struct net_device *dev)
 		priv->promisc = promisc;
 }
 
-
 static int r8192_set_mac_adr(struct net_device *dev, void *mac)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
@@ -3525,7 +3479,6 @@ static int rtl8192_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 
 	mutex_lock(&priv->wx_mutex);
 
-
 	if (p->length < sizeof(struct ieee_param) || !p->pointer) {
 		ret = -EINVAL;
 		goto out;
@@ -3778,7 +3731,6 @@ static long rtl819x_translate_todbm(u8 signal_strength_index)
 	return signal_power;
 }
 
-
 /* We can not declare RSSI/EVM total value of sliding window to
  * be a local static. Otherwise, it may increase when we return from S3/S4. The
  * value will be kept in memory or disk. Declare the value in the adaptor
@@ -3841,7 +3793,6 @@ static void rtl8192_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 	if (!bcheck)
 		return;
 
-
 	/* only rtl8190 supported
 	 * rtl8190_process_cck_rxpathsel(priv,pprevious_stats);
 	 */
@@ -3851,7 +3802,6 @@ static void rtl8192_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 
 	/* record the general signal strength to the sliding window. */
 
-
 	/* <2> Showed on UI for engineering
 	 * hardware does not provide rssi information for each rf path in CCK
 	 */
@@ -3881,7 +3831,6 @@ static void rtl8192_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 		}
 	}
 
-
 	/* Check PWDB. */
 	RT_TRACE(COMP_RXDESC, "Smooth %s PWDB = %d\n",
 		 pprevious_stats->bIsCCK ? "CCK" : "OFDM",
@@ -3908,7 +3857,6 @@ static void rtl8192_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 		 pprevious_stats->bIsCCK ? "CCK" : "OFDM",
 		 pprevious_stats->RxPWDBAll);
 
-
 	if (pprevious_stats->bPacketToSelf ||
 	    pprevious_stats->bPacketBeacon ||
 	    pprevious_stats->bToSelfBA) {
@@ -4083,7 +4031,6 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 	u8	rf_rx_num = 0;
 	u8	sq;
 
-
 	priv->stats.numqry_phystatus++;
 
 	is_cck_rate = rx_hal_is_cck_rate(pdrvinfo);
@@ -4214,7 +4161,6 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 			precord_stats->RxMIMOSignalStrength[i] = (u8)RSSI;
 		}
 
-
 		/* (2)PWDB, Average PWDB calculated by hardware
 		 * (for rate adaptive)
 		 */
@@ -4259,7 +4205,6 @@ static void rtl8192_query_rxphystatus(struct r8192_priv *priv,
 				evm & 0xff;
 		}
 
-
 		/* record rx statistics for debug */
 		rxsc_sgien_exflg = pofdm_buf->rxsc_sgien_exflg;
 		prxsc =	(struct phy_ofdm_rx_status_rxsc_sgien_exintfflag *)
@@ -4297,7 +4242,6 @@ static void rtl8192_record_rxdesc_forlateruse(
 	ptarget_stats->Seq_Num = psrc_stats->Seq_Num;
 }
 
-
 static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
 					  struct ieee80211_rx_stats *pstats,
 					  struct rx_drvinfo_819x_usb  *pdrvinfo)
@@ -4341,8 +4285,6 @@ static void TranslateRxSignalStuff819xUsb(struct sk_buff *skb,
 			bToSelfBA = true;
 	}
 
-
-
 	if (bpacket_match_bssid)
 		priv->stats.numpacket_matchbssid++;
 	if (bpacket_toself)
@@ -4383,7 +4325,6 @@ UpdateReceivedRateHistogramStatistics8190(struct net_device *dev,
 	/* 1: short preamble/GI, 0: long preamble/GI */
 	u32 preamble_guardinterval;
 
-
 	if (stats->bCRC)
 		rcvType = 2;
 	else if (stats->bICV)
@@ -4491,7 +4432,6 @@ UpdateReceivedRateHistogramStatistics8190(struct net_device *dev,
 	priv->stats.received_rate_histogram[rcvType][rateIndex]++;
 }
 
-
 static void query_rxdesc_status(struct sk_buff *skb,
 				struct ieee80211_rx_stats *stats,
 				bool bIsRxAggrSubframe)
@@ -4556,7 +4496,6 @@ static void query_rxdesc_status(struct sk_buff *skb,
 
 		stats->bShortPreamble = driver_info->SPLCP;
 
-
 		UpdateReceivedRateHistogramStatistics8190(dev, stats);
 
 		stats->bIsAMPDU = (driver_info->PartAggr == 1);
@@ -4671,8 +4610,6 @@ static void rtl819xusb_process_received_packet(
 #ifdef SW_CRC_CHECK
 	SwCrcCheck();
 #endif
-
-
 }
 
 static void query_rx_cmdpkt_desc_status(struct sk_buff *skb,
@@ -4691,7 +4628,6 @@ static void query_rx_cmdpkt_desc_status(struct sk_buff *skb,
 	stats->ntotalfrag = 1;
 }
 
-
 static void rtl8192_rx_cmd(struct sk_buff *skb)
 {
 	struct rtl8192_rx_info *info = (struct rtl8192_rx_info *)skb->cb;
@@ -4759,7 +4695,6 @@ static const struct net_device_ops rtl8192_netdev_ops = {
 	.ndo_start_xmit         = ieee80211_xmit,
 };
 
-
 /****************************************************************************
  *    ---------------------------- USB_STUFF---------------------------
  *****************************************************************************/
@@ -4815,7 +4750,6 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
 	RT_TRACE(COMP_INIT, "dev name=======> %s\n", dev->name);
 	rtl8192_proc_init_one(dev);
 
-
 	RT_TRACE(COMP_INIT, "Driver probe completed\n");
 	return 0;
 
@@ -4843,7 +4777,6 @@ static void rtl8192_cancel_deferred_work(struct r8192_priv *priv)
 	cancel_work_sync(&priv->qos_activate);
 }
 
-
 static void rtl8192_usb_disconnect(struct usb_interface *intf)
 {
 	struct net_device *dev = usb_get_intfdata(intf);
@@ -4907,7 +4840,6 @@ static int __init rtl8192_usb_module_init(void)
 	return usb_register(&rtl8192_usb_driver);
 }
 
-
 static void __exit rtl8192_usb_module_exit(void)
 {
 	usb_deregister(&rtl8192_usb_driver);
@@ -4949,7 +4881,6 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 	write_nic_byte(dev, SECR,  SECR_value);
 }
 
-
 void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 	    u8 *MacAddr, u8 DefaultKey, u32 *KeyContent)
 {
@@ -4970,7 +4901,6 @@ void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 	else
 		usConfig |= BIT(15) | (KeyType << 2) | KeyIndex;
 
-
 	for (i = 0; i < CAM_CONTENT_COUNT; i++) {
 		TargetCommand  = i + CAM_CONTENT_COUNT * EntryNo;
 		TargetCommand |= BIT(31) | BIT(16);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
