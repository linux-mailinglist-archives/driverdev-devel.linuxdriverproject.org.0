Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E477218BE84
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 18:43:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 879DE20483;
	Thu, 19 Mar 2020 17:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UmvYlIjmeB7t; Thu, 19 Mar 2020 17:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93DA72324E;
	Thu, 19 Mar 2020 17:43:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 45E7D1BF20B
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 17:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4054C87F61
 for <devel@linuxdriverproject.org>; Thu, 19 Mar 2020 17:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CTIKNxEbUvNJ for <devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 17:43:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B878487EF0
 for <devel@driverdev.osuosl.org>; Thu, 19 Mar 2020 17:43:24 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N7iOw-1jIkSq3XAQ-014kda; Thu, 19 Mar 2020 18:43:02 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 904AA65021B;
 Thu, 19 Mar 2020 17:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l9p27oZph5Ql; Thu, 19 Mar 2020 18:42:59 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id E237F64FD58;
 Thu, 19 Mar 2020 18:42:59 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.52) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 19 Mar 2020 18:42:59 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 2690A8051E; Thu, 19 Mar 2020 18:42:59 +0100 (CET)
Date: Thu, 19 Mar 2020 18:42:59 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v2 09/10] media: adv748x: add support for log_status ioctl
Message-ID: <a33c4d1e72f2fac5bfca16db475dab4f10a9bc43.1584639664.git.alexander.riesen@cetitec.com>
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
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584639664.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.52]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7762
X-Provags-ID: V03:K1:9xW2UIvnsUBkndS3gGEhPCoMDVCekXMlpXfKI2If4rgYE7YM2Fo
 q04Dq/XF3wyd1KYnCEnbP79Fc8JTHtkbiLign1PtIA+SwmkitMlHLWdBR0chgX+LfSbuNX0
 kMfPRkcOn1djoTXayt5nKVNKLAutJIlCjr8cRfNcA3k8Wn1je5W2VnJKgHNor5735DrKSCh
 DlXQ8dyLil2LanV7CMQbA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:boT6EyTm9iY=:J6EaZZFfzIel5ks3F5zVsC
 MenwVk7KZE7vhxPKEIdRwAtnom9u4/wg3tTOkG4z/ehk1yGvxTJgFyMTdbGrJ/2CgDW0PU8Ah
 V5OBiF5gZ7kQCEMjTUNAPwTmFdj0phzAScB1AvreRJcJ2TUqY5P0nOJ24pi3j1eBRquIkEtNl
 MT8jSLD2RFtGiEVogK+0qycgp16KONnBvW63mTvdc64qeIGR3uMM+nzb70N722OXx/uWzrUff
 J/31Vg4prgSUzGi80fdwJQL3t5Ig2UIO2o0aSqqyTSXDz9NFF8SasQm94NnmyBDHq3AAxF8lK
 sfd+/hxq4LiKoKFqZsDb3V7LUROFz7WtRgpHWhwmjhsQRAHBcBus84kmkgJ+Gj84kZyB1jGdO
 ga5YkJtMahfY3FnbPI0fKJEFxmmwoTh7BSGJL5X9TPXVq5AjgMG5oOCOgwERqprrYEGziQ55j
 yd5R3LincwfUXlzcN/LvMlh8F4EiMoGCYx/lk0qT7apkwuuBG1bIp7pTavlDiYn75m04BbPMA
 BCIrxMiqsY8IoPjbnSyqP+cfx9MToXEc6o4g8sryIdTfYXj6ZSHiQY4ykgibED470iUWRMLYK
 bxr9ahTKOrdCrgmtuX/NiDWrXXQcuRGkV+bs1JG0t3b+JSuJHNpWTQN1g08QlXfrrE6EabjWp
 JeiJIDRbfazKqqLwfNmexZ8MrNeNcZbEFyZsijmosF7lBOviKAZhlEui3y2H6VVdp9R9vLuMY
 epD17ZeYEbd3yqhR/1nInNBJz93xfPbABf7gFAX5Za6GncRPEdxRzRfFxKqbkVRFwGq60WxML
 I/TX+lIQrCWI5EWGBA6xy9mmPpIIsyrTBxWG77v5a5uEjnPENIMUi+U3d09ycmZiuD4BQIS
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

