Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C840E6F272
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Jul 2019 11:57:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68B7B877B3;
	Sun, 21 Jul 2019 09:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iTj0sWifo2+4; Sun, 21 Jul 2019 09:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8BE3875B2;
	Sun, 21 Jul 2019 09:57:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E1B01BF5A8
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 09:57:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DC7482D8E
 for <devel@linuxdriverproject.org>; Sun, 21 Jul 2019 09:57:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uw7vVkMZS1l5 for <devel@linuxdriverproject.org>;
 Sun, 21 Jul 2019 09:57:27 +0000 (UTC)
X-Greylist: delayed 00:43:26 by SQLgrey-1.7.6
Received: from de-outgoing-5-4.antispam.co.za (de-outgoing-5-4.antispam.co.za
 [144.76.180.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9D9EC86030
 for <devel@driverdev.osuosl.org>; Sun, 21 Jul 2019 09:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=out.zamailgate.com; s=default; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:reply-to:sender:bcc:in-reply-to:references
 :content-type; bh=C3NOqm7g+1xLCN898B/iPzQ76t4ZGrksC8YuJHdsDGY=; b=nZWumF4rMTj
 XVt9fzA4+rAc17fyp0WmqPnjMSZU1q3wP8L1beCv/4ris0CZnWhVnp2e5BpLMsaIfhZqcf4CYNEPC
 nprN4b3RW76OyDUtigj5qblz/cDlmqsyn6yG0Zi11jhyswK+GLIiLQAEaXj4nOkW1DMGQ5375ZplQ
 F4/JHQ=;
Received: from cp46-jhb.za-dns.com ([164.160.91.39])
 by server5.antispam.co.za with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
 (envelope-from <hm@bitlabs.co.za>)
 id 1hp7ul-0007nM-74; Sun, 21 Jul 2019 11:13:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=bitlabs.co.za; s=default; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C3NOqm7g+1xLCN898B/iPzQ76t4ZGrksC8YuJHdsDGY=; b=pNFP5qPvPWmCPhU0Ma8tOBdmAF
 rQJq2OqFJPEnHZmF7480Eu+Is1egpfYHNh0SYvtjz1h+EkH20gfRsYiZ9Z4PWhRH4zZ9nQSC26F7f
 wwAnU/OmtBWqJnHnDjO8E53jCIuCs80ODiiQcxsfsDGwEt8znlN6tbhNXjUpQyupyImAlPspDprft
 jE0DOOD0YTAKGjnYukzbnRtwu/+glJuLCiPadfhbLfFxJ6H7rcuiuARBAaF1NsT/cbsOJdZnx/2iG
 xLdmI6i9VMRxPKunUGzySrauAu+q051r2nj1gYnG1DDW9IG50XHGGKI1Shb5d9V8VUc0XI0B04xNA
 rgy+12bA==;
Received: from [45.56.148.82] (port=46612 helo=localhost.localdomain)
 by cp46-jhb.za-dns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <hm@bitlabs.co.za>)
 id 1hp7uc-0003aI-Sb; Sun, 21 Jul 2019 11:13:49 +0200
From: Hennie Muller <hm@bitlabs.co.za>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tim Collier <osdevtc@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging/wlan-ng: Fixing "line over 80 characters" warnings.
Date: Sun, 21 Jul 2019 11:13:26 +0200
Message-Id: <20190721091326.7363-1-hm@bitlabs.co.za>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Get-Message-Sender-Via: cp46-jhb.za-dns.com: authenticated_id:
 hm@bitlabs.co.za
X-Authenticated-Sender: cp46-jhb.za-dns.com: hm@bitlabs.co.za
X-AuthUser: hm@bitlabs.co.za
X-AuthUsername: 
X-AuthDomain: @
X-Originating-IP: 164.160.91.39
X-SpamExperts-Domain: out.zamailgate.com
X-SpamExperts-Username: 164.160.91.39
Authentication-Results: antispam.co.za;
 auth=pass smtp.auth=164.160.91.39@out.zamailgate.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (3.80010122386e-05)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0STiPCilqAig5bem4hJMKBmpSDasLI4SayDByyq9LIhVsUKZGr6RuziN
 FPGbh4nmKETNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3KTZMqjZ9tAWmqmNc2NgR7k+vh
 S+tbh18jTMao+YsbFonRbRLxY6iR/iP1vJ8wCVdpcmiTw2fyNIseT1DVvKHXE4WuHjpr5K811Lf0
 BmpxDPYq3bEypb4z2qpYxnFMeQdJU2Itm39BdCc4FEP6OrUewnSRpz3j4wp5y6IcCenJwdKd3HL0
 fdYlL5dg6v0YbuUO9S669xe8L+/RlpoW/6qtDMg/zbveTDVXOzMKzZZm9F3hgfYZctTevKN8E1UU
 hdhbmxtw59U+7g6cDaumiL4eFdfn/siZpwHcwyaNFZFl/Pp5XbOI7YFujQ0UVs6hB+fmnXQrmhss
 wM4hISBumkxR0YtmzhcQd9B0nExZA2UgkeLHG0Ye2LbFM/RT0RfeVr7iWWqCIfBXMbKb7ptrVE2D
 x2Cile4m0iE8LXBlgMTAI4avRMJRmxob6YsAftWgMLxMQe+bc+r9MxWEuItVKVsOcvEyD626wjRt
 3bpJYyMCBfDfX8TdqEXkwxwMjsp2mNApZaFUn8Js0GCH4VTbKRDPoWCmYaeFuQJfagmVVZOb30aP
 8lyJOtfGFSaeYzNpGXFIBz1G8OwlaTaJXM0qE7ibEZxDbEhAgjrMuJIrUNhFTjcRcJw3PSKL6NG5
 r/tvBjYWl21jEK83VXmw1ftLZOYkxk+Oqdh9Y/fqtCteYvidEfrNv6gvRG8Egtsm7Ue22/SBYq6o
 R1HYGPmUKiJhSw0zCmWskqDOMYqzkm0HfbbVDu+4ghn46KKFMnPtX0w9kfXdsUqwEDQL26uGQSqH
 xmpnIUnPcqNtfMU3YQFgZg9F0nvaexdOxwEd831fMYm1YxiZmaHgOJyep133Kw8lxsMC73LYM3A6
 BXfvel8OEFDbU53Ont4N31kviVeOgNgauj2+uVfbH57JqnuJIZVDMyfzzbH0zJpgt1J3YhazgNHF
 XXN7HXSisjuT4lXIWlJ1KdJr3jR5NeVaJQBh0uawl0Cg8sThfwVaUGvDMlY1Qlc9c2IKkTaNDTyF
 YlBdcjHuMn4fuoZ+0qi7DcNdOc6BF+EFcVm9ysK5moU0c50t4gcH8zX2OKHH5lr9xXvSM4nM3avg
X-Report-Abuse-To: spam@server1.antispam.co.za
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
Cc: Hennie Muller <hm@bitlabs.co.za>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reindent multiline function calls to be tab aligned, instead of open brace
aligned. This fixes multiple "WARNING: line over 80 characters" generated
by checkpatch.

Signed-off-by: Hennie Muller <hm@bitlabs.co.za>
---
 drivers/staging/wlan-ng/cfg80211.c    |  55 ++---
 drivers/staging/wlan-ng/hfa384x_usb.c | 282 +++++++++++++-------------
 drivers/staging/wlan-ng/p80211conv.c  |  48 +++--
 drivers/staging/wlan-ng/p80211req.c   |   6 +-
 drivers/staging/wlan-ng/prism2fw.c    | 101 +++++----
 drivers/staging/wlan-ng/prism2mgmt.c  | 170 ++++++++--------
 drivers/staging/wlan-ng/prism2mib.c   |  14 +-
 drivers/staging/wlan-ng/prism2sta.c   | 282 +++++++++++++-------------
 drivers/staging/wlan-ng/prism2usb.c   |  13 +-
 9 files changed, 494 insertions(+), 477 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index eee1998c4b18..c69fb83267ef 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -130,8 +130,8 @@ static int prism2_change_virtual_intf(struct wiphy *wiphy,
 
 	/* Set Operation mode to the PORT TYPE RID */
 	result = prism2_domibset_uint32(wlandev,
-					DIDMIB_P2_STATIC_CNFPORTTYPE,
-					data);
+			DIDMIB_P2_STATIC_CNFPORTTYPE,
+			data);
 
 	if (result)
 		err = -EFAULT;
@@ -159,8 +159,8 @@ static int prism2_add_key(struct wiphy *wiphy, struct net_device *dev,
 	}
 
 	if (prism2_domibset_uint32(wlandev,
-				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-				   key_index))
+			DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+			key_index))
 		return -EFAULT;
 
 	/* send key to driver */
@@ -232,8 +232,8 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
 	struct wlandevice *wlandev = dev->ml_priv;
 
 	return  prism2_domibset_uint32(wlandev,
-				       DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
-				       key_index);
+			DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
+			key_index);
 }
 
 static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
@@ -366,7 +366,8 @@ static int prism2_scan(struct wiphy *wiphy,
 			msg2.beaconperiod.data,
 			ie_buf,
 			ie_len,
-			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+			/* Conversion to signed type */
+			(msg2.signal.data - 65536) * 100,
 			GFP_KERNEL
 		);
 
@@ -403,8 +404,8 @@ static int prism2_set_wiphy_params(struct wiphy *wiphy, u32 changed)
 			data = wiphy->rts_threshold;
 
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11MAC_OPERATIONTABLE_RTSTHRESHOLD,
-						data);
+				DIDMIB_DOT11MAC_OPERATIONTABLE_RTSTHRESHOLD,
+				data);
 		if (result) {
 			err = -EFAULT;
 			goto exit;
@@ -418,8 +419,8 @@ static int prism2_set_wiphy_params(struct wiphy *wiphy, u32 changed)
 			data = wiphy->frag_threshold;
 
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11MAC_OPERATIONTABLE_FRAGMENTATIONTHRESHOLD,
-						data);
+			DIDMIB_DOT11MAC_OPERATIONTABLE_FRAGMENTATIONTHRESHOLD,
+			data);
 		if (result) {
 			err = -EFAULT;
 			goto exit;
@@ -448,8 +449,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 	if (channel) {
 		chan = ieee80211_frequency_to_channel(channel->center_freq);
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
-						chan);
+				DIDMIB_DOT11PHY_DSSSTABLE_CURRENTCHANNEL,
+				chan);
 		if (result)
 			goto exit;
 	}
@@ -463,8 +464,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 		msg_join.authtype.data = P80211ENUM_authalg_sharedkey;
 	else
 		netdev_warn(dev,
-			    "Unhandled authorisation type for connect (%d)\n",
-			    sme->auth_type);
+			"Unhandled authorisation type for connect (%d)\n",
+			sme->auth_type);
 
 	/* Set the encryption - we only support wep */
 	if (is_wep) {
@@ -484,8 +485,8 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 			did = didmib_dot11smt_wepdefaultkeystable_key(
 					sme->key_idx + 1);
 			result = prism2_domibset_pstr32(wlandev,
-							did, sme->key_len,
-							(u8 *)sme->key);
+					did, sme->key_len,
+					(u8 *)sme->key);
 			if (result)
 				goto exit;
 		}
@@ -495,14 +496,14 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 		 * seems reasonable anyways
 		 */
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED,
-						P80211ENUM_truth_true);
+				DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED,
+				P80211ENUM_truth_true);
 		if (result)
 			goto exit;
 
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
-						P80211ENUM_truth_true);
+				DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
+				P80211ENUM_truth_true);
 		if (result)
 			goto exit;
 
@@ -511,14 +512,14 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
 		 * and exclude unencrypted
 		 */
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED,
-						P80211ENUM_truth_false);
+				DIDMIB_DOT11SMT_PRIVACYTABLE_PRIVACYINVOKED,
+				P80211ENUM_truth_false);
 		if (result)
 			goto exit;
 
 		result = prism2_domibset_uint32(wlandev,
-						DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
-						P80211ENUM_truth_false);
+				DIDMIB_DOT11SMT_PRIVACYTABLE_EXCLUDEUNENCRYPTED,
+				P80211ENUM_truth_false);
 		if (result)
 			goto exit;
 	}
@@ -588,8 +589,8 @@ static int prism2_set_tx_power(struct wiphy *wiphy, struct wireless_dev *wdev,
 		data = MBM_TO_DBM(mbm);
 
 	result = prism2_domibset_uint32(wlandev,
-		DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
-		data);
+			DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL,
+			data);
 
 	if (result) {
 		err = -EFAULT;
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index ab734534093b..2c794e897989 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -342,8 +342,8 @@ static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
 	/* Post the IN urb */
 	usb_fill_bulk_urb(&hw->rx_urb, hw->usb,
 			  hw->endp_in,
-			  skb->data, sizeof(union hfa384x_usbin),
-			  hfa384x_usbin_callback, hw->wlandev);
+		skb->data, sizeof(union hfa384x_usbin),
+		hfa384x_usbin_callback, hw->wlandev);
 
 	hw->rx_urb_skb = skb;
 
@@ -355,8 +355,8 @@ static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
 		/* Check whether we need to reset the RX pipe */
 		if (result == -EPIPE) {
 			netdev_warn(hw->wlandev->netdev,
-				    "%s rx pipe stalled: requesting reset\n",
-				    hw->wlandev->netdev->name);
+				"%s rx pipe stalled: requesting reset\n",
+				hw->wlandev->netdev->name);
 			if (!test_and_set_bit(WORK_RX_HALT, &hw->usb_flags))
 				schedule_work(&hw->usb_work);
 		}
