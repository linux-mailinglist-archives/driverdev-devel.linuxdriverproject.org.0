Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD8419C934
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 20:54:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5D9F87560;
	Thu,  2 Apr 2020 18:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oy2xJ0xvC6a2; Thu,  2 Apr 2020 18:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9392687539;
	Thu,  2 Apr 2020 18:54:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 520441BF3E9
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4CBEB204EB
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:54:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g130eXeWbvW4 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 18:54:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by silver.osuosl.org (Postfix) with ESMTPS id EC8692049E
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:54:43 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MtwpW-1j3n3e0yOC-00uIn8 for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 20:54:42 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id ECBC765073A
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A293teQnkYJE for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 20:54:41 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 9D85F64E74F
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:54:41 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 20:54:41 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id E692280503; Thu,  2 Apr 2020 20:34:48 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:34:48 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 6/9] media: adv748x: prepare/enable mclk when the audio is
 used
Message-ID: <d9b7a7290e3d95b484a7a760484f827c3ed7651e.1585852001.git.alexander.riesen@cetitec.com>
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
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585852001.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.12]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6C7266
X-Provags-ID: V03:K1:ZhFK9S1zmVgetCEwqpwImGhh3WSI9qDdAzaw9E6I/LuwElKWVXd
 6n1Yevm7J6fxDBcKpRNODvX28OFnrBV1NPaq7GxbKozqaTzpK/aKnuCKqCYaPeuNhiahf/e
 siK1I2s/60WX+Cu5VdQ6S6tQ4P566AQOyVzyWgC8cfjo+V75LAfJytpi9B/icQZGlYHaHiW
 YfcDAgCB0MUC9Q6selgYA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:tOOdNgMXf7Q=:FLqa0ItiFBSUmnAD5m8YYN
 n+ZNtT/qi02NLeuV4n6jrkllwivFiFNg9Zwq8lrR3O3+wxkh/wWaj3dQq/mgyO3eLVeMWpe1E
 SSQ+PsX7hiGR1u9RVnlGtqzR6jOBWIuv0bFugakRBmBwxV3qyTzJAX18E5QdelvC1FRHgjuTb
 2VqBKMh9E29XN+YYF2qmBXuaXiDOQvVb2tdSfAuZwmF+cOB/sBYhno8fOmo33/ZqnInsSYSKu
 1n37fo9CSYMMuVN4CunGnQ4sssZihROZu+sthkIRu9HSLjECcwumbguCxtK8smpVgr+1VO7yh
 uveRzteMvMvxHCc32F/jBJTbi7dFiISmeQskP2CUMAcx5Jbt3HY2Gd2+30d8K73KKTln1BnJ5
 5p4LV79CqECUEPYy6ODvTMk7gJAU/UA1j0nAbbQcSIAb3tOr9AfGIw59VHL0QogLdNCcOOB2z
 ivDOwRtUAlN/gEhIVk9IC14LQ1t/LToEjE/VoSmhch8rFAhWkCjp/OqUGuONTPYirCXSfuXNi
 K8Tc9if6R098Pnpy/oMDwWo/MSJSlhJrg3rr8Kx7y2CEnQSxQ99jyEcps7v6mqPGNQoRsqBIf
 0SzeiaxplXlmmR+XWov7RPK794q6kkZvwxinBqiWJqe+kuzBUxjwYDC2Knb0R2tqUOn086fAn
 BB17Je+gVDLXfuYGspj4gIIXi+c7Ryc6tcsBrxoRpdiKox1i8Xb0FJQ7BHEJcdJRrnR2GOZGv
 zC4GgWGpxkS5hAvSFotU/nlkqoEewVR1vaGp3qSA5ZfyrxTxCvj4eY7N2LpWmRA0kYqtguIS5
 b5w3fJPVaoxOzTC0LRwPYa95IXj720kzkqe2LH4dJnxvMzy1jwnkpoRHAixJydKuyFmUtpe
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
