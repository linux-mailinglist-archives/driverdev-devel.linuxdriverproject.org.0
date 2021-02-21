Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 244C1320B86
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 16:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBE7685D2B;
	Sun, 21 Feb 2021 15:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JVRYR7EGoz8y; Sun, 21 Feb 2021 15:48:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 186EF85D17;
	Sun, 21 Feb 2021 15:48:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CE7A1BF954
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:48:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 262B560596
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 15:48:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0hT0zeFr59W for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 15:48:29 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id E7CC060701; Sun, 21 Feb 2021 15:48:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 39F0660596
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 15:48:27 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id e9so6070514plh.3
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 07:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gBYFtcJZcZKb20Kar3p64aL77O4EaWVVtcrsH+u69Zk=;
 b=d9obCbkDJqa0v5MTYG5Xa7DJ2NSf8UNLgwiBAVjWXeMk3zNqjmClrKWhHK1yWvKh31
 ojcSkxB+YtsZL3g5fbJqSn4+aD+TRY9dP+48eebDMiFa6ZaQC/d6/Up2u3gBIQwpkXzD
 PNu7z2ibulKv61xotsawidIrMPmgUHApPJfAnP24PKfKCaSBYdf05CN++D4jaxBQhRQk
 cMwb8z2EogZ8Vcvyy49wFG0c8735uNRZP17CZRiOl47MQEXNJZs2OfnX2ZMB4m+WWz82
 byzsp4hmKI8P7VNA76z+RsQzybFIxkvbbOKgl095go+7odtJrTBEq4DvUx5yyQ08hgUa
 3K9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gBYFtcJZcZKb20Kar3p64aL77O4EaWVVtcrsH+u69Zk=;
 b=RgSnQ824BWtt6Ybc8LNo/6keOVPwcYeOECT9v3PFLvm3NZV9WA1dNV5TQGMJX6ECl0
 mWMfzerbg7YHz4Cwm5pCAsVqjGp17ZCmYTfUBlzSEbMGU4uOXTcvJ3xF+Mx5xy8XfSJw
 O33zBkxhy7jqyJdJ4ovjki8kByBJip37L1Yi8oJoU81fZF3W5k5SZT8QcQJXTsBQzQLp
 /iMwZIyPIdbKNTRM6dd2qfBsQHf1nHnEzYwsmUo7fL8cTTZfqiSbRPOTqSWwpiSg8eES
 /9km97yZt2jw1LI6vWL4XBLQyJyJ5r8QLCzaSNrQtszrotmChvrAABzPVHTG862wuJH7
 e2GQ==
X-Gm-Message-State: AOAM532sbc6umWvsmbrPN4ipK+Ys8DM8hXKFXPHSyINIHY/Ek/ypNXbm
 uR8/21CbBOu+W8ga1kXoMidSS3hOTco=
X-Google-Smtp-Source: ABdhPJzyhpN4aJWn5k3wG1M156iVDl7M+1WgaPnz4rv4lodb6j2hFwdo7OnY2CNOmUk5f9UgG6ZeiQ==
X-Received: by 2002:a17:90a:a08a:: with SMTP id
 r10mr18719275pjp.133.1613922506409; 
 Sun, 21 Feb 2021 07:48:26 -0800 (PST)
