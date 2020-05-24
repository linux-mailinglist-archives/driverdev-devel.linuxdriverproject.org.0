Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9CD1DFDDA
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 11:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 305D0869D1;
	Sun, 24 May 2020 09:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0GmQmXbcpNSX; Sun, 24 May 2020 09:16:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C7AB869DD;
	Sun, 24 May 2020 09:16:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 224311BF395
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 09:16:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 060E887850
 for <devel@linuxdriverproject.org>; Sun, 24 May 2020 09:16:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6JMjsrXD6X3k for <devel@linuxdriverproject.org>;
 Sun, 24 May 2020 09:16:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C8BE88301
 for <devel@driverdev.osuosl.org>; Sun, 24 May 2020 09:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1590311748;
 bh=ARG58TJZqL4LOYQHfQdm/GMzrgiav1S9xozdFHT2etQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=h4Ys1wiaxQx23PPlL46GKPZuRSOzJ8vvN57fnJwPbpKoIvo6wCQFsCVeLK26Thr76
 PHBP9VoBF2K5MRtEqyDspQYTtguCtdFiBp31yqFKxhUa2/V4ZItrYMcW+9U3wT+/Jv
 6C89nAOZ6AybveCqx70GdG3R5ov3/bJXhHNkM3Gg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MvK4Z-1imT811W9R-00rHZH; Sun, 24 May 2020 11:15:48 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Kees Cook <keescook@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging/rtl8192e: Remove function callback casts
Date: Sun, 24 May 2020 11:15:15 +0200
Message-Id: <20200524091515.21799-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:dJ70coFbqKi13dNoflxM6pg+cQq5o+SYkbZH6/Uf5Vb9nIO2hd9
 KI7T5Y1NLZZ/cAyoVFESuHtCaBI/7YwMtDi3Ir5frvZMRxa8OhsZBBsJ6IRddD302MVO5cT
 3kcteE5PghZZdbvoMK650TPsxI9b+/X8zT6VmAZOy4SA91HJy4Ow4b68zbUIrNTxjl1y+Rx
 UWeejXBrD5GKVN+iPqRNg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FNHUp8kSDug=:OfmwnDaotEN9a8MAHcjcpX
 AZa4IBMG9z0FjmlCWntsDxE8121LromUI6b40G0jKClUDjwY5IWaVKAZJDJY7L+QNVyXHwNX8
 I76gJPS4jHQUxVfxpa2wcBATwX+KqvJ2DXyQgYsL7ILAzkbnDJT6NI+H/Kbag2xe0iMBCRRwN
 ceeOnF/feVJL1eg1fMmH8qsLZcC+aTZpvCj278vkJRhOpq2Vy10VfaV05S66NfmH5O3BjIEdG
 xwQrNP6xyxaRtpva/hP93OXcoVG+CY7BlSF0cIml+CSSHIoFO+D8NlC5iWAYpUSglNrcfZZbu
 OAXi9MkYNe+TeflyP7uZPniwG6GLem0lalgSV7UjyBq5vxlrFwYuUqeB/ZI1WN6Xxdlwi36Qe
 9SLnCvKT+enQuyzvDxprcKQfTTRpTE4jK6YWtpcHxSfodZacYzg1etPA+RSIzfBudObMy4WGB
 6gaZ7xQKNf56aUtDYCcc9u7a8qxoMs1ziVsqi8/VAMSWsMHw6yu2m/t435cl4NcbU7poDBWVD
 gqxZ+AbeO9/7yk4HD50H4uvWZ7Isl4nbbN6XRGlbIpD+PT5RPz68Ci53rdNcMvYsFd7vkkK0B
 0Fr/bgjOhqAI1X8mnmWZXi1GbZZRgUzVAzI+Qr27Tm4jKlDhKkFEjnelHj4VdlU8DL39G2zh5
 N784TkLOE+OlDKdvLzPQPCXi88AwIJcwZzPezFcVH97fyeI73hAyoevDDkzesn3Kf33TLOz8d
 PIeWkCx4/nbNs3LGvejtqIr7+7zYuBG5rb8qWt1JqRGwM6Httn0uJOmbNtqoHxQ2Fm9TKSjg0
 9/wxCBnOI8xMWq9DdUYSAsiTKFReSRcuunKj8HGkeLppPsfQyRfmDPyRzG4bTkjLc3Ed0NUv1
 3DwL74LsU402wf3eIfTba6A1qb/5AO2nHKDWdJHIOzlCKcvKS/KEeQyCebQ91IDfAZMROHDHZ
 CwrLPGwbOpl8K4LP4KgObyllRQnOFhtEVuPlhzh1PKtqAqImZW1Ap2uBhmymztBKfpaD324u8
 HvDSj762s99AenQ/OuA4KE498tMzx8b79J8Xo8mJu7JqB4lCakMXwWqRzOYRAq5sEwF1byfYM
 t9dTvlrOhRjYNeXZGQfQntGi1+hIgNiQiLgQCRo28dYklHtsB10PalZgVVXPt+Vkwo2x/Ab3E
 Uc4ZnY6XcMDaVWMTmykB0oQ5II4qLNmVybqqmn0vPIx7JW+66RGmPsfPpmDH0/HLVZg6YwoY6
 a4BP4/TZeDUSdG5Gn
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
Cc: devel@driverdev.osuosl.org, Derek Robson <robsonde@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, Arnd Bergmann <arnd@arndb.de>,
 kernel-hardening@lists.openwall.com, Pan Bian <bianpan2016@163.com>,
 "Michael S . Tsirkin" <mst@redhat.com>, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In an effort to enable -Wcast-function-type in the top-level Makefile to