The logged information provides insights about cable connection and the
state of the HDMI decoder. It is very useful when debugging hardware
problems in environments without easy access to the connectors.

This change adds a device-specific wrapper for register block read,
because some of the devices I2C-accessible registers (for instance,
cs_data for stereo channel information or tmds_params for TMDS channel
information) located in adjacent cells. According to manufacturers
information, these registers can be read using block transactions.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x-core.c |  15 ++
 drivers/media/i2c/adv748x/adv748x-hdmi.c | 179 +++++++++++++++++++++++
 drivers/media/i2c/adv748x/adv748x.h      |   2 +
 3 files changed, 196 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index 2c0bd58038e6..fbc502ad12b5 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -95,6 +95,21 @@ static const struct adv748x_register_map adv748x_default_addresses[] = {
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
diff --git a/drivers/media/i2c/adv748x/adv748x-hdmi.c b/drivers/media/i2c/adv748x/adv748x-hdmi.c
index 0dffcdf79ff2..7655d817ceb6 100644
--- a/drivers/media/i2c/adv748x/adv748x-hdmi.c
+++ b/drivers/media/i2c/adv748x/adv748x-hdmi.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2017 Renesas Electronics Corp.
  */
 
+#include <linux/version.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 
@@ -601,11 +602,189 @@ static const struct v4l2_subdev_pad_ops adv748x_pad_ops_hdmi = {
 	.enum_dv_timings = adv748x_hdmi_enum_dv_timings,
 };
 
+struct tmds_params {
+	u32 cts, n;
+	u16 tmdsfreq, tmdsfreq_frac;
+};
+
+static inline const char *cs_data_smpl_freq_str(u8 cs_data_3)
+{
+	switch (cs_data_3 & 0xf) {
+	case 0:
+		return "44.1";
+	case 2:
+		return "48";
+	case 3:
+		return "32";
+	case 8:
+		return "88.2";
+	case 10:
+		return "96";
+	case 12:
+		return "176";
+	case 14:
+		return "192";
+	}
+	return "reserved";
+}
+
+static inline const char *cs_data_clk_lvl_str(u8 cs_data_3)
+{
+	switch (cs_data_3 & 0x30) {
+	case 0:
+		return "Level II";
+	case 1:
+		return "Level I";
+	case 2:
+		return "Level III, variable pitch shifted";
+	}
+	return "reserved";
+}
+
+static inline const char *i2s_out_mode_str(u8 i2s_mode)
+{
+	switch (i2s_mode & ADV748X_HDMI_I2SOUTMODE_MASK) {
+	case 0 << ADV748X_HDMI_I2SOUTMODE_SHIFT:
+		return "I2S";
+	case 1 << ADV748X_HDMI_I2SOUTMODE_SHIFT:
+		return "right";
+	case 2 << ADV748X_HDMI_I2SOUTMODE_SHIFT:
+		return "left";
+	case 3 << ADV748X_HDMI_I2SOUTMODE_SHIFT:
+		return "spdif";
+	}
+	return "";
+}
+
+static int adv748x_hdmi_log_status(struct v4l2_subdev *sd)
+{
+	struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
+	struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);
+	u8 rv, i2s_tdm_mode_enable;
+	u8 cts_n[5];
+	u8 cs_data[0x3a - 0x36 + 1];
+	u8 tmdsfreq[2]; /* both tmdsfreq and tmdsfreq_frac */
+	struct tmds_params tmds_params;
+
+	/* Audio control and configuration */
+	rv = io_read(state, 0x71);
+	pr_info("cable_det_a_raw         %s\n",
+		rv & BIT(6) ? "detected" : "no cable");
+	pr_info("tmds_clk_a_raw          %s\n",
+		rv & BIT(3) ? "detected" : "no TMDS clock");
+	pr_info("tmdspll_lck_a_raw       %s\n",
+		rv & BIT(7) ? "locked to incoming clock" : "not locked");
+	pr_info("hdmi_encrpt_a_raw       %s\n",
+		rv & BIT(5) ? "current frame encrypted" : "not encrypted");
+	rv = hdmi_read(state, 0x04);
+	pr_info("audio_pll_locked        0x%02lx\n", rv & BIT(0));
+	pr_info("tmds_pll_locked         0x%02lx\n", rv & BIT(1));
+	rv = io_read(state, 0x6c);
+	pr_info("gamut_mdata_raw         %s\n",
+		rv & BIT(0) ? "received" : "-");
+	pr_info("audio_c_pckt_raw        %s\n",
+		rv & BIT(1) ? "ACR received" : "-");
+	pr_info("gen_ctl_pckt_raw        %s\n",
+		rv & BIT(2) ? "received" : "-");
+	pr_info("hdmi_mode_raw           %s\n",
+		rv & BIT(3) ? "HDMI/MHL" : "-");
+	pr_info("audio_ch_md_raw         %s\n",
+		rv & BIT(4) ? "multichannel" : "-");
+	pr_info("av_mute_raw             %s\n",
+		rv & BIT(5) ? "received" : "-");
+	pr_info("internal_mute_raw       %s\n",
+		rv & BIT(6) ? "asserted" : "-");
+	pr_info("cs_data_valid_raw       %s\n",
+		rv & BIT(7) ? "valid" : "-");
+	rv = hdmi_read(state, 0x6d);
+	pr_info("i2s_tdm_mode_enable     %s\n",
+		rv & BIT(7) ? "TDM (multichannel)" : "I2S (stereo)");
+	i2s_tdm_mode_enable = rv & BIT(7);
+
+	/* i2s_tdm_mode_enable must be unset */
+	if (adv748x_read_block(state, ADV748X_PAGE_HDMI, 0x36,
+			       cs_data, ARRAY_SIZE(cs_data)) == 0) {
+		pr_info("... cs_data %s\n",
+			cs_data[0] & BIT(0) ? "pro" : "consumer");
+		pr_info("... cs_data %s\n",
+			cs_data[0] & BIT(1) ? "other" : "L-PCM");
+		pr_info("... cs_data %s copyright\n",
+			cs_data[0] & BIT(2) ? "no" : "asserted");
+		pr_info("... cs_data %s (%lu)\n",
+			cs_data[0] & GENMASK(5, 3) ?
+			"50/15" : "no pre-emphasis",
+			(cs_data[0] & GENMASK(5, 3)) >> 4);
+		pr_info("... cs_data channels status mode %lu\n",
+			(cs_data[0] & GENMASK(7, 6)) >> 7);
+		pr_info("... cs_data category code 0x%02x\n", cs_data[1]);
+		pr_info("... cs_data source number %u\n", cs_data[2] & 0xf);
+		pr_info("... cs_data channel number %u\n",
+			(cs_data[2] & 0xf0) >> 4);
+		pr_info("... cs_data sampling frequency %s (%u)\n",
+			cs_data_smpl_freq_str(cs_data[3]), cs_data[3] & 0xf);
+		pr_info("... cs_data clock accuracy %s\n",
+			cs_data_clk_lvl_str(cs_data[3]));
+	}
+	rv = hdmi_read(state, ADV748X_HDMI_I2S);
+	pr_info("i2soutmode              %s\n", i2s_out_mode_str(rv));
+	pr_info("i2sbitwidth             %u\n", rv & 0x1fu);
+	rv = hdmi_read(state, 0x05);
+	pr_info("hdmi_mode               %s\n", rv & BIT(7) ? "HDMI" : "DVI");
+	rv = hdmi_read(state, 0x07);
+	pr_info("audio_channel_mode      %s\n",
+		rv & BIT(6) ? "multichannel" : "stereo or compressed");
+	rv = hdmi_read(state, 0x0f);
+	/* The bits 6 and 7 must be 1 if TDM mode */
+	pr_info("man_audio_dl_bypass     0x%02lx\n", rv & BIT(7));
+	pr_info("audio_delay_line_bypass 0x%02lx\n", rv & BIT(6));
+	rv = hdmi_read(state, 0x6e);
+	pr_info("mux_spdif_to_i2s_enable %s\n", rv & BIT(3) ? "SPDIF" : "I2S");
+	rv = dpll_read(state, ADV748X_DPLL_MCLK_FS);
+	pr_info("mclk_fs_n               %lu\n",
+		((rv & ADV748X_DPLL_MCLK_FS_N_MASK) + 1) * 128);
+
+	/* i2s_tdm_mode_enable must be set */
+	memset(&tmds_params, 0, sizeof(tmds_params));
+	if (adv748x_read_block(state, ADV748X_PAGE_HDMI, 0x5b, cts_n, 5) == 0) {
+		tmds_params.cts  = cts_n[0] << 12;
+		tmds_params.cts |= cts_n[1] << 4;
+		tmds_params.cts |= cts_n[2] >> 4;
+		tmds_params.n  = (cts_n[2] & 0xf) << 16;
+		tmds_params.n |= cts_n[3] << 8;
+		tmds_params.n |= cts_n[4];
+		pr_info("... TDM: ACR cts  %u\n", tmds_params.cts);
+		pr_info("... TDM: ACR n    %u\n", tmds_params.n);
+	}
+	if (adv748x_read_block(state, ADV748X_PAGE_HDMI, 0x51,
+			       tmdsfreq, 2) == 0) {
+		tmds_params.tmdsfreq  = tmdsfreq[0] << 1;
+		tmds_params.tmdsfreq |= tmdsfreq[1] >> 7;
+		tmds_params.tmdsfreq_frac = tmdsfreq[1] & 0x7f;
+		pr_info("... TDM: tmdsfreq       %d MHz\n",
+			tmds_params.tmdsfreq);
+		pr_info("... TDM: tmdsfreq_frac  %d 1/128\n",
+			tmds_params.tmdsfreq_frac);
+	}
+	if (i2s_tdm_mode_enable)
+		pr_info("... TDM: sampling frequency %u Hz\n",
+			tmds_params.cts ?
+			(tmds_params.tmdsfreq * tmds_params.n +
+			 tmds_params.tmdsfreq_frac * tmds_params.n / 128) *
+			1000 / (128 * tmds_params.cts / 1000) :
+			UINT_MAX);
+	return 0;
+}
+
+static const struct v4l2_subdev_core_ops adv748x_core_ops_hdmi = {
+	.log_status = adv748x_hdmi_log_status,
+};
+
 /* -----------------------------------------------------------------------------
  * v4l2_subdev_ops
  */
 
 static const struct v4l2_subdev_ops adv748x_ops_hdmi = {
+	.core = &adv748x_core_ops_hdmi,
 	.video = &adv748x_video_ops_hdmi,
 	.pad = &adv748x_pad_ops_hdmi,
 };
diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index af70632926b5..3ce7ae7f2ec5 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -432,6 +432,8 @@ struct adv748x_state {
 /* Register handling */
 
 int adv748x_read(struct adv748x_state *state, u8 addr, u8 reg);
+int adv748x_read_block(struct adv748x_state *state, u8 page, u8 reg,
+		       void *val, size_t reg_count);
 int adv748x_write(struct adv748x_state *state, u8 page, u8 reg, u8 value);
 int adv748x_write_block(struct adv748x_state *state, int client_page,
 			unsigned int init_reg, const void *val,
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
