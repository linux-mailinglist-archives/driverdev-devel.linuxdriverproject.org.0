Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33461309E09
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:31:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDA1E86F72;
	Sun, 31 Jan 2021 17:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h121GpbFjZHX; Sun, 31 Jan 2021 17:31:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D022385A1D;
	Sun, 31 Jan 2021 17:31:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8751BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6421285815
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aKDqkW5w0lkg for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:31:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A21FE857D6
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:31:15 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id s23so2650833pjz.4
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TEuL+hVALlT8knIGIfWrKAZ33sVizOsXkuWP5jla1Js=;
 b=ANSbmVI1xwMVRP1E0zjIWUnQq6BtG0DwLwTiHADYdhlxw+zYHUFBREJvvy1Ftb24W7
 wyXCThnYlwN/wCCjn6aXE1sbHGDpfKlQdGAnjo4OBYMR31sblgGE59ToHFB9zQZCwH+/
 6Ct4bxT1MTB5R+04ZmXaKmt64SSh5yiQ2dw5J420g0LA3Q3ta1PKeWyhNENozGoB1Sbv
 lgs9zi/fY7QXvt1MD1QzlCr54G9o4hwxiS9EoR7jsvu5+ffww09twJrJbikAY8LqrdLt
 FFhCrwiVdkW/mFVkFj9FiN03y1OATjCPUhUJwI5e0UX7dW4MdgGPnSujGAb/fehHbUl+
 GYxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TEuL+hVALlT8knIGIfWrKAZ33sVizOsXkuWP5jla1Js=;
 b=FCANMM01t42EeabUjlyH020ztamlsupvk+cb9jBm8EN2OYy7yUV5MMGYRhNe2euikV
 Do8QPy5bCgM1LIOp4kD6k/I0DEursmAKOlBvt0V4LtkSSIkbny+g3Cd/YCdh9pGdBdzs
 uEfSGDQ20FUi2UKUvz4VXgzyNs44OtiB+gJFcwnQGd0aIHN0BCbIxYQ1BDarSbW8bkB/
 +haw7jM7ZWixMW73ktlg1HEvgTjMHck+u5JdtvjidPjl0yNeSvvSS710CSK6qWRTcEpR
 VCVj9vh3JdLDPeyt29aFMBTlch2xXkcFZhxeIEI2YK5mxjEkNHwaUWv1ODTG5uJNdWYv
 FHUA==
X-Gm-Message-State: AOAM531MXuv9lDvriabA/7qShZWg9BYMqVBYdiwqHHnpwzTG1ksGcP8x
 lfKWDAAsAgt+IkMIRC+wT2u4XU0AF0SoHw==
X-Google-Smtp-Source: ABdhPJwClbOYDSZgU1qyhZKF5sKoWjPX/HRVrzUbA9w6Ly4Wkml4MfQKKspYRwVmGG102CbvmJnvxg==
X-Received: by 2002:a17:902:b116:b029:e1:58b2:2280 with SMTP id
 q22-20020a170902b116b02900e158b22280mr2028228plr.29.1612114274980; 
 Sun, 31 Jan 2021 09:31:14 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id r194sm14995355pfr.168.2021.01.31.09.31.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:31:14 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 02/13] staging: greybus: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:23 +0530
Message-Id: <20210131172838.146706-3-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210131172838.146706-1-memxor@gmail.com>
References: <20210131172838.146706-1-memxor@gmail.com>
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
Cc: linux-fbdev@vger.kernel.org, Jon Nettleton <jon.nettleton@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Marc Dietrich <marvin24@gmx.de>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Thomas Gleixner <tglx@linutronix.de>, ac100@lists.launchpad.net,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, linux-tegra@vger.kernel.org,
 William Cohen <wcohen@redhat.com>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Alex Elder <elder@kernel.org>, Teddy Wang <teddy.wang@siliconmotion.com>,
 greybus-dev@lists.linaro.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Mike Rapoport <rppt@kernel.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

strlcpy is marked as deprecated in Documentation/process/deprecated.rst,
and there is no functional difference when the caller expects truncation
(when not checking the return value). strscpy is relatively better as it
also avoids scanning the whole source string.