@@ -405,8 +405,8 @@ static int submit_tx_urb(struct hfa384x *hw, struct urb *tx_urb, gfp_t memflags)
 			/* Test whether we need to reset the TX pipe */
 			if (result == -EPIPE) {
 				netdev_warn(hw->wlandev->netdev,
-					    "%s tx pipe stalled: requesting reset\n",
-					    netdev->name);
+					"%s tx pipe stalled: requesting reset\n",
+					netdev->name);
 				set_bit(WORK_TX_HALT, &hw->usb_flags);
 				schedule_work(&hw->usb_work);
 			} else if (result == 0) {
@@ -455,8 +455,8 @@ static void hfa384x_usb_defer(struct work_struct *data)
 		ret = usb_clear_halt(hw->usb, hw->endp_in);
 		if (ret != 0) {
 			netdev_err(hw->wlandev->netdev,
-				   "Failed to clear rx pipe for %s: err=%d\n",
-				   netdev->name, ret);
+				 "Failed to clear rx pipe for %s: err=%d\n",
+				 netdev->name, ret);
 		} else {
 			netdev_info(hw->wlandev->netdev, "%s rx pipe reset complete.\n",
 				    netdev->name);
@@ -472,8 +472,8 @@ static void hfa384x_usb_defer(struct work_struct *data)
 		ret = submit_rx_urb(hw, GFP_KERNEL);
 		if (ret != 0) {
 			netdev_err(hw->wlandev->netdev,
-				   "Failed to resume %s rx pipe.\n",
-				   netdev->name);
+				"Failed to resume %s rx pipe.\n",
+				netdev->name);
 		} else {
 			clear_bit(WORK_RX_RESUME, &hw->usb_flags);
 		}
@@ -487,8 +487,8 @@ static void hfa384x_usb_defer(struct work_struct *data)
 		ret = usb_clear_halt(hw->usb, hw->endp_out);
 		if (ret != 0) {
 			netdev_err(hw->wlandev->netdev,
-				   "Failed to clear tx pipe for %s: err=%d\n",
-				   netdev->name, ret);
+				"Failed to clear tx pipe for %s: err=%d\n",
+				netdev->name, ret);
 		} else {
 			netdev_info(hw->wlandev->netdev, "%s tx pipe reset complete.\n",
 				    netdev->name);
@@ -839,7 +839,7 @@ hfa384x_dorrid_wait(struct hfa384x *hw, u16 rid, void *riddata,
 		    unsigned int riddatalen)
 {
 	return hfa384x_dorrid(hw, DOWAIT,
-			      rid, riddata, riddatalen, NULL, NULL, NULL);
+		rid, riddata, riddatalen, NULL, NULL, NULL);
 }
 
 static inline int
@@ -849,8 +849,8 @@ hfa384x_dorrid_async(struct hfa384x *hw,
 		     ctlx_usercb_t usercb, void *usercb_data)
 {
 	return hfa384x_dorrid(hw, DOASYNC,
-			      rid, riddata, riddatalen,
-			      cmdcb, usercb, usercb_data);
+		rid, riddata, riddatalen,
+		cmdcb, usercb, usercb_data);
 }
 
 static inline int
@@ -858,7 +858,7 @@ hfa384x_dowrid_wait(struct hfa384x *hw, u16 rid, void *riddata,
 		    unsigned int riddatalen)
 {
 	return hfa384x_dowrid(hw, DOWAIT,
-			      rid, riddata, riddatalen, NULL, NULL, NULL);
+		rid, riddata, riddatalen, NULL, NULL, NULL);
 }
 
 static inline int
@@ -868,8 +868,8 @@ hfa384x_dowrid_async(struct hfa384x *hw,
 		     ctlx_usercb_t usercb, void *usercb_data)
 {
 	return hfa384x_dowrid(hw, DOASYNC,
-			      rid, riddata, riddatalen,
-			      cmdcb, usercb, usercb_data);
+		rid, riddata, riddatalen,
+		cmdcb, usercb, usercb_data);
 }
 
 static inline int
@@ -877,7 +877,7 @@ hfa384x_dormem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
 {
 	return hfa384x_dormem(hw, DOWAIT,
-			      page, offset, data, len, NULL, NULL, NULL);
+		page, offset, data, len, NULL, NULL, NULL);
 }
 
 static inline int
@@ -887,8 +887,8 @@ hfa384x_dormem_async(struct hfa384x *hw,
 		     ctlx_usercb_t usercb, void *usercb_data)
 {
 	return hfa384x_dormem(hw, DOASYNC,
-			      page, offset, data, len,
-			      cmdcb, usercb, usercb_data);
+		page, offset, data, len,
+		cmdcb, usercb, usercb_data);
 }
 
 static inline int
@@ -896,7 +896,7 @@ hfa384x_dowmem_wait(struct hfa384x *hw,
 		    u16 page, u16 offset, void *data, unsigned int len)
 {
 	return hfa384x_dowmem(hw, DOWAIT,
-			      page, offset, data, len, NULL, NULL, NULL);
+		page, offset, data, len, NULL, NULL, NULL);
 }
 
 static inline int
@@ -909,8 +909,8 @@ hfa384x_dowmem_async(struct hfa384x *hw,
 		     ctlx_usercb_t usercb, void *usercb_data)
 {
 	return hfa384x_dowmem(hw, DOASYNC,
-			      page, offset, data, len,
-			      cmdcb, usercb, usercb_data);
+		page, offset, data, len,
+		cmdcb, usercb, usercb_data);
 }
 
 /*----------------------------------------------------------------
@@ -1260,8 +1260,8 @@ static int hfa384x_usbctlx_complete_sync(struct hfa384x *hw,
 			result = completor->complete(completor);
 		} else {
 			netdev_warn(hw->wlandev->netdev, "CTLX[%d] error: state(%s)\n",
-				    le16_to_cpu(ctlx->outbuf.type),
-				    ctlxstr(ctlx->state));
+				le16_to_cpu(ctlx->outbuf.type),
+				ctlxstr(ctlx->state));
 			result = -EIO;
 		}
 
@@ -1346,8 +1346,8 @@ hfa384x_docmd(struct hfa384x *hw,
 		struct usbctlx_completor *completor;
 
 		completor = init_cmd_completor(&cmd_completor,
-					       &ctlx->inbuf.cmdresp,
-					       &cmd->result);
+				&ctlx->inbuf.cmdresp,
+				&cmd->result);
 
 		result = hfa384x_usbctlx_complete_sync(hw, ctlx, completor);
 	}
@@ -1413,7 +1413,7 @@ hfa384x_dorrid(struct hfa384x *hw,
 	/* Initialize the command */
 	ctlx->outbuf.rridreq.type = cpu_to_le16(HFA384x_USB_RRIDREQ);
 	ctlx->outbuf.rridreq.frmlen =
-	    cpu_to_le16(sizeof(ctlx->outbuf.rridreq.rid));
+		cpu_to_le16(sizeof(ctlx->outbuf.rridreq.rid));
 	ctlx->outbuf.rridreq.rid = cpu_to_le16(rid);
 
 	ctlx->outbufsize = sizeof(ctlx->outbuf.rridreq);
@@ -1430,12 +1430,10 @@ hfa384x_dorrid(struct hfa384x *hw,
 	} else if (mode == DOWAIT) {
 		struct usbctlx_rrid_completor completor;
 
-		result =
-		    hfa384x_usbctlx_complete_sync(hw, ctlx,
-						  init_rrid_completor
-						  (&completor,
-						   &ctlx->inbuf.rridresp,
-						   riddata, riddatalen));
+		result = hfa384x_usbctlx_complete_sync(hw, ctlx,
+			       init_rrid_completor(&completor,
+			       &ctlx->inbuf.rridresp,
+			       riddata, riddatalen));
 	}
 
 done:
@@ -1495,8 +1493,8 @@ hfa384x_dowrid(struct hfa384x *hw,
 	/* Initialize the command */
 	ctlx->outbuf.wridreq.type = cpu_to_le16(HFA384x_USB_WRIDREQ);
 	ctlx->outbuf.wridreq.frmlen = cpu_to_le16((sizeof
-						   (ctlx->outbuf.wridreq.rid) +
-						   riddatalen + 1) / 2);
+		(ctlx->outbuf.wridreq.rid) +
+		riddatalen + 1) / 2);
 	ctlx->outbuf.wridreq.rid = cpu_to_le16(rid);
 	memcpy(ctlx->outbuf.wridreq.data, riddata, riddatalen);
 
@@ -1518,11 +1516,10 @@ hfa384x_dowrid(struct hfa384x *hw,
 		struct hfa384x_cmdresult wridresult;
 
 		result = hfa384x_usbctlx_complete_sync(hw,
-						       ctlx,
-						       init_wrid_completor
-						       (&completor,
-							&ctlx->inbuf.wridresp,
-							&wridresult));
+				ctlx,
+				init_wrid_completor(&completor,
+				&ctlx->inbuf.wridresp,
+				&wridresult));
 	}
 
 done:
@@ -1609,12 +1606,10 @@ hfa384x_dormem(struct hfa384x *hw,
 	} else if (mode == DOWAIT) {
 		struct usbctlx_rmem_completor completor;
 
-		result =
-		    hfa384x_usbctlx_complete_sync(hw, ctlx,
-						  init_rmem_completor
-						  (&completor,
-						   &ctlx->inbuf.rmemresp, data,
-						   len));
+		result = hfa384x_usbctlx_complete_sync(hw, ctlx,
+				init_rmem_completor(&completor,
+				&ctlx->inbuf.rmemresp, data,
+				len));
 	}
 
 done:
@@ -1701,12 +1696,10 @@ hfa384x_dowmem(struct hfa384x *hw,
 		struct usbctlx_cmd_completor completor;
 		struct hfa384x_cmdresult wmemresult;
 
-		result = hfa384x_usbctlx_complete_sync(hw,
-						       ctlx,
-						       init_wmem_completor
-						       (&completor,
-							&ctlx->inbuf.wmemresp,
-							&wmemresult));
+		result = hfa384x_usbctlx_complete_sync(hw, ctlx,
+				init_wmem_completor(&completor,
+				&ctlx->inbuf.wmemresp,
+				&wmemresult));
 	}
 
 done:
@@ -1832,15 +1825,17 @@ int hfa384x_drvr_flashdl_enable(struct hfa384x *hw)
 
 	/* Retrieve the buffer loc&size and timeout */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_DOWNLOADBUFFER,
-					&hw->bufinfo, sizeof(hw->bufinfo));
+			&hw->bufinfo, sizeof(hw->bufinfo));
 	if (result)
 		return result;
 
 	le16_to_cpus(&hw->bufinfo.page);
 	le16_to_cpus(&hw->bufinfo.offset);
 	le16_to_cpus(&hw->bufinfo.len);
-	result = hfa384x_drvr_getconfig16(hw, HFA384x_RID_MAXLOADTIME,
-					  &hw->dltimeout);
+	result = hfa384x_drvr_getconfig16(hw,
+			HFA384x_RID_MAXLOADTIME,
+			&hw->dltimeout);
+
 	if (result)
 		return result;
 
@@ -1944,14 +1939,14 @@ int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr,
 		return -EINVAL;
 
 	netdev_info(hw->wlandev->netdev,
-		    "Download %d bytes to flash @0x%06x\n", len, daddr);
+		"Download %d bytes to flash @0x%06x\n", len, daddr);
 
 	/* Convert to flat address for arithmetic */
 	/* NOTE: dlbuffer RID stores the address in AUX format */
 	dlbufaddr =
 	    HFA384x_ADDR_AUX_MKFLAT(hw->bufinfo.page, hw->bufinfo.offset);
 	pr_debug("dlbuf.page=0x%04x dlbuf.offset=0x%04x dlbufaddr=0x%08x\n",
-		 hw->bufinfo.page, hw->bufinfo.offset, dlbufaddr);
+		hw->bufinfo.page, hw->bufinfo.offset, dlbufaddr);
 	/* Calculations to determine how many fills of the dlbuffer to do
 	 * and how many USB wmemreq's to do for each fill.  At this point
 	 * in time, the dlbuffer size and the wmemreq size are the same.
@@ -1982,10 +1977,12 @@ int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr,
 		/* Set the download mode */
 		result = hfa384x_cmd_download(hw, HFA384x_PROGMODE_NV,
 					      burnlo, burnhi, burnlen);
+
 		if (result) {
 			netdev_err(hw->wlandev->netdev,
-				   "download(NV,lo=%x,hi=%x,len=%x) cmd failed, result=%d. Aborting d/l\n",
-				   burnlo, burnhi, burnlen, result);
+			"download(NV,lo=%x,hi=%x,len=%x) cmd failed, result=%d. Aborting d/l\n",
+			burnlo, burnhi, burnlen, result);
+
 			goto exit_proc;
 		}
 
@@ -2005,19 +2002,19 @@ int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr,
 			    HFA384x_USB_RWMEM_MAXLEN : writelen;
 
 			result = hfa384x_dowmem_wait(hw,
-						     writepage,
-						     writeoffset,
-						     writebuf, writelen);
+						     writepage, writeoffset,
+				writebuf, writelen);
 		}
 
 		/* set the download 'write flash' mode */
 		result = hfa384x_cmd_download(hw,
 					      HFA384x_PROGMODE_NVWRITE,
-					      0, 0, 0);
+				0, 0, 0);
+
 		if (result) {
 			netdev_err(hw->wlandev->netdev,
-				   "download(NVWRITE,lo=%x,hi=%x,len=%x) cmd failed, result=%d. Aborting d/l\n",
-				   burnlo, burnhi, burnlen, result);
+				"download(NVWRITE,lo=%x,hi=%x,len=%x) cmd failed, result=%d. Aborting d/l\n",
+				burnlo, burnhi, burnlen, result);
 			goto exit_proc;
 		}
 
