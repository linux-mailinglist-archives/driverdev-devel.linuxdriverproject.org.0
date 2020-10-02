Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 32790281F11
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Oct 2020 01:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1272B86D6D;
	Fri,  2 Oct 2020 23:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4khECR9rIjf; Fri,  2 Oct 2020 23:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82E7686D53;
	Fri,  2 Oct 2020 23:31:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0BE81BF59E
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 23:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A778586D1D
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 23:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgVVUw-SUTFj for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 23:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C997786D06
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 23:31:02 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id h6so1168417pgk.4
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 16:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TkRoSBn+9j9R5OIEl4YP80LYTvti9J8r4dhLT3jJi4w=;
 b=oaTArStQI5r3+wKeZipK7ldrjIRddgqyk0elpNaXkVc+T5FYeZoJg/Ccqs3czoSuku
 M+JaD9q4Qqzu1e56WrfIPN15L85RjAApxbYADXvI18x5RV989i8BlOEehq02kDMU7Pw1
 NhD4eYHRF1Cw22i+VLq5z/JzeJIWQBZKBPuc8yt38V/KklVDdrk7lMdGu+OZvmn0Fhb2
 rKKKMzzdBCEsJdsHH7AFE7Wx4PeuisQgPOLzxjRw+OB8IB0QgFkt8hO4+8CHpdt+7v7i
 Yd2yiV+Hip8doG+o/rIch9jBtLqIk5E6mIZdC7+ykQioKhM21O+xru8c2rkGyEpRi0yr
 DMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TkRoSBn+9j9R5OIEl4YP80LYTvti9J8r4dhLT3jJi4w=;
 b=CsmiunEtqVRaUbsoE+5rZAt8ym5mAdtY80hcIfRCe4/Q1gyFSX+iNZJA1YhE/FmE6X
 6gAv9eEknH4DswIeHYbK95NSnkayocS5nV/aYvysdBmM/qXY7iBmU8pKyViVsSj11eNo
 7bWQ434/7cPGz7hVl4ILob/rfmzg78GWwMVkXPMHWM2HjvZA60qZ1CrKhlq0EvdrX4N9
 WjCzyKVZALDQ27wnzvJBiJ7KTYqsfoLA7GrijnydlkDOA9FOeEuXlINhOdMxHGP1q8Yo
 TSMsVonAaP6hBWZvQH7GcS9Lak0tCZstx+TcZ3kvK+M3LpLXjC3+7oJJizxfPW6a+UCn
 LFfA==
X-Gm-Message-State: AOAM5319PySHRMuub8g2WO2KYDT/okjFAqE7gB0UpcbbVDj4WUbjj6z1
 imcgwakkYpCJe6hCGfo/LSCaMIltIF/Df3nD
X-Google-Smtp-Source: ABdhPJxfXJM+m1gVwAm9mK/vnU4jjbZsHIqtSWwTG4NnIzbeoHMHqdA+CuT/RMya/m/7e97YdLa7qw==
X-Received: by 2002:a62:3605:0:b029:151:ee7f:d910 with SMTP id
 d5-20020a6236050000b0290151ee7fd910mr4935406pfa.49.1601681461997; 
 Fri, 02 Oct 2020 16:31:01 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id g129sm3183936pfb.9.2020.10.02.16.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 16:31:01 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 1/3] staging: greybus: fix warnings about endianness
 detected by sparse
Date: Sat,  3 Oct 2020 07:30:54 +0800
Message-Id: <20201002233057.74462-1-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: Alex Elder <elder@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Alex Elder <elder@linaro.org>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fix the following warnings from sparse,

$ make C=2 drivers/staging/greybus/
drivers/staging/greybus/audio_module.c:222:25: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_module.c:222:25:    expected restricted __le16 [usertype] data_cport
drivers/staging/greybus/audio_module.c:222:25:    got unsigned short [usertype] intf_cport_id
drivers/staging/greybus/audio_topology.c:460:40: warning: restricted __le32 degrades to integer
drivers/staging/greybus/audio_topology.c:691:41: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:691:41:    expected unsigned int access
drivers/staging/greybus/audio_topology.c:691:41:    got restricted __le32 [usertype] access
drivers/staging/greybus/audio_topology.c:746:44: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:746:44:    expected unsigned int
drivers/staging/greybus/audio_topology.c:746:44:    got restricted __le32
drivers/staging/greybus/audio_topology.c:748:52: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:748:52:    expected unsigned int
drivers/staging/greybus/audio_topology.c:748:52:    got restricted __le32
drivers/staging/greybus/audio_topology.c:802:42: warning: restricted __le32 degrades to integer
drivers/staging/greybus/audio_topology.c:805:50: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:805:50:    expected restricted __le32
drivers/staging/greybus/audio_topology.c:805:50:    got unsigned int
drivers/staging/greybus/audio_topology.c:814:50: warning: restricted __le32 degrades to integer
drivers/staging/greybus/audio_topology.c:817:58: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:817:58:    expected restricted __le32
drivers/staging/greybus/audio_topology.c:817:58:    got unsigned int
drivers/staging/greybus/audio_topology.c:889:25: warning: incorrect type in assignment (different base types)
drivers/staging/greybus/audio_topology.c:889:25:    expected unsigned int access
drivers/staging/greybus/audio_topology.c:889:25:    got restricted __le32 [usertype] access

Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Alex Elder <elder@linaro.org>
Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/greybus/audio_module.c   |  6 +++---
 drivers/staging/greybus/audio_topology.c | 18 +++++++++---------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/greybus/audio_module.c b/drivers/staging/greybus/audio_module.c
