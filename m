Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E35E320D9B
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 21:34:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31B356E56C
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 20:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cjNPVeht5SvX for <lists+driverdev-devel@lfdr.de>;
	Sun, 21 Feb 2021 20:34:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id DEC296F53B; Sun, 21 Feb 2021 20:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD1266F47A;
	Sun, 21 Feb 2021 20:34:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC9451BF95A
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA2366ECA6
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 20:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvAEgRViOO3y for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 20:33:47 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id BF2A86F4AA; Sun, 21 Feb 2021 20:33:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF48E6E987
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 20:33:45 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id F37EF5C00A9;
 Sun, 21 Feb 2021 15:33:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 21 Feb 2021 15:33:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=drnd.me; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=vsDawagnbCweTXi+6Ffx/hfen5
 OZppefssZRmq2SsIM=; b=bNkj6/4vMBxmrMRYYGcr4VAFmZtBUNpTsVhLcPZMb6
 1eA0OKixBQC2KzSC+oKpGkvWHpsn/TCjyLH9etD0W9nNs+AGFh3nqePI0mANxU1O
 uXcJJrxRsfMU3yt4cXw+0yP15y3bT9ho4XZ5oqjPLzULetKE84hA2zWsNu1RWEC8
 qlzlx3CxjqM5KZ7E/mGmOIiTYS/fgiUTkRLQU0yKI8MlGruusFMNx57HHuX66460
 R6WxJWJKwhPZUTQZxrsVlSrC8gNz3jzx2IXSGc+iWk+Sa8RkLR4xiI292sE88NVK
 NJEOrjBkgt98tVUzENuELFZSvfOUKaq+e/JkfyXflSsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vsDawagnbCweTXi+6
 Ffx/hfen5OZppefssZRmq2SsIM=; b=Q/oF4FVHaFUpXuU+ZW//7+3KZ4HrK9O3o
 yBQ+d4paKiL4Vcu8EwXHQzfQRRa19Ih7urCpnU7GPvBXwwRG8jF2t6j+qxuPYdI+
 DOu9Fh5GPvMUnv3empA2tJcNYb1f3GuF8G2MLMCbjLc/UGH23df8CDavuJOcPdcH
 QO6VKwixDspMoToLAJf/JpE1c0b66uYGzC0V+8TxChkYCnW5mZn6ITp8RveO1H0L
 ZBfGYBiv/qlBP8diODJRtgG1aInHMBgNULfGmLKXetIjdhee7ye/EC51gTOXVVJ+
 UurxPlKCRrYJx5TYVq6r2ff5t8GG33X5J3+Tk0g0/PnFz6/iYM4mA==
X-ME-Sender: <xms:qMMyYD_VKxyCz8xHRF-YGHRaGBKDcU2JWQVHk8nn8xssJV2p0vGVsA>
 <xme:qMMyYPuBSuBh8VpDD3jy91_9k3UGoF8UorNDJd1AQlD2E9nLHJgmAjzw4aMHnqjFV
 U7axpeIU2jJtcJY1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrkedugddufeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeghihhllhhirghm
 ucffuhhrrghnugcuoeifihhllhdoghhithesughrnhgurdhmvgeqnecuggftrfgrthhtvg
 hrnhepffehieekueeileeufeeuteegveeugeejfeelhfevkefhhfdvtddvjedufeekfeeu
 necukfhppedvudejrddvfeekrddvtdekrdejgeenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpeifihhllhdoghhithesughrnhgurdhmvg
X-ME-Proxy: <xmx:qMMyYBAyReXxenHYbPV6HIjQndNf3CTEWMjSpy-wwFcQ_2OzlfyMIQ>
 <xmx:qMMyYPccFBVmI8plvCcc5scjw7yNdHI4qgat4DN2rBo6EVT0TytRgA>
 <xmx:qMMyYIMDji1XC5waP5btRr1ziXq_XSXItdc0dahSD6ac7ohBmYaa-g>
 <xmx:qMMyYCWBoNwyvnDuGY11k-MZ1ogpfwG89Bxle3v4wACSNOacYe28Pw>
Received: from vagrant.vm (pd9eed04a.dip0.t-ipconnect.de [217.238.208.74])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1CC5D240064;
 Sun, 21 Feb 2021 15:33:44 -0500 (EST)
From: William Durand <will+git@drnd.me>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8192e: fix alignment issues in rtllib_wx.c
Date: Fri, 19 Feb 2021 23:33:52 +0000
Message-Id: <20210219233352.2298-1-will+git@drnd.me>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes "Alignment should match open parenthesis" issues reported by
checkpatch.pl in the `rtllib_wx.c` file.

Signed-off-by: William Durand <will+git@drnd.me>
---
 drivers/staging/rtl8192e/rtllib_wx.c | 42 ++++++++++++----------------
 1 file changed, 18 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
index ecd472baee16..ce095febc9ed 100644
--- a/drivers/staging/rtl8192e/rtllib_wx.c
+++ b/drivers/staging/rtl8192e/rtllib_wx.c
@@ -160,8 +160,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	iwe.cmd = SIOCGIWRATE;
 	iwe.u.bitrate.fixed = iwe.u.bitrate.disabled = 0;
 	iwe.u.bitrate.value = max_rate * 500000;
