Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A020020C9A5
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jun 2020 20:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B0F788252;
	Sun, 28 Jun 2020 18:39:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1N1-La2SBWgl; Sun, 28 Jun 2020 18:39:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE0FA88035;
	Sun, 28 Jun 2020 18:39:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D269E1BF228
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 18:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CED6D88035
 for <devel@linuxdriverproject.org>; Sun, 28 Jun 2020 18:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rC3v3QYM8f2V for <devel@linuxdriverproject.org>;
 Sun, 28 Jun 2020 18:39:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7AE1987FCC
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 18:39:39 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id d18so5381525edv.6
 for <devel@driverdev.osuosl.org>; Sun, 28 Jun 2020 11:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lm0EvFj5SQqQjjPPBO8iNtNM6ecOSgXLk09O7mbVMlw=;
 b=AzDgpAan7U2t78PhMuTnRQwakm9/ua25ia2AGWFY6rYOUeUUiNEy9HDehVBbNLiPmU
 wADNS+4eA9YrFDVIydHVvI3SCEU7HRYxR7+g58LfvzAlk9JGjy9G/44lWo+/b51GoLxZ
 AsNcgQdQcDtiXscmmxcqEBgN0jQXl8Re6yuIFhifWqLONr1T9fPCEMZD+tBnjCJ4iAc5
 ciNdDZPVUOYLny0Bhbk4tuFhdJApxf2Cr2TRGZbXMqLBcmhFQybpuNvDnWXhLSw2mXBD
 F7jgBCFE61B9FDNbJVopmADEuubNvwfCLV80MQZunRcpyAMlHeCSYq7/aZTs/RgGPhpV
 wq4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lm0EvFj5SQqQjjPPBO8iNtNM6ecOSgXLk09O7mbVMlw=;
 b=RMy4H6hAKQ/EgDcPsELD5ApnzomFPFkNIxI5sMK1UfDPiBCfodSsgQ18gPN4lfc5Mw
 WeTfST+7I6gWixcLmSoHww4niNgihSjjlFjjzuACtLQWzOtbMBcgcjnd32gFOwC1Q3uQ
 tvRGP7d+ecpaJJL1ABCejiJ6FczgwllPZq39qo13/hQlvPa0YKQmE+sCjfmsBAR5sUbp
 uvGMkKAoupi5wZJ5ZbPr9R0twyS7ZbxUz2mJtm0MfbEdUuvjDf4KrYv1TbquMKJpIaMz
 VpH/XMfmiZnN/4VsJEJsfHSUfYK6eQ3hvE2WdCJ7hLFCfUzrggy664/Ta0nr9bxKQbl8
 3U4g==
X-Gm-Message-State: AOAM533IBtit6+hSW9lggmXzmUgfJ1HTqT1GrcTsJIZ13vLJ3FEOchvX
 TBi18tTLYQjGlBtgmu7gvxo=
X-Google-Smtp-Source: ABdhPJzkAToo93OpIPSXT3A97figlkjnzzRq/XOS6rmjm9XAFRSpYUlX+ZbyEr7BGtc3IuK4QptnAA==
X-Received: by 2002:aa7:d297:: with SMTP id w23mr13400049edq.49.1593369577818; 
 Sun, 28 Jun 2020 11:39:37 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:a03f:b7f9:7600:f145:9a83:6418:5a5c])
 by smtp.gmail.com with ESMTPSA id d20sm1016070edy.9.2020.06.28.11.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 28 Jun 2020 11:39:37 -0700 (PDT)
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ks7010: fix ks_wlan_start_xmit()'s return type
Date: Sun, 28 Jun 2020 20:39:26 +0200
Message-Id: <20200628183926.74908-1-luc.vanoostenryck@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The method ndo_start_xmit() is defined as returning an 'netdev_tx_t',
which is a typedef for an enum type, but the implementation in this
driver returns an 'int'.

Fix this by returning 'netdev_tx_t' in this driver too and
usind 'NETDEV_TX_OK' instead of 0 accordingly.

Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
---
 drivers/staging/ks7010/ks_wlan_net.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 211dd4a11cac..334ae1ded684 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -46,7 +46,7 @@ struct wep_key {
  */
 static int ks_wlan_open(struct net_device *dev);
 static void ks_wlan_tx_timeout(struct net_device *dev, unsigned int txqueue);
-static int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev);
+static netdev_tx_t ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev);
 static int ks_wlan_close(struct net_device *dev);
 static void ks_wlan_set_rx_mode(struct net_device *dev);
 static struct net_device_stats *ks_wlan_get_stats(struct net_device *dev);
@@ -2511,7 +2511,7 @@ void ks_wlan_tx_timeout(struct net_device *dev, unsigned int txqueue)
 }
 
 static
-int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev)
+netdev_tx_t ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev)
 {
 	struct ks_wlan_private *priv = netdev_priv(dev);
 	int ret;
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