index 16f60256adb2..c52c4f361b90 100644
--- a/drivers/staging/greybus/audio_module.c
+++ b/drivers/staging/greybus/audio_module.c
@@ -219,7 +219,7 @@ static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
 
 	greybus_set_drvdata(bundle, gbmodule);
 	dai->id = 0;
-	dai->data_cport = connection->intf_cport_id;
+	dai->data_cport = cpu_to_le16(connection->intf_cport_id);
 	dai->connection = connection;
 	list_add(&dai->list, &gbmodule->data_list);
 
@@ -329,7 +329,7 @@ static int gb_audio_probe(struct gb_bundle *bundle,
 		if (ret) {
 			dev_err(dev,
 				"%d:Error while enabling %d:data connection\n",
-				ret, dai->data_cport);
+				ret, le16_to_cpu(dai->data_cport));
 			goto disable_data_connection;
 		}
 	}
@@ -451,7 +451,7 @@ static int gb_audio_resume(struct device *dev)
 		if (ret) {
 			dev_err(dev,
 				"%d:Error while enabling %d:data connection\n",
-				ret, dai->data_cport);
+				ret, le16_to_cpu(dai->data_cport));
 			return ret;
 		}
 	}
diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 83b38ae8908c..2091031659de 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -466,7 +466,7 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 		goto exit;
 
 	/* update ucontrol */
-	if (gbvalue.value.integer_value[0] != val) {
+	if (le32_to_cpu(gbvalue.value.integer_value[0]) != val) {
 		for (wi = 0; wi < wlist->num_widgets; wi++) {
 			widget = wlist->widgets[wi];
 			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
@@ -689,7 +689,7 @@ static int gbaudio_tplg_create_kcontrol(struct gbaudio_module_info *gb,
 				return -ENOMEM;
 			ctldata->ctl_id = ctl->id;
 			ctldata->data_cport = le16_to_cpu(ctl->data_cport);
-			ctldata->access = ctl->access;
+			ctldata->access = le32_to_cpu(ctl->access);
 			ctldata->vcount = ctl->count_values;
 			ctldata->info = &ctl->info;
 			*kctl = (struct snd_kcontrol_new)
@@ -744,10 +744,10 @@ static int gbcodec_enum_dapm_ctl_get(struct snd_kcontrol *kcontrol,
 		return ret;
 	}
 
-	ucontrol->value.enumerated.item[0] = gbvalue.value.enumerated_item[0];
+	ucontrol->value.enumerated.item[0] = le32_to_cpu(gbvalue.value.enumerated_item[0]);
 	if (e->shift_l != e->shift_r)
 		ucontrol->value.enumerated.item[1] =
-			gbvalue.value.enumerated_item[1];
+			le32_to_cpu(gbvalue.value.enumerated_item[1]);
 
 	return 0;
 }
@@ -800,11 +800,11 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 	val = mux << e->shift_l;
 	mask = e->mask << e->shift_l;
 
-	if (gbvalue.value.enumerated_item[0] !=
+	if (le32_to_cpu(gbvalue.value.enumerated_item[0]) !=
 	    ucontrol->value.enumerated.item[0]) {
 		change = 1;
 		gbvalue.value.enumerated_item[0] =
-			ucontrol->value.enumerated.item[0];
+			cpu_to_le32(ucontrol->value.enumerated.item[0]);
 	}
 
 	if (e->shift_l != e->shift_r) {
@@ -812,11 +812,11 @@ static int gbcodec_enum_dapm_ctl_put(struct snd_kcontrol *kcontrol,
 			return -EINVAL;
 		val |= ucontrol->value.enumerated.item[1] << e->shift_r;
 		mask |= e->mask << e->shift_r;
-		if (gbvalue.value.enumerated_item[1] !=
+		if (le32_to_cpu(gbvalue.value.enumerated_item[1]) !=
 		    ucontrol->value.enumerated.item[1]) {
 			change = 1;
 			gbvalue.value.enumerated_item[1] =
-				ucontrol->value.enumerated.item[1];
+				cpu_to_le32(ucontrol->value.enumerated.item[1]);
 		}
 	}
 
@@ -887,7 +887,7 @@ static int gbaudio_tplg_create_mixer_ctl(struct gbaudio_module_info *gb,
 		return -ENOMEM;
 	ctldata->ctl_id = ctl->id;
 	ctldata->data_cport = le16_to_cpu(ctl->data_cport);
-	ctldata->access = ctl->access;
+	ctldata->access = le32_to_cpu(ctl->access);
 	ctldata->vcount = ctl->count_values;
 	ctldata->info = &ctl->info;
 	*kctl = (struct snd_kcontrol_new)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
