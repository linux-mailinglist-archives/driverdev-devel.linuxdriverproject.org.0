Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D11EA13938D
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:20:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 147EB8527F;
	Mon, 13 Jan 2020 14:20:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LL57+1AASJEH; Mon, 13 Jan 2020 14:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AEF384F69;
	Mon, 13 Jan 2020 14:20:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B94A1BF388
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17C2384E2E
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMDfh2zk7KnD for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:20:32 +0000 (UTC)
X-Greylist: delayed 00:05:09 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 949DA84DDD
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:20:31 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mhl0I-1jLvTC41B2-00dkGK; Mon, 13 Jan 2020 15:15:11 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id A5F5D64F294;
 Mon, 13 Jan 2020 14:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VgsXzwaqNrMb; Mon, 13 Jan 2020 15:15:10 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 54CA164E74F;
 Mon, 13 Jan 2020 15:15:10 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:15:10 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 03FBA804E9; Mon, 13 Jan 2020 15:15:10 +0100 (CET)
Date: Mon, 13 Jan 2020 15:15:09 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 1/8] media: adv748x: add a device-specific wrapper for
 register block read
Message-ID: <20200113141509.GB3606@pflmari>
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
X-Provags-ID: V03:K1:1JPns5GasBHjZTgrFQHGNnhSdRNObQT1UzzxL7GpDV7WAKNmB4M
 FkmhKG1563Jb6HctQGmZSpMgIeSwQB+IAPuB1DWMHLL5UWjYbjY8q6VDpW2YPVZ5mXxmRAU
 7tHsDxWHLTkOkig+l361chO7oeD+NzSokH6TWf34P6Jdw3ab1GrVde5sd82zoUD+n5IywYX
 olpMdKOipTgyqYe01wKJw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:OymZM2Qm2A0=:JHmhIMwNAf/P9awyyS4WIL
 2jpkEmREsAPjVIX0TUmGGtwb1oMi9WCFL8YUOuqCdCMLtNqlVXdF/S4wBgZbPSaHxRx/An7qI
 PHe4xdyRnwA1CTD0lJNArs9JJspJqV/dYBtZRmg2NOxLFtLv+OMS/xsY3Sl22pvMZTjRM9HHK
 xNfbNV8FCRnWEEUYyh81n9fYAe7e7p7CW+Rplc/OaGPgAdISaXl2K5a6K2Ku/ngjq3e97bJMk
 3zxBxDQQtWpI1tshZ0QzwiNd0dtJuuXKLict1Cfuf/tIaM/A5iYHNzgpTI/Mey93HA6D9oCGr
 dZnWarITx31u5rQ9kGKkniSBy1fG/NFqOq3hH8AyiqarLRlBD+CixWCtnTDo3+SowyZJPWrl7
 IMIRW6jGbS4Cpo6EV5cLN1JL7a3e7H0a7UxcUSGNYraobAFni7aomKXqjcxielbJAL5Sg4IgF
 qFEGJxiAinfS6rNAWmSWR78ifRBXUkmnTVUBlxtW3GdCPjzhxRx24NCVWj6Ybj9+u0lEw55B7
 xsFQ5nTaTsds2HEEb5g374/jkenxAaKxZgjndrCV1owhVa5+dfPJTZR4KuslDxSZwgKIU2mjt
 KTmURYwyv2dizAHOVEM/RDgd3YToZFXw0nF0BOw78FMYaCA79QtujbHe20Pj4jdpIqaDRx2bd
 hP4UfA1YGCT4MCO2twk40DhpmskWbiMPyM/HoRRMvy5/0eTjKeZdZ/I/ctZJXZwe4CXCemuuF
 pdHoW9Wkm8OeWrtBZXhbQN8Hf7GbmJ1k/B52dqk+Cw/T0Qk2R+lztW5MBTvJgDEtC0kZ0G1gp
 gKdAcqgZ6gwjR/uC5jszHnlmjcXTk5JkQxJQ2cUbeXxeUmVKrW8BDgKm0FRsdv++AUFLDzrWV
 m6Of/Q0oNSHQqBPUh0IhdhYoEwYFGMj6Lz0zNXHKY=
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

Some of the devices I2C-accessible registers (for instance, cs_data for
stereo channel information or tmds_params for TMDS channel information)
located in adjacent cells. According to manufacturers information, these
registers can be read using block transactions.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x-core.c | 15 +++++++++++++++
 drivers/media/i2c/adv748x/adv748x.h      |  2 ++
 2 files changed, 17 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index 23e02ff27b17..bc49aa93793c 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -97,6 +97,21 @@ static const struct adv748x_register_map adv748x_default_addresses[] = {
 	[ADV748X_PAGE_TXA] = { "txa", 0x4a },
 };
 
+int adv748x_read_block(struct adv748x_state *state, u8 client_page, u8 reg,
+		       void *val, size_t reg_count)
+{
+	struct i2c_client *client = state->i2c_clients[client_page];
+	int err;
+
+	err = regmap_bulk_read(state->regmap[client_page], reg, val, reg_count);
+	if (err) {
+		adv_err(state, "error reading %02x, %02x-%02lx: %d\n",
+				client->addr, reg, reg + reg_count - 1, err);
+		return err;
+	}
+	return 0;
+}
+
 static int adv748x_read_check(struct adv748x_state *state,
 			      int client_page, u8 reg)
 {
diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 5042f9e94aee..db6346a06351 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -387,6 +387,8 @@ struct adv748x_state {
 /* Register handling */
 
 int adv748x_read(struct adv748x_state *state, u8 addr, u8 reg);
+int adv748x_read_block(struct adv748x_state *state, u8 page, u8 reg,
+		       void *val, size_t reg_count);
 int adv748x_write(struct adv748x_state *state, u8 page, u8 reg, u8 value);
 int adv748x_write_block(struct adv748x_state *state, int client_page,
 			unsigned int init_reg, const void *val,
-- 
2.24.1.508.g91d2dafee0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