@@ -2095,7 +2092,7 @@ hfa384x_drvr_setconfig_async(struct hfa384x *hw,
 			     u16 len, ctlx_usercb_t usercb, void *usercb_data)
 {
 	return hfa384x_dowrid_async(hw, rid, buf, len,
-				    hfa384x_cb_status, usercb, usercb_data);
+		hfa384x_cb_status, usercb, usercb_data);
 }
 
 /*----------------------------------------------------------------
@@ -2177,7 +2174,7 @@ int hfa384x_drvr_ramdl_enable(struct hfa384x *hw, u32 exeaddr)
 	/* Check that we're not already in a download state */
 	if (hw->dlstate != HFA384x_DLSTATE_DISABLED) {
 		netdev_err(hw->wlandev->netdev,
-			   "Download state not disabled.\n");
+			"Download state not disabled.\n");
 		return -EINVAL;
 	}
 
@@ -2187,15 +2184,15 @@ int hfa384x_drvr_ramdl_enable(struct hfa384x *hw, u32 exeaddr)
 	lowaddr = HFA384x_ADDR_CMD_MKOFF(exeaddr);
 	hiaddr = HFA384x_ADDR_CMD_MKPAGE(exeaddr);
 
-	result = hfa384x_cmd_download(hw, HFA384x_PROGMODE_RAM,
-				      lowaddr, hiaddr, 0);
+	result = hfa384x_cmd_download(hw,
+			HFA384x_PROGMODE_RAM, lowaddr, hiaddr, 0);
 
 	if (result == 0) {
 		/* Set the download state */
 		hw->dlstate = HFA384x_DLSTATE_RAMENABLED;
 	} else {
 		pr_debug("cmd_download(0x%04x, 0x%04x) failed, result=%d.\n",
-			 lowaddr, hiaddr, result);
+			lowaddr, hiaddr, result);
 	}
 
 	return result;
@@ -2262,11 +2259,9 @@ int hfa384x_drvr_ramdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len)
 
 		/* Do blocking ctlx */
 		result = hfa384x_dowmem_wait(hw,
-					     currpage,
-					     curroffset,
-					     data +
-					     (i * HFA384x_USB_RWMEM_MAXLEN),
-					     currlen);
+				currpage, curroffset,
+				data + (i * HFA384x_USB_RWMEM_MAXLEN),
+				currlen);
 
 		if (result)
 			break;
@@ -2338,13 +2333,12 @@ int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len)
 		curroffset = HFA384x_ADDR_CMD_MKOFF(pdaloc[i].cardaddr);
 
 		/* units of bytes */
-		result = hfa384x_dormem_wait(hw, currpage, curroffset, buf,
-					     len);
+		result = hfa384x_dormem_wait(hw, currpage,
+				curroffset, buf, len);
 
 		if (result) {
 			netdev_warn(hw->wlandev->netdev,
-				    "Read from index %zd failed, continuing\n",
-				    i);
+				"Read from index %zd failed, continuing\n", i);
 			continue;
 		}
 
@@ -2357,14 +2351,14 @@ int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len)
 			/* Test the record length */
 			if (pdrlen > HFA384x_PDR_LEN_MAX || pdrlen == 0) {
 				netdev_err(hw->wlandev->netdev,
-					   "pdrlen invalid=%d\n", pdrlen);
+					"pdrlen invalid=%d\n", pdrlen);
 				pdaok = 0;
 				break;
 			}
 			/* Test the code */
 			if (!hfa384x_isgood_pdrcode(pdrcode)) {
 				netdev_err(hw->wlandev->netdev, "pdrcode invalid=%d\n",
-					   pdrcode);
+					pdrcode);
 				pdaok = 0;
 				break;
 			}
@@ -2381,12 +2375,12 @@ int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len)
 		if (pdaok) {
 			netdev_info(hw->wlandev->netdev,
 				    "PDA Read from 0x%08x in %s space.\n",
-				    pdaloc[i].cardaddr,
-				    pdaloc[i].auxctl == 0 ? "EXTDS" :
-				    pdaloc[i].auxctl == 1 ? "NV" :
-				    pdaloc[i].auxctl == 2 ? "PHY" :
-				    pdaloc[i].auxctl == 3 ? "ICSRAM" :
-				    "<bogus auxctl>");
+				pdaloc[i].cardaddr,
+				pdaloc[i].auxctl == 0 ? "EXTDS" :
+				pdaloc[i].auxctl == 1 ? "NV" :
+				pdaloc[i].auxctl == 2 ? "PHY" :
+				pdaloc[i].auxctl == 3 ? "ICSRAM" :
+				"<bogus auxctl>");
 			break;
 		}
 	}
@@ -2457,9 +2451,9 @@ int hfa384x_drvr_start(struct hfa384x *hw)
 	 * badly if a clear_halt is called when the endpoint is already
 	 * ok
 	 */
-	result =
-	    usb_get_std_status(hw->usb, USB_RECIP_ENDPOINT, hw->endp_in,
-			       &status);
+	result = usb_get_std_status(hw->usb, USB_RECIP_ENDPOINT, hw->endp_in,
+				    &status);
+
 	if (result < 0) {
 		netdev_err(hw->wlandev->netdev, "Cannot get bulk in endpoint status.\n");
 		goto done;
@@ -2467,9 +2461,9 @@ int hfa384x_drvr_start(struct hfa384x *hw)
 	if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_in))
 		netdev_err(hw->wlandev->netdev, "Failed to reset bulk in endpoint.\n");
 
-	result =
-	    usb_get_std_status(hw->usb, USB_RECIP_ENDPOINT, hw->endp_out,
-			       &status);
+	result = usb_get_std_status(hw->usb, USB_RECIP_ENDPOINT, hw->endp_out,
+			&status);
+
 	if (result < 0) {
 		netdev_err(hw->wlandev->netdev, "Cannot get bulk out endpoint status.\n");
 		goto done;
@@ -2484,8 +2478,7 @@ int hfa384x_drvr_start(struct hfa384x *hw)
 	result = submit_rx_urb(hw, GFP_KERNEL);
 	if (result != 0) {
 		netdev_err(hw->wlandev->netdev,
-			   "Fatal, failed to submit RX URB, result=%d\n",
-			   result);
+			"Fatal, failed to submit RX URB, result=%d\n", result);
 		goto done;
 	}
 
@@ -2506,18 +2499,19 @@ int hfa384x_drvr_start(struct hfa384x *hw)
 	if (result1 != 0) {
 		if (result2 != 0) {
 			netdev_err(hw->wlandev->netdev,
-				   "cmd_initialize() failed on two attempts, results %d and %d\n",
-				   result1, result2);
+				"cmd_initialize() failed on two attempts, results %d and %d\n",
+				result1, result2);
 			usb_kill_urb(&hw->rx_urb);
 			goto done;
 		} else {
 			pr_debug("First cmd_initialize() failed (result %d),\n",
-				 result1);
+				result1);
 			pr_debug("but second attempt succeeded. All should be ok\n");
 		}
 	} else if (result2 != 0) {
-		netdev_warn(hw->wlandev->netdev, "First cmd_initialize() succeeded, but second attempt failed (result=%d)\n",
-			    result2);
+		netdev_warn(hw->wlandev->netdev,
+			    "First cmd_initialize() succeeded, but second attempt failed (result=%d)\n",
+			result2);
 		netdev_warn(hw->wlandev->netdev,
 			    "Most likely the card will be functional\n");
 		goto done;
@@ -2685,7 +2679,7 @@ int hfa384x_drvr_txframe(struct hfa384x *hw, struct sk_buff *skb,
 	ret = submit_tx_urb(hw, &hw->tx_urb, GFP_ATOMIC);
 	if (ret != 0) {
 		netdev_err(hw->wlandev->netdev,
-			   "submit_tx_urb() failed, error=%d\n", ret);
+			"submit_tx_urb() failed, error=%d\n", ret);
 		result = 3;
 	}
 
@@ -2905,9 +2899,10 @@ static void unlocked_usbctlx_complete(struct hfa384x *hw,
 		break;
 
 	default:
-		netdev_err(hw->wlandev->netdev, "CTLX[%d] not in a terminating state(%s)\n",
-			   le16_to_cpu(ctlx->outbuf.type),
-			   ctlxstr(ctlx->state));
+		netdev_err(hw->wlandev->netdev,
+			"CTLX[%d] not in a terminating state(%s)\n",
+			le16_to_cpu(ctlx->outbuf.type),
+			ctlxstr(ctlx->state));
 		break;
 	}			/* switch */
 }
@@ -2953,16 +2948,16 @@ static void hfa384x_usbctlxq_run(struct hfa384x *hw)
 
 		/* This is the first pending command */
 		head = list_entry(hw->ctlxq.pending.next,
-				  struct hfa384x_usbctlx, list);
+			struct hfa384x_usbctlx, list);
 
 		/* We need to split this off to avoid a race condition */
 		list_move_tail(&head->list, &hw->ctlxq.active);
 
 		/* Fill the out packet */
 		usb_fill_bulk_urb(&hw->ctlx_urb, hw->usb,
-				  hw->endp_out,
-				  &head->outbuf, ROUNDUP64(head->outbufsize),
-				  hfa384x_ctlxout_callback, hw);
+			hw->endp_out,
+			&head->outbuf, ROUNDUP64(head->outbufsize),
+			hfa384x_ctlxout_callback, hw);
 		hw->ctlx_urb.transfer_flags |= USB_QUEUE_BULK;
 
 		/* Now submit the URB and update the CTLX's state */
@@ -2990,8 +2985,9 @@ static void hfa384x_usbctlxq_run(struct hfa384x *hw)
 			 * and schedule a reset ...
 			 */
 			netdev_warn(hw->wlandev->netdev,
-				    "%s tx pipe stalled: requesting reset\n",
-				    hw->wlandev->netdev->name);
+				"%s tx pipe stalled: requesting reset\n",
+				hw->wlandev->netdev->name);
+
 			list_move(&head->list, &hw->ctlxq.pending);
 			set_bit(WORK_TX_HALT, &hw->usb_flags);
 			schedule_work(&hw->usb_work);
@@ -2999,13 +2995,15 @@ static void hfa384x_usbctlxq_run(struct hfa384x *hw)
 		}
 
 		if (result == -ESHUTDOWN) {
-			netdev_warn(hw->wlandev->netdev, "%s urb shutdown!\n",
-				    hw->wlandev->netdev->name);
+			netdev_warn(hw->wlandev->netdev,
+				"%s urb shutdown!\n",
+				hw->wlandev->netdev->name);
 			break;
 		}
 
-		netdev_err(hw->wlandev->netdev, "Failed to submit CTLX[%d]: error=%d\n",
-			   le16_to_cpu(head->outbuf.type), result);
+		netdev_err(hw->wlandev->netdev,
+			"Failed to submit CTLX[%d]: error=%d\n",
+			le16_to_cpu(head->outbuf.type), result);
 		unlocked_usbctlx_complete(hw, head);
 	}			/* while */
 
@@ -3075,8 +3073,9 @@ static void hfa384x_usbin_callback(struct urb *urb)
 		break;
 
 	case -EPIPE:
-		netdev_warn(hw->wlandev->netdev, "%s rx pipe stalled: requesting reset\n",
-			    wlandev->netdev->name);
+		netdev_warn(hw->wlandev->netdev,
+			"%s rx pipe stalled: requesting reset\n",
+			wlandev->netdev->name);
 		if (!test_and_set_bit(WORK_RX_HALT, &hw->usb_flags))
 			schedule_work(&hw->usb_work);
 		wlandev->netdev->stats.rx_errors++;
@@ -3113,7 +3112,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
 
 	default:
 		pr_debug("urb status=%d, transfer flags=0x%x\n",
-			 urb->status, urb->transfer_flags);
+			urb->status, urb->transfer_flags);
 		wlandev->netdev->stats.rx_errors++;
 		action = RESUBMIT;
 		break;
@@ -3129,8 +3128,8 @@ static void hfa384x_usbin_callback(struct urb *urb)
 
 		if (result != 0) {
 			netdev_err(hw->wlandev->netdev,
-				   "Fatal, failed to resubmit rx_urb. error=%d\n",
-				   result);
+				"Fatal, failed to resubmit rx_urb. error=%d\n",
+				result);
 		}
 	}
 
@@ -3175,7 +3174,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
 
 	case HFA384x_USB_BUFAVAIL:
 		pr_debug("Received BUFAVAIL packet, frmlen=%d\n",
-			 usbin->bufavail.frmlen);
+			usbin->bufavail.frmlen);
 		break;
 
 	case HFA384x_USB_ERROR:
@@ -3185,7 +3184,7 @@ static void hfa384x_usbin_callback(struct urb *urb)
 
 	default:
 		pr_debug("Unrecognized USBIN packet, type=%x, status=%d\n",
-			 usbin->type, urb_status);
+			usbin->type, urb_status);
 		break;
 	}			/* switch */
 
@@ -3266,9 +3265,9 @@ static void hfa384x_usbin_ctlx(struct hfa384x *hw, union hfa384x_usbin *usbin,
 		 */
 		if (ctlx->outbuf.type != intype) {
 			netdev_warn(hw->wlandev->netdev,
-				    "Expected IN[%d], received IN[%d] - ignored.\n",
-				    le16_to_cpu(ctlx->outbuf.type),
-				    le16_to_cpu(intype));
+				"Expected IN[%d], received IN[%d] - ignored.\n",
+				le16_to_cpu(ctlx->outbuf.type),
+				le16_to_cpu(intype));
 			goto unlock;
 		}
 
