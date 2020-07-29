Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A13B3231A9C
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 09:50:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F5F285F6F;
	Wed, 29 Jul 2020 07:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WFZuvGf1Z-gV; Wed, 29 Jul 2020 07:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1812859CC;
	Wed, 29 Jul 2020 07:50:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B9941BF589
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 844B62035C
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 07:50:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0nT7OogGZLR for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 07:50:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 90C7220341
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 07:50:16 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id r4so812179pls.2
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 00:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zMRvTgAMRZWNdLWhRQAFPO8+G0B9J9srTu2Fp7kXf3M=;
 b=Pv4PlDSvUs5rLaEoTpzciQ+hhduQt30/O4ei3UMugKzRCA2YIzqApWYMtXjPIAbAIy
 N/++05hCgbTV/pa4HbohOHBt0ijgJXvMJC1D5y3/n6C2lKEX8O3s6LsFTM3Y9PuDZKe1
 zkFkllMX8QCXGPDg7Fum69INLU9jom3EDUcDMFslXxykqS3PEwCPUu0sjFx3N2htljLH
 3TLAA7+sCo6GEk4uSv3QbxhVjFPsaf+XoRHOPZS1ITTsPeEbgiFQY6wrDZTw7BBMgpOR
 3bMfFbfla70s3UMXw/GVZLkMh25P/3DKF8fgIu8P2q8M7j/myo+Yymca7BlT0Tzozi/j
 RKBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zMRvTgAMRZWNdLWhRQAFPO8+G0B9J9srTu2Fp7kXf3M=;
 b=VZfMFMl+dAyNteCkzY/IS9cofISiU+OLNR62FezpEcgh/7fuQtzk0CMjzxRy/b14i3
 LDCXeQ07a5GUtcxqIFZlFC7Z+0WxIwqvpxuMNWGOdphU3rwJkqZsVpgETuT/2At5KZIg
 HJNO5Su5B/pOD/fFxkDQYZgYgMkXgMb4qsbLnuZgW7Cs6CYkWa4TQR6X0bdnW6+XF0Fh
 ipYnryvfFNlcaG011aaLjJoPSEXvhn6zb/uSV6sWgooqnnBACgCKEb5VSgLPiFcouty7
 lCBNp8DYSBB0qRN+LcfqKoWyvZE7CWesqpUDqw0bHD2SYtqF9yCG6QhCG2b8LUy+U4e1
 RNDQ==
X-Gm-Message-State: AOAM532hDcDDpiYIdMbuxMKJqPyh5nmmMxvvuu/K/jF0Mz5s+f3hSZuf
 zpXT8KyRH2p21XbbarQQ0S9xXQ==
X-Google-Smtp-Source: ABdhPJwtuQIMJfXX6BRy9J6K7RurkEhxzJagqM0sTWR72u8s/9BgM6XzZJ/ufJM/E4li4jFFyGNZ1w==
X-Received: by 2002:a17:90a:c693:: with SMTP id
 n19mr8647892pjt.53.1596009016146; 
 Wed, 29 Jul 2020 00:50:16 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id a67sm1406198pfa.81.2020.07.29.00.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jul 2020 00:50:15 -0700 (PDT)
From: Ankit Baluni <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH v3] Staging: media: atomisp: fixed a brace coding sytle issue
Date: Wed, 29 Jul 2020 13:19:50 +0530
Message-Id: <20200729074950.2104-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
References: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 b18007@students.iitmandi.ac.in, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed braces for a 'if' condition as it contain only single line & 
there is no need for braces for such case according to coding style
rules.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>

---
Changes in v2:
	-Added more description about the patch.
	-Added space before the symobol '<' in 'From'
	 and 'Signed-off-by' line.
Changes in v3:
	-Removed space before ':' in subject line.

 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 8ea65bef35d2..28b96b66f4f3 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4981,9 +4981,8 @@ enum mipi_port_id __get_mipi_port(struct atomisp_device *isp,
 	case ATOMISP_CAMERA_PORT_SECONDARY:
 		return MIPI_PORT1_ID;
 	case ATOMISP_CAMERA_PORT_TERTIARY:
-		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID) {
+		if (MIPI_PORT1_ID + 1 != N_MIPI_PORT_ID)
 			return MIPI_PORT1_ID + 1;
-		}
 	/* fall through */
 	default:
 		dev_err(isp->dev, "unsupported port: %d\n", port);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
