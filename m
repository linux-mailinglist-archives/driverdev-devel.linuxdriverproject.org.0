Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1199018D47C
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:32:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E1B22632A;
	Fri, 20 Mar 2020 16:32:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k79xNYnRDFhP; Fri, 20 Mar 2020 16:32:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3278323223;
	Fri, 20 Mar 2020 16:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F55A1BF999
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B9A087643
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CYBVs5zsC_hH for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:32:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D38287639
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:32:27 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Mgf8s-1jl5Tq0YGq-00h3UK for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:32:26 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id E919265007A
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:32:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zJGDS4xWaA8 for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:32:25 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 9E4D464F46D
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:32:25 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:32:25 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 2CE8680503; Fri, 20 Mar 2020 17:12:02 +0100 (CET)
Date: Fri, 20 Mar 2020 17:12:02 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 06/11] media: adv748x: prepare/enable mclk when the audio
 is used
Message-ID: <7ed1287d00da70de13627480b1601bfd2c6e570a.1584720678.git.alexander.riesen@cetitec.com>
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
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584720678.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7660
X-Provags-ID: V03:K1:EUUgRc0SdhoRNIqLhKTJZuR79fTQdIfwhdLzHXtgHPSqWFODKaB
 7v2s/JizdVVN2Dfjc1a9fjN/cdOBjmKlC1VeGVQA70pQbM+ZQJV4hc3PDqah+M10ZMJp2Dv
 8gAxnbAr1jOX7Ker1nbSR5f7fGVTAr2KMbYsxqy+5M8uSbQDqzOUEDNRZAwtm0lj63xVkAE
 Aloy+50cYIUfFf6KrheYQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:kn0bSgj59Xs=:9qxRhC8UnLPozoIVrx9gln
 j3/3FLUgnq8BjixA+ICbcp9i6P46Za3rK6vcr6hBBE+86ZCavpx0ZUEY61AnnDoP4G21wdtbe
 N9ZlMTWjuY0928q8uEAjHQxWgPC7Io+lcgrMkQpGTmbju0tvgds6imUfkRMAtnsIF+fVqFF0S
 NGE29/xUQlOfM++63Y/qTAq3sjjLK4lPcArPGsIJjUXr/1xr/Rrp6eGN+A73oDJx6IoDHqGUn
 ZegxtxIcRPO/UF30N7nYMojJqr+GNfPa/COk06gwFUbMNfki77k6avAC+Axpu2m4KkupHdpnC
 xmNd8x4vnlkQRnAcYrf29K3rMG129aH4e2eMYAENf+raRSkTN6HaAec+5ujI5xcuDuKAnUpMi
 pvTv4cMVTcOjKKKqUtRH9b6l1bkKHZkDUGzJsQaFsuP5e0PbV+Pc8zp/vEL/P+Hx6rMuj94bz
 Cu+t5vB/aw7XbyCbn8KlcDHU+889ai7320IbCotuaUZdKuQWLcNKdDV0nrlnCEbDBglyljkyX
 zPvLMPyjE1aWDiPKvDDbv0OjA6PNxjRYSFqd1uOu0caCxPUBKdyfBC5wAKetbShkMw30Y8F1r
 89pe12NmwxjcappcCdgHA4smO8uhrDqd8lIItdtUj+jBQFxf5ZDndbb+7qtnn6Sm90xyDftnL
 /pNCt/N5Pw0vinzj6pPWwGya4XvjNsQfJKCvmpCDiZfIKXXVexVrcMtZw9Ow6ewNS+EeYkxLQ
 ZptC0EYVYN9mEEY0sAApMBMz6XG/15y0E1USZCeA7dn5rulZHF3dqZSNSugVCNDS/W4vj+UZ8
 2Fz6VzfbWxoX9MRWO7ggEnMPsdR+gOAH52SOt+RzPGzGiBFa7enHJ6FG05nBeQLpGlRXznO
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
index 6fce7d000423..1c673efd4745 100644
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
+	ret = clk_prepare_enable(state->dai.mclk);
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
 
+	clk_disable_unprepare(state->dai.mclk);
 	set_audio_pads_state(state, 0);
 }
 
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
