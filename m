Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2293E19C922
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 20:51:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0138C889B1;
	Thu,  2 Apr 2020 18:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lpm475nF6NLj; Thu,  2 Apr 2020 18:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5216789228;
	Thu,  2 Apr 2020 18:51:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2481BF3E9
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 465A48835B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSRJV+GHZBNP for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 18:51:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3DB8488357
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:51:07 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MF45G-1jZR0S3Zma-00FSF0 for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 20:51:04 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 9736E650735
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hy56ZeP0HWgJ for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 20:51:03 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id D19A365052F
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:51:03 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 20:51:03 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 2D0E680502; Thu,  2 Apr 2020 20:34:38 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:34:38 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 5/9] media: adv748x: add support for HDMI audio
Message-ID: <74e0e3041732bf6151196445dab30dd08ea890cb.1585852001.git.alexander.riesen@cetitec.com>
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
 linux-renesas-soc@vger.kernel.org,
 linux-clk <linux-clk@vger.kernel.org>
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585852001.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.12]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6C7266
X-Provags-ID: V03:K1:eAR0iRYOis4vQzDNhKl5KvNxVwzHOM8Mq+pih2lXlivFyeMlHdM
 OYTq9GWrk2vB9eTsY+oMmEbPfC6XsDztbCgz37y8Pna31/0LDcRjHh7T0SzJmjiBqyH3K3N
 FZ4VccJalZgJMgMdPJvwEoJjymcu4136ivZqXkDZP/IL+OW7LrJm1zz6I48MshaO0xngKcL
 v1DrO5u1qcieAD1eZj+Jw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:o4x8XqLGUzY=:ei2X+3oFTSrcHDx4RRw9dm
 9uVB1Sed1zx99YYZYT4RjcxKv47nQaRlOCs7AfCKguVplwdCJcAKEhTM2Lh/hDpqKIJ8GNPIw
 izcLXYtnTC7tlH7gmiBA+2BNLkgZo2orzGK3vVvsrMmvTDFbuAMw8JbA3FZdgAhZQIa51FyFg
 YGfdZ5+kboTPVOh273FSzAy80Mzd2PbuVnwaepckrvuw0Vvhc3YlnN4ulQ2WX3SmjyouyVbu9
 uX/pzxtXSZYy+ja6Nb3WQQ6h26Q3LWT7hvKhhVMOLD2KeEt/VSrG5m4ng7BdY/+o9Fwf2nGQx
 ALC377AdvY6dO1ceej7kowgw+rodE6Q28gIWZkUdQRBlgXcLkVtGRYi9I34zHMflv5ScCn/ng
 U4xclrejnZoZ793ny2nIzezNyPkBnozoT0RQWD4JFEBk1LpAQnWUKvj+nBdGt96g2tmqpRdWf
 YQopBeiFQsHKFDbWD2WMavBhWlvJRYgnZXJYkIi7BPk77eqgx/mi+X5i/xFtWeblH9nfdoDjK
 qZz8BgXKAz6ouRn1gRJ0BcKc40LWT9+yMubjPUJ8/t1Ji492QoEBWBLv8brmaGkH57JhNLLqd
 Oyk4YC8l92JFI8h0ERRzCh3SnaHk2ajaEl6DIGhlspjaKtnj2MCut7jDlGhvRPwDLXrKb6C11
 yzxMvzPXQC8cdXkpF/aUv9QHdnZ+MfFD1AapXZg6EwO8FHXkXRjT01m3GGz4ndSEa6JB2IKBB
 k92u2o5ok5clCsJsS8mCqXlcqiU7JOVZksN2NUysnJjfs3zIIB0iO2L4jrsxTfe9TIetBgt+n
 RrRULkh669fq3E2mLNx+pE0nqiH3JyF+yvP/bSUeh0MCP32j4XNoJ3XY4kxCVaFCrdyh9gK
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This adds an implemention of SoC DAI driver which provides access to the
I2S port of the device.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
--

v3: fix clock registration in case of multiple adv748x devices
    Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

v4: use clk_hw instead of clk
    Suggested-by: Stephen Boyd <sboyd@kernel.org>

v4: use const for capture snd_soc_pcm_stream instance
    Suggested-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/media/i2c/adv748x/Makefile       |   3 +-
 drivers/media/i2c/adv748x/adv748x-core.c |   9 +-
 drivers/media/i2c/adv748x/adv748x-dai.c  | 261 +++++++++++++++++++++++
 drivers/media/i2c/adv748x/adv748x.h      |  17 +-
 4 files changed, 287 insertions(+), 3 deletions(-)
 create mode 100644 drivers/media/i2c/adv748x/adv748x-dai.c