This silences the related checkpatch warnings from:
5dbdb2d87c29 ("checkpatch: prefer strscpy to strlcpy")

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
 drivers/staging/greybus/audio_helper.c   | 2 +-
 drivers/staging/greybus/audio_module.c   | 2 +-
 drivers/staging/greybus/audio_topology.c | 6 +++---
 drivers/staging/greybus/power_supply.c   | 2 +-
 drivers/staging/greybus/spilib.c         | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
index 3011b8abc..1ed4772d2 100644
--- a/drivers/staging/greybus/audio_helper.c
+++ b/drivers/staging/greybus/audio_helper.c
@@ -166,7 +166,7 @@ static int gbaudio_remove_controls(struct snd_card *card, struct device *dev,
 			snprintf(id.name, sizeof(id.name), "%s %s", prefix,
 				 control->name);
 		else
-			strlcpy(id.name, control->name, sizeof(id.name));
+			strscpy(id.name, control->name, sizeof(id.name));
 		id.numid = 0;
 		id.iface = control->iface;
 		id.device = control->device;
diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index a243d60f0..0f9fdc077 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -342,7 +342,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
 	/* inform above layer for uevent */
 	dev_dbg(dev, "Inform set_event:%d to above layer\n", 1);
 	/* prepare for the audio manager */
-	strlcpy(desc.name, gbmodule->name, GB_AUDIO_MANAGER_MODULE_NAME_LEN);
+	strscpy(desc.name, gbmodule->name, GB_AUDIO_MANAGER_MODULE_NAME_LEN);
 	desc.vid = 2; /* todo */
 	desc.pid = 3; /* todo */
 	desc.intf_id = gbmodule->dev_id;
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 662e3e8b4..e816e4db5 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -200,7 +200,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 			return -EINVAL;
 		name = gbaudio_map_controlid(module, data->ctl_id,
 					     uinfo->value.enumerated.item);
-		strlcpy(uinfo->value.enumerated.name, name, NAME_SIZE);
+		strscpy(uinfo->value.enumerated.name, name, NAME_SIZE);
 		break;
 	default:
 		dev_err(comp->dev, "Invalid type: %d for %s:kcontrol\n",
@@ -1047,7 +1047,7 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 	}
 
 	/* Prefix dev_id to widget control_name */
-	strlcpy(temp_name, w->name, NAME_SIZE);
+	strscpy(temp_name, w->name, NAME_SIZE);
 	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
 
 	switch (w->type) {
@@ -1169,7 +1169,7 @@ static int gbaudio_tplg_process_kcontrols(struct gbaudio_module_info *module,
 		}
 		control->id = curr->id;
 		/* Prefix dev_id to widget_name */
-		strlcpy(temp_name, curr->name, NAME_SIZE);
+		strscpy(temp_name, curr->name, NAME_SIZE);
 		snprintf(curr->name, NAME_SIZE, "GB %d %s", module->dev_id,
 			 temp_name);
 		control->name = curr->name;
diff --git a/drivers/staging/greybus/power_supply.c b/drivers/staging/greybus/power_supply.c
index ec96f2888..75cb170e0 100644
--- a/drivers/staging/greybus/power_supply.c
+++ b/drivers/staging/greybus/power_supply.c
@@ -449,7 +449,7 @@ static int __gb_power_supply_set_name(char *init_name, char *name, size_t len)
 
 	if (!strlen(init_name))
 		init_name = "gb_power_supply";
-	strlcpy(name, init_name, len);
+	strscpy(name, init_name, len);
 
 	while ((ret < len) && (psy = power_supply_get_by_name(name))) {
 		power_supply_put(psy);
diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
index fc27c52de..672d540d3 100644
--- a/drivers/staging/greybus/spilib.c
+++ b/drivers/staging/greybus/spilib.c
@@ -455,10 +455,10 @@ static int gb_spi_setup_device(struct gb_spilib *spi, u8 cs)
 	dev_type = response.device_type;
 
 	if (dev_type == GB_SPI_SPI_DEV)
-		strlcpy(spi_board.modalias, "spidev",
+		strscpy(spi_board.modalias, "spidev",
 			sizeof(spi_board.modalias));
 	else if (dev_type == GB_SPI_SPI_NOR)
-		strlcpy(spi_board.modalias, "spi-nor",
+		strscpy(spi_board.modalias, "spi-nor",
 			sizeof(spi_board.modalias));
 	else if (dev_type == GB_SPI_SPI_MODALIAS)
 		memcpy(spi_board.modalias, response.name,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
