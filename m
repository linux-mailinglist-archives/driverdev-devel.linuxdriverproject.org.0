Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AC8174D8E
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Mar 2020 14:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 64EC6203F0;
	Sun,  1 Mar 2020 13:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1vxAI5ngpwsb; Sun,  1 Mar 2020 13:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8481D20381;
	Sun,  1 Mar 2020 13:51:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4299A1BF25F
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 13:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3EFEC876F2
 for <devel@linuxdriverproject.org>; Sun,  1 Mar 2020 13:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4jtIWF4KQiTP for <devel@linuxdriverproject.org>;
 Sun,  1 Mar 2020 13:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A352687695
 for <devel@driverdev.osuosl.org>; Sun,  1 Mar 2020 13:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583070657;
 bh=JKoFDKN1cLuoYPsFdgNGMtQg6A4zWvdbaIlDdMrb1gg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=DiBOvz4i1ZCeZlhA73DIs3cpTdi+vFM8wY69/u13XmYZOIoGLBv+IAP8bdAmMqFy+
 lAksbU5s3djzza+ThRbNHWt+hsW2CJyoJvAStNaYm9Sv9acwL5CSwggaOsvPpapaNi
 65UN6wD0ElPxgonAtARcfxXgyur0q3nhwU26Ht2M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1Mxm3Q-1jJr0p1pL4-00zHr0; Sun, 01 Mar 2020 14:50:57 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Remove unnecessary local variables
 initialization
Date: Sun,  1 Mar 2020 14:50:28 +0100
Message-Id: <20200301135028.11753-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:wGQd9IDuC3R1icM00mwuqQJlfAU6ipGzkF95PmAtlfgTbfQo8pW
 fAHINJIcuPpOYoIj/a0Irb2lx+RX9caYn1yeBJE04wuhrT2MYsSyde+WegWkZMGEoGt9nxp
 5nnjl+zzRdvKMHO/0RIa5jlUU9ginKlmJ7ZOsTufXFMrOEeCZy3ltesNMvAlIKuytCeKlsP
 Urk6F0x4wDp2e+uPkCwAQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:VGhm5UI6I1o=:bA6E9xDaopggnVetEZ2GKc
 Fll/1WdgVTGHGtBajd4banvKH21lW/CcIt6t5n+T6nMiY18qwQxyItFf8ptRkSNHST8sUXe2/
 uZs6ksMSmfSMZNNsxgR5FvZdvnyCh8tx8os6sLxm7wuNpjhm8RYmdrhG6mD5ded4UZVgC6Ew0
 A8T+x6TWurjhw3QnQ/nhfA0iVE7kmZJiGFoLmrBwalB+bv/+c5G+04C4nX8YxZoWPIC25rNmf
 zCbbyU5zmlUqtHqNYg8NgvyGGe9mbszCeFJGnDsSqi/oxzxxXv+QB5s+BauE/8JLAu1YDioSo
 G9TqrxA1o+QSb0s932otsPX0YDrjywNs/0iHOnJ12uFBuHYuXObIU4PEYfU+vNQBgUJGyIiPC
 A4pQKdIoIdrQhDRC8vcpdrPcKPn+bCYq/wErdUt11iAX6fIfCEf89/gDfWdDSTX+BYOh9IBgo
 JLT6090RP5MmH8xd2p8gXnIuWfR+bg/gly5YWvr+cdDh5hEsQ/nn1hMrMlELUpRfXwg101ohv
 /xuApjPrkOCQzNRrNdDx9vshZtv57g+8caGOr/4I0NSEIpVUT8HOcIWGZ5oZ/s8ll5Lqcb88x
 nDXs40Lk3cF1AGr249BKYoWpQYVN/kRmV4V6e5tivuy/qaob84u638a/76ikXyec2qBek/hHT
 KjIHJT6fpoQz6U9GqTjx9ogqSU7WQXYVjwyzuiVj4DN9UqoUzoU5TLUlhNX0r5J36Pn/T15lA
 cuq0TRumbRReb4evYBqD+9Sp2ZaUHutqpFodsk4SSx5EctkYoUl6hQBtuSDaAG+Lobkw6Qacs
 KXZOG4cwLgQNo6qAgrn75u5UQtiosW8Q2RTQ3H2TszP3wqpw9Ci+c31svEjzFmGSjorLQqD1a
 gpkgnCUH0V4c4k6VNHbL4AEW2EOKIh5SVRHNRkURs/b1MkTVT7zQ8PH9Xtl7C/cjZuzdWiheG
 riptgM+qWlT3nnfBEHY5olaKMgXhiChZBhEYZhmohK+VXsIRgWlooF8xIi3RmKZXr1UUKy1i0
 C4nkozFllmnf8Q+duq1wAZw5u5rZFAIb4c07YezMeG9tetTYvLRiUM6G/wyKwjmI1ycaMBVbp
 UW3Q+7iCtziHFl87qExxPSIwhxj82AeI90a4DYX+mnrwjasfs5neo2cJ2Sw6sGOueb9dHzyI8
 qx3D6jOlqAwORCQdKrd2+JbsdFAhOsw5d10nq5uqfj46uqLa8LuwSnGvEYt/jpWtKhULeAy2k
 AgI1/Xf7zkOSfCL7w
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Don't initialize variables that are then set a few lines later.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/main_usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 701300202b21..bfeb5df896fe 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -109,7 +109,7 @@ static void vnt_set_options(struct vnt_private *priv)
  */
 static int vnt_init_registers(struct vnt_private *priv)
 {
-	int ret = 0;
+	int ret;
 	struct vnt_cmd_card_init *init_cmd = &priv->init_command;
 	struct vnt_rsp_card_init *init_rsp = &priv->init_response;
 	u8 antenna;
@@ -435,7 +435,7 @@ static void vnt_free_int_bufs(struct vnt_private *priv)

 static int vnt_alloc_bufs(struct vnt_private *priv)
 {
-	int ret = 0;
+	int ret;
 	struct vnt_usb_send_context *tx_context;
 	struct vnt_rcb *rcb;
 	int ii;
@@ -528,7 +528,7 @@ static void vnt_tx_80211(struct ieee80211_hw *hw,

 static int vnt_start(struct ieee80211_hw *hw)
 {
-	int ret = 0;
+	int ret;
 	struct vnt_private *priv = hw->priv;

 	priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;
@@ -798,7 +798,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,
 	struct vnt_private *priv = hw->priv;
 	struct netdev_hw_addr *ha;
 	u64 mc_filter = 0;
-	u32 bit_nr = 0;
+	u32 bit_nr;

 	netdev_hw_addr_list_for_each(ha, mc_list) {
 		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
@@ -973,7 +973,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	struct vnt_private *priv;
 	struct ieee80211_hw *hw;
 	struct wiphy *wiphy;
-	int rc = 0;
+	int rc;

 	udev = usb_get_dev(interface_to_usbdev(intf));

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