diff --git a/drivers/media/i2c/adv748x/Makefile b/drivers/media/i2c/adv748x/Makefile
index 93844f14cb10..6e7a302ef199 100644
--- a/drivers/media/i2c/adv748x/Makefile
+++ b/drivers/media/i2c/adv748x/Makefile
@@ -3,6 +3,7 @@ adv748x-objs	:= \
 		adv748x-afe.o \
 		adv748x-core.o \
 		adv748x-csi2.o \
-		adv748x-hdmi.o
+		adv748x-hdmi.o \
+		adv748x-dai.o
 
 obj-$(CONFIG_VIDEO_ADV748X)	+= adv748x.o
diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index 8580e6624276..3513ca138e53 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -765,8 +765,14 @@ static int adv748x_probe(struct i2c_client *client)
 		goto err_cleanup_txa;
 	}
 
+	ret = adv748x_dai_init(&state->dai);
+	if (ret) {
+		adv_err(state, "Failed to probe DAI\n");
+		goto err_cleanup_txb;
+	}
 	return 0;
-
+err_cleanup_txb:
+	adv748x_csi2_cleanup(&state->txb);
 err_cleanup_txa:
 	adv748x_csi2_cleanup(&state->txa);
 err_cleanup_afe:
@@ -787,6 +793,7 @@ static int adv748x_remove(struct i2c_client *client)
 {
 	struct adv748x_state *state = i2c_get_clientdata(client);
 
+	adv748x_dai_cleanup(&state->dai);
 	adv748x_afe_cleanup(&state->afe);
 	adv748x_hdmi_cleanup(&state->hdmi);
 
diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
new file mode 100644
index 000000000000..c9191f8f1ca8
--- /dev/null
+++ b/drivers/media/i2c/adv748x/adv748x-dai.c
@@ -0,0 +1,261 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Analog Devices ADV748X HDMI receiver with AFE
+ * The implementation of DAI.
+ */
+
+#include "adv748x.h"
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <sound/pcm_params.h>
+
+#define state_of(soc_dai) \
+	adv748x_dai_to_state(container_of((soc_dai)->driver, \
+					  struct adv748x_dai, drv))
+#define mclk_of(state) ((state)->dai.mclk_hw->clk)
+
+static const char ADV748X_DAI_NAME[] = "adv748x-i2s";
+
+static int set_audio_pads_state(struct adv748x_state *state, int on)
+{
+	return io_clrset(state, ADV748X_IO_PAD_CONTROLS,
+			 ADV748X_IO_PAD_CONTROLS_TRI_AUD |
+			 ADV748X_IO_PAD_CONTROLS_PDN_AUD,
+			 on ? 0 : 0xff);
+}
+
+static int set_dpll_mclk_fs(struct adv748x_state *state, int fs)
+{
+	return dpll_clrset(state, ADV748X_DPLL_MCLK_FS,
+			   ADV748X_DPLL_MCLK_FS_N_MASK, (fs / 128) - 1);
+}
+
+static int set_i2s_format(struct adv748x_state *state, uint outmode,
+			  uint bitwidth)
+{
+	return hdmi_clrset(state, ADV748X_HDMI_I2S,
+			   ADV748X_HDMI_I2SBITWIDTH_MASK |
+			   ADV748X_HDMI_I2SOUTMODE_MASK,
+			   (outmode << ADV748X_HDMI_I2SOUTMODE_SHIFT) |
+			   bitwidth);
+}
+
+static int set_i2s_tdm_mode(struct adv748x_state *state, int is_tdm)
+{
+	int ret;
+
+	ret = hdmi_clrset(state, ADV748X_HDMI_AUDIO_MUTE_SPEED,
+			  ADV748X_MAN_AUDIO_DL_BYPASS |
+			  ADV748X_AUDIO_DELAY_LINE_BYPASS,
+			  is_tdm ? 0xff : 0);
+	if (ret < 0)
+		return ret;
+	ret = hdmi_clrset(state, ADV748X_HDMI_REG_6D,
+			  ADV748X_I2S_TDM_MODE_ENABLE,
+			  is_tdm ? 0xff : 0);
+	return ret;
+}
+
+static int set_audio_mute(struct adv748x_state *state, int enable)
+{
+	return hdmi_clrset(state, ADV748X_HDMI_MUTE_CTRL,
+			   ADV748X_HDMI_MUTE_CTRL_MUTE_AUDIO,
+			   enable ? 0xff : 0);
+}
+
+static int adv748x_dai_set_sysclk(struct snd_soc_dai *dai,
+				  int clk_id, unsigned int freq, int dir)
+{
+	struct adv748x_state *state = state_of(dai);
+
+	/* currently supporting only one fixed rate clock */
+	if (clk_id != 0 || freq != clk_get_rate(mclk_of(state))) {
+		dev_err(dai->dev, "invalid clock (%d) or frequency (%u, dir %d)\n",
+			clk_id, freq, dir);
+		return -EINVAL;
+	}
+	state->dai.freq = freq;
+	return 0;
+}
+
+static int adv748x_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+{
+	struct adv748x_state *state = state_of(dai);
+	int ret = 0;
+
+	if ((fmt & SND_SOC_DAIFMT_MASTER_MASK) != SND_SOC_DAIFMT_CBM_CFM) {
+		dev_err(dai->dev, "only I2S master clock mode supported\n");
+		ret = -EINVAL;
+		goto done;
+	}
+	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAI_FORMAT_I2S:
+		state->dai.tdm = 0;
+		state->dai.fmt = ADV748X_I2SOUTMODE_I2S;
+		break;
+	case SND_SOC_DAI_FORMAT_RIGHT_J:
+		state->dai.tdm = 1;
+		state->dai.fmt = ADV748X_I2SOUTMODE_RIGHT_J;
+		break;
+	case SND_SOC_DAI_FORMAT_LEFT_J:
+		state->dai.tdm = 1;
+		state->dai.fmt = ADV748X_I2SOUTMODE_LEFT_J;
+		break;
+	default:
+		dev_err(dai->dev, "only i2s, left_j and right_j supported\n");
+		ret = -EINVAL;
+		goto done;
+	}
+	if ((fmt & SND_SOC_DAIFMT_INV_MASK) != SND_SOC_DAIFMT_NB_NF) {
+		dev_err(dai->dev, "only normal bit clock + frame supported\n");
+		ret = -EINVAL;
+	}
+done:
+	return ret;
+}
+
+static int adv748x_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
+{
+	struct adv748x_state *state = state_of(dai);
+
+	if (sub->stream != SNDRV_PCM_STREAM_CAPTURE)
+		return -EINVAL;
+	return set_audio_pads_state(state, 1);
+}
+
+static int adv748x_dai_hw_params(struct snd_pcm_substream *sub,
+				 struct snd_pcm_hw_params *params,
+				 struct snd_soc_dai *dai)
+{
+	int ret;
+	struct adv748x_state *state = state_of(dai);
+	uint fs = state->dai.freq / params_rate(params);
+
+	dev_dbg(dai->dev, "dai %s substream %s rate=%u (fs=%u), channels=%u sample width=%u(%u)\n",
+		dai->name, sub->name,
+		params_rate(params), fs,
+		params_channels(params),
+		params_width(params),
+		params_physical_width(params));
+	switch (fs) {
+	case 128:
+	case 256:
+	case 384:
+	case 512:
+	case 640:
+	case 768:
+		break;
+	default:
+		ret = -EINVAL;
+		dev_err(dai->dev, "invalid clock frequency (%u) or rate (%u)\n",
+			state->dai.freq, params_rate(params));
+		goto done;
+	}
+	ret = set_dpll_mclk_fs(state, fs);
+	if (ret)
+		goto done;
+	ret = set_i2s_tdm_mode(state, state->dai.tdm);
+	if (ret)
+		goto done;
+	ret = set_i2s_format(state, state->dai.fmt, params_width(params));
+done:
+	return ret;
+}
+
+static int adv748x_dai_mute_stream(struct snd_soc_dai *dai, int mute, int dir)
+{
+	struct adv748x_state *state = state_of(dai);
+
+	return set_audio_mute(state, mute);
+}
+
+static void adv748x_dai_shutdown(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
+{
+	struct adv748x_state *state = state_of(dai);
+
+	set_audio_pads_state(state, 0);
+}
+
+static const struct snd_soc_dai_ops adv748x_dai_ops = {
+	.set_sysclk = adv748x_dai_set_sysclk,
+	.set_fmt = adv748x_dai_set_fmt,
+	.startup = adv748x_dai_startup,
+	.hw_params = adv748x_dai_hw_params,
+	.mute_stream = adv748x_dai_mute_stream,
+	.shutdown = adv748x_dai_shutdown,
+};
+
+static	int adv748x_of_xlate_dai_name(struct snd_soc_component *component,
+				      struct of_phandle_args *args,
+				      const char **dai_name)
+{
+	if (dai_name)
+		*dai_name = ADV748X_DAI_NAME;
+	return 0;
+}
+
+static const struct snd_soc_component_driver adv748x_codec = {
+	.of_xlate_dai_name = adv748x_of_xlate_dai_name,
+};
+
+int adv748x_dai_init(struct adv748x_dai *dai)
+{
+	int ret;
+	struct adv748x_state *state = adv748x_dai_to_state(dai);
+
+	dai->mclk_name = kasprintf(GFP_KERNEL, "%s.%s-i2s-mclk",
+				   state->dev->driver->name,
+				   dev_name(state->dev));
+	if (!dai->mclk_name) {
+		ret = -ENOMEM;
+		adv_err(state, "No memory for MCLK\n");
+		goto fail;
+	}
+	dai->mclk_hw = clk_hw_register_fixed_rate(state->dev, dai->mclk_name,
+						  NULL, 0, 12288000);
+	if (IS_ERR(dai->mclk_hw)) {
+		ret = PTR_ERR(dai->mclk_hw);
+		adv_err(state, "Failed to register MCLK (%d)\n", ret);
+		goto fail;
+	}
+	ret = of_clk_add_hw_provider(state->dev->of_node, of_clk_hw_simple_get,
+				     dai->mclk_hw->clk);
+	if (ret < 0) {
+		adv_err(state, "Failed to add MCLK provider (%d)\n", ret);
+		goto unreg_mclk;
+	}
+	dai->drv.name = ADV748X_DAI_NAME;
+	dai->drv.ops = &adv748x_dai_ops;
+	dai->drv.capture = (const struct snd_soc_pcm_stream){
+		.stream_name	= "Capture",
+		.channels_min	= 8,
+		.channels_max	= 8,
+		.rates = SNDRV_PCM_RATE_48000,
+		.formats = SNDRV_PCM_FMTBIT_S24_LE | SNDRV_PCM_FMTBIT_U24_LE,
+	};
+
+	ret = devm_snd_soc_register_component(state->dev, &adv748x_codec,
+					      &dai->drv, 1);
+	if (ret < 0) {
+		adv_err(state, "Failed to register the codec (%d)\n", ret);
+		goto cleanup_mclk;
+	}
+	return 0;
+
+cleanup_mclk:
+	of_clk_del_provider(state->dev->of_node);
+unreg_mclk:
+	clk_hw_unregister_fixed_rate(dai->mclk_hw);
+fail:
+	return ret;
+}
+
+void adv748x_dai_cleanup(struct adv748x_dai *dai)
+{
+	struct adv748x_state *state = adv748x_dai_to_state(dai);
+
+	of_clk_del_provider(state->dev->of_node);
+	clk_hw_unregister_fixed_rate(dai->mclk_hw);
+	kfree(dai->mclk_name);
+}
diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 1a1ea70086c6..454f97ff7b54 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -19,6 +19,7 @@
  */
 
 #include <linux/i2c.h>
+#include <sound/soc.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 
@@ -63,7 +64,8 @@ enum adv748x_ports {
 	ADV748X_PORT_TTL = 9,
 	ADV748X_PORT_TXA = 10,
 	ADV748X_PORT_TXB = 11,
-	ADV748X_PORT_MAX = 12,
+	ADV748X_PORT_I2S = 12,
+	ADV748X_PORT_MAX = 13,
 };
 
 enum adv748x_csi2_pads {
@@ -166,6 +168,13 @@ struct adv748x_afe {
 	container_of(ctrl->handler, struct adv748x_afe, ctrl_hdl)
 #define adv748x_sd_to_afe(sd) container_of(sd, struct adv748x_afe, sd)
 
+struct adv748x_dai {
+	struct snd_soc_dai_driver drv;
+	struct clk_hw *mclk_hw;
+	char *mclk_name;
+	unsigned int freq, fmt, tdm;
+};
+
 /**
  * struct adv748x_state - State of ADV748X
  * @dev:		(OF) device
@@ -182,6 +191,7 @@ struct adv748x_afe {
  * @afe:		state of AFE receiver context
  * @txa:		state of TXA transmitter context
  * @txb:		state of TXB transmitter context
+ * @mclk:		MCLK clock of the I2S port
  */
 struct adv748x_state {
 	struct device *dev;
@@ -197,10 +207,12 @@ struct adv748x_state {
 	struct adv748x_afe afe;
 	struct adv748x_csi2 txa;
 	struct adv748x_csi2 txb;
+	struct adv748x_dai dai;
 };
 
 #define adv748x_hdmi_to_state(h) container_of(h, struct adv748x_state, hdmi)
 #define adv748x_afe_to_state(a) container_of(a, struct adv748x_state, afe)
+#define adv748x_dai_to_state(p) container_of(p, struct adv748x_state, dai)
 
 #define adv_err(a, fmt, arg...)	dev_err(a->dev, fmt, ##arg)
 #define adv_info(a, fmt, arg...) dev_info(a->dev, fmt, ##arg)
@@ -484,4 +496,7 @@ int adv748x_csi2_set_pixelrate(struct v4l2_subdev *sd, s64 rate);
 int adv748x_hdmi_init(struct adv748x_hdmi *hdmi);
 void adv748x_hdmi_cleanup(struct adv748x_hdmi *hdmi);
 
+int adv748x_dai_init(struct adv748x_dai *);
+void adv748x_dai_cleanup(struct adv748x_dai *);
+
 #endif /* _ADV748X_H_ */
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