-	start = iwe_stream_add_event_rsl(info, start, stop, &iwe,
-				     IW_EV_PARAM_LEN);
+	start = iwe_stream_add_event_rsl(info, start, stop, &iwe, IW_EV_PARAM_LEN);
 	iwe.cmd = IWEVCUSTOM;
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
@@ -181,15 +180,13 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 	if (!(network->stats.mask & RTLLIB_STATMASK_SIGNAL))
 		iwe.u.qual.updated |= IW_QUAL_QUAL_INVALID;
 	iwe.u.qual.updated = 7;
-	start = iwe_stream_add_event_rsl(info, start, stop, &iwe,
-					 IW_EV_QUAL_LEN);
+	start = iwe_stream_add_event_rsl(info, start, stop, &iwe, IW_EV_QUAL_LEN);

 	iwe.cmd = IWEVCUSTOM;
 	p = custom;
 	iwe.u.data.length = p - custom;
 	if (iwe.u.data.length)
-		start = iwe_stream_add_point_rsl(info, start, stop,
-						 &iwe, custom);
+		start = iwe_stream_add_point_rsl(info, start, stop, &iwe, custom);

 	memset(&iwe, 0, sizeof(iwe));
 	if (network->wpa_ie_len) {
@@ -238,8 +235,8 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
 }

 int rtllib_wx_get_scan(struct rtllib_device *ieee,
-			  struct iw_request_info *info,
-			  union iwreq_data *wrqu, char *extra)
+		       struct iw_request_info *info,
+		       union iwreq_data *wrqu, char *extra)
 {
 	struct rtllib_network *network;
 	unsigned long flags;
@@ -285,8 +282,8 @@ int rtllib_wx_get_scan(struct rtllib_device *ieee,
 EXPORT_SYMBOL(rtllib_wx_get_scan);

 int rtllib_wx_set_encode(struct rtllib_device *ieee,
-			    struct iw_request_info *info,
-			    union iwreq_data *wrqu, char *keybuf)
+			 struct iw_request_info *info,
+			 union iwreq_data *wrqu, char *keybuf)
 {
 	struct iw_point *erq = &(wrqu->encoding);
 	struct net_device *dev = ieee->dev;
@@ -328,7 +325,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 				if (key_provided)
 					break;
 				lib80211_crypt_delayed_deinit(&ieee->crypt_info,
-						    &ieee->crypt_info.crypt[i]);
+							      &ieee->crypt_info.crypt[i]);
 			}
 		}

@@ -406,8 +403,7 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 					     NULL, (*crypt)->priv);
 		if (len == 0) {
 			/* Set a default key of all 0 */
-			netdev_info(ieee->dev, "Setting key %d to all zero.\n",
-					   key);
+			netdev_info(ieee->dev, "Setting key %d to all zero.\n", key);

 			memset(sec.keys[key], 0, 13);
 			(*crypt)->ops->set_key(sec.keys[key], 13, NULL,
@@ -460,8 +456,8 @@ int rtllib_wx_set_encode(struct rtllib_device *ieee,
 EXPORT_SYMBOL(rtllib_wx_set_encode);

 int rtllib_wx_get_encode(struct rtllib_device *ieee,
-			    struct iw_request_info *info,
-			    union iwreq_data *wrqu, char *keybuf)
+			 struct iw_request_info *info,
+			 union iwreq_data *wrqu, char *keybuf)
 {
 	struct iw_point *erq = &(wrqu->encoding);
 	int len, key;
@@ -505,8 +501,8 @@ int rtllib_wx_get_encode(struct rtllib_device *ieee,
 EXPORT_SYMBOL(rtllib_wx_get_encode);

 int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
-			       struct iw_request_info *info,
-			       union iwreq_data *wrqu, char *extra)
+			     struct iw_request_info *info,
+			     union iwreq_data *wrqu, char *extra)
 {
 	int ret = 0;
 	struct net_device *dev = ieee->dev;
@@ -663,8 +659,8 @@ int rtllib_wx_set_encode_ext(struct rtllib_device *ieee,
 EXPORT_SYMBOL(rtllib_wx_set_encode_ext);

 int rtllib_wx_set_mlme(struct rtllib_device *ieee,
-			       struct iw_request_info *info,
-			       union iwreq_data *wrqu, char *extra)
+		       struct iw_request_info *info,
+		       union iwreq_data *wrqu, char *extra)
 {
 	u8 i = 0;
 	bool deauth = false;
@@ -710,8 +706,8 @@ int rtllib_wx_set_mlme(struct rtllib_device *ieee,
 EXPORT_SYMBOL(rtllib_wx_set_mlme);

 int rtllib_wx_set_auth(struct rtllib_device *ieee,
-			       struct iw_request_info *info,
-			       struct iw_param *data, char *extra)
+		       struct iw_request_info *info,
+		       struct iw_param *data, char *extra)
 {
 	switch (data->flags & IW_AUTH_INDEX) {
 	case IW_AUTH_WPA_VERSION:
@@ -771,9 +767,7 @@ int rtllib_wx_set_gen_ie(struct rtllib_device *ieee, u8 *ie, size_t len)

 	if (len) {
 		eid = ie[0];
-		if ((eid == MFIE_TYPE_GENERIC) && (!memcmp(&ie[2],
-		     wps_oui, 4))) {
-
+		if ((eid == MFIE_TYPE_GENERIC) && (!memcmp(&ie[2], wps_oui, 4))) {
 			ieee->wps_ie_len = min_t(size_t, len, MAX_WZC_IE_LEN);
 			buf = kmemdup(ie, ieee->wps_ie_len, GFP_KERNEL);
 			if (!buf)
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
