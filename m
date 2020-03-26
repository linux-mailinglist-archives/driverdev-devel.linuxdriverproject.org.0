Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82868193D4B
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 11:51:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFF8B88E3D;
	Thu, 26 Mar 2020 10:51:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7Tv6PEFXCbn; Thu, 26 Mar 2020 10:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B21B88D61;
	Thu, 26 Mar 2020 10:51:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A7AE1BF354
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 10:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1072220767
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 10:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JYQfE39hclvP for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 10:51:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by silver.osuosl.org (Postfix) with ESMTPS id B0397204D7
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 10:51:37 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MIdS1-1j3Rzu0cuD-00Eaj3 for <devel@driverdev.osuosl.org>; Thu, 26 Mar
 2020 11:51:35 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id A35F364E3E5
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 10:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Jlp0xPpdRmh for <devel@driverdev.osuosl.org>;
 Thu, 26 Mar 2020 11:51:34 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 55F1F64DE77
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 11:51:34 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.79) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 26 Mar 2020 11:51:34 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 220CD80503; Thu, 26 Mar 2020 11:35:42 +0100 (CET)
Date: Thu, 26 Mar 2020 11:35:42 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v4 6/9] media: adv748x: prepare/enable mclk when the audio is
 used
Message-ID: <c4469e5897f0974c3e6eaba7cd1d4be983cf84a9.1585218857.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1585218857.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585218857.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.79]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7C67
X-Provags-ID: V03:K1:Vy3ipQvZ0g655QL7PVbBKXVf43dmrv7Tzv7ZEXHu6sOJmXAJPiy
 KuPuLeFIBuCrmPd8K4XgIyqsIljVE53srEG9MQ7ejP43CnPmAFytgzJgA2zb0tZP3lsiBrI
 uS3ceK1YzO7R6wpobJBMMIkCO8JVdDrYFcfJIMMNFLkAjvpdVUSkx9d9HVO+c5z2qpU0t3t
 C4ZFsmHvaItQqMnD3rNCg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:35eEMD4viy0=:OSCU2vRY9lrMgaCNtOQx/T
 xx66RsLasQPcTR1+FqCt6BI9lA1hzMxxdpHPWP/fkhRpUD4iElv1d2HvYrEhXRfXFBVlC8dT6
 AFr2uiIj9y3k1xoufDf0HvBLENndrYEOQho7PZ+VxiJROKdNtv2acdJTInnpiBWxCdxK3kty1
 qA4JocI+OYd5+EMGzIWXcJMOzQJ83FutT6S8jx9FR5C5OfNQBYxBIlXmWdyVfQ5tzOP1ZiCys
 IibprJKgsq30RkuMAjhkrPjPl3AHqrGOdgoc3lkJvb3s8/bPJb6YWAaG00AmPb982asR5+SqN
 H5/yRns1ofRHuVOB5bBHEmAB+h5pg8e7lT6BtPsUCLhcxMaGa5xk/PGmdqBIrf8lcSjldZe06
 QHNPoGJo/VX7ajRIgtBUNeB5eDZy2lYFAnKrPIaytIIrfNHRMJXb/QX/8WNkA783wLLvGN8Wh
 UQaYEv0pnhA/huHXlIZkGHWywuuJdXGgmsuNtSomz12rxX3qMLVveq2SaZa5AbP6W3a9PVPci
 4Uj5el3Pn59bUZ6EiSJGVWCBUTB9mDD+kKTBSFPovQYY1rTbPe1Mn2H1FBy2qAVVLxEzBjOOc
 qaxBKrRkObnAJXJTARgmu5Dv/5AC+5csmqr3PcmvUA2zead97/Rnug5PRZxu1111K2Xj8VH4f
 OQKRtAUAezWXRgEvCHzG5B7qUl37mNihviMWqaYzYYWojqaPGtn6FkYWsdgkjYxSNqurlNmnZ
 p+jAjtNz1T6jhQtIDlL9TccFt7TGdCsMgNZUr/S38echPqRs0t6lrSnIWtFIa5mx2KnutZCqf
 TcC2QeRZnG4jvQZ7iJQix68fKYHePPbEmcvcNnd/5MMKXsFY+ZlLhn49YliuA/tY5AjW+Xz
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
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As there is nothing else (the consumers are supposed to do that) which
enables the clock, do it in the driver.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
--

v3: added
---
 drivers/media/i2c/adv748x/adv748x-dai.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
index c9191f8f1ca8..185f78023e91 100644
--- a/drivers/media/i2c/adv748x/adv748x-dai.c
+++ b/drivers/media/i2c/adv748x/adv748x-dai.c
@@ -117,11 +117,22 @@ static int adv748x_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 
 static int adv748x_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
 {
+	int ret;
 	struct adv748x_state *state = state_of(dai);
 
 	if (sub->stream != SNDRV_PCM_STREAM_CAPTURE)
 		return -EINVAL;
-	return set_audio_pads_state(state, 1);
+	ret = set_audio_pads_state(state, 1);
+	if (ret)
+		goto fail;
+	ret = clk_prepare_enable(mclk_of(state));
+	if (ret)
+		goto fail_pwdn;
+	return 0;
+fail_pwdn:
+	set_audio_pads_state(state, 0);
+fail:
+	return ret;
 }
 
 static int adv748x_dai_hw_params(struct snd_pcm_substream *sub,
@@ -174,6 +185,7 @@ static void adv748x_dai_shutdown(struct snd_pcm_substream *sub, struct snd_soc_d
 {
 	struct adv748x_state *state = state_of(dai);
 
+	clk_disable_unprepare(mclk_of(state));
 	set_audio_pads_state(state, 0);
 }
 
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
