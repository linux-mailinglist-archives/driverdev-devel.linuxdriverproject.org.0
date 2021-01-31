Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6564C309E0B
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 18:31:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC7908705D;
	Sun, 31 Jan 2021 17:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wl+zkJezGNAY; Sun, 31 Jan 2021 17:31:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 009CD8703D;
	Sun, 31 Jan 2021 17:31:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED1DC1BF3DD
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E033B86FEF
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 17:31:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zfqy2FtrcIji for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 17:31:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1875586F72
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 17:31:47 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id d2so3541047pjs.4
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 09:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YAFVqpo2auTJUYrtqcdZaCPT+PUXtqA1yzZi4A7sg2M=;
 b=gfsZBKg7cAaipKTK44sZULsayr/Mkqb6cPw3QqfDlqaATzBwAKNvQGRnZ8G9iQJvq6
 y5303HIUVPKino6SaIXwqAu5Tci/Tzt2HbWQqq2MCxJn5iOrkIMyNUeri8O6BmLuVXPi
 87qTgY1RCyNju4kNcPvB8Tw31Emb1d/uI934cKG5o1G7XkB4X8TxFGf0FcJWiMmpvKLE
 5nAwLdxrnWcY6/lu/1MnPS8+GZ3kpEouQrjxhlnbTImavBmUiZ5epzlC3bY5Fnkxj1jl
 e+H0b+dSu9OslMzvEStB9LLe2hkht0pV+jZbsFQZzrpFDBBuwp/SGsCzpZuqu9kk95+9
 G3QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YAFVqpo2auTJUYrtqcdZaCPT+PUXtqA1yzZi4A7sg2M=;
 b=hq4/aR/KVZHWXnyNiZTdfS3MvNAotmNIMm+sVNf3Ur01tMnqtGvbHZ8uCU8JH0A0dt
 cgoHgiqwiOmM0JqJ0kUzYOHnzZxiscxFHO7KOaStcmQJiF/uh8HTMVuvmaLsstXzDekz
 alZ0lAg8gm38z9cMIeNlff1hsndoAAMCZ6EHp9w7wjrHBfVeinDaUYs2iciW//bcROyo
 oqkEvY4XM+50PlIcmqQ0xywVRNb39jXXE1QyrQxgFWhz4v+QG+LsO1Ia/iRS46Hh48d8
 qC1ow/DBM+UktnWKkJuFHpyk4uxPDbYKK0XZTvtsvF2muM0WXKksLSw6adQ2MY95yzZ1
 o2+g==
X-Gm-Message-State: AOAM533aBKcmEGQ8U0ZdTvzRXXJ2gIKp1wEi7sMoAnqYP37UN7KIoy8d
 zK8MqQH53UQqiF0WNub6EEuogn5CTbJ7KQ==
X-Google-Smtp-Source: ABdhPJydIpBl27zWlFzSU3IhagnDXZPJq2whmVIc4lQaYyGAyMUbLfRKz+PJcImBlqe99k/sZnqEYw==
X-Received: by 2002:a17:90a:7608:: with SMTP id
 s8mr6952392pjk.105.1612114306505; 
 Sun, 31 Jan 2021 09:31:46 -0800 (PST)
Received: from localhost ([2402:3a80:11ea:e144:a2a4:c5ff:fe20:7222])
 by smtp.gmail.com with ESMTPSA id ge16sm12997426pjb.41.2021.01.31.09.31.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 09:31:45 -0800 (PST)
From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
To: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 04/13] staging: most: Switch from strlcpy to strscpy
Date: Sun, 31 Jan 2021 22:58:25 +0530
Message-Id: <20210131172838.146706-5-memxor@gmail.com>
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
 ac100@lists.launchpad.net, Stephen Rothwell <sfr@canb.auug.org.au>,
 Florian Fainelli <f.fainelli@gmail.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Viresh Kumar <vireshk@kernel.org>,
 Robert Richter <rric@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Johan Hovold <johan@kernel.org>, Ian Abbott <abbotti@mev.co.uk>,
 Kumar Kartikeya Dwivedi <memxor@gmail.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
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
 drivers/staging/most/sound/sound.c | 2 +-
 drivers/staging/most/video/video.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 3a1a59058..c4287994b 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -525,7 +525,7 @@ static int audio_probe_channel(struct most_interface *iface, int channel_id,
 		pr_err("Incompatible channel type\n");
 		return -EINVAL;
 	}
-	strlcpy(arg_list_cpy, arg_list, STRING_SIZE);
+	strscpy(arg_list_cpy, arg_list, STRING_SIZE);
 	ret = split_arg_list(arg_list_cpy, &ch_num, &sample_res);
 	if (ret < 0)
 		return ret;
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 829df899b..90933d78c 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -245,8 +245,8 @@ static int vidioc_querycap(struct file *file, void *priv,
 	struct comp_fh *fh = priv;
 	struct most_video_dev *mdev = fh->mdev;
 
-	strlcpy(cap->driver, "v4l2_component", sizeof(cap->driver));
-	strlcpy(cap->card, "MOST", sizeof(cap->card));
+	strscpy(cap->driver, "v4l2_component", sizeof(cap->driver));
+	strscpy(cap->card, "MOST", sizeof(cap->card));
 	snprintf(cap->bus_info, sizeof(cap->bus_info),
 		 "%s", mdev->iface->description);
 	return 0;
@@ -483,7 +483,7 @@ static int comp_probe_channel(struct most_interface *iface, int channel_idx,
 	mdev->v4l2_dev.release = comp_v4l2_dev_release;
 
 	/* Create the v4l2_device */
-	strlcpy(mdev->v4l2_dev.name, name, sizeof(mdev->v4l2_dev.name));
+	strscpy(mdev->v4l2_dev.name, name, sizeof(mdev->v4l2_dev.name));
 	ret = v4l2_device_register(NULL, &mdev->v4l2_dev);
 	if (ret) {
 		pr_err("v4l2_device_register() failed\n");
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