@@ -3302,9 +3301,9 @@ static void hfa384x_usbin_ctlx(struct hfa384x *hw, union hfa384x_usbin *usbin,
 			 * Throw this CTLX away ...
 			 */
 			netdev_err(hw->wlandev->netdev,
-				   "Matched IN URB, CTLX[%d] in invalid state(%s). Discarded.\n",
-				   le16_to_cpu(ctlx->outbuf.type),
-				   ctlxstr(ctlx->state));
+				"Matched IN URB, CTLX[%d] in invalid state(%s). Discarded.\n",
+				le16_to_cpu(ctlx->outbuf.type),
+				ctlxstr(ctlx->state));
 			if (unlocked_usbctlx_cancel_async(hw, ctlx) == 0)
 				run_queue = 1;
 			break;
@@ -3440,7 +3439,7 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
 
 	default:
 		netdev_warn(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
-			    HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
+			HFA384x_RXSTATUS_MACPORT_GET(usbin->rxfrm.desc.status));
 		break;
 	}
 }
@@ -3493,7 +3492,7 @@ static void hfa384x_int_rxmonitor(struct wlandevice *wlandev,
 	    (sizeof(struct p80211_caphdr) +
 	     WLAN_HDR_A4_LEN + WLAN_DATA_MAXLEN + WLAN_CRC_LEN)) {
 		pr_debug("overlen frm: len=%zd\n",
-			 skblen - sizeof(struct p80211_caphdr));
+			skblen - sizeof(struct p80211_caphdr));
 	}
 
 	skb = dev_alloc_skb(skblen);
@@ -3610,8 +3609,8 @@ static void hfa384x_usbout_callback(struct urb *urb)
 			struct hfa384x *hw = wlandev->priv;
 
 			netdev_warn(hw->wlandev->netdev,
-				    "%s tx pipe stalled: requesting reset\n",
-				    wlandev->netdev->name);
+				"%s tx pipe stalled: requesting reset\n",
+				wlandev->netdev->name);
 			if (!test_and_set_bit(WORK_TX_HALT, &hw->usb_flags))
 				schedule_work(&hw->usb_work);
 			wlandev->netdev->stats.tx_errors++;
@@ -3639,8 +3638,9 @@ static void hfa384x_usbout_callback(struct urb *urb)
 			break;
 
 		default:
-			netdev_info(wlandev->netdev, "unknown urb->status=%d\n",
-				    urb->status);
+			netdev_info(wlandev->netdev,
+				"unknown urb->status=%d\n",
+				urb->status);
 			wlandev->netdev->stats.tx_errors++;
 			break;
 		}		/* switch */
@@ -3735,9 +3735,9 @@ static void hfa384x_ctlxout_callback(struct urb *urb)
 		default:
 			/* This is NOT a valid CTLX "success" state! */
 			netdev_err(hw->wlandev->netdev,
-				   "Illegal CTLX[%d] success state(%s, %d) in OUT URB\n",
-				   le16_to_cpu(ctlx->outbuf.type),
-				   ctlxstr(ctlx->state), urb->status);
+				"Illegal CTLX[%d] success state(%s, %d) in OUT URB\n",
+				le16_to_cpu(ctlx->outbuf.type),
+				ctlxstr(ctlx->state), urb->status);
 			break;
 		}		/* switch */
 	} else {
@@ -3745,8 +3745,8 @@ static void hfa384x_ctlxout_callback(struct urb *urb)
 		if ((urb->status == -EPIPE) &&
 		    !test_and_set_bit(WORK_TX_HALT, &hw->usb_flags)) {
 			netdev_warn(hw->wlandev->netdev,
-				    "%s tx pipe stalled: requesting reset\n",
-				    hw->wlandev->netdev->name);
+				"%s tx pipe stalled: requesting reset\n",
+				hw->wlandev->netdev->name);
 			schedule_work(&hw->usb_work);
 		}
 
@@ -4013,7 +4013,7 @@ static int hfa384x_isgood_pdrcode(u16 pdrcode)
 		if (pdrcode < 0x1000) {
 			/* code is OK, but we don't know exactly what it is */
 			pr_debug("Encountered unknown PDR#=0x%04x, assuming it's ok.\n",
-				 pdrcode);
+				pdrcode);
 			return 1;
 		}
 		break;
diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 0ff5fda81b05..73029a0e8a13 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -193,7 +193,7 @@ int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
 		break;
 	default:
 		netdev_err(wlandev->netdev,
-			   "Error: Converting eth to wlan in unknown mode.\n");
+			"Error: Converting eth to wlan in unknown mode.\n");
 		return 1;
 	}
 
@@ -208,12 +208,12 @@ int skb_ether_to_p80211(struct wlandevice *wlandev, u32 ethconv,
 			return -ENOMEM;
 		foo = wep_encrypt(wlandev, skb->data, p80211_wep->data,
 				  skb->len,
-				  wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
-				  p80211_wep->iv, p80211_wep->icv);
+			wlandev->hostwep & HOSTWEP_DEFAULTKEY_MASK,
+			p80211_wep->iv, p80211_wep->icv);
 		if (foo) {
 			netdev_warn(wlandev->netdev,
-				    "Host en-WEP failed, dropping frame (%d).\n",
-				    foo);
+				"Host en-WEP failed, dropping frame (%d).\n",
+				foo);
 			kfree(p80211_wep->data);
 			return 2;
 		}
@@ -323,18 +323,19 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 	    (wlandev->hostwep & HOSTWEP_DECRYPT)) {
 		if (payload_length <= 8) {
 			netdev_err(netdev,
-				   "WEP frame too short (%u).\n", skb->len);
+				"WEP frame too short (%u).\n",
+				skb->len);
 			return 1;
 		}
 		foo = wep_decrypt(wlandev, skb->data + payload_offset + 4,
 				  payload_length - 8, -1,
-				  skb->data + payload_offset,
-				  skb->data + payload_offset +
-				  payload_length - 4);
+			skb->data + payload_offset,
+			skb->data + payload_offset +
+			payload_length - 4);
 		if (foo) {
 			/* de-wep failed, drop skb. */
 			pr_debug("Host de-WEP failed, dropping frame (%d).\n",
-				 foo);
+				foo);
 			wlandev->rx.decrypt_err++;
 			return 2;
 		}
@@ -367,8 +368,9 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 		if (payload_length > (netdev->mtu + ETH_HLEN)) {
 			/* A bogus length ethfrm has been encap'd. */
 			/* Is someone trying an oflow attack? */
-			netdev_err(netdev, "ENCAP frame too large (%d > %d)\n",
-				   payload_length, netdev->mtu + ETH_HLEN);
+			netdev_err(netdev,
+				"ENCAP frame too large (%d > %d)\n",
+				payload_length, netdev->mtu + ETH_HLEN);
 			return 1;
 		}
 
@@ -396,8 +398,9 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 		if (payload_length > netdev->mtu) {
 			/* A bogus length ethfrm has been sent. */
 			/* Is someone trying an oflow attack? */
-			netdev_err(netdev, "SNAP frame too large (%d > %d)\n",
-				   payload_length, netdev->mtu);
+			netdev_err(netdev,
+				"SNAP frame too large (%d > %d)\n",
+				payload_length, netdev->mtu);
 			return 1;
 		}
 
@@ -429,10 +432,11 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 			> netdev->mtu) {
 			/* A bogus length ethfrm has been sent. */
 			/* Is someone trying an oflow attack? */
-			netdev_err(netdev, "DIXII frame too large (%ld > %d)\n",
-				   (long)(payload_length -
-				   sizeof(struct wlan_llc) -
-				   sizeof(struct wlan_snap)), netdev->mtu);
+			netdev_err(netdev,
+				"DIXII frame too large (%ld > %d)\n",
+				(long)(payload_length -
+				sizeof(struct wlan_llc) -
+				sizeof(struct wlan_snap)), netdev->mtu);
 			return 1;
 		}
 
@@ -465,7 +469,7 @@ int skb_p80211_to_ether(struct wlandevice *wlandev, u32 ethconv,
 			/* A bogus length ethfrm has been sent. */
 			/* Is someone trying an oflow attack? */
 			netdev_err(netdev, "OTHER frame too large (%d > %d)\n",
-				   payload_length, netdev->mtu);
+				payload_length, netdev->mtu);
 			return 1;
 		}
 
@@ -607,7 +611,8 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
 	/* If these already have metadata, we error out! */
 	if (p80211skb_rxmeta(skb)) {
 		netdev_err(wlandev->netdev,
-			   "%s: RXmeta already attached!\n", wlandev->name);
+			"%s: RXmeta already attached!\n",
+			wlandev->name);
 		result = 0;
 		goto exit;
 	}
@@ -659,6 +664,7 @@ void p80211skb_free(struct wlandevice *wlandev, struct sk_buff *skb)
 		p80211skb_rxmeta_detach(skb);
 	else
 		netdev_err(wlandev->netdev,
-			   "Freeing an skb (%p) w/ no frmmeta.\n", skb);
+			"Freeing an skb (%p) w/ no frmmeta.\n",
+			skb);
 	dev_kfree_skb(skb);
 }
diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
index 9f5c1267d829..1153fbe61772 100644
--- a/drivers/staging/wlan-ng/p80211req.c
+++ b/drivers/staging/wlan-ng/p80211req.c
@@ -127,8 +127,8 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
 	if (!capable(CAP_NET_ADMIN) &&
 	    (msg->msgcode != DIDMSG_DOT11REQ_MIBGET)) {
 		netdev_err(wlandev->netdev,
-			   "%s: only dot11req_mibget allowed for non-root.\n",
-			   wlandev->name);
+			"%s: only dot11req_mibget allowed for non-root.\n",
+			wlandev->name);
 		return -EPERM;
 	}
 
@@ -212,7 +212,7 @@ static void p80211req_mibset_mibget(struct wlandevice *wlandev,
 		if (!isget)
 			wep_change_key(wlandev,
 				       P80211DID_ITEM(mibitem->did) - 1,
-				       key, pstr->len);
+				key, pstr->len);
 		break;
 
 	case DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID: {
diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 94800c007162..e75fdd3254fd 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -214,15 +214,15 @@ static int prism2_fwtry(struct usb_device *udev, struct wlandevice *wlandev)
 	if (request_ihex_firmware(&fw_entry,
 				  PRISM2_USB_FWFILE, &udev->dev) != 0) {
 		netdev_info(wlandev->netdev,
-			    "prism2_usb: Firmware not available, but not essential\n");
+			"prism2_usb: Firmware not available, but not essential\n");
 		netdev_info(wlandev->netdev,
-			    "prism2_usb: can continue to use card anyway.\n");
+			"prism2_usb: can continue to use card anyway.\n");
 		return 1;
 	}
 
 	netdev_info(wlandev->netdev,
-		    "prism2_usb: %s will be processed, size %zu\n",
-		    PRISM2_USB_FWFILE, fw_entry->size);
+		"prism2_usb: %s will be processed, size %zu\n",
+		PRISM2_USB_FWFILE, fw_entry->size);
 	prism2_fwapply((const struct ihex_binrec *)fw_entry->data, wlandev);
 
 	release_firmware(fw_entry);
@@ -325,7 +325,7 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 	result = read_fwfile(rfptr);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "Failed to read the data exiting.\n");
+			"Failed to read the data exiting.\n");
 		goto out;
 	}
 
@@ -337,7 +337,7 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 
 	if (startaddr == 0x00000000) {
 		netdev_err(wlandev->netdev,
-			   "Can't RAM download a Flash image!\n");
+			"Can't RAM download a Flash image!\n");
 		result = 1;
 		goto out;
 	}
@@ -560,7 +560,7 @@ static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
 			return 1;
 
 		pr_debug("chunk[%d]: addr=0x%06x len=%d\n",
-			 i, clist[i].addr, clist[i].len);
+			i, clist[i].addr, clist[i].len);
 	}
 
 	/* Copy srec data to chunks */
@@ -742,8 +742,8 @@ static int plugimage(struct imgchunk *fchunk, unsigned int nfchunks,
 		chunkoff = pstart - cstart;
 		dest = fchunk[c].data + chunkoff;
 		pr_debug("Plugging item 0x%04x @ 0x%06x, len=%d, cnum=%d coff=0x%06x\n",
-			 s3plug[i].itemcode, pstart, s3plug[i].len,
-			 c, chunkoff);
+			s3plug[i].itemcode, pstart, s3plug[i].len,
+			c, chunkoff);
 
 		if (j == -1) {	/* plug the filename */
 			memset(dest, 0, s3plug[i].len);
@@ -895,8 +895,7 @@ static int read_fwfile(const struct ihex_binrec *record)
 		case S3ADDR_START:
 			startaddr = *ptr32;
 			pr_debug("  S7 start addr, record=%d addr=0x%08x\n",
-				 rcnt,
-				 startaddr);
+				rcnt, startaddr);
 			break;
 		case S3ADDR_PLUG:
 			s3plug[ns3plug].itemcode = *ptr32;
