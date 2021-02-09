Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D5C314CA2
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 11:14:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50502871FA;
	Tue,  9 Feb 2021 10:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bSQiLPgp+7+D; Tue,  9 Feb 2021 10:14:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E51486A5E;
	Tue,  9 Feb 2021 10:14:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5FC4C1BF20F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 10:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50593849BE
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 10:14:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ePafNxwyIGDz
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 10:14:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 378C5844BD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 10:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612865659; x=1644401659;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=OUhR4PCa6xlR/eRfgxdQLqaj/cWEYOiH6RJ42WUKWcc=;
 b=oy5v43wTjncU+AhOjqfbU+4OUw2wBtr+O1liA1/vZokdW/FnkYEFulmm
 qVVgbB236BMMj6ATh+vaoPKKJ7nOshetSwNYo8hsSjYrvpz/sYPrC4r5t
 v32ijwwe16ntC+/bOe57SmzWUxgiHjnN7WdeWQmkuA2TcXmT0a9Z+FvU+
 Jzk1bHoRsItzpLUKR88so6ckX1kZT0e1VyZHOmttP9d1YxIv+UQ7dKaxx
 mBS9Qsnp7hRq2sMcuCfvNTE/OhlanIsWjua8fhqGrCYxSEFiotBWXI9ai
 kY8azKGfYvyGUhgYT/J1L/jNYsgZKwI18r3apVNcL3R1xMnDqmx5btIkJ w==;
IronPort-SDR: WzAVXD1GtPlj5/wbZD+M5oVyDkgF9j8Qa/sBaOFdngctUfrxr4j5ZQ39PRxSh4mTmGZ9KEUycC
 NRl3yM2/6c9YPosXpHCgbkitQAW6Bi8iaBTmbZFEpSlro0dl2CDVH8Uu+pzCXZQAm+v0QuCcUz
 e2BdgN+W2gw17UmTmkRLpt1PLuhHxRp0kOWgcvkDUuc6qcRSOiuSi7NuAIdLrNID5IwHcj0ovY
 nufPZIruvL0VVnGEOJpk22a1u+28Gj0Gju+cRn+yleMdbvVW1QHkUAJs1oZvgq25jMU4fa9omD
 mEw=
X-IronPort-AV: E=Sophos;i="5.81,164,1610434800"; d="scan'208";a="105953941"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Feb 2021 03:14:19 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 9 Feb 2021 03:14:19 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 9 Feb 2021 03:14:17 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3] drivers: most: add ALSA sound driver
Date: Tue, 9 Feb 2021 11:13:47 +0100
Message-ID: <1612865627-29950-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch moves the ALSA sound driver out of the staging area and adds it
to the stable part of the MOST driver. Modifications to the Makefiles and
Kconfigs are done accordingly to not break the build.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
        
        submitted patch that fixes issue found during code audit
        to staging version first to be able to resend single patch that
        adds the driver. The patch series included:

        - use swabXX functions of kernel

v3:
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

	- use non-safe list iteration
	- add sanity check for function argument

 drivers/most/Kconfig                |  10 +
 drivers/most/Makefile               |   1 +
 drivers/most/most_snd.c             | 745 ++++++++++++++++++++++++++++++++++++
 drivers/staging/most/Kconfig        |   2 -
 drivers/staging/most/Makefile       |   1 -
 drivers/staging/most/sound/Kconfig  |  14 -
 drivers/staging/most/sound/Makefile |   4 -
 drivers/staging/most/sound/sound.c  | 745 ------------------------------------
 8 files changed, 756 insertions(+), 766 deletions(-)
 create mode 100644 drivers/most/most_snd.c
 delete mode 100644 drivers/staging/most/sound/Kconfig
 delete mode 100644 drivers/staging/most/sound/Makefile
 delete mode 100644 drivers/staging/most/sound/sound.c

diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
index ebfe84e..4b8145b 100644
--- a/drivers/most/Kconfig
+++ b/drivers/most/Kconfig
@@ -32,4 +32,14 @@ config MOST_CDEV
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called most_cdev.
+
+config MOST_SND
+	tristate "Sound"
+	depends on SND
+	select SND_PCM
+	help
+	  Say Y here if you want to commumicate via ALSA/sound devices.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called most_sound.
 endif
diff --git a/drivers/most/Makefile b/drivers/most/Makefile
index 8b53ca4..60db6cd 100644
--- a/drivers/most/Makefile
+++ b/drivers/most/Makefile
@@ -5,3 +5,4 @@ most_core-y :=	core.o \
 
 obj-$(CONFIG_MOST_USB_HDM) += most_usb.o
 obj-$(CONFIG_MOST_CDEV) += most_cdev.o