Received: from localhost ([2402:3a80:11da:dffe:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id i2sm8348052pgs.82.2021.02.21.07.48.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 07:48:26 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging/greybus: eliminate use of NAME_SIZE for strings
Date: Sun, 21 Feb 2021 21:12:59 +0530
Message-Id: <20210221154258.119503-1-memxor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <b565bdae-10a9-9b6c-ae60-dcee88f7dedd@ieee.org>
References: <b565bdae-10a9-9b6c-ae60-dcee88f7dedd@ieee.org>
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
Cc: Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org, Kumar Kartikeya Dwivedi <memxor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Instead, depend on the size of the destination buffer for easier
refactoring.

Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
---
Hopefully, this is more thorough. The only cases left now are where the
destination string is represented by a pointer, otherwise all call sites with a
fixed sized buffer have been changed.
---
 drivers/staging/greybus/audio_module.c   |  4 ++--
 drivers/staging/greybus/audio_topology.c | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index 0f9fdc077..12c376c47 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -260,7 +260,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
 	INIT_LIST_HEAD(&gbmodule->widget_ctl_list);
 	INIT_LIST_HEAD(&gbmodule->jack_list);
 	gbmodule->dev = dev;
-	snprintf(gbmodule->name, NAME_SIZE, "%s.%s", dev->driver->name,
+	snprintf(gbmodule->name, sizeof(gbmodule->name), "%s.%s", dev->driver->name,
 		 dev_name(dev));
 	greybus_set_drvdata(bundle, gbmodule);
 
@@ -342,7 +342,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
 	/* inform above layer for uevent */
 	dev_dbg(dev, "Inform set_event:%d to above layer\n", 1);
 	/* prepare for the audio manager */
-	strscpy(desc.name, gbmodule->name, GB_AUDIO_MANAGER_MODULE_NAME_LEN);
+	strscpy(desc.name, gbmodule->name, sizeof(desc.name));
 	desc.vid = 2; /* todo */
 	desc.pid = 3; /* todo */
 	desc.intf_id = gbmodule->dev_id;
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index e816e4db5..1fc7727ab 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -200,7 +200,7 @@ static int gbcodec_mixer_ctl_info(struct snd_kcontrol *kcontrol,
 			return -EINVAL;
 		name = gbaudio_map_controlid(module, data->ctl_id,
 					     uinfo->value.enumerated.item);
-		strscpy(uinfo->value.enumerated.name, name, NAME_SIZE);
+		strscpy(uinfo->value.enumerated.name, name, sizeof(uinfo->value.enumerated.name));
 		break;
 	default:
 		dev_err(comp->dev, "Invalid type: %d for %s:kcontrol\n",
@@ -363,7 +363,7 @@ static int gbcodec_mixer_dapm_ctl_info(struct snd_kcontrol *kcontrol,
 	platform_min = le32_to_cpu(info->value.integer.min);
 
 	if (platform_max == 1 &&
-	    !strnstr(kcontrol->id.name, " Volume", NAME_SIZE))
+	    !strnstr(kcontrol->id.name, " Volume", sizeof(kcontrol->id.name)))
 		uinfo->type = SNDRV_CTL_ELEM_TYPE_BOOLEAN;
 	else
 		uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
@@ -1047,8 +1047,8 @@ static int gbaudio_tplg_create_widget(struct gbaudio_module_info *module,
 	}
 
 	/* Prefix dev_id to widget control_name */
-	strscpy(temp_name, w->name, NAME_SIZE);
-	snprintf(w->name, NAME_SIZE, "GB %d %s", module->dev_id, temp_name);
+	strscpy(temp_name, w->name, sizeof(temp_name));
+	snprintf(w->name, sizeof(w->name), "GB %d %s", module->dev_id, temp_name);
 
 	switch (w->type) {
 	case snd_soc_dapm_spk:
@@ -1169,8 +1169,8 @@ static int gbaudio_tplg_process_kcontrols(struct gbaudio_module_info *module,
 		}
 		control->id = curr->id;
 		/* Prefix dev_id to widget_name */
-		strscpy(temp_name, curr->name, NAME_SIZE);
-		snprintf(curr->name, NAME_SIZE, "GB %d %s", module->dev_id,
+		strscpy(temp_name, curr->name, sizeof(temp_name));
+		snprintf(curr->name, sizeof(curr->name), "GB %d %s", module->dev_id,
 			 temp_name);
 		control->name = curr->name;
 		if (curr->info.type == GB_AUDIO_CTL_ELEM_TYPE_ENUMERATED) {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