@@ -904,10 +903,10 @@ static int read_fwfile(const struct ihex_binrec *record)
 			s3plug[ns3plug].len = *(ptr32 + 2);
 
 			pr_debug("  S3 plugrec, record=%d itemcode=0x%08x addr=0x%08x len=%d\n",
-				 rcnt,
-				 s3plug[ns3plug].itemcode,
-				 s3plug[ns3plug].addr,
-				 s3plug[ns3plug].len);
+				rcnt,
+				s3plug[ns3plug].itemcode,
+				s3plug[ns3plug].addr,
+				s3plug[ns3plug].len);
 
 			ns3plug++;
 			if (ns3plug == S3PLUG_MAX) {
@@ -921,10 +920,10 @@ static int read_fwfile(const struct ihex_binrec *record)
 			s3crc[ns3crc].dowrite = *(ptr32 + 2);
 
 			pr_debug("  S3 crcrec, record=%d addr=0x%08x len=%d write=0x%08x\n",
-				 rcnt,
-				 s3crc[ns3crc].addr,
-				 s3crc[ns3crc].len,
-				 s3crc[ns3crc].dowrite);
+				rcnt,
+				s3crc[ns3crc].addr,
+				s3crc[ns3crc].len,
+				s3crc[ns3crc].dowrite);
 			ns3crc++;
 			if (ns3crc == S3CRC_MAX) {
 				pr_err("S3 crcrec limit reached - aborting\n");
@@ -936,9 +935,9 @@ static int read_fwfile(const struct ihex_binrec *record)
 			s3info[ns3info].type = *(ptr16 + 1);
 
 			pr_debug("  S3 inforec, record=%d len=0x%04x type=0x%04x\n",
-				 rcnt,
-				 s3info[ns3info].len,
-				 s3info[ns3info].type);
+				rcnt,
+				s3info[ns3info].len,
+				s3info[ns3info].type);
 			if (((s3info[ns3info].len - 1) * sizeof(u16)) >
 			   sizeof(s3info[ns3info].info)) {
 				pr_err("S3 inforec length too long - aborting\n");
@@ -1011,8 +1010,8 @@ static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 		kfree(rstmsg);
 		kfree(rwrmsg);
 		netdev_err(wlandev->netdev,
-			   "%s: no memory for firmware download, aborting download\n",
-			   __func__);
+			"%s: no memory for firmware download, aborting download\n",
+			__func__);
 		return -ENOMEM;
 	}
 
@@ -1054,15 +1053,15 @@ static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 	result = prism2mgmt_ramdl_state(wlandev, rstmsg);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "%s state enable failed w/ result=%d, aborting download\n",
-			   __func__, result);
+			"%s state enable failed w/ result=%d, aborting download\n",
+			__func__, result);
 		goto free_result;
 	}
 	resultcode = rstmsg->resultcode.data;
 	if (resultcode != P80211ENUM_resultcode_success) {
 		netdev_err(wlandev->netdev,
-			   "%s()->xxxdl_state msg indicates failure, w/ resultcode=%d, aborting download.\n",
-			   __func__, resultcode);
+			"%s()->xxxdl_state msg indicates failure, w/ resultcode=%d, aborting download.\n",
+			__func__, resultcode);
 		result = 1;
 		goto free_result;
 	}
@@ -1098,8 +1097,8 @@ static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 			/* Check the results */
 			if (result) {
 				netdev_err(wlandev->netdev,
-					   "%s chunk write failed w/ result=%d, aborting download\n",
-					   __func__, result);
+					"%s chunk write failed w/ result=%d, aborting download\n",
+					__func__, result);
 				goto free_result;
 			}
 			resultcode = rstmsg->resultcode.data;
@@ -1120,15 +1119,15 @@ static int writeimage(struct wlandevice *wlandev, struct imgchunk *fchunk,
 	result = prism2mgmt_ramdl_state(wlandev, rstmsg);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "%s state disable failed w/ result=%d, aborting download\n",
-			   __func__, result);
+			"%s state disable failed w/ result=%d, aborting download\n",
+			__func__, result);
 		goto free_result;
 	}
 	resultcode = rstmsg->resultcode.data;
 	if (resultcode != P80211ENUM_resultcode_success) {
 		netdev_err(wlandev->netdev,
-			   "%s()->xxxdl_state msg indicates failure, w/ resultcode=%d, aborting download.\n",
-			   __func__, resultcode);
+			"%s()->xxxdl_state msg indicates failure, w/ resultcode=%d, aborting download.\n",
+			__func__, resultcode);
 		result = 1;
 		goto free_result;
 	}
@@ -1146,30 +1145,30 @@ static int validate_identity(void)
 	int trump = 0;
 
 	pr_debug("NIC ID: %#x v%d.%d.%d\n",
-		 nicid.id, nicid.major, nicid.minor, nicid.variant);
+		nicid.id, nicid.major, nicid.minor, nicid.variant);
 	pr_debug("MFI ID: %#x v%d %d->%d\n",
-		 rfid.id, rfid.variant, rfid.bottom, rfid.top);
+		rfid.id, rfid.variant, rfid.bottom, rfid.top);
 	pr_debug("CFI ID: %#x v%d %d->%d\n",
-		 macid.id, macid.variant, macid.bottom, macid.top);
+		macid.id, macid.variant, macid.bottom, macid.top);
 	pr_debug("PRI ID: %#x v%d %d->%d\n",
-		 priid.id, priid.variant, priid.bottom, priid.top);
+		priid.id, priid.variant, priid.bottom, priid.top);
 
 	for (i = 0; i < ns3info; i++) {
 		switch (s3info[i].type) {
 		case 1:
 			pr_debug("Version:  ID %#x %d.%d.%d\n",
-				 s3info[i].info.version.id,
-				 s3info[i].info.version.major,
-				 s3info[i].info.version.minor,
-				 s3info[i].info.version.variant);
+				s3info[i].info.version.id,
+				s3info[i].info.version.major,
+				s3info[i].info.version.minor,
+				s3info[i].info.version.variant);
 			break;
 		case 2:
 			pr_debug("Compat: Role %#x Id %#x v%d %d->%d\n",
-				 s3info[i].info.compat.role,
-				 s3info[i].info.compat.id,
-				 s3info[i].info.compat.variant,
-				 s3info[i].info.compat.bottom,
-				 s3info[i].info.compat.top);
+				s3info[i].info.compat.role,
+				s3info[i].info.compat.id,
+				s3info[i].info.compat.variant,
+				s3info[i].info.compat.bottom,
+				s3info[i].info.compat.top);
 
 			/* MAC compat range */
 			if ((s3info[i].info.compat.role == 1) &&
@@ -1203,10 +1202,10 @@ static int validate_identity(void)
 			break;
 		case 4:
 			pr_debug("Platform:  ID %#x %d.%d.%d\n",
-				 s3info[i].info.version.id,
-				 s3info[i].info.version.major,
-				 s3info[i].info.version.minor,
-				 s3info[i].info.version.variant);
+				s3info[i].info.version.id,
+				s3info[i].info.version.major,
+				s3info[i].info.version.minor,
+				s3info[i].info.version.variant);
 
 			if (nicid.id != s3info[i].info.version.id)
 				continue;
diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
index 7350fe5d96a3..3a783258fc71 100644
--- a/drivers/staging/wlan-ng/prism2mgmt.c
+++ b/drivers/staging/wlan-ng/prism2mgmt.c
@@ -143,7 +143,7 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 				     hw->ident_sta_fw.variant) <
 	    HFA384x_FIRMWARE_VERSION(1, 3, 2)) {
 		netdev_err(wlandev->netdev,
-			   "HostScan not supported with current firmware (<1.3.2).\n");
+			"HostScan not supported with current firmware (<1.3.2).\n");
 		result = 1;
 		msg->resultcode.data = P80211ENUM_resultcode_not_supported;
 		goto exit;
@@ -153,11 +153,12 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 
 	/* save current roaming mode */
 	result = hfa384x_drvr_getconfig16(hw,
-					  HFA384x_RID_CNFROAMINGMODE,
-					  &roamingmode);
+		HFA384x_RID_CNFROAMINGMODE,
+		&roamingmode);
+
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "getconfig(ROAMMODE) failed. result=%d\n", result);
+			"getconfig(ROAMMODE) failed. result=%d\n", result);
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		goto exit;
@@ -165,12 +166,13 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 
 	/* drop into mode 3 for the scan */
 	result = hfa384x_drvr_setconfig16(hw,
-					  HFA384x_RID_CNFROAMINGMODE,
-					  HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
+		HFA384x_RID_CNFROAMINGMODE,
+		HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
+
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "setconfig(ROAMINGMODE) failed. result=%d\n",
-			   result);
+			"setconfig(ROAMINGMODE) failed. result=%d\n",
+			result);
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		goto exit;
@@ -187,11 +189,12 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 			word = 0;
 
 		result =
-		    hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFPASSIVESCANCTRL,
-					     word);
+		    hfa384x_drvr_setconfig16(hw,
+			HFA384x_RID_CNFPASSIVESCANCTRL,
+			word);
 		if (result) {
 			netdev_warn(wlandev->netdev,
-				    "Passive scan not supported with current firmware.  (<1.5.1)\n");
+				"Passive scan not supported with current firmware.  (<1.5.1)\n");
 		}
 	}
 
@@ -219,7 +222,7 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 	result = hfa384x_drvr_getconfig16(hw, HFA384x_RID_PORTSTATUS, &word);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "getconfig(PORTSTATUS) failed. result=%d\n", result);
+			"getconfig(PORTSTATUS) failed. result=%d\n", result);
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		goto exit;
@@ -232,8 +235,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 					HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "setconfig(ROAMINGMODE) failed. result=%d\n",
-				   result);
+				"setconfig(ROAMINGMODE) failed. result=%d\n",
+				result);
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			goto exit;
@@ -244,8 +247,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 		wordbuf[0] = cpu_to_le16(WLAN_SSID_MAXLEN);
 		get_random_bytes(&wordbuf[1], WLAN_SSID_MAXLEN);
 		result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFOWNSSID,
-						wordbuf,
-						HFA384x_RID_CNFOWNSSID_LEN);
+				wordbuf, HFA384x_RID_CNFOWNSSID_LEN);
+
 		if (result) {
 			netdev_err(wlandev->netdev, "Failed to set OwnSSID.\n");
 			msg->resultcode.data =
@@ -253,33 +256,33 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 			goto exit;
 		}
 		result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
-						wordbuf,
-						HFA384x_RID_CNFDESIREDSSID_LEN);
+				wordbuf, HFA384x_RID_CNFDESIREDSSID_LEN);
+
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "Failed to set DesiredSSID.\n");
+				"Failed to set DesiredSSID.\n");
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			goto exit;
 		}
 		/* bsstype */
 		result = hfa384x_drvr_setconfig16(hw,
-						  HFA384x_RID_CNFPORTTYPE,
-						  HFA384x_PORTTYPE_IBSS);
+				HFA384x_RID_CNFPORTTYPE, HFA384x_PORTTYPE_IBSS);
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "Failed to set CNFPORTTYPE.\n");
+				"Failed to set CNFPORTTYPE.\n");
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			goto exit;
 		}
 		/* ibss options */
 		result = hfa384x_drvr_setconfig16(hw,
-					HFA384x_RID_CREATEIBSS,
-					HFA384x_CREATEIBSS_JOINCREATEIBSS);
+				HFA384x_RID_CREATEIBSS,
+				HFA384x_CREATEIBSS_JOINCREATEIBSS);
+
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "Failed to set CREATEIBSS.\n");
+				"Failed to set CREATEIBSS.\n");
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			goto exit;
@@ -287,8 +290,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 		result = hfa384x_drvr_enable(hw, 0);
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "drvr_enable(0) failed. result=%d\n",
-				   result);
+				"drvr_enable(0) failed. result=%d\n",
+				result);
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			goto exit;
@@ -304,12 +307,12 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 	hw->scanflag = 0;
 
 	result = hfa384x_drvr_setconfig(hw,
-					HFA384x_RID_HOSTSCAN, &scanreq,
-					sizeof(scanreq));
+			HFA384x_RID_HOSTSCAN, &scanreq, sizeof(scanreq));
+
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "setconfig(SCANREQUEST) failed. result=%d\n",
-			   result);
+			"setconfig(SCANREQUEST) failed. result=%d\n",
+			result);
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		goto exit;
@@ -331,8 +334,8 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 		result = hfa384x_drvr_disable(hw, 0);
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "drvr_disable(0) failed. result=%d\n",
-				   result);
+				"drvr_disable(0) failed. result=%d\n",
+				result);
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			goto exit;
@@ -342,9 +345,10 @@ int prism2mgmt_scan(struct wlandevice *wlandev, void *msgp)
 	/* restore original roaming mode */
 	result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFROAMINGMODE,
 					  roamingmode);
+
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "setconfig(ROAMMODE) failed. result=%d\n", result);
+			"setconfig(ROAMMODE) failed. result=%d\n", result);
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		goto exit;
@@ -395,7 +399,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
 
 	if (!hw->scanresults) {
 		netdev_err(wlandev->netdev,
-			   "dot11req_scan_results can only be used after a successful dot11req_scan.\n");
+			"dot11req_scan_results can only be used after a successful dot11req_scan.\n");
 		result = 2;
 		req->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
 		goto exit;
@@ -407,8 +411,8 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
 
 	if (req->bssindex.data >= count) {
 		netdev_dbg(wlandev->netdev,
-			   "requested index (%d) out of range (%d)\n",
-			   req->bssindex.data, count);
+			"requested index (%d) out of range (%d)\n",
+			req->bssindex.data, count);
 		result = 2;
 		req->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
 		goto exit;
@@ -577,14 +581,14 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	pstr = (struct p80211pstrd *)&msg->ssid.data;
 	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
 	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFOWNSSID,
-					bytebuf, HFA384x_RID_CNFOWNSSID_LEN);
+			bytebuf, HFA384x_RID_CNFOWNSSID_LEN);
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to set CnfOwnSSID\n");
 		goto failed;
 	}
 	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
-					bytebuf,
-					HFA384x_RID_CNFDESIREDSSID_LEN);
+			bytebuf, HFA384x_RID_CNFDESIREDSSID_LEN);
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to set CnfDesiredSSID\n");
 		goto failed;
@@ -599,7 +603,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFAPBCNINT, word);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "Failed to set beacon period=%d.\n", word);
+			"Failed to set beacon period=%d.\n", word);
 		goto failed;
 	}
 
@@ -608,7 +612,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFOWNCHANNEL, word);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "Failed to set channel=%d.\n", word);
+			"Failed to set channel=%d.\n", word);
 		goto failed;
 	}
 	/* Basic rates */
