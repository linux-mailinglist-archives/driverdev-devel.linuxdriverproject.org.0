Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 891B52007AC
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 13:21:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EBCB27D1E;
	Fri, 19 Jun 2020 11:21:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W5CVQTA2TjT5; Fri, 19 Jun 2020 11:21:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B19CE2107D;
	Fri, 19 Jun 2020 11:21:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 408C01BF5A8
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 362382107D
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 11:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EqOvmiR812dx for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 11:21:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id AC1E727BB3
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 11:21:33 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k1so3820735pls.2
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 04:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zlpcMkfvY1TvfcXbRJQjX4alvViANldgMJp8Yl9IJPI=;
 b=LuthuGdLWxFA66jsdkuPFHmiNnARgyB/AnCIzs5BK6J8CTnzKvzUTwCIgVq2EpWUGr
 zj72t6yrWsY/eVIElnm65wweytUEzvyjVbJZ2UPXYvhKTQo+KXsHfgG9+hISc1+UJDvX
 az5K5qJ1dCooQNLeWvVZmGmta9GnKfI2mz2rb38rNvI3zQ3bJ8/IPCL1Eru0mWE1vW5/
 0ufHz/wgX22Rt9l9YLw8EaHeT09LOxLiqTWGGxvPoHi6FMtaye4KO1jbPHNUJnXMx+D6
 lGUaEhfX7Qq61h+BLi22TZixQwscMm4H3tG1PuCNrg7t2Zb7cXt3rzAq701z9CvzhQOT
 Kbbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zlpcMkfvY1TvfcXbRJQjX4alvViANldgMJp8Yl9IJPI=;
 b=ccIP2LCXvMMTnbC39E5XStP0q4tVBfWgkGu6vt5Az6AqVIHA6RqoRobjU6y52L15cJ
 IuZpU/MEMz2Tsli7loh22TAlVUu3TnkP0MIllC9a0+1YASoOclXHtI+6WESyT9HcNBBi
 63bBdsluVCEJmmgyZLfoIYHDv74NUgBzO1OBfXY0dMLJEb932ohc1F8+lOiliQXRyo38
 GZd9n+b+LjEIqVhhtqniyLz57/+Ubl/7ZfpcOPGpe72ziwkC2EFxb53ZzKBojYCSFWD9
 lUfBKIBLfyy/SpS+XZcIyYiSQdCu+pp82xVgF3iP7sqbU3DW05YJSIUEM580/8w/c2vl
 e9yA==
X-Gm-Message-State: AOAM530wl7dxmbPdEal8ylCFJiqkU0IhNVubMarkfaNt9VOk3M+EETkt
 dKq/lg5qDEiJOB+kpuPCzSU=
X-Google-Smtp-Source: ABdhPJy6o4BeqPApyvydeHX9hThfszAhIzZOuDIDWyQNq4em3v8sWSuCFba+aYFvC4dXw/w6X/z19Q==
X-Received: by 2002:a17:90a:ce14:: with SMTP id
 f20mr2950738pju.115.1592565693098; 
 Fri, 19 Jun 2020 04:21:33 -0700 (PDT)
Received: from cvds-vagarw7.iind.intel.com ([192.55.55.41])
 by smtp.googlemail.com with ESMTPSA id d9sm4974293pgg.74.2020.06.19.04.21.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:21:32 -0700 (PDT)
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 Mark Greer <mgreer@animalcreek.com>
Subject: [PATCH v3 5/6] staging: greybus: audio: Add helper APIs for dynamic
 audio modules
Date: Fri, 19 Jun 2020 16:50:25 +0530
Message-Id: <b72a8f7eae20088483b6bac5d75081ca9d92a863.1592537217.git.vaibhav.sr@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1592537217.git.vaibhav.sr@gmail.com>
References: <cover.1592537217.git.vaibhav.sr@gmail.com>
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
Cc: devel@driverdev.osuosl.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greybus Codec driver allows modules to be dynamically added and removed,
which further requires updating the DAPM configurations as well.

With current snd_soc architecture, dynamic audio modules is not yet
supported. This patch provides helper APIs to update DAPM configurations
in response to modules which are dynamically added or removed. The
source is primarily based on snd_dapm.c

Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/greybus/Makefile       |   2 +-
 drivers/staging/greybus/audio_codec.c  |  12 +-
 drivers/staging/greybus/audio_helper.c | 197 +++++++++++++++++++++++++
 drivers/staging/greybus/audio_helper.h |  17 +++
 4 files changed, 223 insertions(+), 5 deletions(-)
 create mode 100644 drivers/staging/greybus/audio_helper.c
 create mode 100644 drivers/staging/greybus/audio_helper.h

diff --git a/drivers/staging/greybus/Makefile b/drivers/staging/greybus/Makefile
index 627e44f2a983..3b4b6cabff19 100644
--- a/drivers/staging/greybus/Makefile
+++ b/drivers/staging/greybus/Makefile
@@ -28,7 +28,7 @@ obj-$(CONFIG_GREYBUS_VIBRATOR)	+= gb-vibrator.o
 
 # Greybus Audio is a bunch of modules
 gb-audio-module-y	:= audio_module.o audio_topology.o