support Control Flow Integrity builds, remove all the function callback
casts.

To do this modify the function prototypes accordingly.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 24 +++++++++++---------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index d3664e508cbe..a7cd4de65b28 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -81,8 +81,8 @@ static int _rtl92e_hard_start_xmit(struct sk_buff *skb, struct net_device *dev);
 static void _rtl92e_tx_cmd(struct net_device *dev, struct sk_buff *skb);
 static short _rtl92e_tx(struct net_device *dev, struct sk_buff *skb);
 static short _rtl92e_pci_initdescring(struct net_device *dev);
-static void _rtl92e_irq_tx_tasklet(struct r8192_priv *priv);
-static void _rtl92e_irq_rx_tasklet(struct r8192_priv *priv);
+static void _rtl92e_irq_tx_tasklet(unsigned long data);
+static void _rtl92e_irq_rx_tasklet(unsigned long data);
 static void _rtl92e_cancel_deferred_work(struct r8192_priv *priv);
 static int _rtl92e_up(struct net_device *dev, bool is_silent_reset);
 static int _rtl92e_try_up(struct net_device *dev);
@@ -516,8 +516,9 @@ static int _rtl92e_handle_assoc_response(struct net_device *dev,
 	return 0;
 }

-static void _rtl92e_prepare_beacon(struct r8192_priv *priv)
+static void _rtl92e_prepare_beacon(unsigned long data)
 {
+	struct r8192_priv *priv = (struct r8192_priv *)data;
 	struct net_device *dev = priv->rtllib->dev;
 	struct sk_buff *pskb = NULL, *pnewskb = NULL;
 	struct cb_desc *tcb_desc = NULL;
@@ -1007,14 +1008,11 @@ static void _rtl92e_init_priv_task(struct net_device *dev)
 			      (void *)rtl92e_hw_wakeup_wq, dev);
 	INIT_DELAYED_WORK_RSL(&priv->rtllib->hw_sleep_wq,
 			      (void *)rtl92e_hw_sleep_wq, dev);
-	tasklet_init(&priv->irq_rx_tasklet,
-		     (void(*)(unsigned long))_rtl92e_irq_rx_tasklet,
+	tasklet_init(&priv->irq_rx_tasklet, _rtl92e_irq_rx_tasklet,
 		     (unsigned long)priv);
-	tasklet_init(&priv->irq_tx_tasklet,
-		     (void(*)(unsigned long))_rtl92e_irq_tx_tasklet,
+	tasklet_init(&priv->irq_tx_tasklet, _rtl92e_irq_tx_tasklet,
 		     (unsigned long)priv);
-	tasklet_init(&priv->irq_prepare_beacon_tasklet,
-		     (void(*)(unsigned long))_rtl92e_prepare_beacon,
+	tasklet_init(&priv->irq_prepare_beacon_tasklet, _rtl92e_prepare_beacon,
 		     (unsigned long)priv);
 }

@@ -2113,13 +2111,17 @@ static void _rtl92e_tx_resume(struct net_device *dev)
 	}
 }

-static void _rtl92e_irq_tx_tasklet(struct r8192_priv *priv)
+static void _rtl92e_irq_tx_tasklet(unsigned long data)
 {
+	struct r8192_priv *priv = (struct r8192_priv *)data;
+
 	_rtl92e_tx_resume(priv->rtllib->dev);
 }

-static void _rtl92e_irq_rx_tasklet(struct r8192_priv *priv)
+static void _rtl92e_irq_rx_tasklet(unsigned long data)
 {
+	struct r8192_priv *priv = (struct r8192_priv *)data;
+
 	_rtl92e_rx_normal(priv->rtllib->dev);

 	rtl92e_writel(priv->rtllib->dev, INTA_MASK,
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