@@ -637,7 +641,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFBASICRATES, word);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "Failed to set basicrates=%d.\n", word);
+			"Failed to set basicrates=%d.\n", word);
 		goto failed;
 	}
 
@@ -667,14 +671,15 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFSUPPRATES, word);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "Failed to set supprates=%d.\n", word);
+			"Failed to set supprates=%d.\n", word);
 		goto failed;
 	}
 
 	result = hfa384x_drvr_setconfig16(hw, HFA384x_RID_TXRATECNTL, word);
 	if (result) {
-		netdev_err(wlandev->netdev, "Failed to set txrates=%d.\n",
-			   word);
+		netdev_err(wlandev->netdev,
+			"Failed to set txrates=%d.\n",
+			word);
 		goto failed;
 	}
 
@@ -689,7 +694,7 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	result = hfa384x_drvr_enable(hw, 0);
 	if (result) {
 		netdev_err(wlandev->netdev,
-			   "Enable macport failed, result=%d.\n", result);
+			"Enable macport failed, result=%d.\n", result);
 		goto failed;
 	}
 
@@ -698,7 +703,8 @@ int prism2mgmt_start(struct wlandevice *wlandev, void *msgp)
 	goto done;
 failed:
 	netdev_dbg(wlandev->netdev,
-		   "Failed to set a config option, result=%d\n", result);
+		"Failed to set a config option, result=%d\n",
+		result);
 	msg->resultcode.data = P80211ENUM_resultcode_invalid_parameters;
 
 done:
@@ -735,7 +741,7 @@ int prism2mgmt_readpda(struct wlandevice *wlandev, void *msgp)
 	 */
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
 		netdev_err(wlandev->netdev,
-			   "PDA may only be read in the fwload state.\n");
+			"PDA may only be read in the fwload state.\n");
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
@@ -744,12 +750,11 @@ int prism2mgmt_readpda(struct wlandevice *wlandev, void *msgp)
 		 *  and validating the returned PDA.
 		 */
 		result = hfa384x_drvr_readpda(hw,
-					      msg->pda.data,
-					      HFA384x_PDA_LEN_MAX);
+				msg->pda.data, HFA384x_PDA_LEN_MAX);
 		if (result) {
 			netdev_err(wlandev->netdev,
-				   "hfa384x_drvr_readpda() failed, result=%d\n",
-				   result);
+				"hfa384x_drvr_readpda() failed, result=%d\n",
+				result);
 
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
@@ -798,7 +803,7 @@ int prism2mgmt_ramdl_state(struct wlandevice *wlandev, void *msgp)
 
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
 		netdev_err(wlandev->netdev,
-			   "ramdl_state(): may only be called in the fwload state.\n");
+			"ramdl_state(): may only be called in the fwload state.\n");
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
@@ -857,7 +862,7 @@ int prism2mgmt_ramdl_write(struct wlandevice *wlandev, void *msgp)
 
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
 		netdev_err(wlandev->netdev,
-			   "ramdl_write(): may only be called in the fwload state.\n");
+			"ramdl_write(): may only be called in the fwload state.\n");
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
@@ -917,7 +922,7 @@ int prism2mgmt_flashdl_state(struct wlandevice *wlandev, void *msgp)
 
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
 		netdev_err(wlandev->netdev,
-			   "flashdl_state(): may only be called in the fwload state.\n");
+			"flashdl_state(): may only be called in the fwload state.\n");
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
@@ -951,8 +956,8 @@ int prism2mgmt_flashdl_state(struct wlandevice *wlandev, void *msgp)
 		result = prism2sta_ifstate(wlandev, P80211ENUM_ifstate_fwload);
 		if (result != P80211ENUM_resultcode_success) {
 			netdev_err(wlandev->netdev,
-				   "prism2sta_ifstate(fwload) failed, P80211ENUM_resultcode=%d\n",
-				   result);
+				"prism2sta_ifstate(fwload) failed, P80211ENUM_resultcode=%d\n",
+				result);
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_implementation_failure;
 			result = -1;
@@ -991,7 +996,7 @@ int prism2mgmt_flashdl_write(struct wlandevice *wlandev, void *msgp)
 
 	if (wlandev->msdstate != WLAN_MSD_FWLOAD) {
 		netdev_err(wlandev->netdev,
-			   "flashdl_write(): may only be called in the fwload state.\n");
+			"flashdl_write(): may only be called in the fwload state.\n");
 		msg->resultcode.data =
 		    P80211ENUM_resultcode_implementation_failure;
 		msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
@@ -1078,8 +1083,8 @@ int prism2mgmt_autojoin(struct wlandevice *wlandev, void *msgp)
 	pstr = (struct p80211pstrd *)&msg->ssid.data;
 	prism2mgmt_pstr2bytestr(p2bytestr, pstr);
 	result = hfa384x_drvr_setconfig(hw, HFA384x_RID_CNFDESIREDSSID,
-					bytebuf,
-					HFA384x_RID_CNFDESIREDSSID_LEN);
+			bytebuf, HFA384x_RID_CNFDESIREDSSID_LEN);
+
 	port_type = HFA384x_PORTTYPE_BSS;
 	/* Set the PortType */
 	hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFPORTTYPE, port_type);
@@ -1135,8 +1140,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_DISABLE);
 		if (result) {
 			netdev_dbg(wlandev->netdev,
-				   "failed to disable monitor mode, result=%d\n",
-				   result);
+				"failed to disable monitor mode, result=%d\n",
+				result);
 			goto failed;
 		}
 		/* Disable port 0 */
@@ -1153,8 +1158,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 
 		/* Restore the wepflags */
 		result = hfa384x_drvr_setconfig16(hw,
-						  HFA384x_RID_CNFWEPFLAGS,
-						  hw->presniff_wepflags);
+				HFA384x_RID_CNFWEPFLAGS, hw->presniff_wepflags);
+
 		if (result) {
 			netdev_dbg
 			    (wlandev->netdev,
@@ -1167,8 +1172,7 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		if (hw->presniff_port_type != 0) {
 			word = hw->presniff_port_type;
 			result = hfa384x_drvr_setconfig16(hw,
-						  HFA384x_RID_CNFPORTTYPE,
-						  word);
+					HFA384x_RID_CNFPORTTYPE, word);
 			if (result) {
 				netdev_dbg
 				    (wlandev->netdev,
@@ -1181,8 +1185,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			result = hfa384x_drvr_enable(hw, 0);
 			if (result) {
 				netdev_dbg(wlandev->netdev,
-					   "failed to enable port to presniff setting, result=%d\n",
-					   result);
+					"failed to enable port to presniff setting, result=%d\n",
+					result);
 				goto failed;
 			}
 		} else {
@@ -1198,8 +1202,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			if (wlandev->netdev->type == ARPHRD_ETHER) {
 				/* Save macport 0 state */
 				result = hfa384x_drvr_getconfig16(hw,
-						  HFA384x_RID_CNFPORTTYPE,
-						  &hw->presniff_port_type);
+						HFA384x_RID_CNFPORTTYPE,
+						&hw->presniff_port_type);
 				if (result) {
 					netdev_dbg
 					(wlandev->netdev,
@@ -1209,8 +1213,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				}
 				/* Save the wepflags state */
 				result = hfa384x_drvr_getconfig16(hw,
-						  HFA384x_RID_CNFWEPFLAGS,
-						  &hw->presniff_wepflags);
+						HFA384x_RID_CNFWEPFLAGS,
+						&hw->presniff_wepflags);
 				if (result) {
 					netdev_dbg
 					(wlandev->netdev,
@@ -1222,8 +1226,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				result = hfa384x_drvr_start(hw);
 				if (result) {
 					netdev_dbg(wlandev->netdev,
-						   "failed to restart the card for sniffing, result=%d\n",
-						   result);
+						"failed to restart the card for sniffing, result=%d\n",
+						result);
 					goto failed;
 				}
 			} else {
@@ -1231,8 +1235,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 				result = hfa384x_drvr_disable(hw, 0);
 				if (result) {
 					netdev_dbg(wlandev->netdev,
-						   "failed to enable port for sniffing, result=%d\n",
-						   result);
+						"failed to enable port for sniffing, result=%d\n",
+						result);
 					goto failed;
 				}
 			}
@@ -1249,8 +1253,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 
 		if (result) {
 			netdev_dbg(wlandev->netdev,
-				   "failed to set channel %d, result=%d\n",
-				   word, result);
+				"failed to set channel %d, result=%d\n",
+				word, result);
 			goto failed;
 		}
 
@@ -1259,8 +1263,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 			/* Set the port type to pIbss */
 			word = HFA384x_PORTTYPE_PSUEDOIBSS;
 			result = hfa384x_drvr_setconfig16(hw,
-						  HFA384x_RID_CNFPORTTYPE,
-						  word);
+					 HFA384x_RID_CNFPORTTYPE, word);
+
 			if (result) {
 				netdev_dbg
 				    (wlandev->netdev,
@@ -1319,8 +1323,8 @@ int prism2mgmt_wlansniff(struct wlandevice *wlandev, void *msgp)
 		result = hfa384x_cmd_monitor(hw, HFA384x_MONITOR_ENABLE);
 		if (result) {
 			netdev_dbg(wlandev->netdev,
-				   "failed to enable monitor mode, result=%d\n",
-				   result);
+				"failed to enable monitor mode, result=%d\n",
+				result);
 			goto failed;
 		}
 
diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index 1eba5fa28d8f..00fa119bacca 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -666,7 +666,7 @@ prism2mib_fragmentationthreshold(struct mibrec *mib,
 	if (!isget)
 		if ((*uint32) % 2) {
 			netdev_warn(wlandev->netdev,
-				    "Attempt to set odd number FragmentationThreshold\n");
+				"Attempt to set odd number FragmentationThreshold\n");
 			msg->resultcode.data =
 			    P80211ENUM_resultcode_not_supported;
 			return 0;
@@ -714,9 +714,9 @@ static int prism2mib_priv(struct mibrec *mib,
 
 		if (isget) {
 			hfa384x_drvr_getconfig(hw,
-					       HFA384x_RID_CNFWPADATA,
-					       (u8 *)&wpa,
-					       sizeof(wpa));
+				HFA384x_RID_CNFWPADATA,
+				(u8 *)&wpa,
+				sizeof(wpa));
 			pstr->len = le16_to_cpu(wpa.datalen);
 			memcpy(pstr->data, wpa.data, pstr->len);
 		} else {
@@ -724,9 +724,9 @@ static int prism2mib_priv(struct mibrec *mib,
 			memcpy(wpa.data, pstr->data, pstr->len);
 
 			hfa384x_drvr_setconfig(hw,
-					       HFA384x_RID_CNFWPADATA,
-					       (u8 *)&wpa,
-					       sizeof(wpa));
+				HFA384x_RID_CNFWPADATA,
+				(u8 *)&wpa,
+				sizeof(wpa));
 		}
 		break;
 	}
diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index fb5441399131..f64c18882511 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -342,7 +342,7 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 		pr_debug("Received mlme ifstate request\n");
 		ifstatemsg = (struct p80211msg_lnxreq_ifstate *)msg;
 		result = prism2sta_ifstate(wlandev,
-					   ifstatemsg->ifstate.data);
+				ifstatemsg->ifstate.data);
 		ifstatemsg->resultcode.status =
 			P80211ENUM_msgitem_status_data_ok;
 		ifstatemsg->resultcode.data = result;
@@ -377,8 +377,8 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
 	}
 	default:
 		netdev_warn(wlandev->netdev,
-			    "Unknown mgmt request message 0x%08x",
-			    msg->msgcode);
+			"Unknown mgmt request message 0x%08x",
+			msg->msgcode);
 		break;
 	}
 
@@ -427,8 +427,8 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 			result = hfa384x_drvr_start(hw);
 			if (result) {
 				netdev_err(wlandev->netdev,
-					   "hfa384x_drvr_start() failed,result=%d\n",
-					   (int)result);
+					"hfa384x_drvr_start() failed,result=%d\n",
+					(int)result);
 				result =
 				 P80211ENUM_resultcode_implementation_failure;
 				wlandev->msdstate = WLAN_MSD_HWPRESENT;
@@ -471,8 +471,8 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 			result = hfa384x_drvr_start(hw);
 			if (result) {
 				netdev_err(wlandev->netdev,
-					   "hfa384x_drvr_start() failed,result=%d\n",
-					   (int)result);
+					"hfa384x_drvr_start() failed,result=%d\n",
+					(int)result);
 				result =
 				  P80211ENUM_resultcode_implementation_failure;
 				wlandev->msdstate = WLAN_MSD_HWPRESENT;
@@ -482,8 +482,8 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 			result = prism2sta_getcardinfo(wlandev);
 			if (result) {
 				netdev_err(wlandev->netdev,
-					   "prism2sta_getcardinfo() failed,result=%d\n",
-					   (int)result);
+					"prism2sta_getcardinfo() failed,result=%d\n",
+					(int)result);
 				result =
 				  P80211ENUM_resultcode_implementation_failure;
 				hfa384x_drvr_stop(hw);
@@ -493,8 +493,8 @@ u32 prism2sta_ifstate(struct wlandevice *wlandev, u32 ifstate)
 			result = prism2sta_globalsetup(wlandev);
 			if (result) {
 				netdev_err(wlandev->netdev,
-					   "prism2sta_globalsetup() failed,result=%d\n",
-					   (int)result);
+					"prism2sta_globalsetup() failed,result=%d\n",
+					(int)result);
 				result =
 				  P80211ENUM_resultcode_implementation_failure;
 				hfa384x_drvr_stop(hw);