-gb-audio-codec-y	:= audio_codec.o
+gb-audio-codec-y	:= audio_codec.o audio_helper.o
 gb-audio-gb-y		:= audio_gb.o
 gb-audio-apbridgea-y	:= audio_apbridgea.o
 gb-audio-manager-y	:= audio_manager.o audio_manager_module.o
diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
index 0ecdba27086b..74538f8c5fa4 100644
--- a/drivers/staging/greybus/audio_codec.c
+++ b/drivers/staging/greybus/audio_codec.c
@@ -14,6 +14,7 @@
 #include "audio_codec.h"
 #include "audio_apbridgea.h"
 #include "audio_manager.h"
+#include "audio_helper.h"
 
 static struct gbaudio_codec_info *gbcodec;
 
@@ -865,7 +866,7 @@ int gbaudio_register_module(struct gbaudio_module_info *module)
 
 	/* card already instantiated, create widgets here only */
 	if (comp->card->instantiated) {
-		snd_soc_dapm_link_component_dai_widgets(comp->card,
+		gbaudio_dapm_link_component_dai_widgets(comp->card,
 							&comp->dapm);
 #ifdef CONFIG_SND_JACK
 		/*
@@ -999,13 +1000,16 @@ void gbaudio_unregister_module(struct gbaudio_module_info *module)
 	if (module->controls) {
 		dev_dbg(comp->dev, "Removing %d controls\n",
 			module->num_controls);
-		snd_soc_remove_codec_controls(comp, module->controls,
-					      module->num_controls);
+		/* release control semaphore */
+		up_write(&card->controls_rwsem);
+		gbaudio_remove_component_controls(comp, module->controls,
+						  module->num_controls);
+		down_write(&card->controls_rwsem);
 	}
 	if (module->dapm_widgets) {
 		dev_dbg(comp->dev, "Removing %d widgets\n",
 			module->num_dapm_widgets);
-		snd_soc_dapm_free_controls(&comp->dapm, module->dapm_widgets,
+		gbaudio_dapm_free_controls(&comp->dapm, module->dapm_widgets,
 					   module->num_dapm_widgets);
 	}
 
diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
new file mode 100644
index 000000000000..faaa39708118
--- /dev/null
+++ b/drivers/staging/greybus/audio_helper.c
@@ -0,0 +1,197 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Greybus Audio Sound SoC helper APIs
+ */
+
+#include <linux/debugfs.h>
+#include <sound/core.h>
+#include <sound/soc.h>
+#include <sound/soc-dapm.h>
+
+#define gbaudio_dapm_for_each_direction(dir) \
+	for ((dir) = SND_SOC_DAPM_DIR_IN; (dir) <= SND_SOC_DAPM_DIR_OUT; \
+		(dir)++)
+
+static void gbaudio_dapm_link_dai_widget(struct snd_soc_dapm_widget *dai_w,
+					 struct snd_soc_card *card)
+{
+	struct snd_soc_dapm_widget *w;
+	struct snd_soc_dapm_widget *src, *sink;
+	struct snd_soc_dai *dai = dai_w->priv;
+
+	/* ...find all widgets with the same stream and link them */
+	list_for_each_entry(w, &card->widgets, list) {
+		if (w->dapm != dai_w->dapm)
+			continue;
+
+		switch (w->id) {
+		case snd_soc_dapm_dai_in:
+		case snd_soc_dapm_dai_out:
+			continue;
+		default:
+			break;
+		}
+
+		if (!w->sname || !strstr(w->sname, dai_w->sname))
+			continue;
+
+		/*
+		 * check if widget is already linked,
+		 * if (w->linked)
+		 *	return;
+		 */
+
+		if (dai_w->id == snd_soc_dapm_dai_in) {
+			src = dai_w;
+			sink = w;
+		} else {
+			src = w;
+			sink = dai_w;
+		}
+		dev_dbg(dai->dev, "%s -> %s\n", src->name, sink->name);
+		/* Add the DAPM path and set widget's linked status
+		 * snd_soc_dapm_add_path(w->dapm, src, sink, NULL, NULL);
+		 * w->linked = 1;
+		 */
+	}
+}
+
+int gbaudio_dapm_link_component_dai_widgets(struct snd_soc_card *card,
+					    struct snd_soc_dapm_context *dapm)
+{
+	struct snd_soc_dapm_widget *dai_w;
+
+	/* For each DAI widget... */
+	list_for_each_entry(dai_w, &card->widgets, list) {
+		if (dai_w->dapm != dapm)
+			continue;
+		switch (dai_w->id) {
+		case snd_soc_dapm_dai_in:
+		case snd_soc_dapm_dai_out:
+			break;
+		default:
+			continue;
+		}
+		gbaudio_dapm_link_dai_widget(dai_w, card);
+	}
+
+	return 0;
+}
+
+static void gbaudio_dapm_free_path(struct snd_soc_dapm_path *path)
+{
+	list_del(&path->list_node[SND_SOC_DAPM_DIR_IN]);
+	list_del(&path->list_node[SND_SOC_DAPM_DIR_OUT]);
+	list_del(&path->list_kcontrol);
+	list_del(&path->list);
+	kfree(path);
+}
+
+static void gbaudio_dapm_free_widget(struct snd_soc_dapm_widget *w)
+{
+	struct snd_soc_dapm_path *p, *next_p;
+	enum snd_soc_dapm_direction dir;
+
+	list_del(&w->list);
+	/*
+	 * remove source and sink paths associated to this widget.
+	 * While removing the path, remove reference to it from both
+	 * source and sink widgets so that path is removed only once.
+	 */
+	gbaudio_dapm_for_each_direction(dir) {
+		snd_soc_dapm_widget_for_each_path_safe(w, dir, p, next_p)
+			gbaudio_dapm_free_path(p);
+	}
+
+	kfree(w->kcontrols);
+	kfree_const(w->name);
+	kfree_const(w->sname);
+	kfree(w);
+}
+
+int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
+			       const struct snd_soc_dapm_widget *widget,
+			       int num)
+{
+	int i;
+	struct snd_soc_dapm_widget *w, *next_w;
+#ifdef CONFIG_DEBUG_FS
+	struct dentry *parent = dapm->debugfs_dapm;
+	struct dentry *debugfs_w = NULL;
+#endif
+
+	mutex_lock(&dapm->card->dapm_mutex);
+	for (i = 0; i < num; i++) {
+		/* below logic can be optimized to identify widget pointer */
+		list_for_each_entry_safe(w, next_w, &dapm->card->widgets,
+					 list) {
+			if (w->dapm != dapm)
+				continue;
+			if (!strcmp(w->name, widget->name))
+				break;
+			w = NULL;
+		}
+		if (!w) {
+			dev_err(dapm->dev, "%s: widget not found\n",
+				widget->name);
+			return -EINVAL;
+		}
+		widget++;
+#ifdef CONFIG_DEBUG_FS
+		if (!parent)
+			debugfs_w = debugfs_lookup(w->name, parent);
+		debugfs_remove(debugfs_w);
+		debugfs_w = NULL;
+#endif
+		gbaudio_dapm_free_widget(w);
+	}
+	mutex_unlock(&dapm->card->dapm_mutex);
+	return 0;
+}
+
+static int gbaudio_remove_controls(struct snd_card *card, struct device *dev,
+				   const struct snd_kcontrol_new *controls,
+				   int num_controls, const char *prefix)
+{
+	int i, err;
+
+	for (i = 0; i < num_controls; i++) {
+		const struct snd_kcontrol_new *control = &controls[i];
+		struct snd_ctl_elem_id id;
+		struct snd_kcontrol *kctl;
+
+		if (prefix)
+			snprintf(id.name, sizeof(id.name), "%s %s", prefix,
+				 control->name);
+		else
+			strlcpy(id.name, control->name, sizeof(id.name));
+		id.numid = 0;
+		id.iface = control->iface;
+		id.device = control->device;
+		id.subdevice = control->subdevice;
+		id.index = control->index;
+		kctl = snd_ctl_find_id(card, &id);
+		if (!kctl) {
+			dev_err(dev, "%d: Failed to find %s\n", err,
+				control->name);
+			continue;
+		}
+		err = snd_ctl_remove(card, kctl);
+		if (err < 0) {
+			dev_err(dev, "%d: Failed to remove %s\n", err,
+				control->name);
+			continue;
+		}
+	}
+	return 0;
+}
+
+int gbaudio_remove_component_controls(struct snd_soc_component *component,
+				      const struct snd_kcontrol_new *controls,
+				      unsigned int num_controls)
+{
+	struct snd_card *card = component->card->snd_card;
+
+	return gbaudio_remove_controls(card, component->dev, controls,
+				       num_controls, component->name_prefix);
+}
diff --git a/drivers/staging/greybus/audio_helper.h b/drivers/staging/greybus/audio_helper.h
new file mode 100644
index 000000000000..5cf1c6d7d3ea
--- /dev/null
+++ b/drivers/staging/greybus/audio_helper.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Greybus Audio Sound SoC helper APIs
+ */
+
+#ifndef __LINUX_GBAUDIO_HELPER_H
+#define __LINUX_GBAUDIO_HELPER_H
+
+int gbaudio_dapm_link_component_dai_widgets(struct snd_soc_card *card,
+					    struct snd_soc_dapm_context *dapm);
+int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
+			       const struct snd_soc_dapm_widget *widget,
+			       int num);
+int gbaudio_remove_component_controls(struct snd_soc_component *component,
+				      const struct snd_kcontrol_new *controls,
+				      unsigned int num_controls);
+#endif
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
