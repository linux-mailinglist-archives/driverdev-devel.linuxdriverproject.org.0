Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE4139394
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:21:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 74D23859F4;
	Mon, 13 Jan 2020 14:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IN-GBskbQ_PD; Mon, 13 Jan 2020 14:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA65B8598E;
	Mon, 13 Jan 2020 14:21:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1A1C1BF977
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CBCFF858A6
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cUK7n6l3d3p for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:21:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD941858D3
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:21:06 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N9dbx-1jlOmx0isn-015e1N; Mon, 13 Jan 2020 15:15:34 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id EAD7A64F293;
 Mon, 13 Jan 2020 14:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSUt-Fw9X00y; Mon, 13 Jan 2020 15:15:33 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id A747864E2AB;
 Mon, 13 Jan 2020 15:15:33 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:15:33 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 5D6DB804E9; Mon, 13 Jan 2020 15:15:33 +0100 (CET)
Date: Mon, 13 Jan 2020 15:15:33 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 4/8] media: adv748x: reserve space for the audio (I2S) port
 in the driver structures
Message-ID: <20200113141533.GE3606@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1578924232.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.10.2.141]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A29536F936F657D64
X-Provags-ID: V03:K1:GCk2luEwK7oQKq+TVDmnLvDi4cpAoKdN6TRH/nlXVMKt3Z5GHwu
 H3avNrMuWgo13wQ7Ze/a2VAvbetXqrN6m+l72/5aFqtdk2UyXNuWQJHDhFrsY38zJsq3Uws
 +Nh74MidEuL3prr2ArVSCHN9M4ykTAlnbyxPCdDMKRSR6pLqKYtXwfv5NU2/yCF19ZsVknR
 qE1k9GTehtJ1US1u68Fzg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6deUFSJHY60=:eqYOuUlZTdu/mwlzbwLXMB
 PIJ36TtdsmIXoDhtSQjmoaOVEkTXkcCokv6+3x+h7grgcqX3WCgEtieSgTzjaeHVMHT3l4i3o
 ggsmcuWDegBoUUtMg4qxcXwLFZPiDrZcbYWaBYYbIbKg5X9PNafgby64BTdNRR6QBg6SBWDOS
 WTU69QFiuRjgdaYrqsYHp/t5mO3V7qL1qo6eYdVstoKMzqbSK7+yWPI8sDNpag5FZbNIbhjpU
 LKlxP1fUTLCUYk755IJfSkmkdQ4pOftOn0BpCPkLWA8qGHAjQTqUAjCOnG5ay8fkPTT/jBCoW
 5LanDM0x5b3/9fnUjb13glQGsKDDTjIAkCJ4AhOuELb0Okjc3WzPO/dWytdm3R8oS0BUSqz0M
 SZnCllB1tO/Y23Exlpd9UxUsKeyyYCPViSRpuYeUJL9kTVfwJDLX7PFxY9SzK2oEwTyo1rWzd
 Eu+yaCcAKtgWjMzcxF0/JVwn3BuOxjIK02FNI1f8cz6SZlRDMD7F6Vn5f288605oOdb6Ckh2r
 wZEVPqjAYxAraPlu3ViAxcWGlOQUZ0YyZy+WFcipFUmogpmUQsITNcUgNOil7gqX1z0QjyZuz
 ZX3r0X4mXarXyTrsQULt40wSNkbr1RNe4UPj9VFX3qsuG2nw/ItQhd54jIRkKKdWkbbcZhe27
 V7xZocWH3abqGmdZBZbZI4hWuEMI3byq7syGRZzPJ3Mmtn+4nSzChzabt8S4c4l9luDMmxjlA
 eqgWgon4p7IaQO3II0D8kyBLZccqgCNy5ZhlV4TZ+L9ERy2tTZy6MksV4M1vyA7aeNi9bebXG
 dGdjJbrBTMHBKKXCES1FFnaxwiPxwlVDGhUdM1yxnBBucyps0wp0/hpKHhr6QcGnH831tDjM6
 fyQe0n8Rryzv5bxqAg6EiaNtbSZWeurdYLtpPeDMA=
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This allows use of the port in the device tree files.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index fdda6982e437..5db06410f102 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -61,7 +61,8 @@ enum adv748x_ports {
 	ADV748X_PORT_TTL = 9,
 	ADV748X_PORT_TXA = 10,
 	ADV748X_PORT_TXB = 11,
-	ADV748X_PORT_MAX = 12,
+	ADV748X_PORT_I2S = 12,
+	ADV748X_PORT_MAX = 13,
 };
 
 enum adv748x_csi2_pads {
-- 
2.24.1.508.g91d2dafee0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