@@ -590,8 +590,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	/*  Some are critical, some are not */
 	/* NIC identity */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_NICIDENTITY,
-					&hw->ident_nic,
-					sizeof(struct hfa384x_compident));
+			&hw->ident_nic, sizeof(struct hfa384x_compident));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve NICIDENTITY\n");
 		goto failed;
@@ -609,8 +609,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	/* Primary f/w identity */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRIIDENTITY,
-					&hw->ident_pri_fw,
-					sizeof(struct hfa384x_compident));
+			&hw->ident_pri_fw, sizeof(struct hfa384x_compident));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve PRIIDENTITY\n");
 		goto failed;
@@ -624,12 +624,12 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
 		    hw->ident_pri_fw.id, hw->ident_pri_fw.major,
-		    hw->ident_pri_fw.minor, hw->ident_pri_fw.variant);
+		hw->ident_pri_fw.minor, hw->ident_pri_fw.variant);
 
 	/* Station (Secondary?) f/w identity */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STAIDENTITY,
-					&hw->ident_sta_fw,
-					sizeof(struct hfa384x_compident));
+			&hw->ident_sta_fw, sizeof(struct hfa384x_compident));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve STAIDENTITY\n");
 		goto failed;
@@ -637,7 +637,7 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	if (hw->ident_nic.id < 0x8000) {
 		netdev_err(wlandev->netdev,
-			   "FATAL: Card is not an Intersil Prism2/2.5/3\n");
+			"FATAL: Card is not an Intersil Prism2/2.5/3\n");
 		result = -1;
 		goto failed;
 	}
@@ -654,22 +654,22 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	if (hw->ident_sta_fw.id == 0x1f) {
 		netdev_info(wlandev->netdev,
-			    "ident: sta f/w: id=0x%02x %d.%d.%d\n",
-			    hw->ident_sta_fw.id, hw->ident_sta_fw.major,
-			    hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
+			"ident: sta f/w: id=0x%02x %d.%d.%d\n",
+			hw->ident_sta_fw.id, hw->ident_sta_fw.major,
+			hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
 	} else {
 		netdev_info(wlandev->netdev,
-			    "ident:  ap f/w: id=0x%02x %d.%d.%d\n",
-			    hw->ident_sta_fw.id, hw->ident_sta_fw.major,
-			    hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
+			"ident:  ap f/w: id=0x%02x %d.%d.%d\n",
+			hw->ident_sta_fw.id, hw->ident_sta_fw.major,
+			hw->ident_sta_fw.minor, hw->ident_sta_fw.variant);
 		netdev_err(wlandev->netdev, "Unsupported Tertiary AP firmware loaded!\n");
 		goto failed;
 	}
 
 	/* Compatibility range, Modem supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_MFISUPRANGE,
-					&hw->cap_sup_mfi,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_sup_mfi, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve MFISUPRANGE\n");
 		goto failed;
@@ -685,15 +685,15 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	le16_to_cpus(&hw->cap_sup_mfi.top);
 
 	netdev_info(wlandev->netdev,
-		    "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-		    hw->cap_sup_mfi.role, hw->cap_sup_mfi.id,
-		    hw->cap_sup_mfi.variant, hw->cap_sup_mfi.bottom,
-		    hw->cap_sup_mfi.top);
+		"MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		hw->cap_sup_mfi.role, hw->cap_sup_mfi.id,
+		hw->cap_sup_mfi.variant, hw->cap_sup_mfi.bottom,
+		hw->cap_sup_mfi.top);
 
 	/* Compatibility range, Controller supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_CFISUPRANGE,
-					&hw->cap_sup_cfi,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_sup_cfi, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve CFISUPRANGE\n");
 		goto failed;
@@ -709,15 +709,15 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	le16_to_cpus(&hw->cap_sup_cfi.top);
 
 	netdev_info(wlandev->netdev,
-		    "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-		    hw->cap_sup_cfi.role, hw->cap_sup_cfi.id,
-		    hw->cap_sup_cfi.variant, hw->cap_sup_cfi.bottom,
-		    hw->cap_sup_cfi.top);
+		"CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		hw->cap_sup_cfi.role, hw->cap_sup_cfi.id,
+		hw->cap_sup_cfi.variant, hw->cap_sup_cfi.bottom,
+		hw->cap_sup_cfi.top);
 
 	/* Compatibility range, Primary f/w supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRISUPRANGE,
-					&hw->cap_sup_pri,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_sup_pri, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve PRISUPRANGE\n");
 		goto failed;
@@ -733,15 +733,15 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	le16_to_cpus(&hw->cap_sup_pri.top);
 
 	netdev_info(wlandev->netdev,
-		    "PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-		    hw->cap_sup_pri.role, hw->cap_sup_pri.id,
-		    hw->cap_sup_pri.variant, hw->cap_sup_pri.bottom,
-		    hw->cap_sup_pri.top);
+		"PRI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		hw->cap_sup_pri.role, hw->cap_sup_pri.id,
+		hw->cap_sup_pri.variant, hw->cap_sup_pri.bottom,
+		hw->cap_sup_pri.top);
 
 	/* Compatibility range, Station f/w supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STASUPRANGE,
-					&hw->cap_sup_sta,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_sup_sta, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve STASUPRANGE\n");
 		goto failed;
@@ -758,22 +758,22 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	if (hw->cap_sup_sta.id == 0x04) {
 		netdev_info(wlandev->netdev,
-			    "STA:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-			    hw->cap_sup_sta.role, hw->cap_sup_sta.id,
-			    hw->cap_sup_sta.variant, hw->cap_sup_sta.bottom,
-			    hw->cap_sup_sta.top);
+			"STA:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+			hw->cap_sup_sta.role, hw->cap_sup_sta.id,
+			hw->cap_sup_sta.variant, hw->cap_sup_sta.bottom,
+			hw->cap_sup_sta.top);
 	} else {
 		netdev_info(wlandev->netdev,
-			    "AP:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-			    hw->cap_sup_sta.role, hw->cap_sup_sta.id,
-			    hw->cap_sup_sta.variant, hw->cap_sup_sta.bottom,
-			    hw->cap_sup_sta.top);
+			"AP:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+			hw->cap_sup_sta.role, hw->cap_sup_sta.id,
+			hw->cap_sup_sta.variant, hw->cap_sup_sta.bottom,
+			hw->cap_sup_sta.top);
 	}
 
 	/* Compatibility range, primary f/w actor, CFI supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_PRI_CFIACTRANGES,
-					&hw->cap_act_pri_cfi,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_act_pri_cfi, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve PRI_CFIACTRANGES\n");
 		goto failed;
@@ -789,15 +789,15 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	le16_to_cpus(&hw->cap_act_pri_cfi.top);
 
 	netdev_info(wlandev->netdev,
-		    "PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-		    hw->cap_act_pri_cfi.role, hw->cap_act_pri_cfi.id,
-		    hw->cap_act_pri_cfi.variant, hw->cap_act_pri_cfi.bottom,
-		    hw->cap_act_pri_cfi.top);
+		"PRI-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		hw->cap_act_pri_cfi.role, hw->cap_act_pri_cfi.id,
+		hw->cap_act_pri_cfi.variant, hw->cap_act_pri_cfi.bottom,
+		hw->cap_act_pri_cfi.top);
 
 	/* Compatibility range, sta f/w actor, CFI supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STA_CFIACTRANGES,
-					&hw->cap_act_sta_cfi,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_act_sta_cfi, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve STA_CFIACTRANGES\n");
 		goto failed;
@@ -813,15 +813,15 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	le16_to_cpus(&hw->cap_act_sta_cfi.top);
 
 	netdev_info(wlandev->netdev,
-		    "STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-		    hw->cap_act_sta_cfi.role, hw->cap_act_sta_cfi.id,
-		    hw->cap_act_sta_cfi.variant, hw->cap_act_sta_cfi.bottom,
-		    hw->cap_act_sta_cfi.top);
+		"STA-CFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		hw->cap_act_sta_cfi.role, hw->cap_act_sta_cfi.id,
+		hw->cap_act_sta_cfi.variant, hw->cap_act_sta_cfi.bottom,
+		hw->cap_act_sta_cfi.top);
 
 	/* Compatibility range, sta f/w actor, MFI supplier */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_STA_MFIACTRANGES,
-					&hw->cap_act_sta_mfi,
-					sizeof(struct hfa384x_caplevel));
+			&hw->cap_act_sta_mfi, sizeof(struct hfa384x_caplevel));
+
 	if (result) {
 		netdev_err(wlandev->netdev, "Failed to retrieve STA_MFIACTRANGES\n");
 		goto failed;
@@ -837,17 +837,18 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	le16_to_cpus(&hw->cap_act_sta_mfi.top);
 
 	netdev_info(wlandev->netdev,
-		    "STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
-		    hw->cap_act_sta_mfi.role, hw->cap_act_sta_mfi.id,
-		    hw->cap_act_sta_mfi.variant, hw->cap_act_sta_mfi.bottom,
-		    hw->cap_act_sta_mfi.top);
+		"STA-MFI:ACT:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
+		hw->cap_act_sta_mfi.role, hw->cap_act_sta_mfi.id,
+		hw->cap_act_sta_mfi.variant, hw->cap_act_sta_mfi.bottom,
+		hw->cap_act_sta_mfi.top);
 
 	/* Serial Number */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_NICSERIALNUMBER,
-					snum, HFA384x_RID_NICSERIALNUMBER_LEN);
+			snum, HFA384x_RID_NICSERIALNUMBER_LEN);
+
 	if (!result) {
 		netdev_info(wlandev->netdev, "Prism2 card SN: %*pEhp\n",
-			    HFA384x_RID_NICSERIALNUMBER_LEN, snum);
+			HFA384x_RID_NICSERIALNUMBER_LEN, snum);
 	} else {
 		netdev_err(wlandev->netdev, "Failed to retrieve Prism2 Card SN\n");
 		goto failed;
@@ -855,7 +856,8 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 
 	/* Collect the MAC address */
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_CNFOWNMACADDR,
-					wlandev->netdev->dev_addr, ETH_ALEN);
+			wlandev->netdev->dev_addr, ETH_ALEN);
+
 	if (result != 0) {
 		netdev_err(wlandev->netdev, "Failed to retrieve mac address\n");
 		goto failed;
@@ -914,7 +916,7 @@ static int prism2sta_globalsetup(struct wlandevice *wlandev)
 
 	/* Set the maximum frame size */
 	return hfa384x_drvr_setconfig16(hw, HFA384x_RID_CNFMAXDATALEN,
-					WLAN_DATA_MAXLEN);
+		WLAN_DATA_MAXLEN);
 }
 
 static int prism2sta_setmulticast(struct wlandevice *wlandev,
@@ -934,9 +936,8 @@ static int prism2sta_setmulticast(struct wlandevice *wlandev,
 	else
 		promisc = P80211ENUM_truth_false;
 
-	result =
-	    hfa384x_drvr_setconfig16_async(hw, HFA384x_RID_PROMISCMODE,
-					   promisc);
+	result = hfa384x_drvr_setconfig16_async(hw, HFA384x_RID_PROMISCMODE,
+			promisc);
 exit:
 	return result;
 }
@@ -1048,21 +1049,21 @@ static void prism2sta_inf_scanresults(struct wlandevice *wlandev,
 		 inf->info.scanresult.scanreason, nbss);
 	for (i = 0; i < nbss; i++) {
 		pr_debug("chid=%d anl=%d sl=%d bcnint=%d\n",
-			 sr->result[i].chid,
-			 sr->result[i].anl,
-			 sr->result[i].sl, sr->result[i].bcnint);
+			sr->result[i].chid,
+			sr->result[i].anl,
+			sr->result[i].sl, sr->result[i].bcnint);
 		pr_debug("  capinfo=0x%04x proberesp_rate=%d\n",
-			 sr->result[i].capinfo, sr->result[i].proberesp_rate);
+			sr->result[i].capinfo, sr->result[i].proberesp_rate);
 	}
 	/* issue a join request */
 	joinreq.channel = sr->result[0].chid;
 	memcpy(joinreq.bssid, sr->result[0].bssid, WLAN_BSSID_LEN);
 	result = hfa384x_drvr_setconfig(hw,
-					HFA384x_RID_JOINREQUEST,
-					&joinreq, HFA384x_RID_JOINREQUEST_LEN);
+		HFA384x_RID_JOINREQUEST, &joinreq, HFA384x_RID_JOINREQUEST_LEN);
+
 	if (result) {
 		netdev_err(wlandev->netdev, "setconfig(joinreq) failed, result=%d\n",
-			   result);
+			result);
 	}
 }
 
@@ -1155,11 +1156,11 @@ static void prism2sta_inf_chinforesults(struct wlandevice *wlandev,
 
 		pr_debug("chinfo: channel %d, %s level (avg/peak)=%d/%d dB, pcf %d\n",
 			 chan + 1,
-			 (chinforesult->active & HFA384x_CHINFORESULT_BSSACTIVE)
-				? "signal" : "noise",
-			 chinforesult->anl, chinforesult->pnl,
-			 (chinforesult->active & HFA384x_CHINFORESULT_PCFACTIVE)
-				? 1 : 0);
+			(chinforesult->active & HFA384x_CHINFORESULT_BSSACTIVE)
+			? "signal" : "noise",
+			chinforesult->anl, chinforesult->pnl,
+			(chinforesult->active & HFA384x_CHINFORESULT_PCFACTIVE)
+			? 1 : 0);
 		n++;
 	}
 	atomic_set(&hw->channel_info.done, 2);
