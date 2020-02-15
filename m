Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1CB16002C
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Feb 2020 20:42:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C43298768F;
	Sat, 15 Feb 2020 19:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFMx6e+B6CHA; Sat, 15 Feb 2020 19:42:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FE3E86F5C;
	Sat, 15 Feb 2020 19:42:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 120DB1BF34A
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BD2185D4B
 for <devel@linuxdriverproject.org>; Sat, 15 Feb 2020 19:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSoALpXoehXs for <devel@linuxdriverproject.org>;
 Sat, 15 Feb 2020 19:42:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75A0F85D21
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 19:42:40 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id d5so5441649pjz.5
 for <devel@driverdev.osuosl.org>; Sat, 15 Feb 2020 11:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=jmZpkjWsbaobRG1GO0fyalos/nZWZE80HVu13ABf0t7B0ahTcSHiWCChAHZuZiBurG
 b57uODg71jswZRofJSWEa22pIiXiJfsimHlu+cdxpuvye67KXdorOhPsJJKPmK1AIPOD
 G/K7RLOTsPMM03LJifKz3uhbRvnz45jpuCH19Tlc+9o1b52xj5pFK+qmFxRqn1H3vw8/
 4yL09zC4e1YwJnSezJS/M6CM+kAy/t3/T1BmzVN9SxbGMhY6p26MyzAkq1ruMUE+M5r7
 GVT03WQol/jICxoaUmRBiTu2K71nTj3KGgo6z/IBIUZT2CmLoZsZhRhwgbK9WXZyPgiV
 I9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WaBGbAVLvbw1Oa8PBijA4rVNFNBvvrFDnIgEYRds3L8=;
 b=frkTdq2x4DBR+icA9Nmvkg4RAlgwxU/V8KrDc6KEdu0Bd6yUNfthlchW3+u2sCuOTL
 FGz0Oxntaxq1+xL4qhaJH4tz5LbXOu6+/o7jRVRudwlekeR2rLUlVVGIe/RBCure8+9U
 ZPh64VgIlwWcFhloQQfigO9uWuOb3WFZSBZaw1EITkK9Plx9HEZR+qDnY/uB2kiCrKa3
 fWqB9irYTKIEfcpvXxy9tdBHO7Icr0Kw8sPKaJD35HzJgvYB6l6AO5H3oN4khmUrJPXl
 zLUMcvJfP70ckeRJapuCGHRGxkEdmc12RnSGbjS00j/d2uOc4bMztOd/puZU9jbnkcr7
 2P+A==
X-Gm-Message-State: APjAAAWTx00hgiv+wac3j8siV9F8ZuIesGdL0hq+bPXk8GvBD1iA9YhM
 R/5HiQJjy7rVjXcxmxClSYw=
X-Google-Smtp-Source: APXvYqyieLo6TkLDnsQ1I1ozugLJM2j6uZo5Kq0sitsB01Xv44YmxnyulZiU7C4+ngGeqMUn+Oprtw==
X-Received: by 2002:a17:902:b70e:: with SMTP id
 d14mr9221633pls.295.1581795759976; 
 Sat, 15 Feb 2020 11:42:39 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id q4sm11802751pfl.175.2020.02.15.11.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Feb 2020 11:42:39 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [RESEND PATCH v3 12/17] media: imx: csi: Add missing notifier
 unregister/cleanup
Date: Sat, 15 Feb 2020 11:41:31 -0800
Message-Id: <20200215194136.10131-13-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200215194136.10131-1-slongerbeam@gmail.com>
References: <20200215194136.10131-1-slongerbeam@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add the missing calls to unregister and cleanup the subdev notifier in
imx_csi_remove().

Fixes: c893500a16baf ("media: imx: csi: Register a subdev notifier")
Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 3e2afdd59276..bea6a70cc353 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -2030,6 +2030,8 @@ static int imx_csi_remove(struct platform_device *pdev)
 
 	v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
 	mutex_destroy(&priv->lock);
+	v4l2_async_notifier_unregister(&priv->notifier);
+	v4l2_async_notifier_cleanup(&priv->notifier);
 	v4l2_async_unregister_subdev(sd);
 	media_entity_cleanup(&sd->entity);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