+obj-$(CONFIG_MOST_SND) += most_snd.o
diff --git a/drivers/most/most_snd.c b/drivers/most/most_snd.c
new file mode 100644
index 0000000..c87f6a0
--- /dev/null
+++ b/drivers/most/most_snd.c
@@ -0,0 +1,745 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sound.c - Sound component for Mostcore
+ *
+ * Copyright (C) 2015 Microchip Technology Germany II GmbH & Co. KG
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/module.h>
+#include <linux/printk.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/init.h>
+#include <sound/core.h>
+#include <sound/pcm.h>
+#include <sound/pcm_params.h>
+#include <linux/sched.h>
+#include <linux/kthread.h>
+#include <linux/most.h>
+
+#define DRIVER_NAME "sound"
+#define STRING_SIZE	80
+
+static struct most_component comp;
+
+/**
+ * struct channel - private structure to keep channel specific data
+ * @substream: stores the substream structure
+ * @iface: interface for which the channel belongs to
+ * @cfg: channel configuration
+ * @card: registered sound card
+ * @list: list for private use
+ * @id: channel index
+ * @period_pos: current period position (ring buffer)
+ * @buffer_pos: current buffer position (ring buffer)
+ * @is_stream_running: identifies whether a stream is running or not
+ * @opened: set when the stream is opened
+ * @playback_task: playback thread
+ * @playback_waitq: waitq used by playback thread
+ */
+struct channel {
+	struct snd_pcm_substream *substream;
+	struct snd_pcm_hardware pcm_hardware;
+	struct most_interface *iface;
+	struct most_channel_config *cfg;
+	struct snd_card *card;
+	struct list_head list;
+	int id;
+	unsigned int period_pos;
+	unsigned int buffer_pos;
+	bool is_stream_running;
+	struct task_struct *playback_task;
+	wait_queue_head_t playback_waitq;
+	void (*copy_fn)(void *alsa, void *most, unsigned int bytes);
+};
+
+struct sound_adapter {
+	struct list_head dev_list;
+	struct most_interface *iface;
+	struct snd_card *card;
+	struct list_head list;
+	bool registered;
+	int pcm_dev_idx;
+};
+
+static struct list_head adpt_list;
+
+#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
+		       SNDRV_PCM_INFO_MMAP_VALID | \
+		       SNDRV_PCM_INFO_BATCH | \
+		       SNDRV_PCM_INFO_INTERLEAVED | \
+		       SNDRV_PCM_INFO_BLOCK_TRANSFER)
+
+static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
+{
+	unsigned int i = 0;
+
+	while (i < (bytes / 2)) {
+		dest[i] = swab16(source[i]);
+		i++;
+	}
+}
+
+static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
+{
+	unsigned int i = 0;
+
+	if (bytes < 2)
+		return;
+	while (i < bytes - 2) {
+		dest[i] = source[i + 2];
+		dest[i + 1] = source[i + 1];
+		dest[i + 2] = source[i];
+		i += 3;
+	}
+}
+
+static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
+{
+	unsigned int i = 0;
+
+	while (i < bytes / 4) {
+		dest[i] = swab32(source[i]);
+		i++;
+	}
+}
+
+static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
+{
+	memcpy(most, alsa, bytes);
+}
+
+static void alsa_to_most_copy16(void *alsa, void *most, unsigned int bytes)
+{
+	swap_copy16(most, alsa, bytes);
+}
+
+static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
+{
+	swap_copy24(most, alsa, bytes);
+}
+
+static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
+{
+	swap_copy32(most, alsa, bytes);
+}
+
+static void most_to_alsa_memcpy(void *alsa, void *most, unsigned int bytes)
+{
+	memcpy(alsa, most, bytes);
+}
+
+static void most_to_alsa_copy16(void *alsa, void *most, unsigned int bytes)
+{
+	swap_copy16(alsa, most, bytes);
+}
+
+static void most_to_alsa_copy24(void *alsa, void *most, unsigned int bytes)
+{
+	swap_copy24(alsa, most, bytes);
+}
+
+static void most_to_alsa_copy32(void *alsa, void *most, unsigned int bytes)
+{
+	swap_copy32(alsa, most, bytes);
+}
+
+/**
+ * get_channel - get pointer to channel
+ * @iface: interface structure
+ * @channel_id: channel ID
+ *
+ * This traverses the channel list and returns the channel matching the
+ * ID and interface.
+ *
+ * Returns pointer to channel on success or NULL otherwise.
+ */
+static struct channel *get_channel(struct most_interface *iface,
+				   int channel_id)
+{
+	struct sound_adapter *adpt = iface->priv;
+	struct channel *channel;
+
+	list_for_each_entry(channel, &adpt->dev_list, list) {
+		if ((channel->iface == iface) && (channel->id == channel_id))
+			return channel;
+	}
+	return NULL;
+}
+
+/**
+ * copy_data - implements data copying function
+ * @channel: channel
+ * @mbo: MBO from core
+ *
+ * Copy data from/to ring buffer to/from MBO and update the buffer position
+ */
+static bool copy_data(struct channel *channel, struct mbo *mbo)
+{
+	struct snd_pcm_runtime *const runtime = channel->substream->runtime;
+	unsigned int const frame_bytes = channel->cfg->subbuffer_size;
+	unsigned int const buffer_size = runtime->buffer_size;
+	unsigned int frames;
+	unsigned int fr0;
+
+	if (channel->cfg->direction & MOST_CH_RX)
+		frames = mbo->processed_length / frame_bytes;
+	else
+		frames = mbo->buffer_length / frame_bytes;
+	fr0 = min(buffer_size - channel->buffer_pos, frames);
+
+	channel->copy_fn(runtime->dma_area + channel->buffer_pos * frame_bytes,
+			 mbo->virt_address,
+			 fr0 * frame_bytes);
+
+	if (frames > fr0) {
+		/* wrap around at end of ring buffer */
+		channel->copy_fn(runtime->dma_area,
+				 mbo->virt_address + fr0 * frame_bytes,
+				 (frames - fr0) * frame_bytes);
+	}
+
+	channel->buffer_pos += frames;
+	if (channel->buffer_pos >= buffer_size)
+		channel->buffer_pos -= buffer_size;
+	channel->period_pos += frames;
+	if (channel->period_pos >= runtime->period_size) {
+		channel->period_pos -= runtime->period_size;
+		return true;
+	}
+	return false;
+}
+
+/**
+ * playback_thread - function implements the playback thread
+ * @data: private data
+ *
+ * Thread which does the playback functionality in a loop. It waits for a free
+ * MBO from mostcore for a particular channel and copy the data from ring buffer
+ * to MBO. Submit the MBO back to mostcore, after copying the data.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int playback_thread(void *data)
+{
+	struct channel *const channel = data;
+
+	while (!kthread_should_stop()) {
+		struct mbo *mbo = NULL;
+		bool period_elapsed = false;
+
+		wait_event_interruptible(
+			channel->playback_waitq,
+			kthread_should_stop() ||
+			(channel->is_stream_running &&
+			 (mbo = most_get_mbo(channel->iface, channel->id,
+					     &comp))));
+		if (!mbo)
+			continue;
+
+		if (channel->is_stream_running)
+			period_elapsed = copy_data(channel, mbo);
+		else
+			memset(mbo->virt_address, 0, mbo->buffer_length);
+
+		most_submit_mbo(mbo);
+		if (period_elapsed)
+			snd_pcm_period_elapsed(channel->substream);
+	}
+	return 0;
+}
+
+/**
+ * pcm_open - implements open callback function for PCM middle layer
+ * @substream: pointer to ALSA PCM substream
+ *
+ * This is called when a PCM substream is opened. At least, the function should
+ * initialize the runtime->hw record.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int pcm_open(struct snd_pcm_substream *substream)
+{
+	struct channel *channel = substream->private_data;
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct most_channel_config *cfg = channel->cfg;
+	int ret;
+
+	channel->substream = substream;
+
+	if (cfg->direction == MOST_CH_TX) {
+		channel->playback_task = kthread_run(playback_thread, channel,
+						     "most_audio_playback");
+		if (IS_ERR(channel->playback_task)) {
+			pr_err("Couldn't start thread\n");
+			return PTR_ERR(channel->playback_task);
+		}
+	}
+
+	ret = most_start_channel(channel->iface, channel->id, &comp);
+	if (ret) {
+		pr_err("most_start_channel() failed!\n");
+		if (cfg->direction == MOST_CH_TX)
+			kthread_stop(channel->playback_task);
+		return ret;
+	}
+
+	runtime->hw = channel->pcm_hardware;
+	return 0;
+}
+
+/**
+ * pcm_close - implements close callback function for PCM middle layer
+ * @substream: sub-stream pointer
+ *
+ * Obviously, this is called when a PCM substream is closed. Any private
+ * instance for a PCM substream allocated in the open callback will be
+ * released here.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int pcm_close(struct snd_pcm_substream *substream)
+{
+	struct channel *channel = substream->private_data;
+
+	if (channel->cfg->direction == MOST_CH_TX)
+		kthread_stop(channel->playback_task);
+	most_stop_channel(channel->iface, channel->id, &comp);
+	return 0;
+}
+
+/**
+ * pcm_prepare - implements prepare callback function for PCM middle layer
+ * @substream: substream pointer
+ *
+ * This callback is called when the PCM is "prepared". Format rate, sample rate,
+ * etc., can be set here. This callback can be called many times at each setup.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int pcm_prepare(struct snd_pcm_substream *substream)
+{
+	struct channel *channel = substream->private_data;
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct most_channel_config *cfg = channel->cfg;
+	int width = snd_pcm_format_physical_width(runtime->format);
+
+	channel->copy_fn = NULL;
+
+	if (cfg->direction == MOST_CH_TX) {
+		if (snd_pcm_format_big_endian(runtime->format) || width == 8)
+			channel->copy_fn = alsa_to_most_memcpy;
+		else if (width == 16)
+			channel->copy_fn = alsa_to_most_copy16;
+		else if (width == 24)
+			channel->copy_fn = alsa_to_most_copy24;
+		else if (width == 32)
+			channel->copy_fn = alsa_to_most_copy32;
+	} else {
+		if (snd_pcm_format_big_endian(runtime->format) || width == 8)
+			channel->copy_fn = most_to_alsa_memcpy;
+		else if (width == 16)
+			channel->copy_fn = most_to_alsa_copy16;
+		else if (width == 24)
+			channel->copy_fn = most_to_alsa_copy24;
+		else if (width == 32)
+			channel->copy_fn = most_to_alsa_copy32;
+	}
+
+	if (!channel->copy_fn)
+		return -EINVAL;
+	channel->period_pos = 0;
+	channel->buffer_pos = 0;
+	return 0;
+}
+
+/**
+ * pcm_trigger - implements trigger callback function for PCM middle layer
+ * @substream: substream pointer
+ * @cmd: action to perform
+ *
+ * This is called when the PCM is started, stopped or paused. The action will be
+ * specified in the second argument, SNDRV_PCM_TRIGGER_XXX
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int pcm_trigger(struct snd_pcm_substream *substream, int cmd)
+{
+	struct channel *channel = substream->private_data;
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_START:
+		channel->is_stream_running = true;
+		wake_up_interruptible(&channel->playback_waitq);
+		return 0;
+
+	case SNDRV_PCM_TRIGGER_STOP:
+		channel->is_stream_running = false;
+		return 0;
+
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+/**
+ * pcm_pointer - implements pointer callback function for PCM middle layer
+ * @substream: substream pointer
+ *
+ * This callback is called when the PCM middle layer inquires the current
+ * hardware position on the buffer. The position must be returned in frames,
+ * ranging from 0 to buffer_size-1.
+ */
+static snd_pcm_uframes_t pcm_pointer(struct snd_pcm_substream *substream)
+{
+	struct channel *channel = substream->private_data;
+
+	return channel->buffer_pos;
+}
+
+/**
+ * Initialization of struct snd_pcm_ops
+ */
+static const struct snd_pcm_ops pcm_ops = {
+	.open       = pcm_open,
+	.close      = pcm_close,
+	.prepare    = pcm_prepare,
+	.trigger    = pcm_trigger,
+	.pointer    = pcm_pointer,
+};
+
+static int split_arg_list(char *buf, u16 *ch_num, char **sample_res)
+{
+	char *num;
+	int ret;
+
+	num = strsep(&buf, "x");
+	if (!num)
+		goto err;
+	ret = kstrtou16(num, 0, ch_num);
+	if (ret)
+		goto err;
+	*sample_res = strsep(&buf, ".\n");
+	if (!*sample_res)
+		goto err;
+	return 0;
+
+err:
+	pr_err("Bad PCM format\n");
+	return -EINVAL;
+}
+
+static const struct sample_resolution_info {
+	const char *sample_res;
+	int bytes;
+	u64 formats;
+} sinfo[] = {
+	{ "8", 1, SNDRV_PCM_FMTBIT_S8 },
+	{ "16", 2, SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S16_BE },
+	{ "24", 3, SNDRV_PCM_FMTBIT_S24_3LE | SNDRV_PCM_FMTBIT_S24_3BE },
+	{ "32", 4, SNDRV_PCM_FMTBIT_S32_LE | SNDRV_PCM_FMTBIT_S32_BE },
+};
+
+static int audio_set_hw_params(struct snd_pcm_hardware *pcm_hw,
+			       u16 ch_num, char *sample_res,
+			       struct most_channel_config *cfg)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(sinfo); i++) {
+		if (!strcmp(sample_res, sinfo[i].sample_res))
+			goto found;
+	}
+	pr_err("Unsupported PCM format\n");
+	return -EINVAL;
+
+found:
+	if (!ch_num) {
+		pr_err("Bad number of channels\n");
+		return -EINVAL;
+	}
+
+	if (cfg->subbuffer_size != ch_num * sinfo[i].bytes) {
+		pr_err("Audio resolution doesn't fit subbuffer size\n");
+		return -EINVAL;
+	}
+
+	pcm_hw->info = MOST_PCM_INFO;
+	pcm_hw->rates = SNDRV_PCM_RATE_48000;
+	pcm_hw->rate_min = 48000;
+	pcm_hw->rate_max = 48000;
+	pcm_hw->buffer_bytes_max = cfg->num_buffers * cfg->buffer_size;
+	pcm_hw->period_bytes_min = cfg->buffer_size;
+	pcm_hw->period_bytes_max = cfg->buffer_size;
+	pcm_hw->periods_min = 1;
+	pcm_hw->periods_max = cfg->num_buffers;
+	pcm_hw->channels_min = ch_num;
+	pcm_hw->channels_max = ch_num;
+	pcm_hw->formats = sinfo[i].formats;
+	return 0;
+}
+
+static void release_adapter(struct sound_adapter *adpt)
+{
+	struct channel *channel, *tmp;
+
+	list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
+		list_del(&channel->list);
+		kfree(channel);
+	}
+	if (adpt->card)
+		snd_card_free(adpt->card);
+	list_del(&adpt->list);
+	kfree(adpt);
+}
+
+/**
+ * audio_probe_channel - probe function of the driver module
+ * @iface: pointer to interface instance
+ * @channel_id: channel index/ID
+ * @cfg: pointer to actual channel configuration
+ * @arg_list: string that provides the name of the device to be created in /dev
+ *	      plus the desired audio resolution
+ *
+ * Creates sound card, pcm device, sets pcm ops and registers sound card.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int audio_probe_channel(struct most_interface *iface, int channel_id,
+			       struct most_channel_config *cfg,
+			       char *device_name, char *arg_list)
+{
+	struct channel *channel;
+	struct sound_adapter *adpt;
+	struct snd_pcm *pcm;
+	int playback_count = 0;
+	int capture_count = 0;
+	int ret;
+	int direction;
+	u16 ch_num;
+	char *sample_res;
+	char arg_list_cpy[STRING_SIZE];
+
+	if (cfg->data_type != MOST_CH_SYNC) {
+		pr_err("Incompatible channel type\n");
+		return -EINVAL;
+	}
+	strscpy(arg_list_cpy, arg_list, STRING_SIZE);
+	ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
+	if (ret < 0)
+		return ret;
+
+	list_for_each_entry(adpt, &adpt_list, list) {
+		if (adpt->iface != iface)
+			continue;
+		if (adpt->registered)
+			return -ENOSPC;
+		adpt->pcm_dev_idx++;
+		goto skip_adpt_alloc;
+	}
+	adpt = kzalloc(sizeof(*adpt), GFP_KERNEL);
+	if (!adpt)
+		return -ENOMEM;
+
+	adpt->iface = iface;
+	INIT_LIST_HEAD(&adpt->dev_list);
+	iface->priv = adpt;
+	list_add_tail(&adpt->list, &adpt_list);
+	ret = snd_card_new(iface->driver_dev, -1, "INIC", THIS_MODULE,
+			   sizeof(*channel), &adpt->card);
+	if (ret < 0)
+		goto err_free_adpt;
+	snprintf(adpt->card->driver, sizeof(adpt->card->driver),
+		 "%s", DRIVER_NAME);
+	snprintf(adpt->card->shortname, sizeof(adpt->card->shortname),
+		 "Microchip INIC");
+	snprintf(adpt->card->longname, sizeof(adpt->card->longname),
+		 "%s at %s", adpt->card->shortname, iface->description);
+skip_adpt_alloc:
+	if (get_channel(iface, channel_id)) {
+		pr_err("channel (%s:%d) is already linked\n",
+		       iface->description, channel_id);
+		return -EEXIST;
+	}
+
+	if (cfg->direction == MOST_CH_TX) {
+		playback_count = 1;
+		direction = SNDRV_PCM_STREAM_PLAYBACK;
+	} else {
+		capture_count = 1;
+		direction = SNDRV_PCM_STREAM_CAPTURE;
+	}
+	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
+	if (!channel) {
+		ret = -ENOMEM;
+		goto err_free_adpt;
+	}
+	channel->card = adpt->card;
+	channel->cfg = cfg;
+	channel->iface = iface;
+	channel->id = channel_id;
+	init_waitqueue_head(&channel->playback_waitq);
+	list_add_tail(&channel->list, &adpt->dev_list);
+
+	ret = audio_set_hw_params(&channel->pcm_hardware, ch_num, sample_res,
+				  cfg);
+	if (ret)
+		goto err_free_adpt;
+
+	ret = snd_pcm_new(adpt->card, device_name, adpt->pcm_dev_idx,
+			  playback_count, capture_count, &pcm);
+
+	if (ret < 0)
+		goto err_free_adpt;
+
+	pcm->private_data = channel;
+	strscpy(pcm->name, device_name, sizeof(pcm->name));
+	snd_pcm_set_ops(pcm, direction, &pcm_ops);
+	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_VMALLOC, NULL, 0, 0);
+	return 0;
+
+err_free_adpt:
+	release_adapter(adpt);
+	return ret;
+}
+
+static int audio_create_sound_card(void)
+{
+	int ret;
+	struct sound_adapter *adpt;
+
+	list_for_each_entry(adpt, &adpt_list, list) {
+		if (!adpt->registered)
+			goto adpt_alloc;
+	}
+	return -ENODEV;
+adpt_alloc:
+	ret = snd_card_register(adpt->card);
+	if (ret < 0) {
+		release_adapter(adpt);
+		return ret;
+	}
+	adpt->registered = true;
+	return 0;
+}
+
+/**
+ * audio_disconnect_channel - function to disconnect a channel
+ * @iface: pointer to interface instance
+ * @channel_id: channel index
+ *
+ * This frees allocated memory and removes the sound card from ALSA
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int audio_disconnect_channel(struct most_interface *iface,
+				    int channel_id)
+{
+	struct channel *channel;
+	struct sound_adapter *adpt = iface->priv;
+
+	channel = get_channel(iface, channel_id);
+	if (!channel)
+		return -EINVAL;
+
+	list_del(&channel->list);
+
+	kfree(channel);
+	if (list_empty(&adpt->dev_list))
+		release_adapter(adpt);
+	return 0;
+}
+
+/**
+ * audio_rx_completion - completion handler for rx channels
+ * @mbo: pointer to buffer object that has completed
+ *
+ * This searches for the channel this MBO belongs to and copy the data from MBO
+ * to ring buffer
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int audio_rx_completion(struct mbo *mbo)
+{
+	struct channel *channel = get_channel(mbo->ifp, mbo->hdm_channel_id);
+	bool period_elapsed = false;
+
+	if (!channel)
+		return -EINVAL;
+	if (channel->is_stream_running)
+		period_elapsed = copy_data(channel, mbo);
+	most_put_mbo(mbo);
+	if (period_elapsed)
+		snd_pcm_period_elapsed(channel->substream);
+	return 0;
+}
+
+/**
+ * audio_tx_completion - completion handler for tx channels
+ * @iface: pointer to interface instance
+ * @channel_id: channel index/ID
+ *
+ * This searches the channel that belongs to this combination of interface
+ * pointer and channel ID and wakes a process sitting in the wait queue of
+ * this channel.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int audio_tx_completion(struct most_interface *iface, int channel_id)
+{
+	struct channel *channel = get_channel(iface, channel_id);
+
+	if (!channel)
+		return -EINVAL;
+
+	wake_up_interruptible(&channel->playback_waitq);
+	return 0;
+}
+
+/**
+ * Initialization of the struct most_component
+ */
+static struct most_component comp = {
+	.mod = THIS_MODULE,
+	.name = DRIVER_NAME,
+	.probe_channel = audio_probe_channel,
+	.disconnect_channel = audio_disconnect_channel,
+	.rx_completion = audio_rx_completion,
+	.tx_completion = audio_tx_completion,
+	.cfg_complete = audio_create_sound_card,
+};
+
+static int __init audio_init(void)
+{
+	int ret;
+
+	INIT_LIST_HEAD(&adpt_list);
+
+	ret = most_register_component(&comp);
+	if (ret) {
+		pr_err("Failed to register %s\n", comp.name);
+		return ret;
+	}
+	ret = most_register_configfs_subsys(&comp);
+	if (ret) {
+		pr_err("Failed to register %s configfs subsys\n", comp.name);
+		most_deregister_component(&comp);
+	}
+	return ret;
+}
+
+static void __exit audio_exit(void)
+{
+	most_deregister_configfs_subsys(&comp);
+	most_deregister_component(&comp);
+}
+
+module_init(audio_init);
+module_exit(audio_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
+MODULE_DESCRIPTION("Sound Component Module for Mostcore");
diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index 535e6de..6f420cb 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -20,8 +20,6 @@ if MOST_COMPONENTS
 
 source "drivers/staging/most/net/Kconfig"
 
-source "drivers/staging/most/sound/Kconfig"
-
 source "drivers/staging/most/video/Kconfig"
 
 source "drivers/staging/most/dim2/Kconfig"
diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index be94673..8b3fc5a 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-$(CONFIG_MOST_NET)	+= net/
-obj-$(CONFIG_MOST_SOUND)	+= sound/
 obj-$(CONFIG_MOST_VIDEO)	+= video/
 obj-$(CONFIG_MOST_DIM2)	+= dim2/
 obj-$(CONFIG_MOST_I2C)	+= i2c/
diff --git a/drivers/staging/most/sound/Kconfig b/drivers/staging/most/sound/Kconfig
deleted file mode 100644
index ad9f782..0000000
--- a/drivers/staging/most/sound/Kconfig
+++ /dev/null
@@ -1,14 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# MOST ALSA configuration
-#
-
-config MOST_SOUND
-	tristate "Sound"
-	depends on SND
-	select SND_PCM
-	help
-	  Say Y here if you want to commumicate via ALSA/sound devices.
-
-	  To compile this driver as a module, choose M here: the
-	  module will be called most_sound.
diff --git a/drivers/staging/most/sound/Makefile b/drivers/staging/most/sound/Makefile
deleted file mode 100644
index f0cd9d8..0000000
--- a/drivers/staging/most/sound/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MOST_SOUND) += most_sound.o
-
-most_sound-objs := sound.o
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
deleted file mode 100644
index c87f6a0..0000000
--- a/drivers/staging/most/sound/sound.c
+++ /dev/null
@@ -1,745 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * sound.c - Sound component for Mostcore
- *
- * Copyright (C) 2015 Microchip Technology Germany II GmbH & Co. KG
- */
-
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-
-#include <linux/module.h>
-#include <linux/printk.h>
-#include <linux/kernel.h>
-#include <linux/slab.h>
-#include <linux/init.h>
-#include <sound/core.h>
-#include <sound/pcm.h>
-#include <sound/pcm_params.h>
-#include <linux/sched.h>
-#include <linux/kthread.h>
-#include <linux/most.h>
-
-#define DRIVER_NAME "sound"
-#define STRING_SIZE	80
-
-static struct most_component comp;
-
-/**
- * struct channel - private structure to keep channel specific data
- * @substream: stores the substream structure
- * @iface: interface for which the channel belongs to
- * @cfg: channel configuration
- * @card: registered sound card
- * @list: list for private use
- * @id: channel index
- * @period_pos: current period position (ring buffer)
- * @buffer_pos: current buffer position (ring buffer)
- * @is_stream_running: identifies whether a stream is running or not
- * @opened: set when the stream is opened
- * @playback_task: playback thread
- * @playback_waitq: waitq used by playback thread
- */
-struct channel {
-	struct snd_pcm_substream *substream;
-	struct snd_pcm_hardware pcm_hardware;
-	struct most_interface *iface;
-	struct most_channel_config *cfg;
-	struct snd_card *card;
-	struct list_head list;
-	int id;
-	unsigned int period_pos;
-	unsigned int buffer_pos;
-	bool is_stream_running;
-	struct task_struct *playback_task;
-	wait_queue_head_t playback_waitq;
-	void (*copy_fn)(void *alsa, void *most, unsigned int bytes);
-};
-
-struct sound_adapter {
-	struct list_head dev_list;
-	struct most_interface *iface;
-	struct snd_card *card;
-	struct list_head list;
-	bool registered;
-	int pcm_dev_idx;
-};
-
-static struct list_head adpt_list;
-
-#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
-		       SNDRV_PCM_INFO_MMAP_VALID | \
-		       SNDRV_PCM_INFO_BATCH | \
-		       SNDRV_PCM_INFO_INTERLEAVED | \
-		       SNDRV_PCM_INFO_BLOCK_TRANSFER)
-
-static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
-{
-	unsigned int i = 0;
-
-	while (i < (bytes / 2)) {
-		dest[i] = swab16(source[i]);
-		i++;
-	}
-}
-
-static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
-{
-	unsigned int i = 0;
-
-	if (bytes < 2)
-		return;
-	while (i < bytes - 2) {
-		dest[i] = source[i + 2];
-		dest[i + 1] = source[i + 1];
-		dest[i + 2] = source[i];
-		i += 3;
-	}
-}
-
-static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
-{
-	unsigned int i = 0;
-
-	while (i < bytes / 4) {
-		dest[i] = swab32(source[i]);
-		i++;
-	}
-}
-
-static void alsa_to_most_memcpy(void *alsa, void *most, unsigned int bytes)
-{
-	memcpy(most, alsa, bytes);
-}
-
-static void alsa_to_most_copy16(void *alsa, void *most, unsigned int bytes)
-{
-	swap_copy16(most, alsa, bytes);
-}
-
-static void alsa_to_most_copy24(void *alsa, void *most, unsigned int bytes)
-{
-	swap_copy24(most, alsa, bytes);
-}
-
-static void alsa_to_most_copy32(void *alsa, void *most, unsigned int bytes)
-{
-	swap_copy32(most, alsa, bytes);
-}
-
-static void most_to_alsa_memcpy(void *alsa, void *most, unsigned int bytes)
-{
-	memcpy(alsa, most, bytes);
-}
-
-static void most_to_alsa_copy16(void *alsa, void *most, unsigned int bytes)
-{
-	swap_copy16(alsa, most, bytes);
-}
-
-static void most_to_alsa_copy24(void *alsa, void *most, unsigned int bytes)
-{
-	swap_copy24(alsa, most, bytes);
-}
-
-static void most_to_alsa_copy32(void *alsa, void *most, unsigned int bytes)
-{
-	swap_copy32(alsa, most, bytes);
-}
-
-/**
- * get_channel - get pointer to channel
- * @iface: interface structure
- * @channel_id: channel ID
- *
- * This traverses the channel list and returns the channel matching the
- * ID and interface.
- *
- * Returns pointer to channel on success or NULL otherwise.
- */
-static struct channel *get_channel(struct most_interface *iface,
-				   int channel_id)
-{
-	struct sound_adapter *adpt = iface->priv;
-	struct channel *channel;
-
-	list_for_each_entry(channel, &adpt->dev_list, list) {
-		if ((channel->iface == iface) && (channel->id == channel_id))
-			return channel;
-	}
-	return NULL;
-}
-
-/**
- * copy_data - implements data copying function
- * @channel: channel
- * @mbo: MBO from core
- *
- * Copy data from/to ring buffer to/from MBO and update the buffer position
- */
-static bool copy_data(struct channel *channel, struct mbo *mbo)
-{
-	struct snd_pcm_runtime *const runtime = channel->substream->runtime;
-	unsigned int const frame_bytes = channel->cfg->subbuffer_size;
-	unsigned int const buffer_size = runtime->buffer_size;
-	unsigned int frames;
-	unsigned int fr0;
-
-	if (channel->cfg->direction & MOST_CH_RX)
-		frames = mbo->processed_length / frame_bytes;
-	else
-		frames = mbo->buffer_length / frame_bytes;
-	fr0 = min(buffer_size - channel->buffer_pos, frames);
-
-	channel->copy_fn(runtime->dma_area + channel->buffer_pos * frame_bytes,
-			 mbo->virt_address,
-			 fr0 * frame_bytes);
-
-	if (frames > fr0) {
-		/* wrap around at end of ring buffer */
-		channel->copy_fn(runtime->dma_area,
-				 mbo->virt_address + fr0 * frame_bytes,
-				 (frames - fr0) * frame_bytes);
-	}
-
-	channel->buffer_pos += frames;
-	if (channel->buffer_pos >= buffer_size)
-		channel->buffer_pos -= buffer_size;
-	channel->period_pos += frames;
-	if (channel->period_pos >= runtime->period_size) {
-		channel->period_pos -= runtime->period_size;
-		return true;
-	}
-	return false;
-}
-
-/**
- * playback_thread - function implements the playback thread
- * @data: private data
- *
- * Thread which does the playback functionality in a loop. It waits for a free
- * MBO from mostcore for a particular channel and copy the data from ring buffer
- * to MBO. Submit the MBO back to mostcore, after copying the data.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int playback_thread(void *data)
-{
-	struct channel *const channel = data;
-
-	while (!kthread_should_stop()) {
-		struct mbo *mbo = NULL;
-		bool period_elapsed = false;
-
-		wait_event_interruptible(
-			channel->playback_waitq,
-			kthread_should_stop() ||
-			(channel->is_stream_running &&
-			 (mbo = most_get_mbo(channel->iface, channel->id,
-					     &comp))));
-		if (!mbo)
-			continue;
-
-		if (channel->is_stream_running)
-			period_elapsed = copy_data(channel, mbo);
-		else
-			memset(mbo->virt_address, 0, mbo->buffer_length);
-
-		most_submit_mbo(mbo);
-		if (period_elapsed)
-			snd_pcm_period_elapsed(channel->substream);
-	}
-	return 0;
-}
-
-/**
- * pcm_open - implements open callback function for PCM middle layer
- * @substream: pointer to ALSA PCM substream
- *
- * This is called when a PCM substream is opened. At least, the function should
- * initialize the runtime->hw record.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int pcm_open(struct snd_pcm_substream *substream)
-{
-	struct channel *channel = substream->private_data;
-	struct snd_pcm_runtime *runtime = substream->runtime;
-	struct most_channel_config *cfg = channel->cfg;
-	int ret;
-
-	channel->substream = substream;
-
-	if (cfg->direction == MOST_CH_TX) {
-		channel->playback_task = kthread_run(playback_thread, channel,
-						     "most_audio_playback");
-		if (IS_ERR(channel->playback_task)) {
-			pr_err("Couldn't start thread\n");
-			return PTR_ERR(channel->playback_task);
-		}
-	}
-
-	ret = most_start_channel(channel->iface, channel->id, &comp);
-	if (ret) {
-		pr_err("most_start_channel() failed!\n");
-		if (cfg->direction == MOST_CH_TX)
-			kthread_stop(channel->playback_task);
-		return ret;
-	}
-
-	runtime->hw = channel->pcm_hardware;
-	return 0;
-}
-
-/**
- * pcm_close - implements close callback function for PCM middle layer
- * @substream: sub-stream pointer
- *
- * Obviously, this is called when a PCM substream is closed. Any private
- * instance for a PCM substream allocated in the open callback will be
- * released here.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int pcm_close(struct snd_pcm_substream *substream)
-{
-	struct channel *channel = substream->private_data;
-
-	if (channel->cfg->direction == MOST_CH_TX)
-		kthread_stop(channel->playback_task);
-	most_stop_channel(channel->iface, channel->id, &comp);
-	return 0;
-}
-
-/**
- * pcm_prepare - implements prepare callback function for PCM middle layer
- * @substream: substream pointer
- *
- * This callback is called when the PCM is "prepared". Format rate, sample rate,
- * etc., can be set here. This callback can be called many times at each setup.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int pcm_prepare(struct snd_pcm_substream *substream)
-{
-	struct channel *channel = substream->private_data;
-	struct snd_pcm_runtime *runtime = substream->runtime;
-	struct most_channel_config *cfg = channel->cfg;
-	int width = snd_pcm_format_physical_width(runtime->format);
-
-	channel->copy_fn = NULL;
-
-	if (cfg->direction == MOST_CH_TX) {
-		if (snd_pcm_format_big_endian(runtime->format) || width == 8)
-			channel->copy_fn = alsa_to_most_memcpy;
-		else if (width == 16)
-			channel->copy_fn = alsa_to_most_copy16;
-		else if (width == 24)
-			channel->copy_fn = alsa_to_most_copy24;
-		else if (width == 32)
-			channel->copy_fn = alsa_to_most_copy32;
-	} else {
-		if (snd_pcm_format_big_endian(runtime->format) || width == 8)
-			channel->copy_fn = most_to_alsa_memcpy;
-		else if (width == 16)
-			channel->copy_fn = most_to_alsa_copy16;
-		else if (width == 24)
-			channel->copy_fn = most_to_alsa_copy24;
-		else if (width == 32)
-			channel->copy_fn = most_to_alsa_copy32;
-	}
-
-	if (!channel->copy_fn)
-		return -EINVAL;
-	channel->period_pos = 0;
-	channel->buffer_pos = 0;
-	return 0;
-}
-
-/**
- * pcm_trigger - implements trigger callback function for PCM middle layer
- * @substream: substream pointer
- * @cmd: action to perform
- *
- * This is called when the PCM is started, stopped or paused. The action will be
- * specified in the second argument, SNDRV_PCM_TRIGGER_XXX
- *
- * Returns 0 on success or error code otherwise.
- */
-static int pcm_trigger(struct snd_pcm_substream *substream, int cmd)
-{
-	struct channel *channel = substream->private_data;
-
-	switch (cmd) {
-	case SNDRV_PCM_TRIGGER_START:
-		channel->is_stream_running = true;
-		wake_up_interruptible(&channel->playback_waitq);
-		return 0;
-
-	case SNDRV_PCM_TRIGGER_STOP:
-		channel->is_stream_running = false;
-		return 0;
-
-	default:
-		return -EINVAL;
-	}
-	return 0;
-}
-
-/**
- * pcm_pointer - implements pointer callback function for PCM middle layer
- * @substream: substream pointer
- *
- * This callback is called when the PCM middle layer inquires the current
- * hardware position on the buffer. The position must be returned in frames,
- * ranging from 0 to buffer_size-1.
- */
-static snd_pcm_uframes_t pcm_pointer(struct snd_pcm_substream *substream)
-{
-	struct channel *channel = substream->private_data;
-
-	return channel->buffer_pos;
-}
-
-/**
- * Initialization of struct snd_pcm_ops
- */
-static const struct snd_pcm_ops pcm_ops = {
-	.open       = pcm_open,
-	.close      = pcm_close,
-	.prepare    = pcm_prepare,
-	.trigger    = pcm_trigger,
-	.pointer    = pcm_pointer,
-};
-
-static int split_arg_list(char *buf, u16 *ch_num, char **sample_res)
-{
-	char *num;
-	int ret;
-
-	num = strsep(&buf, "x");
-	if (!num)
-		goto err;
-	ret = kstrtou16(num, 0, ch_num);
-	if (ret)
-		goto err;
-	*sample_res = strsep(&buf, ".\n");
-	if (!*sample_res)
-		goto err;
-	return 0;
-
-err:
-	pr_err("Bad PCM format\n");
-	return -EINVAL;
-}
-
-static const struct sample_resolution_info {
-	const char *sample_res;
-	int bytes;
-	u64 formats;
-} sinfo[] = {
-	{ "8", 1, SNDRV_PCM_FMTBIT_S8 },
-	{ "16", 2, SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S16_BE },
-	{ "24", 3, SNDRV_PCM_FMTBIT_S24_3LE | SNDRV_PCM_FMTBIT_S24_3BE },
-	{ "32", 4, SNDRV_PCM_FMTBIT_S32_LE | SNDRV_PCM_FMTBIT_S32_BE },
-};
-
-static int audio_set_hw_params(struct snd_pcm_hardware *pcm_hw,
-			       u16 ch_num, char *sample_res,
-			       struct most_channel_config *cfg)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(sinfo); i++) {
-		if (!strcmp(sample_res, sinfo[i].sample_res))
-			goto found;
-	}
-	pr_err("Unsupported PCM format\n");
-	return -EINVAL;
-
-found:
-	if (!ch_num) {
-		pr_err("Bad number of channels\n");
-		return -EINVAL;
-	}
-
-	if (cfg->subbuffer_size != ch_num * sinfo[i].bytes) {
-		pr_err("Audio resolution doesn't fit subbuffer size\n");
-		return -EINVAL;
-	}
-
-	pcm_hw->info = MOST_PCM_INFO;
-	pcm_hw->rates = SNDRV_PCM_RATE_48000;
-	pcm_hw->rate_min = 48000;
-	pcm_hw->rate_max = 48000;
-	pcm_hw->buffer_bytes_max = cfg->num_buffers * cfg->buffer_size;
-	pcm_hw->period_bytes_min = cfg->buffer_size;
-	pcm_hw->period_bytes_max = cfg->buffer_size;
-	pcm_hw->periods_min = 1;
-	pcm_hw->periods_max = cfg->num_buffers;
-	pcm_hw->channels_min = ch_num;
-	pcm_hw->channels_max = ch_num;
-	pcm_hw->formats = sinfo[i].formats;
-	return 0;
-}
-
-static void release_adapter(struct sound_adapter *adpt)
-{
-	struct channel *channel, *tmp;
-
-	list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
-		list_del(&channel->list);
-		kfree(channel);
-	}
-	if (adpt->card)
-		snd_card_free(adpt->card);
-	list_del(&adpt->list);
-	kfree(adpt);
-}
-
-/**
- * audio_probe_channel - probe function of the driver module
- * @iface: pointer to interface instance
- * @channel_id: channel index/ID
- * @cfg: pointer to actual channel configuration
- * @arg_list: string that provides the name of the device to be created in /dev
- *	      plus the desired audio resolution
- *
- * Creates sound card, pcm device, sets pcm ops and registers sound card.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int audio_probe_channel(struct most_interface *iface, int channel_id,
-			       struct most_channel_config *cfg,
-			       char *device_name, char *arg_list)
-{
-	struct channel *channel;
-	struct sound_adapter *adpt;
-	struct snd_pcm *pcm;
-	int playback_count = 0;
-	int capture_count = 0;
-	int ret;
-	int direction;
-	u16 ch_num;
-	char *sample_res;
-	char arg_list_cpy[STRING_SIZE];
-
-	if (cfg->data_type != MOST_CH_SYNC) {
-		pr_err("Incompatible channel type\n");
-		return -EINVAL;
-	}
-	strscpy(arg_list_cpy, arg_list, STRING_SIZE);
-	ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
-	if (ret < 0)
-		return ret;
-
-	list_for_each_entry(adpt, &adpt_list, list) {
-		if (adpt->iface != iface)
-			continue;
-		if (adpt->registered)
-			return -ENOSPC;
-		adpt->pcm_dev_idx++;
-		goto skip_adpt_alloc;
-	}
-	adpt = kzalloc(sizeof(*adpt), GFP_KERNEL);
-	if (!adpt)
-		return -ENOMEM;
-
-	adpt->iface = iface;
-	INIT_LIST_HEAD(&adpt->dev_list);
-	iface->priv = adpt;
-	list_add_tail(&adpt->list, &adpt_list);
-	ret = snd_card_new(iface->driver_dev, -1, "INIC", THIS_MODULE,
-			   sizeof(*channel), &adpt->card);
-	if (ret < 0)
-		goto err_free_adpt;
-	snprintf(adpt->card->driver, sizeof(adpt->card->driver),
-		 "%s", DRIVER_NAME);
-	snprintf(adpt->card->shortname, sizeof(adpt->card->shortname),
-		 "Microchip INIC");
-	snprintf(adpt->card->longname, sizeof(adpt->card->longname),
-		 "%s at %s", adpt->card->shortname, iface->description);
-skip_adpt_alloc:
-	if (get_channel(iface, channel_id)) {
-		pr_err("channel (%s:%d) is already linked\n",
-		       iface->description, channel_id);
-		return -EEXIST;
-	}
-
-	if (cfg->direction == MOST_CH_TX) {
-		playback_count = 1;
-		direction = SNDRV_PCM_STREAM_PLAYBACK;
-	} else {
-		capture_count = 1;
-		direction = SNDRV_PCM_STREAM_CAPTURE;
-	}
-	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
-	if (!channel) {
-		ret = -ENOMEM;
-		goto err_free_adpt;
-	}
-	channel->card = adpt->card;
-	channel->cfg = cfg;
-	channel->iface = iface;
-	channel->id = channel_id;
-	init_waitqueue_head(&channel->playback_waitq);
-	list_add_tail(&channel->list, &adpt->dev_list);
-
-	ret = audio_set_hw_params(&channel->pcm_hardware, ch_num, sample_res,
-				  cfg);
-	if (ret)
-		goto err_free_adpt;
-
-	ret = snd_pcm_new(adpt->card, device_name, adpt->pcm_dev_idx,
-			  playback_count, capture_count, &pcm);
-
-	if (ret < 0)
-		goto err_free_adpt;
-
-	pcm->private_data = channel;
-	strscpy(pcm->name, device_name, sizeof(pcm->name));
-	snd_pcm_set_ops(pcm, direction, &pcm_ops);
-	snd_pcm_set_managed_buffer_all(pcm, SNDRV_DMA_TYPE_VMALLOC, NULL, 0, 0);
-	return 0;
-
-err_free_adpt:
-	release_adapter(adpt);
-	return ret;
-}
-
-static int audio_create_sound_card(void)
-{
-	int ret;
-	struct sound_adapter *adpt;
-
-	list_for_each_entry(adpt, &adpt_list, list) {
-		if (!adpt->registered)
-			goto adpt_alloc;
-	}
-	return -ENODEV;
-adpt_alloc:
-	ret = snd_card_register(adpt->card);
-	if (ret < 0) {
-		release_adapter(adpt);
-		return ret;
-	}
-	adpt->registered = true;
-	return 0;
-}
-
-/**
- * audio_disconnect_channel - function to disconnect a channel
- * @iface: pointer to interface instance
- * @channel_id: channel index
- *
- * This frees allocated memory and removes the sound card from ALSA
- *
- * Returns 0 on success or error code otherwise.
- */
-static int audio_disconnect_channel(struct most_interface *iface,
-				    int channel_id)
-{
-	struct channel *channel;
-	struct sound_adapter *adpt = iface->priv;
-
-	channel = get_channel(iface, channel_id);
-	if (!channel)
-		return -EINVAL;
-
-	list_del(&channel->list);
-
-	kfree(channel);
-	if (list_empty(&adpt->dev_list))
-		release_adapter(adpt);
-	return 0;
-}
-
-/**
- * audio_rx_completion - completion handler for rx channels
- * @mbo: pointer to buffer object that has completed
- *
- * This searches for the channel this MBO belongs to and copy the data from MBO
- * to ring buffer
- *
- * Returns 0 on success or error code otherwise.
- */
-static int audio_rx_completion(struct mbo *mbo)
-{
-	struct channel *channel = get_channel(mbo->ifp, mbo->hdm_channel_id);
-	bool period_elapsed = false;
-
-	if (!channel)
-		return -EINVAL;
-	if (channel->is_stream_running)
-		period_elapsed = copy_data(channel, mbo);
-	most_put_mbo(mbo);
-	if (period_elapsed)
-		snd_pcm_period_elapsed(channel->substream);
-	return 0;
-}
-
-/**
- * audio_tx_completion - completion handler for tx channels
- * @iface: pointer to interface instance
- * @channel_id: channel index/ID
- *
- * This searches the channel that belongs to this combination of interface
- * pointer and channel ID and wakes a process sitting in the wait queue of
- * this channel.
- *
- * Returns 0 on success or error code otherwise.
- */
-static int audio_tx_completion(struct most_interface *iface, int channel_id)
-{
-	struct channel *channel = get_channel(iface, channel_id);
-
-	if (!channel)
-		return -EINVAL;
-
-	wake_up_interruptible(&channel->playback_waitq);
-	return 0;
-}
-
-/**
- * Initialization of the struct most_component
- */
-static struct most_component comp = {
-	.mod = THIS_MODULE,
-	.name = DRIVER_NAME,
-	.probe_channel = audio_probe_channel,
-	.disconnect_channel = audio_disconnect_channel,
-	.rx_completion = audio_rx_completion,
-	.tx_completion = audio_tx_completion,
-	.cfg_complete = audio_create_sound_card,
-};
-
-static int __init audio_init(void)
-{
-	int ret;
-
-	INIT_LIST_HEAD(&adpt_list);
-
-	ret = most_register_component(&comp);
-	if (ret) {
-		pr_err("Failed to register %s\n", comp.name);
-		return ret;
-	}
-	ret = most_register_configfs_subsys(&comp);
-	if (ret) {
-		pr_err("Failed to register %s configfs subsys\n", comp.name);
-		most_deregister_component(&comp);
-	}
-	return ret;
-}
-
-static void __exit audio_exit(void)
-{
-	most_deregister_configfs_subsys(&comp);
-	most_deregister_component(&comp);
-}
-
-module_init(audio_init);
-module_exit(audio_exit);
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
-MODULE_DESCRIPTION("Sound Component Module for Mostcore");
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