@@ -1234,9 +1235,9 @@ void prism2sta_processing_defer(struct work_struct *data)
 			/* Collect the BSSID, and set state to allow tx */
 
 			result = hfa384x_drvr_getconfig(hw,
-							HFA384x_RID_CURRENTBSSID,
-							wlandev->bssid,
-							WLAN_BSSID_LEN);
+					HFA384x_RID_CURRENTBSSID,
+					wlandev->bssid, WLAN_BSSID_LEN);
+
 			if (result) {
 				pr_debug
 				    ("getconfig(0x%02x) failed, result = %d\n",
@@ -1245,8 +1246,8 @@ void prism2sta_processing_defer(struct work_struct *data)
 			}
 
 			result = hfa384x_drvr_getconfig(hw,
-							HFA384x_RID_CURRENTSSID,
-							&ssid, sizeof(ssid));
+				HFA384x_RID_CURRENTSSID, &ssid, sizeof(ssid));
+
 			if (result) {
 				pr_debug
 				    ("getconfig(0x%02x) failed, result = %d\n",
@@ -1254,12 +1255,11 @@ void prism2sta_processing_defer(struct work_struct *data)
 				return;
 			}
 			prism2mgmt_bytestr2pstr((struct hfa384x_bytestr *)&ssid,
-						(struct p80211pstrd *)&wlandev->ssid);
+				(struct p80211pstrd *)&wlandev->ssid);
 
 			/* Collect the port status */
 			result = hfa384x_drvr_getconfig16(hw,
-							  HFA384x_RID_PORTSTATUS,
-							  &portstatus);
+					HFA384x_RID_PORTSTATUS, &portstatus);
 			if (result) {
 				pr_debug
 				    ("getconfig(0x%02x) failed, result = %d\n",
@@ -1290,7 +1290,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 		 */
 		if (wlandev->netdev->type == ARPHRD_ETHER)
 			netdev_info(wlandev->netdev,
-				    "linkstatus=DISCONNECTED (unhandled)\n");
+			"linkstatus=DISCONNECTED (unhandled)\n");
 		wlandev->macmode = WLAN_MACMODE_NONE;
 
 		netif_carrier_off(wlandev->netdev);
@@ -1318,24 +1318,24 @@ void prism2sta_processing_defer(struct work_struct *data)
 		netdev_info(wlandev->netdev, "linkstatus=AP_CHANGE\n");
 
 		result = hfa384x_drvr_getconfig(hw,
-						HFA384x_RID_CURRENTBSSID,
-						wlandev->bssid, WLAN_BSSID_LEN);
+			HFA384x_RID_CURRENTBSSID,
+			wlandev->bssid, WLAN_BSSID_LEN);
+
 		if (result) {
 			pr_debug("getconfig(0x%02x) failed, result = %d\n",
-				 HFA384x_RID_CURRENTBSSID, result);
+				HFA384x_RID_CURRENTBSSID, result);
 			return;
 		}
 
 		result = hfa384x_drvr_getconfig(hw,
-						HFA384x_RID_CURRENTSSID,
-						&ssid, sizeof(ssid));
+				HFA384x_RID_CURRENTSSID, &ssid, sizeof(ssid));
 		if (result) {
 			pr_debug("getconfig(0x%02x) failed, result = %d\n",
-				 HFA384x_RID_CURRENTSSID, result);
+				HFA384x_RID_CURRENTSSID, result);
 			return;
 		}
 		prism2mgmt_bytestr2pstr((struct hfa384x_bytestr *)&ssid,
-					(struct p80211pstrd *)&wlandev->ssid);
+			(struct p80211pstrd *)&wlandev->ssid);
 
 		hw->link_status = HFA384x_LINK_CONNECTED;
 		netif_carrier_on(wlandev->netdev);
@@ -1357,7 +1357,8 @@ void prism2sta_processing_defer(struct work_struct *data)
 		 * Response:
 		 * Block Transmits, Ignore receives of data frames
 		 */
-		netdev_info(wlandev->netdev, "linkstatus=AP_OUTOFRANGE (unhandled)\n");
+		netdev_info(wlandev->netdev,
+			"linkstatus=AP_OUTOFRANGE (unhandled)\n");
 
 		netif_carrier_off(wlandev->netdev);
 
@@ -1392,13 +1393,14 @@ void prism2sta_processing_defer(struct work_struct *data)
 			joinreq = hw->joinreq;
 			/* Send the join request */
 			hfa384x_drvr_setconfig(hw,
-					       HFA384x_RID_JOINREQUEST,
-					       &joinreq,
-					       HFA384x_RID_JOINREQUEST_LEN);
+				HFA384x_RID_JOINREQUEST,
+				&joinreq, HFA384x_RID_JOINREQUEST_LEN);
+
 			netdev_info(wlandev->netdev,
-				    "linkstatus=ASSOCFAIL (re-submitting join)\n");
+				"linkstatus=ASSOCFAIL (re-submitting join)\n");
 		} else {
-			netdev_info(wlandev->netdev, "linkstatus=ASSOCFAIL (unhandled)\n");
+			netdev_info(wlandev->netdev,
+				"linkstatus=ASSOCFAIL (unhandled)\n");
 		}
 
 		netif_carrier_off(wlandev->netdev);
@@ -1411,7 +1413,7 @@ void prism2sta_processing_defer(struct work_struct *data)
 	default:
 		/* This is bad, IO port problems? */
 		netdev_warn(wlandev->netdev,
-			    "unknown linkstatus=0x%02x\n", hw->link_status);
+			"unknown linkstatus=0x%02x\n", hw->link_status);
 		return;
 	}
 
@@ -1493,7 +1495,7 @@ static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
 	if (i >= hw->authlist.cnt) {
 		if (rec.assocstatus != HFA384x_ASSOCSTATUS_AUTHFAIL)
 			netdev_warn(wlandev->netdev,
-				    "assocstatus info frame received for non-authenticated station.\n");
+				"assocstatus info frame received for non-authenticated station.\n");
 	} else {
 		hw->authlist.assoc[i] =
 		    (rec.assocstatus == HFA384x_ASSOCSTATUS_STAASSOC ||
@@ -1501,7 +1503,7 @@ static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
 
 		if (rec.assocstatus == HFA384x_ASSOCSTATUS_AUTHFAIL)
 			netdev_warn(wlandev->netdev,
-				    "authfail assocstatus info frame received for authenticated station.\n");
+				"authfail assocstatus info frame received for authenticated station.\n");
 	}
 }
 
@@ -1571,7 +1573,8 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 		for (i = 0; i < hw->authlist.cnt; i++)
 			if (ether_addr_equal(rec.address,
 					     hw->authlist.addr[i])) {
-				rec.status = cpu_to_le16(P80211ENUM_status_successful);
+				rec.status = cpu_to_le16(
+						P80211ENUM_status_successful);
 				break;
 			}
 
@@ -1608,7 +1611,8 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 
 		for (i = 0; i < cnt; i++, addr += ETH_ALEN)
 			if (ether_addr_equal(rec.address, addr)) {
-				rec.status = cpu_to_le16(P80211ENUM_status_successful);
+				rec.status = cpu_to_le16(
+						P80211ENUM_status_successful);
 				break;
 			}
 
@@ -1638,7 +1642,8 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 
 		for (i = 0; i < cnt; i++, addr += ETH_ALEN)
 			if (ether_addr_equal(rec.address, addr)) {
-				rec.status = cpu_to_le16(P80211ENUM_status_unspec_failure);
+				rec.status = cpu_to_le16(
+					P80211ENUM_status_unspec_failure);
 				break;
 			}
 
@@ -1664,10 +1669,12 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 
 		if (i >= hw->authlist.cnt) {
 			if (hw->authlist.cnt >= WLAN_AUTH_MAX) {
-				rec.status = cpu_to_le16(P80211ENUM_status_ap_full);
+				rec.status = cpu_to_le16(
+						P80211ENUM_status_ap_full);
 			} else {
-				ether_addr_copy(hw->authlist.addr[hw->authlist.cnt],
-						rec.address);
+				ether_addr_copy(
+					hw->authlist.addr[hw->authlist.cnt],
+					rec.address);
 				hw->authlist.cnt++;
 				added = 1;
 			}
@@ -1688,8 +1695,8 @@ static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
 		if (added)
 			hw->authlist.cnt--;
 		netdev_err(wlandev->netdev,
-			   "setconfig(authenticatestation) failed, result=%d\n",
-			   result);
+			"setconfig(authenticatestation) failed, result=%d\n",
+			result);
 	}
 }
 
@@ -1780,7 +1787,7 @@ void prism2sta_ev_info(struct wlandevice *wlandev,
 		break;
 	default:
 		netdev_warn(wlandev->netdev,
-			    "Unknown info type=0x%02x\n", inf->infotype);
+			"Unknown info type=0x%02x\n", inf->infotype);
 		break;
 	}
 }
@@ -1928,8 +1935,9 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 
 	/* It only makes sense to poll these in non-IBSS */
 	if (wlandev->macmode != WLAN_MACMODE_IBSS_STA) {
-		result = hfa384x_drvr_getconfig(hw, HFA384x_RID_DBMCOMMSQUALITY,
-						&hw->qual, HFA384x_RID_DBMCOMMSQUALITY_LEN);
+		result = hfa384x_drvr_getconfig(hw,
+			HFA384x_RID_DBMCOMMSQUALITY,
+			&hw->qual, HFA384x_RID_DBMCOMMSQUALITY_LEN);
 
 		if (result) {
 			netdev_err(wlandev->netdev, "error fetching commsqual\n");
@@ -1937,9 +1945,9 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 		}
 
 		pr_debug("commsqual %d %d %d\n",
-			 le16_to_cpu(hw->qual.cq_curr_bss),
-			 le16_to_cpu(hw->qual.asl_curr_bss),
-			 le16_to_cpu(hw->qual.anl_curr_fc));
+			le16_to_cpu(hw->qual.cq_curr_bss),
+			le16_to_cpu(hw->qual.asl_curr_bss),
+			le16_to_cpu(hw->qual.anl_curr_fc));
 	}
 
 	/* Get the signal rate */
@@ -1949,7 +1957,7 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 
 	if (result) {
 		pr_debug("get signal rate failed, result = %d\n",
-			 result);
+			result);
 		return;
 	}
 
@@ -1972,24 +1980,24 @@ void prism2sta_commsqual_defer(struct work_struct *data)
 
 	/* Lastly, we need to make sure the BSSID didn't change on us */
 	result = hfa384x_drvr_getconfig(hw,
-					HFA384x_RID_CURRENTBSSID,
-					wlandev->bssid, WLAN_BSSID_LEN);
+		HFA384x_RID_CURRENTBSSID, wlandev->bssid, WLAN_BSSID_LEN);
+
 	if (result) {
 		pr_debug("getconfig(0x%02x) failed, result = %d\n",
-			 HFA384x_RID_CURRENTBSSID, result);
+			HFA384x_RID_CURRENTBSSID, result);
 		return;
 	}
 
 	result = hfa384x_drvr_getconfig(hw,
-					HFA384x_RID_CURRENTSSID,
-					&ssid, sizeof(ssid));
+			HFA384x_RID_CURRENTSSID, &ssid, sizeof(ssid));
+
 	if (result) {
 		pr_debug("getconfig(0x%02x) failed, result = %d\n",
-			 HFA384x_RID_CURRENTSSID, result);
+			HFA384x_RID_CURRENTSSID, result);
 		return;
 	}
 	prism2mgmt_bytestr2pstr((struct hfa384x_bytestr *)&ssid,
-				(struct p80211pstrd *)&wlandev->ssid);
+			(struct p80211pstrd *)&wlandev->ssid);
 
 	/* Reschedule timer */
 	mod_timer(&hw->commsqual_timer, jiffies + HZ);
diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index b5ba176004c1..89a60e9469bb 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -48,11 +48,11 @@ static const struct usb_device_id usb_prism_tbl[] = {
 	PRISM_DEV(0x0bb2, 0x0302, "Ambit Microsystems Corp."),
 	PRISM_DEV(0x9016, 0x182d, "Sitecom WL-022 802.11b USB Adapter"),
 	PRISM_DEV(0x0543, 0x0f01,
-		  "ViewSonic Airsync USB Adapter 11Mbps (Prism2.5)"),
+		"ViewSonic Airsync USB Adapter 11Mbps (Prism2.5)"),
 	PRISM_DEV(0x067c, 0x1022,
-		  "Siemens SpeedStream 1022 11Mbps WLAN USB Adapter"),
+		"Siemens SpeedStream 1022 11Mbps WLAN USB Adapter"),
 	PRISM_DEV(0x049f, 0x0033,
-		  "Compaq/Intel W100 PRO/Wireless 11Mbps multiport WLAN Adapter"),
+		"Compaq/Intel W100 PRO/Wireless 11Mbps multiport WLAN Adapter"),
 	{ } /* terminator */
 };
 MODULE_DEVICE_TABLE(usb, usb_prism_tbl);
@@ -93,8 +93,7 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 	/* Do a chip-level reset on the MAC */
 	if (prism2_doreset) {
 		result = hfa384x_corereset(hw,
-					   prism2_reset_holdtime,
-					   prism2_reset_settletime, 0);
+			prism2_reset_holdtime, prism2_reset_settletime, 0);
 		if (result != 0) {
 			result = -EIO;
 			dev_err(&interface->dev,
@@ -256,8 +255,8 @@ static int prism2sta_resume(struct usb_interface *interface)
 	/* Do a chip-level reset on the MAC */
 	if (prism2_doreset) {
 		result = hfa384x_corereset(hw,
-					   prism2_reset_holdtime,
-					   prism2_reset_settletime, 0);
+			prism2_reset_holdtime, prism2_reset_settletime, 0);
+
 		if (result != 0) {
 			unregister_wlandev(wlandev);
 			hfa384x_destroy(hw);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
