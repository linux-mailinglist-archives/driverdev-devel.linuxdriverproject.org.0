Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200172315E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 01:00:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BCC988684;
	Tue, 28 Jul 2020 23:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzvnci2Z2Yk7; Tue, 28 Jul 2020 23:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A86098865A;
	Tue, 28 Jul 2020 23:00:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 204941BF5AA
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 23:00:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B82088231
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 23:00:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g6vrmNcIPcaw for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 23:00:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59759881F4
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 23:00:20 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d4so13135783pgk.4
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 16:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=students-iitmandi-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+AGKaODfQyJlnmbVWmu1S2WmuwIYu+1OBfVfzl9nDbI=;
 b=wSiJJlaW4Nf3Z4qC1BYYeErvnyAaxGazqwv+5vS8Ohoi9wIoC5ShcWVwNvmUC4fxN9
 N+kZt5l9fJ7JOsJYXZGVugPArIg8ZmjE2d/llMs/V0sSE0l4mom3QlwPQ/ZbDkGmWydr
 k0T6JKoYyjCvMkeYYmWzZTg2PX4VYFkTPN4AqpVIzU0JEhpCnzUlhqYMV/ANpxjqESNU
 kig9iezcgZMt6WtqUq97RLf/AL6UjD8QAfNNDGs9uAv0yB/jpuoQieNXfjTLY5FFKXND
 VzNrllBYEWkJLjT0Glw4gp2Sd2kye9ezjm3PPrxhoSpHco5rEjFNhcV4IIWn5fNOxpy8
 f0ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+AGKaODfQyJlnmbVWmu1S2WmuwIYu+1OBfVfzl9nDbI=;
 b=Lgi7UjUdJccWdAtWbULKoDKGy53LZzAUsaeucBXorS5XPQ91bhkEmxlF7AvPxc1zPd
 qBcXMnlEDb7izucRse2rLVOwG0WBEGezeMSGvod+wJ2MLJNF4LgXXDS5NK2lQset/Bop
 KJl3jF3uXs72YRnnA4rNw4ycvVlkTH5/fqfeyL9cRHgyiTHNA2werD7tDlYQe4t/jftK
 vloi7HRUNMaUNRV5XhNIzkzjZ7gHztDGtyhg85YDd3LeondGc04uTnWtfeYdaiU1hC8j
 Gbq3o7hiDFT5Z3wJzB9kpp3ECw3IOxS7RTyBByBGt9Vwrl6knT81EI8tdHIW6/g7HIeh
 n82A==
X-Gm-Message-State: AOAM533LFLbcv96+ZURjdz59K5wRdPqM+EjYackHob1S9i6W6w6U3u7E
 zQmEn7SUGfWA99F1pkAliHKBVg==
X-Google-Smtp-Source: ABdhPJzGVY0Wek05CSIAilbGSc/iC2BNuIxuZVqGpgfu+wb+W8o+Sa5WL16MSEaBgLGfrxfyolhdAA==
X-Received: by 2002:a63:444b:: with SMTP id t11mr27226150pgk.134.1595977219750; 
 Tue, 28 Jul 2020 16:00:19 -0700 (PDT)
Received: from devil-VirtualBox.www.tendawifi.com ([103.198.174.215])
 by smtp.gmail.com with ESMTPSA id 76sm105516pfu.139.2020.07.28.16.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 16:00:19 -0700 (PDT)
From: Ankit <b18007@students.iitmandi.ac.in>
To: mchehab@kernel.org, gregkh@linuxfoundation.org,
 sakari.ailus@linux.intel.com, andriy.shevchenko@linux.intel.com
Subject: [PATCH v2] Staging : media : atomisp : fixed a brace coding sytle
 issue
Date: Wed, 29 Jul 2020 04:29:35 +0530
Message-Id: <20200728225935.28880-1-b18007@students.iitmandi.ac.in>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200728084341.GA1795795@kroah.com>
References: <20200728084341.GA1795795@kroah.com>
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

From: Ankit Baluni <b18007@students.iitmandi.ac.in>

Removed braces for a 'if' condition as it contain only single line & 
there is no need for braces for such case according to coding style
rules.

Signed-off-by: Ankit Baluni <b18007@students.iitmandi.ac.in>

---
Changes in v2:
	-Added more description about the patch.
	-Added space before the symobol '<' in 'From'
	 and 'Signed-off-by' line.

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
