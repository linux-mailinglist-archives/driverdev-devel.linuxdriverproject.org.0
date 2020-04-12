Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2941A5DC8
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 11:33:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8417B863A6;
	Sun, 12 Apr 2020 09:33:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nWZkKUqc2WYf; Sun, 12 Apr 2020 09:33:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0824A84D9F;
	Sun, 12 Apr 2020 09:33:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A5C21BF36C
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 09:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53CFB87B5E
 for <devel@linuxdriverproject.org>; Sun, 12 Apr 2020 09:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xMlS2raqXNe9 for <devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 09:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B604E86408
 for <devel@driverdev.osuosl.org>; Sun, 12 Apr 2020 09:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586684015;
 bh=OuyR1SN5A5h2iXjX9bvJx44wlsxA9cn/XSDx5oHn6/c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=lpMW0V8G6XcGecBwRmCD+XKo/oYEbK1jW5SSVK1DX91e+QsxgivojoZqnsqULMTtr
 zjt8rOtO7gNCExuJt42ssvylbXCjrnuRnLC3KAk4hx73nSCy7l8EaapLeYC+ESmcz0
 4GDvF8lMMQ2yvoWh1M+hFMvPJUB55Ln7KMIfytrI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1N95e9-1jAyPw2hkt-0164bK; Sun, 12 Apr 2020 11:33:35 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use BIT() macro instead of bit shift operator
Date: Sun, 12 Apr 2020 11:33:11 +0200
Message-Id: <20200412093311.5279-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:uYug2iKdckrToWPIQh7BOyJSXAU1uzmY+Mp54Bl5+tSZAgW4rIy
 iI0IZy4KnG5AxUd9WfMi7ihzD9V/kSTpoSmW4zhSXcJuuIxvNVspAEn2zq+p6+WXPDXftxi
 dUe4vwbWQyytQ7KACioxoEl+JOodSPbcdI8YyO1gJLwPJzdfewvs7JG7mGVJm8gSHRxQ9BI
 Pl0NXGpmK6SyOBHQX1+1w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:p3IeFuTvofw=:CEXVJDtGbPfVnKNjwgPfpy
 MDvPaYZxi0ccytxvlFj+b37LyK9Y8YYbqIKqn75cMSZ242cwG04ATXM4RRuBxjv2TGHGhKlTc
 RkaQXAsl5ST8UruoPDzgte9Ku+mBaHEsNdAsFn5O2IqNy0KF+fvYn7qGB2/hfHqqrKRX8uOmA
 2aRM67aNyIuOF1D8yLY1DmcyyVr039vNR8h6Sa8/XQS2kSkbIO2EHm87hIrEpsPdOUc0hgu4u
 1WxzrNv8fMwIcVMjVbJfyFzf0wMFesu5Xx4sQ0Rall/fOlVBphskh371nfHS75sNvNPDjlcVV
 +dtNBRSuP4J5WBBa4Ti6kyaTTeiTHRNa1AFcoI/FBXjA2td7XRlwINdIhfnFyNIRRsTJo/R1v
 YSAB8h0WkLb5xZ1C8TyZFhBaYVZpGQyO06DQ90LQZCj7Ivj63crhrWgdapbsp4tbNC3xY4kGa
 kLHpeMzVSYC1oLR2rirYSNOUkmhId8du9JqFc13E1fZHB7O4AFsW6VOBdKK1eQM7JatZwwGKH
 iXuqbK6FRWDVgZTMZEt2GFA8Auc2Io8qlejRCbtbF2qVe/bnwdP3VVhm19OgFvH+Fc9wtYNGy
 LxrS+l7wYVGS3LIiG62j+GJ4WxL4MN/tGjyVheyzHioQv7V7BuXxsyb/FDn+oaittF/AJq+H/
 qR52UBeXjUpA7/qPHvjTRQ6s7VIpJqZH/PvgDU6eyxRTQJy5Z5c80CTB0dv4auMbK5TLn3PuU
 zHIVMJOSs0NAT0L3WevQk9cY7mHoUFF+asBdjIL3H75hZhSG18e6IQ163WYUwutr3knKVbGSi
 Ol392UuvkrkRBB6WFaX07uF2NjuGuq6m1eKhKWeIQCpAqQmLeXkVcV2RQ4w0lRLQnhKaOLX0J
 ZRHZYCwbUGnuvdeaGRJqAQMNzuVLRTnRU8xlnf8HJwZbR7yFYgghEKvjGoQFCmUyiCOKIZuLS
 Cw8VWo1+j2lTz2qUq0NNL7Wjx4ZTN1IQkQIOS13aOs23yJYxBGQpjuodsFmhEiKQKPus1+Zbv
 x7MtKKWvAkoCmosq9Bh8UsLS3l4s0MUROozkGf43qLtFa9XJSro2uVYoxfJgpcv1psviemLuw
 cU0LbNmjZ+mv7na+iYMyLlUbzvTcRRhOWL3aU6IsHfZGkhDHqA//Q6mJW5JUAr0XqaMfm6ro5
 vVVu5wlcaIozD7u411x/I6wwtpj6pVw0urlY0NV0uGb7M4YRUIswTLOtk6dk3YbCeTed7Yt+6
 QDpNvDaZ0elQnOyFb
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
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the BIT() macro instead of the bit left shift operator. So the code
is more clear.

It's safe to remove the casting to u16 type because the value obtained
never exceeds 16 bits. So the casting is unnecessary.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..14e6c71f122c 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -92,7 +92,7 @@ static u16 vnt_get_cck_rate(struct vnt_private *priv, u16 rate_idx)
 	u16 ui = rate_idx;

 	while (ui > RATE_1M) {
-		if (priv->basic_rates & (1 << ui))
+		if (priv->basic_rates & BIT(ui))
 			return ui;
 		ui--;
 	}
@@ -129,7 +129,7 @@ static u16 vnt_get_ofdm_rate(struct vnt_private *priv, u16 rate_idx)
 	}

 	while (ui > RATE_11M) {
-		if (priv->basic_rates & (1 << ui)) {
+		if (priv->basic_rates & BIT(ui)) {
 			dev_dbg(&priv->usb->dev, "%s rate: %d\n",
 				__func__, ui);
 			return ui;
@@ -420,7 +420,7 @@ void vnt_update_top_rates(struct vnt_private *priv)

 	/*Determines the highest basic rate.*/
 	for (i = RATE_54M; i >= RATE_6M; i--) {
-		if (priv->basic_rates & (u16)(1 << i)) {
+		if (priv->basic_rates & BIT(i)) {
 			top_ofdm = i;
 			break;
 		}
@@ -429,7 +429,7 @@ void vnt_update_top_rates(struct vnt_private *priv)
 	priv->top_ofdm_basic_rate = top_ofdm;

 	for (i = RATE_11M;; i--) {
-		if (priv->basic_rates & (u16)(1 << i)) {
+		if (priv->basic_rates & BIT(i)) {
 			top_cck = i;
 			break;
 		}
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
